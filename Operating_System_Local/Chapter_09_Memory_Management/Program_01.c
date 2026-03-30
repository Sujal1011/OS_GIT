/*C program to simulate the fixed partition scheme of contiguous memory management technique where some text files will serve as user
programs and our main program (i.e. this program) will work like OS and will allocate the memory (which we are going to implement using a
large array) to the contents of those text files making them in the ready state and will print their contents (similar to executing them)*/

/*In fixed partition scheme of contiguous memory management technique first the operating system is loaded into main memory then OS
divides the remaining portion of the main memory (user space) into fixed number of partitions (may or may not be of equal sizes)
these partitions will be used to store the user programs and degree of multiprogramming is decided by number of partitions of memory*/

/*Including header files: stdio.h for using standard i/o functions, stdlib.h for using dynamic memory allocation functions, stddef.h
for using standard definitions and stdint.h for using uintptr_t data type and string.h for using string functions, generic.h header file and
pair.h header file for implementing user defined unordered map for storing process name and process IDs, defining a macro which will define the
size of our memory array, we will simulate a memory of 256 and defining a macro which will define the number of partitions of our main memory
(user space) along with this we are also going to define a macro for capacity of waiting queue for processes of unallocated partitions*/
#include<stdio.h>
#include<stdlib.h>
#include<stddef.h>
#include<stdint.h>
#include<string.h>
#include "generic_map.h"
#define maxSize 256
#define partitions 4
#define capacity 2*partitions

/*--------------------------------------------Data Structures for the Memory Management--------------------------------------------*/
/*Defining an array of characters of size maxSize, this array will be used to simulate the main memory, with each element being of 1 byte
simulating the actual byte addressable main memory (assuming the architecture of the main memory to be of byte addressable nature)*/
char mainMem[maxSize];

/*Defining an array of size_t which will store the sizes of the partitions of the main memory (using this we can change sizes of partitions)
we will define sizes of partitions in such a way so as to simulate each and every scenario that we can encounter in real operating systems*/
static size_t memArrSize[partitions]={60, 80, 50, 66};

/*Defining a structure for user process which will be used by the operating system to store the metadata of the user processes incoming*/
typedef struct Process{
    size_t process_id;       /*unique ID created by the OS after successfully reading the program from the secondary memory to main memory*/
    unsigned short status;   /*status of the process is the current state of the process which can be ready:0 (in mm) or running:1 (excuting)*/
    size_t size;             /*size of the process which will be determined by the OS first and then this field will be populated with size*/
    uintptr_t base_address;  /*starting address of the memory from where the process is started to be stored, usually base address of block*/
    uintptr_t limit;         /*ending+1 address of the memory where the process is stopped to be stored, hence defining the size of process*/
    char name[100];          /*name array of 100 characters to store the name of the process, useful in executeProcess and terminateProcess*/
}process;

/*Defining a structure for memory partitions which will be used by the operating system to store the metadata of the memory blocks/partitions*/
typedef struct Mem_Block{
    uintptr_t base_address;  /*starting address of the memory block or partition from where the process can be started to store in main memory*/
    uintptr_t limit;         /*ending+1 address of the memory where the current partition ends (this may or may not equals limit of process)*/
    size_t size_block;       /*size of the memory partition which will be populated using the memArrSize array at the time of running of OS*/
    unsigned short free;     /*flag to keep information of whether the current partition of memory is free or allocated to a user process*/
    process* pr;             /*pointer to the structure process of the user process currently residing in a particular memory partition*/
}mem_block;

/*Defining an array of mem_block structures which will be used to store the metadata structures of the partitions of the main memory (array)
this array will be used by the OS for various purposes like finding the suitable empty memory partition for a user process, relocation etc.*/
mem_block memArr[partitions];

/*Defining an array of pointers to character which will be used as queue data structure to store the processes which are not allocated partitions and
are waiting for as soon as any process leaves the main memory and the partition so freed out is capable of holding the process they will be dequeued
along with this we are also going to define front and rear pointers to keep track of front and rear elements in this queue of user processes*/
const char* qu[capacity]; int front=-1, rear=-1;

