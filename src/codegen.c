#include <stdio.h>
#include <string.h>
#include <malloc.h>

#include "codegen.h"
#include "stack.h"
#include "ir.h"

static void print_asm_header(FILE* file) {
    fprintf(
            file,
            "bits 64\n"
            "default rel\n"
            "section .bss\n"
            "    memory resb 3000\n"
            "    memoryPointer resq 1\n"
            "    outHandle resd 1\n"
            "section .text\n"
            "global main\n"
            "extern ExitProcess\n"
            "extern putchar\n"
            "extern WriteConsoleA\n"
            "extern GetStdHandle\n"
            "main:\n"
            "    push    rbp\n"
            "    mov     rbp, rsp\n"
            "    sub     rsp, 32\n"
            "    mov     rcx, -11\n"
            "    call    GetStdHandle\n"
            "    mov     [outHandle], rax\n"
            "    mov     rax, memory\n"
            "    mov     [memoryPointer], rax\n"
    );
}

static void print_asm_footer(FILE* file) {
    fprintf(
            file,
            "    xor     rcx, rcx\n"
            "    call    ExitProcess\n"
    );
}

int generate_asm(const char* outputFilePath, ir_list* irList) {
    FILE* file = fopen(outputFilePath, "w");
    int loopStartCounter = 0;
    stack_t* loopEndStack = create_stack();
    ir_list_item* listItem = irList->head;
    print_asm_header(file);
    while (listItem) {
        ir_instruction instruction = listItem->value;
        switch (instruction.token) {
        case IR_ADD:
            fprintf(
                    file,
                    "    mov     eax, [memoryPointer] ;ADD\n"
                    "    add     byte [eax], %d\n",
                    instruction.value
            );
            break;
        case IR_MOVE:
            fprintf(
                    file,
                    "    add     qword [memoryPointer], %d ;MOV\n",
                    instruction.value
            );
            break;
        case IR_CLEAR:
            fprintf(
                    file,
                    "    mov     eax, [memoryPointer]\n"
                    "    mov     byte [eax], 0\n"
            );
            break;
        case IR_LOOP_START:
            fprintf(
                    file,
                    "    mov     eax, [memoryPointer] ;LPS\n"
                    "    mov     al, [eax]\n"
                    "    cmp     al, 0\n"
                    "    je      LE%d\n"
                    "    L%d:\n",
                    loopStartCounter,
                    loopStartCounter
            );
            stack_push(loopEndStack, loopStartCounter);
            loopStartCounter++;
            break;
        case IR_LOOP_END:
            fprintf(
                    file,
                    "    mov     eax, [memoryPointer] ;LPE\n"
                    "    mov     al, [eax]\n"
                    "    cmp     al, 0\n"
                    "    jne     L%d\n"
                    "    LE%d:\n",
                    stack_peek(loopEndStack),
                    stack_peek(loopEndStack)
            );
            stack_pop(loopEndStack);
            break;
        case IR_OUTPUT:
            fprintf(
                    file,
                    "    mov     rcx, [outHandle]\n"
                    "    mov     rdx, [memoryPointer]\n"
                    "    mov     r8, 1\n"
                    "    lea     r9, [rbp - 4]\n"
                    "    push    0\n"
                    "    call    WriteConsoleA\n"
            );
        case IR_INPUT:
            break;
        }
        listItem = listItem->next;
    }
    print_asm_footer(file);

    return 1;
}