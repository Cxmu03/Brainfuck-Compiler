#ifndef BRAINFUCK_COMPILER_UTIL_H
#define BRAINFUCK_COMPILER_UTIL_H

#include <stdint.h>

int read_file(const char* path, char** content, size_t* contentSize);

void replace_at(char** c, const char* p, size_t i, size_t count);

void remove_all_occurences(char** ptr, const char* substring);

#endif //BRAINFUCK_COMPILER_UTIL_H
