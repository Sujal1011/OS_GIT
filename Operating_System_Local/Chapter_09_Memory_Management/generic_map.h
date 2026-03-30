/*C program to define a header file that will contain the forward declarations of prototypes of all
the functions that we are going to use to create, insert and access the elements of unordered map*/

/*Checking whether GENERIC_MAP_H is already defined or not using the macro conditional to
avoid duplicate definitions and it is not already defined then defining it using the macros*/
#ifndef GENERIC_MAP_H
#define GENERIC_MAP_H

/*Including stddef(standard definition) header file for using the size_t data type and
type defining the structure of name GenericMap from struct GenericMap to GenericMap*/
#include<stddef.h>
typedef struct GenericMap GenericMap;

/*Declaring the forward declarations or prototypes of the functions that we are going to use later to manipulate unordered map*/
/*Prototype of the function for creating an unordered map*/
GenericMap* map_create(void);

/*Prototype of the function for performing insertion operation in the unordered map and for
that size of key is required if the key is not an integer or string so to make it hashable*/
void map_put(GenericMap **map, const void *key, size_t key_size, void *value, size_t value_size);

/*Prototype of the functions for getting value of key and for checking existence of key in map and for freeing all the allocated memory*/
int map_get(GenericMap *map, const void *key, size_t key_size, void **out);
int map_contains(GenericMap *map, const void *key, size_t key_size);
void map_free(GenericMap *map);
void map_remove(GenericMap* map, const void*key, size_t key_size);

/*Ending the #define block*/
#endif