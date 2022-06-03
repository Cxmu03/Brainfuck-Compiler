#ifndef BRAINFUCK_COMPILER_UTIL_H
#define BRAINFUCK_COMPILER_UTIL_H

#include <stdint.h>

int read_file(const char* path, char** content, size_t* contentSize);

#endif //BRAINFUCK_COMPILER_UTIL_H
