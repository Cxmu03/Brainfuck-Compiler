#ifndef BRAINFUCK_COMPILER_IR_H
#define BRAINFUCK_COMPILER_IR_H

#include <stdint.h>

typedef enum {
    IR_ADD = 0x01,
    IR_MOVE,
    IR_LOOP_START,
    IR_LOOP_END,
    IR_CLEAR,
    IR_INPUT,
    IR_OUTPUT
} ir_token;

typedef struct {
    ir_token token;
    int16_t value;
} ir_instruction;

typedef struct ir_list_item {
    struct ir_list_item* next;
    ir_instruction value;
} ir_list_item;

typedef struct ir_list {
    ir_list_item* head;
    ir_list_item* tail;
} ir_list;

static const char* ir_token_strings[] = {
        [IR_ADD] = "IR_ADD",
        [IR_MOVE] = "IR_MOVE",
        [IR_LOOP_START] = "IR_LOOP_START",
        [IR_LOOP_END] = "IR_LOOP_END",
        [IR_CLEAR] = "IR_CLEAR",
        [IR_INPUT] = "IR_INPUT",
        [IR_OUTPUT] = "IR_OUTPUT"
};

ir_list* ir_list_create_empty();
ir_list* ir_list_create(ir_instruction instruction);
void ir_list_append(ir_list* list, ir_instruction value);
void ir_list_clear(ir_list* list);

ir_list* generate_ir(char* code);

#endif //BRAINFUCK_COMPILER_IR_H
