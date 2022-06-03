#include "../src/compiler.h"

int main() {
    compile("program.bf", "mandelbrot.asm");
    return 0;
}
