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
            "\n"
            "section .bss\n"
            "\tmemory resb 3000\n"
            "\tmemoryPointer resq 1\n"
            "\toutHandle resd 1\n"
            "\n"
            "section .text\n"
            "\tglobal main\n"
            "\textern ExitProcess\n"
            "\textern putchar\n"
            "\textern WriteConsoleA\n"
            "\textern GetStdHandle\n"
            "\n"
            "main:\n"
            "\tpush    rbp\n"
            "\tmov     rbp, rsp\n"
            "\tsub     rsp, 32\n"
            "\tmov     rcx, -11\n"
            "\tcall    GetStdHandle\n"
            "\tmov     [outHandle], rax\n"
            "\tmov     rax, memory\n"
            "\tmov     [memoryPointer], rax\n"
    );
}

static void print_asm_footer(FILE* file) {
    fprintf(
            file,
            "\txor     rcx, rcx\n"
            "\tcall    ExitProcess\n"
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
                    "\tmov     eax, [memoryPointer] ;Adding %d to the current cell\n"
                    "\tadd     byte [eax], %d\n",
                    instruction.value,
                    instruction.value
            );
            break;
        case IR_MOVE:
            fprintf(
                    file,
                    "\tadd     qword [memoryPointer], %d ;Moving %d cells\n",
                    instruction.value,
                    instruction.value
            );
            break;
        case IR_CLEAR:
            fprintf(
                    file,
                    "\tmov     eax, [memoryPointer] ;Clearing current cell\n"
                    "\tmov     byte [eax], 0\n"
            );
            break;
        case IR_LOOP_START:
            fprintf(
                    file,
                    "\n"
                    "\tmov     eax, [memoryPointer] ;Loop start\n"
                    "\tmov     al, [eax]\n"
                    "\tcmp     al, 0\n"
                    "\tje      LE%d\n"
                    "\tL%d:\n",
                    loopStartCounter,
                    loopStartCounter
            );
            stack_push(loopEndStack, loopStartCounter);
            loopStartCounter++;
            break;
        case IR_LOOP_END:
            fprintf(
                    file,
                    "\tmov     eax, [memoryPointer] ;Loop end\n"
                    "\tmov     al, [eax]\n"
                    "\tcmp     al, 0\n"
                    "\tjne     L%d\n"
                    "\tLE%d:\n",
                    stack_peek(loopEndStack),
                    stack_peek(loopEndStack)
            );
            stack_pop(loopEndStack);
            break;
        case IR_OUTPUT:
            fprintf(
                    file,
                    "\tmov     rcx, [outHandle] ;Printing ASCII value of current cell\n"
                    "\tmov     rdx, [memoryPointer]\n"
                    "\tmov     r8, 1\n"
                    "\tlea     r9, [rbp - 4]\n"
                    "\tpush    0\n"
                    "\tcall    WriteConsoleA\n"
            );
        case IR_INPUT:
            //TODO: Implement
            break;
        }
        listItem = listItem->next;
    }
    print_asm_footer(file);

    return 1;
}