/*Defining a variable of GenericMap data type included from generic_map.h header file that will be used to store process names (keys) and pids (values)*/
GenericMap* procMap;

/*------------------------------------------------Functions for the Memory Management------------------------------------------------*/
/*Defining a function to check whether the process queue is empty or not by checking if front and rear indices are both set to -1*/
unsigned short int isEmpty(void){return ((front==-1 && rear==-1)?1:0);}

/*Defining a function to check whether the process queue is full or not by checking if rear+1 mod capacity equals front or not*/
unsigned short int isFull(void){return ((rear+1)%capacity==front);}

/*Defining a function to enqueue an element into the queue by first checking whether the queue is full or not by calling isFull function*/
void enqueue(const char* processName)
{
    /*Checking for overflow in queue by calling the isFull function*/
    if(isFull()) {printf("Can't insert process %s into waiting queue since waiting queue is full!\n", processName); return;}
    else
    {
        /*Checking for first insertion in queue and then inserting the user process with name processName into queue data structure*/
         char* copy=(char*)malloc(strlen(processName)+1); strcpy(copy, processName);
        if(front==-1 && rear==-1) front=rear=0; else rear=(rear+1)%capacity; qu[rear]=copy;
    }
}

/*Defining a function to dequeue an element from the queue by first checking whether the queue is empty or not by calling isEmpty function*/
const char* dequeue(void)
{
    /*Checking for underflow in queue by calling the isEmpty function*/
    if(isEmpty()) {printf("Can't get process from waiting queue since waiting queue is empty!\n"); return NULL;}
    else
    {
        /*Checking for last deletion from queue and then getting and deleting the user process from queue data structure*/
        char* pName=(char*)qu[front]; if(front==rear && front!=-1) front=rear=-1; else front=(front+1)%capacity; return pName;
    }
}

/*Defining a function to get the size of the file (user process) which will be used the createProcess function for checking partition allocation*/
size_t getSize(const char* processName)
{
    /*Defining a pointer to a variable of struct FILE type (which contains the metadata of the file that we are going to operate on) and
    opening the file in "rb" (read bytes) mode to get the exact size of the file in bytes and if file doesn't exist then printing error*/
    FILE *fp = fopen(processName, "rb");
    if(!fp){perror("Error opening file"); exit(1);}

    /*Moving the file pointer to the end of the file from which we will get to  know the size of the file and then resetting it to beginning
    after the size calculation we are going to close the file to release all the allocated resources to freeup the memory and returning size*/
    fseek(fp, 0, SEEK_END); size_t size = ftell(fp); rewind(fp); fclose(fp); return size;
}

/*Defining a function to write the contents of the file (user process) into the mainMem array defined to simulate or mimic the main memory*/
void loadIntoMemory(const char* processName, uintptr_t base_address, size_t size)
{
    /*Defining a pointer to a variable of struct FILE type (which contains the metadata of the file that we are going to operate on) and
    opening the file in "rb" (read bytes) mode to get the exact size of the file in bytes and if file doesn't exist then printing error*/
    FILE *fp = fopen(processName, "rb");
    if(!fp){perror("Error opening file"); exit(1);}

    /*Copying or reading the contents of the file (user process) into the memory allocated to mainMem array in raw bytes format*/
    size_t bytes_read=fread(&mainMem[base_address], 1, size, fp);
    printf("Process %s loaded into memory [%lu-%lu]\n", processName, (unsigned long)base_address, (unsigned long)(base_address+size-1));
    fclose(fp);
}

/*Defining a function to allocate unique IDs to each incoming processes (if they are successfully assigned a memory partition)*/
int nextID=1; int allocateID(void){return nextID++;}

/*Defining a function that will be called from the main program (OS simulation) which will store the metadata of the partitions into the memArr*/
void initiateMemBlocks(void)
{
    /*Defining a variable to keep track of starting locations/addresses of the partitions of the main memory (array)*/
    size_t current_base=0;
    
    /*Running a for loop to populate the member structures of the memArr (for storing the metadata of the memory partitions)*/
    for(int i=0; i<partitions; i++)
    {
        /*Populating various fields of member structures of array*/
        memArr[i].base_address=current_base;
        memArr[i].limit=current_base+memArrSize[i]-1;
        memArr[i].size_block=memArrSize[i];
        memArr[i].free=1;
        memArr[i].pr=NULL;

        /*Incrementing the current_base value*/
        current_base+=memArrSize[i];
    }
}

