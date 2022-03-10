#include <malloc.h>

#include "stack.h"

stack_t* create_stack() {
    stack_t* stack = calloc(1, sizeof(stack_t));
    stack->head = NULL;
    return stack;
}

void stack_push(stack_t* stack, uint32_t value) {
    node_t* previousHead = stack->head;
    node_t* newHead = calloc(1, sizeof(node_t));
    newHead->value = value;
    newHead->next = previousHead;
    stack->head = newHead;
}

uint32_t stack_pop(stack_t* stack) {
    node_t* previousHead = stack->head;
    uint32_t previousHeadValue = previousHead->value;
    stack->head = stack->head->next;
    free(previousHead);
    return previousHeadValue;
}

uint32_t stack_peek(stack_t* stack) {
    return stack->head->value;
}

int stack_empty(stack_t* stack) {
    return !stack;
}
