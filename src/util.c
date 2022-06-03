#include <stdio.h>
#include <malloc.h>
#include <string.h>

#include "util.h"

int read_file(const char* path, char** content, size_t* contentSize) {
    FILE* file = fopen(path, "r");

    if (file == NULL) {
        fprintf(stderr, "[ERROR] Failed to open file %s", path);
        return 1;
    }

    fseek(file, 0, SEEK_END);
    *contentSize = ftell(file);
    rewind(file);

    if (*contentSize == -1ull) {
        fprintf(stderr, "[ERROR] Failed to get file size of file %s", path);
        return 1;
    }

    *content = calloc(*contentSize + 1, sizeof(char));
    fread(*content, sizeof(char), *contentSize, file);
    fclose(file);

    return 0;
}