/*Defining a function to check whether an entry for the current process already exists in the map or not, if yes then no enqueue in waiting queue*/
int existsInMap(const char* processName){ void* out=NULL; if(map_get(procMap, processName, strlen(processName)+1, &out))return 1; else return 0;}

/*Defining a function that will create the metadata for a new admitted process (if it can be admitted) by first reading the size of the process*/
unsigned short int createProcess(const char* processName, unsigned short int callee)
{
    /*We are first going to get the size of the file (user program) and then we will linear search our memArr for availability of suitable free memory block
    using the first fit memory block allocation technique, after finding the free block we are going to check it's size with the size of the process*/

    /*Defining a variable for storing the size of the process (file) and a variable to check whether the process is allocated any partition or not*/
    size_t size_of_process=getSize(processName); unsigned short int isFound=0;

    /*Running a for loop to check whether there exists a suitable empty partition which we can allocate to process and then filling up the metadata of process*/
    for(int i=0; i<partitions; i++)
    {
        /*Checking for availability and feasibility of free memory block*/
        if(memArr[i].free && memArr[i].size_block>=size_of_process)
        {
            /*Dynamically allocating memory to process structure and filling it's all the necessary fields/metadata*/
            process* ptr=(process*)malloc(sizeof(process));
            
            /*Setting the fields of the process structure*/
            ptr->process_id=allocateID();
            ptr->status=0; /*0 will be the code for ready state*/        
            ptr->size=size_of_process;
            ptr->base_address=memArr[i].base_address;
            ptr->limit=memArr[i].base_address+ptr->size-1;
            strcpy(ptr->name,processName);
            
            /*Linking the address of this process structure to pr field of the Mem_Block structure of the assigned free memory block*/
            memArr[i].pr=ptr;

            /*Setting the flag, calling loadIntoMemory function to load the process into mainMem array and then breaking the loop*/
            memArr[i].free=0; isFound=1; loadIntoMemory(processName, ptr->base_address, ptr->size);
            map_put(&procMap, processName, strlen(processName)+1, &ptr->process_id, sizeof(size_t)); break;
        }
    }

    /*If flag is not set then en queuing the process into waiting queue*/
    if(!isFound && !callee && !existsInMap(processName)) enqueue(processName);
    return isFound;
}

/*Defining a function to terminate the process with the given ID, where we will terminate the process by freeing up the pointer to the
structure of the metadata of the process and then we are going to set the pointer of mem block to null and mark the block as free*/
void terminateProcess(int index)
{
    /*Freeing the partition after teminating the process by freeing up the resources*/
    process *p=memArr[index].pr; printf("Terminating Process %zu...\n", p->process_id);
    map_remove(procMap,p->name,strlen(p->name)+1);
    free(p); memArr[index].pr=NULL; memArr[index].free=1; printf("Partition %d is now free\n", index);
}

/*Defining a function to check whether there exists a process which can be assigned to a free partition or not, if yes then assign it*/
void checkWaitingQueue(size_t idx)
{
    /*Comparing the size of the process present at the front of the queue with that of free partition block if size of process is
    smaller than or equal to size of free partition block then we are going to call createProcess for this process to create process*/
    const char* pname=isEmpty()?NULL:qu[front];
    if(!isEmpty() && memArr[idx].size_block>=getSize(pname))
    {
        /*Dynamically allocating memory to process structure and filling it's all the necessary fields/metadata*/
        process* ptr=(process*)malloc(sizeof(process));
        
        /*Setting the fields of the process structure*/
        ptr->process_id=allocateID();
        ptr->status=0; /*0 will be the code for ready state*/        
        ptr->size=getSize(pname);
        ptr->base_address=memArr[idx].base_address;
        ptr->limit=memArr[idx].base_address+ptr->size-1;
        strcpy(ptr->name, pname);

        /*Linking the address of this process structure to pr field of the Mem_Block structure of the assigned free memory block*/
        memArr[idx].pr=ptr;

        /*Setting the flag, calling loadIntoMemory function to load the process into mainMem array and then breaking the loop*/
        memArr[idx].free=0; loadIntoMemory(pname, ptr->base_address, ptr->size);
        map_put(&procMap, pname, strlen(pname)+1, &ptr->process_id, sizeof(size_t)); dequeue();

        /*Checking whether further allocations are possible or not by iterating the memArr array and trying to find suitable partition*/
        unsigned short int flag=1; while(!isEmpty() && flag){const char* next=qu[front]; if(createProcess(next, 1)) dequeue(); else flag=0;}
    }
}

