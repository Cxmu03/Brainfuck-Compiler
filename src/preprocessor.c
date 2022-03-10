#include "preprocessor.h"
#include "util.h"

static void optimize_clear_loops(char** ptr) {
    remove_all_occurences(ptr, "[+]");
    remove_all_occurences(ptr, "[-]");
}

void optimize_code(char** code) {
    optimize_clear_loops(code);
}