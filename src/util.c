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

    free(*content);
    *content = calloc(*contentSize + 1, sizeof(char));
    fread(*content, sizeof(char), *contentSize, file);
    fclose(file);

    return 0;
}

void replace_at(char** c, const char* p, size_t i, size_t count) {
    size_t plen = strlen(p);
    size_t clen = strlen(*c);
    size_t newSize = clen - (count - plen);

    char* buffer = malloc((newSize + 1) * sizeof(char));
    memcpy(buffer, *c, i * sizeof(char));
    memcpy(buffer + i, p, plen * sizeof(char));
    memcpy(buffer + i + 1, *c + i + count, clen - i - count);
    buffer[newSize] = '\0';

    free(*c);
    *c = buffer;
}

void remove_all_occurences(char** ptr, const char* substring) {
    char* location = strstr(*ptr, substring);
    if (location == NULL) {
        return;
    }
    replace_at(ptr, "0", (location - *ptr), 3);

    return remove_all_occurences(ptr, substring);
}