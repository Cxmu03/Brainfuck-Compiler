#include <stdint.h>
#include <string.h>

#include "compiler.h"
#include "ir.h"
#include "util.h"
#include "preprocessor.h"
#include "codegen.h"

int compile(const char* inputFile, const char* outputFile) {
    char* fileContents;
    size_t fileSize;
    read_file(inputFile, &fileContents, &fileSize);
    optimize_code(&fileContents);
    ir_list* ir = generate_ir(fileContents);
    generate_asm(outputFile, ir);
    return 0;
}