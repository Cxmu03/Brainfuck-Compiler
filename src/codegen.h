#ifndef BRAINFUCK_COMPILER_CODEGEN_H
#define BRAINFUCK_COMPILER_CODEGEN_H

#include "ir.h"

int generate_asm(const char* outputFilePath, ir_list* irList);

#endif //BRAINFUCK_COMPILER_CODEGEN_H
