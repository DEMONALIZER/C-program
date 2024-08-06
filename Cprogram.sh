#include <stdio.h>

#define MAX_FILES 10

int main() {

 int file_sizes[MAX_FILES] = {100, 200, 150, 300}; // File sizes

 int disk_space = 0; // Current allocated disk space

 for (int i = 0; i < MAX_FILES; i++) {

 if (disk_space + file_sizes[i] <= 1000) { // Assuming total disk space is 1000

 printf("File %d allocated at position %d\n", i + 1, disk_space);

 disk_space += file_sizes[i]; // Increment disk space

 } else {

 printf("Disk space full. Cannot allocate File %d\n", i + 1);

 break;

 }

 }

 return 0;

}
