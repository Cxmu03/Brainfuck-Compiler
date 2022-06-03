#include <string.h>
#include <malloc.h>

#include "preprocessor.h"
#include "util.h"

static void replace_at(char** c, const char* p, size_t i, size_t count) {
    size_t plen = strlen(p);
    size_t clen = strlen(*c);
    size_t newSize = clen - (count - plen);

    char* buffer = calloc((newSize + 1), sizeof(char));
    memcpy(buffer, *c, i * sizeof(char));
    memcpy(buffer + i, p, plen * sizeof(char));
    memcpy(buffer + i + 1, *c + i + count, clen - i - count);

    free(*c);
    *c = buffer;
}

static void replace_all_occurences(char** ptr, const char* substring, const char* replacement) {
    char* location = strstr(*ptr, substring);

    if (location == NULL) {
        return;
    }

    replace_at(ptr, replacement, (location - *ptr), 3);

    return replace_all_occurences(ptr, substring, replacement);
}

static void optimize_clear_loops(char** ptr) {
    replace_all_occurences(ptr, "[+]", "0");
    replace_all_occurences(ptr, "[-]", "0");
}

void optimize_code(char** code) {
    optimize_clear_loops(code);
}