/*Defining a function that will print the contents of the file/process which will be simulating the execution of processes in CPU, then we
are going to terminate the process and then will deallocate the assigned partitions so to admit new processes in memory from waiting queue*/
void executeProcess(size_t pid)
{
    /*Finding the process with the given process id from the memArr array, setting it's status to running, printing it's content and then term-
    inating this process (if available in memory partitions) and then checking whether this block can accomodate process from waiting queue*/
    for(int i=0; i<partitions; i++)
    {
        /*Finding the process with given process id from the memArr array, displaying some user friendly messages onto screen, displaying
        memory bounds of current executing processes, then printing the contents of the process file and then terminating the process*/
        if(memArr[i].pr && memArr[i].pr->process_id==pid)
        {
            process *p=memArr[i].pr; printf("\nExecuting Process %zu...\n", pid);
            printf("Memory Range: [%lu-%lu]\n", (unsigned long)p->base_address, (unsigned long)p->limit);
            printf("Output:\n"); for(uintptr_t j=p->base_address; j<=p->limit; j++) printf("%c", mainMem[j]);
            printf("\nExecution Completed.\n");

            /*Calling terminateProcess function to terminate the given process (since it exists in main memory), freeing up
            the memory partition and then checking whether any waiting process can be assigned to this memory parition or not and
            then calling the checkWaitingQueue function to check whether a process can be allocated freed up partition or not*/
            terminateProcess(i);
            checkWaitingQueue(i);
        }
    }
}

/*Driver code (main function), this will work like the main OS module from which other functions/modules will be called*/
int main(void)
{
    /*Initializing GenericMap variable using map_create function for storing process name as keys and process ids as values*/
    procMap=map_create();
    
    /*We are going to have following steps in this memory management code: Step-1: we will be initializing memory partitions by calling
    initiateMemBlocks function, Step-2: we are going to run a while true loop which will terminate only when user will give exit as input
    Step-3: the OS will allocate memory partitions for the incoming processes if they are assignable otherwise a message will be displayed*/
    initiateMemBlocks(); char processName[100];
    printf("Enter process file names (type 'exit' to stop):\n");

    /*Running a while true loop like the real OS for getting the user input for the file names or processes*/
    while(1)
    {
        /*Giving the file names (processes) as user input and comparing file name with the exit to terminate the while true loop*/
        printf(">> "); fgets(processName, sizeof(processName), stdin); processName[strcspn(processName, "\n")] = '\0';
        if(strcmp(processName, "exit")==0) break;

        /*Calling createProcess function to create metadata for the created process and load them into main memory (assign partition)*/
        if(createProcess(processName, 0)) printf("Process %s successfully loaded into memory\n", processName);
        else if(!existsInMap(processName)) printf("Process %s added to waiting queue\n", processName);
    }

    /*Running a while true loop like the real OS for executing the user input processes by printing them if they exist in main memory*/
    while(1)
    {
        /*Giving the file names (processes) as user input and comparing file name with the exit to terminate the while true loop*/
        printf(">> "); fgets(processName, sizeof(processName), stdin); processName[strcspn(processName, "\n")] = '\0';
        if(strcmp(processName, "exit")==0) break;

        /*Calling executeProcess function to execute the user input processes then terminating them and deallocating the partition assigned
        and using the user defined generic_map or unordered map to extract the process ID for a corresponding process name to pass to function*/
        void *out=NULL;
        if(map_get(procMap,processName,strlen(processName)+1,&out)){ size_t pid=*(size_t*)out; executeProcess(pid);}
        else printf("Process %s not found!\n",processName);
    }
    return 0;
}
