#ifndef BRAINFUCK_COMPILER_STACK_H
#define BRAINFUCK_COMPILER_STACK_H

#include <stdint.h>

typedef struct Node{
    uint32_t value;
    struct Node* next;
} node_t;

typedef struct Stack {
    node_t* head;
} stack_t;

stack_t* create_stack();

int stack_empty(stack_t* stack);
void stack_push(stack_t* stack, uint32_t value);
uint32_t stack_peek(stack_t* stack);
uint32_t stack_pop(stack_t* stack);

#endif //BRAINFUCK_COMPILER_STACK_H