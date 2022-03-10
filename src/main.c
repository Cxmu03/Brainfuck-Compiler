#include <stdio.h>
#include <malloc.h>
#include <string.h>

#include "ir.h"
#include "util.h"
#include "preprocessor.h"
#include "codegen.h"

void compile(const char* inputFile, const char* outputFile) {
    char* fileContents;
    size_t fileSize;
    read_file(inputFile, &fileContents, &fileSize);
    optimize_code(&fileContents);
    ir_list* ir = generate_ir(fileContents);
    generate_asm(outputFile, ir);
}

int main() {
    compile("program.bf", "out/mandelbrot.asm");
    return 0;
}
