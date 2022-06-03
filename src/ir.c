#include <stdio.h>
#include <malloc.h>

#include "ir.h"
#include "util.h"

static int accumulate_neighboring_additions(const char* code, size_t* index) {
    int accumulatedSum = 0;
    size_t currIndex = *index;
    while (code[currIndex] == '+' || code[currIndex] == '-') {
        accumulatedSum += 0x2C - code[currIndex++];
    }
    *index = currIndex - 1;
    return accumulatedSum;
}

static int accumulate_neighboring_moves(const char* code, size_t* index) {
    int accumulatedMovements = 0;
    size_t currIndex = *index;
    while (code[currIndex] == '<' || code[currIndex] == '>') {
        accumulatedMovements += -(0x3D - code[currIndex++]);
    }
    *index = currIndex - 1;
    return accumulatedMovements;
}

ir_list* generate_ir(char* code) {
    ir_list* irList = ir_list_create_empty();
    size_t codeSize;
    size_t index = 0;
    while (code[index] != '\0') {
        char instruction = code[index];

        ir_token token;
        int16_t value = 0;
        switch (instruction) {
        case '0':
            token = IR_CLEAR;
            break;
        case '+':
        case '-':;
            int accumulatedSum = accumulate_neighboring_additions(code, &index);
            if (accumulatedSum == 0) {
                continue;
            }
            token = IR_ADD;
            value = accumulatedSum;
            break;
        case '<':
        case '>':;
            int accumulatedMovements = accumulate_neighboring_moves(code, &index);
            if (accumulatedMovements == 0) {
                index++;
                continue;
            }
            token = IR_MOVE;
            value = accumulatedMovements;
            break;
        case '[':
            token = IR_LOOP_START;
            break;
        case ']':
            token = IR_LOOP_END;
            break;
        case '.':
            token = IR_OUTPUT;
            break;
        case ',':
            token = IR_INPUT;
            break;
        default:
            index++;
            continue;
        }
        ir_instruction irInstruction = {token, value};
        ir_list_append(irList, irInstruction);
        index++;
    }
    printf("Why are we outside?\n");
    return irList;
}

ir_list* ir_list_create_empty() {
    ir_list* list = calloc(1, sizeof(ir_list));
    return list;
}

ir_list* ir_list_create(ir_instruction value) {
    ir_list* list = ir_list_create_empty();
    list->head = calloc(1, sizeof(ir_list_item));
    list->head->value = value;
    list->tail = list->head;
    return list;
}

void ir_list_append(ir_list* list, ir_instruction value) {
    ir_list_item* newNode = calloc(1, sizeof(ir_list_item));
    newNode->value = value;
    if(!list->head) {
        list->head = newNode;
        list->tail = newNode;
        return;
    }
    list->tail->next = newNode;
    list->tail = newNode;
}

void ir_list_clear(ir_list* list) {
    ir_list_item* currNode;
    ir_list_item* nextNode = list->head;
    while((currNode = nextNode)) {
        nextNode = currNode->next;
        free(currNode);
    }
}