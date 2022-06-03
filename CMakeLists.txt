cmake_minimum_required(VERSION 3.21)
project(Brainfuck_Compiler C)

set(CMAKE_C_STANDARD 23)
set(CMAKE_C_COMPILER "gcc")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -Werror=implicit-function-declaration -Werror=incompatible-pointer-types -Werror=return-type")

add_executable(Brainfuck_Compiler src/main.c src/stack.c src/stack.h src/ir.c src/ir.h src/util.c src/util.h src/preprocessor.c src/preprocessor.h src/codegen.c src/codegen.h src/compiler.c src/compiler.h)
