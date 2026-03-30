/*C program to implement generic unordered map using uthash library for storing key-value pairs*/

/*Including generic_map.h header file for getting the function prototypes for the unordered map
data structure, uthash.h header file for implementing unordered_map, stdlib.h header file for
using dynamic memory allocation functions and string.h header file for using string functions*/
#include"generic_map.h"
#include"uthash.h"
#include<stdlib.h>
#include<string.h>

/*Defining structure for each entry in hash table which will store key,value and uthash handle*/
typedef struct MapEntry{
    void*key; size_t key_size;
    void*value; size_t value_size;
    UT_hash_handle hh;
}MapEntry;

/*Defining actual structure of GenericMap which will store pointer to hash table*/
struct GenericMap{
    MapEntry* table;
};

/*Defining function to create and initialize unordered map*/
GenericMap* map_create(void)
{
    GenericMap*map=(GenericMap*)malloc(sizeof(GenericMap));
    map->table=NULL;
    return map;
}

/*Defining function to insert key-value pair into unordered map or update if key already exists*/
void map_put(GenericMap**map, const void*key, size_t key_size, void*value, size_t value_size)
{
    MapEntry*entry;

    /*Searching for existing key in hash table*/
    HASH_FIND(hh, (*map)->table, key, key_size,entry);

    if(entry==NULL)
    {
        /*Allocating memory for new entry*/
        entry=(MapEntry*)malloc(sizeof(MapEntry));

        entry->key=malloc(key_size);
        memcpy(entry->key,key,key_size);
        entry->key_size=key_size;

        entry->value=malloc(value_size);
        memcpy(entry->value,value,value_size);
        entry->value_size=value_size;

        /*Adding entry to hash table*/
        HASH_ADD_KEYPTR(hh,(*map)->table, entry->key, key_size, entry);
    }
    else
    {
        /*Updating value if key already exists*/
        free(entry->value);
        entry->value=malloc(value_size);
        memcpy(entry->value, value, value_size);
        entry->value_size=value_size;
    }
}

/*Defining function to get value corresponding to a key*/
int map_get(GenericMap*map, const void*key, size_t key_size, void**out)
{
    MapEntry*entry;

    /*Searching for key in hash table*/
    HASH_FIND(hh, map->table, key, key_size, entry);

    if(entry)
    {
        *out=entry->value;
        return 1;
    }
    return 0;
}

/*Defining function to check whether a key exists in map or not*/
int map_contains(GenericMap*map, const void*key, size_t key_size)
{
    MapEntry*entry;
    HASH_FIND(hh, map->table, key, key_size, entry);
    return(entry!=NULL);
}

/*Defining function to free entire unordered map and all allocated memory*/
void map_free(GenericMap* map)
{
    MapEntry*current,*tmp;

    /*Iterating over all entries and deleting them*/
    HASH_ITER(hh, map->table, current, tmp)
    {
        HASH_DEL(map->table,current);
        free(current->key);
        free(current->value);
        free(current);
    }

    free(map);
}

/*Defining function to delete entry from the map*/
void map_remove(GenericMap* map, const void*key, size_t key_size)
{
    MapEntry*entry;
    HASH_FIND(hh, map->table, key, key_size, entry);

    if(entry)
    {
        HASH_DEL(map->table, entry);
        free(entry->key);
        free(entry->value);
        free(entry);
    }
}