#include "compiler.h"

int main() {
    compile("program.bf", "out/mandelbrot.asm");
    return 0;
}
