bits 64
default rel
section .bss
    memory resb 3000
    memoryPointer resq 1
    outHandle resd 1
section .text
global main
extern ExitProcess
extern putchar
extern WriteConsoleA
extern GetStdHandle
main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 32
    mov     rcx, -11
    call    GetStdHandle
    mov     [outHandle], rax
    mov     rax, memory
    mov     [memoryPointer], rax
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 13
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE0
    L0:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 2
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 5
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 2
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L0
    LE0:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 6
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -3
    add     qword [memoryPointer], 10 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 15
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE1
    L1:
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE2
    L2:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L2
    LE2:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE3
    L3:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L3
    LE3:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L1
    LE1:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE4
    L4:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L4
    LE4:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE5
    L5:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L5
    LE5:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 5
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE6
    L6:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE7
    L7:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L7
    LE7:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L6
    LE6:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 26 ;MOV
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -17 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE8
    L8:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L8
    LE8:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE9
    L9:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE10
    L10:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L10
    LE10:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE11
    L11:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L11
    LE11:
    add     qword [memoryPointer], 2 ;MOV
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 4
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE12
    L12:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE13
    L13:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L13
    LE13:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L12
    LE12:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 7
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE14
    L14:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE15
    L15:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L15
    LE15:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L14
    LE14:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -16 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE16
    L16:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L16
    LE16:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE17
    L17:
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE18
    L18:
    add     qword [memoryPointer], 5 ;MOV
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE19
    L19:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L19
    LE19:
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE20
    L20:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L20
    LE20:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L18
    LE18:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE21
    L21:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L21
    LE21:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE22
    L22:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE23
    L23:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L23
    LE23:
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE24
    L24:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L24
    LE24:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L22
    LE22:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE25
    L25:
    add     qword [memoryPointer], -7 ;MOV
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L25
    LE25:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE26
    L26:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L26
    LE26:
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE27
    L27:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L27
    LE27:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 15
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE28
    L28:
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE29
    L29:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L29
    LE29:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE30
    L30:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L30
    LE30:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L28
    LE28:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE31
    L31:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L31
    LE31:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE32
    L32:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L32
    LE32:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE33
    L33:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE34
    L34:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L34
    LE34:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE35
    L35:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE36
    L36:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE37
    L37:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L37
    LE37:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE38
    L38:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L38
    LE38:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L36
    LE36:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE39
    L39:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L39
    LE39:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L35
    LE35:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE40
    L40:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L40
    LE40:
    add     qword [memoryPointer], -7 ;MOV
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE41
    L41:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE42
    L42:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L42
    LE42:
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L41
    LE41:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE43
    L43:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L43
    LE43:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L33
    LE33:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE44
    L44:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE45
    L45:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE46
    L46:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L46
    LE46:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE47
    L47:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L47
    LE47:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L45
    LE45:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE48
    L48:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L48
    LE48:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L44
    LE44:
    add     qword [memoryPointer], 5 ;MOV
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE49
    L49:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L49
    LE49:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE50
    L50:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L50
    LE50:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE51
    L51:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE52
    L52:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L52
    LE52:
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE53
    L53:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE54
    L54:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE55
    L55:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L55
    LE55:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE56
    L56:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L56
    LE56:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L54
    LE54:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE57
    L57:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L57
    LE57:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L53
    LE53:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE58
    L58:
    add     qword [memoryPointer], 2 ;MOV
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L58
    LE58:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE59
    L59:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE60
    L60:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L60
    LE60:
    add     qword [memoryPointer], -11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L59
    LE59:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE61
    L61:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L61
    LE61:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L51
    LE51:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE62
    L62:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE63
    L63:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE64
    L64:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L64
    LE64:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE65
    L65:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L65
    LE65:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L63
    LE63:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE66
    L66:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L66
    LE66:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L62
    LE62:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE67
    L67:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE68
    L68:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -36 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 13 ;MOV
    add     qword [memoryPointer], 23 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L68
    LE68:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L67
    LE67:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE69
    L69:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L69
    LE69:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 15
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE70
    L70:
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE71
    L71:
    add     qword [memoryPointer], 4 ;MOV
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L71
    LE71:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE72
    L72:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L72
    LE72:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L70
    LE70:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 21 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE73
    L73:
    add     qword [memoryPointer], -6 ;MOV
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L73
    LE73:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE74
    L74:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE75
    L75:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L75
    LE75:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE76
    L76:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE77
    L77:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L77
    LE77:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE78
    L78:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -13 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE79
    L79:
    add     qword [memoryPointer], -5 ;MOV
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L79
    LE79:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE80
    L80:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L80
    LE80:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L78
    LE78:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L76
    LE76:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE81
    L81:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L81
    LE81:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE82
    L82:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE83
    L83:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L83
    LE83:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE84
    L84:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -12 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE85
    L85:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L85
    LE85:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE86
    L86:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L86
    LE86:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L84
    LE84:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L82
    LE82:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE87
    L87:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE88
    L88:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L88
    LE88:
    add     qword [memoryPointer], -6 ;MOV
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L87
    LE87:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L74
    LE74:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE89
    L89:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L89
    LE89:
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE90
    L90:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L90
    LE90:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 19
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 7
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE91
    L91:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L91
    LE91:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE92
    L92:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L92
    LE92:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE93
    L93:
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE94
    L94:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L94
    LE94:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE95
    L95:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE96
    L96:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L96
    LE96:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L95
    LE95:
    add     qword [memoryPointer], 13 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE97
    L97:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L97
    LE97:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE98
    L98:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L98
    LE98:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE99
    L99:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE100
    L100:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L100
    LE100:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE101
    L101:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L101
    LE101:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L99
    LE99:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE102
    L102:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L102
    LE102:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE103
    L103:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE104
    L104:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -8 ;MOV
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L104
    LE104:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L103
    LE103:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE105
    L105:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L105
    LE105:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 15
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE106
    L106:
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE107
    L107:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L107
    LE107:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE108
    L108:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L108
    LE108:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE109
    L109:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L109
    LE109:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L106
    LE106:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE110
    L110:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L110
    LE110:
    add     qword [memoryPointer], -3 ;MOV
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE111
    L111:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L111
    LE111:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE112
    L112:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE113
    L113:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L113
    LE113:
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE114
    L114:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE115
    L115:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE116
    L116:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L116
    LE116:
    add     qword [memoryPointer], -1 ;MOV
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE117
    L117:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L117
    LE117:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L115
    LE115:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE118
    L118:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L118
    LE118:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L114
    LE114:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE119
    L119:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L119
    LE119:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE120
    L120:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE121
    L121:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L121
    LE121:
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L120
    LE120:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE122
    L122:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L122
    LE122:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L112
    LE112:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE123
    L123:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE124
    L124:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE125
    L125:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L125
    LE125:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE126
    L126:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L126
    LE126:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L124
    LE124:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE127
    L127:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L127
    LE127:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L123
    LE123:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE128
    L128:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE129
    L129:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L129
    LE129:
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE130
    L130:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L130
    LE130:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L128
    LE128:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE131
    L131:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L131
    LE131:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE132
    L132:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L132
    LE132:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE133
    L133:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L133
    LE133:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE134
    L134:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE135
    L135:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L135
    LE135:
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE136
    L136:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE137
    L137:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE138
    L138:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L138
    LE138:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE139
    L139:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L139
    LE139:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L137
    LE137:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE140
    L140:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L140
    LE140:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L136
    LE136:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE141
    L141:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L141
    LE141:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE142
    L142:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE143
    L143:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L143
    LE143:
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L142
    LE142:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE144
    L144:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L144
    LE144:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L134
    LE134:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE145
    L145:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE146
    L146:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L146
    LE146:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE147
    L147:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE148
    L148:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L148
    LE148:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE149
    L149:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L149
    LE149:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L147
    LE147:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE150
    L150:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L150
    LE150:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L145
    LE145:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE151
    L151:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE152
    L152:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -36 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 36 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L152
    LE152:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L151
    LE151:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE153
    L153:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L153
    LE153:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE154
    L154:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE155
    L155:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -36 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    add     qword [memoryPointer], 35 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L155
    LE155:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L154
    LE154:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE156
    L156:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L156
    LE156:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 8
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 7
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE157
    L157:
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE158
    L158:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L158
    LE158:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE159
    L159:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L159
    LE159:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L157
    LE157:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE160
    L160:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE161
    L161:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L161
    LE161:
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE162
    L162:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L162
    LE162:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L160
    LE160:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE163
    L163:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L163
    LE163:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE164
    L164:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE165
    L165:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L165
    LE165:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L164
    LE164:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE166
    L166:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L166
    LE166:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE167
    L167:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L167
    LE167:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE168
    L168:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE169
    L169:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 2
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L169
    LE169:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE170
    L170:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L170
    LE170:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L168
    LE168:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE171
    L171:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L171
    LE171:
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE172
    L172:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L172
    LE172:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE173
    L173:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L173
    LE173:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE174
    L174:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE175
    L175:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE176
    L176:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L176
    LE176:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE177
    L177:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE178
    L178:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L178
    LE178:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE179
    L179:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -12 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE180
    L180:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L180
    LE180:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE181
    L181:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L181
    LE181:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L179
    LE179:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L177
    LE177:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE182
    L182:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L182
    LE182:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE183
    L183:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE184
    L184:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L184
    LE184:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE185
    L185:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -11 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE186
    L186:
    add     qword [memoryPointer], -5 ;MOV
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L186
    LE186:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE187
    L187:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L187
    LE187:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L185
    LE185:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L183
    LE183:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE188
    L188:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE189
    L189:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L189
    LE189:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L188
    LE188:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L175
    LE175:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE190
    L190:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L190
    LE190:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE191
    L191:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L191
    LE191:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE192
    L192:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE193
    L193:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE194
    L194:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L194
    LE194:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE195
    L195:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L195
    LE195:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L193
    LE193:
    add     qword [memoryPointer], -5 ;MOV
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE196
    L196:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE197
    L197:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE198
    L198:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -14 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE199
    L199:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L199
    LE199:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L198
    LE198:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE200
    L200:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -9 ;MOV
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L200
    LE200:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L197
    LE197:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE201
    L201:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE202
    L202:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -14 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L202
    LE202:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L201
    LE201:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE203
    L203:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L203
    LE203:
    add     qword [memoryPointer], -2 ;MOV
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L196
    LE196:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L192
    LE192:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE204
    L204:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L204
    LE204:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE205
    L205:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE206
    L206:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE207
    L207:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L207
    LE207:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE208
    L208:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L208
    LE208:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L206
    LE206:
    add     qword [memoryPointer], -3 ;MOV
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE209
    L209:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE210
    L210:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE211
    L211:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -14 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 10 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE212
    L212:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L212
    LE212:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L211
    LE211:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE213
    L213:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 10 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L213
    LE213:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L210
    LE210:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE214
    L214:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE215
    L215:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -14 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 10 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L215
    LE215:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L214
    LE214:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE216
    L216:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L216
    LE216:
    add     qword [memoryPointer], -11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L209
    LE209:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L205
    LE205:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L174
    LE174:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE217
    L217:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L217
    LE217:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE218
    L218:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE219
    L219:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L219
    LE219:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE220
    L220:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE221
    L221:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE222
    L222:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -14 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE223
    L223:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L223
    LE223:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L222
    LE222:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE224
    L224:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -14 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L224
    LE224:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L221
    LE221:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE225
    L225:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE226
    L226:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -14 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L226
    LE226:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L225
    LE225:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE227
    L227:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L227
    LE227:
    add     qword [memoryPointer], -7 ;MOV
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L220
    LE220:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L218
    LE218:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE228
    L228:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L228
    LE228:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE229
    L229:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L229
    LE229:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE230
    L230:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE231
    L231:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L231
    LE231:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE232
    L232:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L232
    LE232:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L230
    LE230:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE233
    L233:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L233
    LE233:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 15
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE234
    L234:
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE235
    L235:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L235
    LE235:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE236
    L236:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L236
    LE236:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L234
    LE234:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE237
    L237:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L237
    LE237:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE238
    L238:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L238
    LE238:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE239
    L239:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE240
    L240:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L240
    LE240:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE241
    L241:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE242
    L242:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE243
    L243:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L243
    LE243:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE244
    L244:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L244
    LE244:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L242
    LE242:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE245
    L245:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L245
    LE245:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L241
    LE241:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE246
    L246:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L246
    LE246:
    add     qword [memoryPointer], -8 ;MOV
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE247
    L247:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE248
    L248:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L248
    LE248:
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L247
    LE247:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE249
    L249:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L249
    LE249:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L239
    LE239:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE250
    L250:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE251
    L251:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE252
    L252:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L252
    LE252:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE253
    L253:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L253
    LE253:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L251
    LE251:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE254
    L254:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L254
    LE254:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L250
    LE250:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE255
    L255:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE256
    L256:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -36 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 36 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L256
    LE256:
    add     qword [memoryPointer], 1 ;MOV
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L255
    LE255:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE257
    L257:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L257
    LE257:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 15
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE258
    L258:
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE259
    L259:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L259
    LE259:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE260
    L260:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L260
    LE260:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L258
    LE258:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE261
    L261:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE262
    L262:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L262
    LE262:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE263
    L263:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE264
    L264:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L264
    LE264:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE265
    L265:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -5 ;MOV
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE266
    L266:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L266
    LE266:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE267
    L267:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L267
    LE267:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L265
    LE265:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L263
    LE263:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE268
    L268:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L268
    LE268:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE269
    L269:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE270
    L270:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L270
    LE270:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE271
    L271:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -12 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE272
    L272:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L272
    LE272:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE273
    L273:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L273
    LE273:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L271
    LE271:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L269
    LE269:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE274
    L274:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE275
    L275:
    add     qword [memoryPointer], 2 ;MOV
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L275
    LE275:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L274
    LE274:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L261
    LE261:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE276
    L276:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L276
    LE276:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE277
    L277:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L277
    LE277:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE278
    L278:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE279
    L279:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE280
    L280:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L280
    LE280:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE281
    L281:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L281
    LE281:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L279
    LE279:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE282
    L282:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE283
    L283:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE284
    L284:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 12 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE285
    L285:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L285
    LE285:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L284
    LE284:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE286
    L286:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 12 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L286
    LE286:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L283
    LE283:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE287
    L287:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE288
    L288:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 12 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L288
    LE288:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L287
    LE287:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE289
    L289:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L289
    LE289:
    add     qword [memoryPointer], -13 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L282
    LE282:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L278
    LE278:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE290
    L290:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L290
    LE290:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE291
    L291:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE292
    L292:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE293
    L293:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L293
    LE293:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE294
    L294:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L294
    LE294:
    add     qword [memoryPointer], 2 ;MOV
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L292
    LE292:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE295
    L295:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE296
    L296:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE297
    L297:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE298
    L298:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L298
    LE298:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L297
    LE297:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE299
    L299:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L299
    LE299:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L296
    LE296:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE300
    L300:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE301
    L301:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L301
    LE301:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L300
    LE300:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE302
    L302:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L302
    LE302:
    add     qword [memoryPointer], -12 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L295
    LE295:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L291
    LE291:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE303
    L303:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L303
    LE303:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE304
    L304:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L304
    LE304:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE305
    L305:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE306
    L306:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L306
    LE306:
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE307
    L307:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L307
    LE307:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L305
    LE305:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE308
    L308:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L308
    LE308:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE309
    L309:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L309
    LE309:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE310
    L310:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE311
    L311:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 2
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L311
    LE311:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE312
    L312:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L312
    LE312:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L310
    LE310:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE313
    L313:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L313
    LE313:
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE314
    L314:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L314
    LE314:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE315
    L315:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L315
    LE315:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE316
    L316:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE317
    L317:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE318
    L318:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L318
    LE318:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE319
    L319:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE320
    L320:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L320
    LE320:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE321
    L321:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE322
    L322:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L322
    LE322:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE323
    L323:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L323
    LE323:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L321
    LE321:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L319
    LE319:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE324
    L324:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L324
    LE324:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE325
    L325:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE326
    L326:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L326
    LE326:
    add     qword [memoryPointer], -1 ;MOV
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE327
    L327:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -12 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE328
    L328:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L328
    LE328:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE329
    L329:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L329
    LE329:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L327
    LE327:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L325
    LE325:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE330
    L330:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE331
    L331:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L331
    LE331:
    add     qword [memoryPointer], -1 ;MOV
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L330
    LE330:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L317
    LE317:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE332
    L332:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L332
    LE332:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE333
    L333:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L333
    LE333:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE334
    L334:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE335
    L335:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE336
    L336:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L336
    LE336:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE337
    L337:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L337
    LE337:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L335
    LE335:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE338
    L338:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE339
    L339:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE340
    L340:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -13 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 10 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE341
    L341:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L341
    LE341:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L340
    LE340:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE342
    L342:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -13 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 10 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L342
    LE342:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L339
    LE339:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE343
    L343:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE344
    L344:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -13 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 10 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L344
    LE344:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L343
    LE343:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE345
    L345:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L345
    LE345:
    add     qword [memoryPointer], -11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L338
    LE338:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE346
    L346:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L346
    LE346:
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE347
    L347:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L347
    LE347:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L334
    LE334:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE348
    L348:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L348
    LE348:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE349
    L349:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE350
    L350:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE351
    L351:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L351
    LE351:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE352
    L352:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L352
    LE352:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L350
    LE350:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE353
    L353:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE354
    L354:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE355
    L355:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -13 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE356
    L356:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L356
    LE356:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L355
    LE355:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE357
    L357:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -13 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L357
    LE357:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L354
    LE354:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE358
    L358:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE359
    L359:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -13 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L359
    LE359:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L358
    LE358:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE360
    L360:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L360
    LE360:
    add     qword [memoryPointer], -12 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L353
    LE353:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L349
    LE349:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L316
    LE316:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE361
    L361:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L361
    LE361:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE362
    L362:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE363
    L363:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L363
    LE363:
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE364
    L364:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L364
    LE364:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE365
    L365:
    add     qword [memoryPointer], 6 ;MOV
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L365
    LE365:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE366
    L366:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE367
    L367:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE368
    L368:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -13 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE369
    L369:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L369
    LE369:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L368
    LE368:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE370
    L370:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -8 ;MOV
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L370
    LE370:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L367
    LE367:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE371
    L371:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE372
    L372:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -13 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L372
    LE372:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L371
    LE371:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE373
    L373:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L373
    LE373:
    add     qword [memoryPointer], -8 ;MOV
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L366
    LE366:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L362
    LE362:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE374
    L374:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L374
    LE374:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE375
    L375:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L375
    LE375:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE376
    L376:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE377
    L377:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L377
    LE377:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE378
    L378:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L378
    LE378:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L376
    LE376:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE379
    L379:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L379
    LE379:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE380
    L380:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE381
    L381:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L381
    LE381:
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE382
    L382:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L382
    LE382:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L380
    LE380:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE383
    L383:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L383
    LE383:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 15
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE384
    L384:
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE385
    L385:
    add     qword [memoryPointer], 4 ;MOV
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L385
    LE385:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE386
    L386:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L386
    LE386:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L384
    LE384:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE387
    L387:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L387
    LE387:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE388
    L388:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L388
    LE388:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE389
    L389:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE390
    L390:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L390
    LE390:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE391
    L391:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE392
    L392:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE393
    L393:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L393
    LE393:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE394
    L394:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L394
    LE394:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L392
    LE392:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE395
    L395:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L395
    LE395:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L391
    LE391:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE396
    L396:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L396
    LE396:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE397
    L397:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE398
    L398:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L398
    LE398:
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L397
    LE397:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE399
    L399:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L399
    LE399:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L389
    LE389:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE400
    L400:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE401
    L401:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L401
    LE401:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE402
    L402:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE403
    L403:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L403
    LE403:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE404
    L404:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L404
    LE404:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L402
    LE402:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE405
    L405:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L405
    LE405:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L400
    LE400:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE406
    L406:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L406
    LE406:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE407
    L407:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L407
    LE407:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE408
    L408:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE409
    L409:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L409
    LE409:
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE410
    L410:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE411
    L411:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE412
    L412:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L412
    LE412:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE413
    L413:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L413
    LE413:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L411
    LE411:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE414
    L414:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L414
    LE414:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L410
    LE410:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE415
    L415:
    add     qword [memoryPointer], 6 ;MOV
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L415
    LE415:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE416
    L416:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE417
    L417:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L417
    LE417:
    add     qword [memoryPointer], -11 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L416
    LE416:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE418
    L418:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L418
    LE418:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L408
    LE408:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE419
    L419:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE420
    L420:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE421
    L421:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L421
    LE421:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE422
    L422:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L422
    LE422:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L420
    LE420:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE423
    L423:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L423
    LE423:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L419
    LE419:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE424
    L424:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE425
    L425:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -36 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 17 ;MOV
    add     qword [memoryPointer], 19 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L425
    LE425:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L424
    LE424:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE426
    L426:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L426
    LE426:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 15
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE427
    L427:
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE428
    L428:
    add     qword [memoryPointer], 8 ;MOV
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L428
    LE428:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE429
    L429:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L429
    LE429:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L427
    LE427:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 21 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE430
    L430:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L430
    LE430:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE431
    L431:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE432
    L432:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L432
    LE432:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE433
    L433:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE434
    L434:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L434
    LE434:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE435
    L435:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -13 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE436
    L436:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L436
    LE436:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE437
    L437:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L437
    LE437:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L435
    LE435:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L433
    LE433:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE438
    L438:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L438
    LE438:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE439
    L439:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE440
    L440:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L440
    LE440:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE441
    L441:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    add     qword [memoryPointer], -11 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE442
    L442:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L442
    LE442:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE443
    L443:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L443
    LE443:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L441
    LE441:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L439
    LE439:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE444
    L444:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE445
    L445:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L445
    LE445:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L444
    LE444:
    add     qword [memoryPointer], 1 ;MOV
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L431
    LE431:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE446
    L446:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L446
    LE446:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE447
    L447:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L447
    LE447:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE448
    L448:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L448
    LE448:
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L93
    LE93:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE449
    L449:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L449
    LE449:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE450
    L450:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     rcx, [outHandle]
    mov     rdx, [memoryPointer]
    mov     r8, 1
    lea     r9, [rbp - 4]
    push    0
    call    WriteConsoleA
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L450
    LE450:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE451
    L451:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     rcx, [outHandle]
    mov     rdx, [memoryPointer]
    mov     r8, 1
    lea     r9, [rbp - 4]
    push    0
    call    WriteConsoleA
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L451
    LE451:
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE452
    L452:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L452
    LE452:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE453
    L453:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L453
    LE453:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE454
    L454:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L454
    LE454:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE455
    L455:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L455
    LE455:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 11
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE456
    L456:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE457
    L457:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L457
    LE457:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L456
    LE456:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -8 ;MOV
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE458
    L458:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L458
    LE458:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE459
    L459:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L459
    LE459:
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE460
    L460:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE461
    L461:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L461
    LE461:
    add     qword [memoryPointer], -5 ;MOV
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE462
    L462:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE463
    L463:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L463
    LE463:
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE464
    L464:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE465
    L465:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L465
    LE465:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L464
    LE464:
    add     qword [memoryPointer], -4 ;MOV
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L462
    LE462:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L460
    LE460:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE466
    L466:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L466
    LE466:
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE467
    L467:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE468
    L468:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE469
    L469:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L469
    LE469:
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE470
    L470:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 3 ;MOV
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L470
    LE470:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L468
    LE468:
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE471
    L471:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE472
    L472:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L472
    LE472:
    add     qword [memoryPointer], -14 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L471
    LE471:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE473
    L473:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L473
    LE473:
    add     qword [memoryPointer], -5 ;MOV
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE474
    L474:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE475
    L475:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE476
    L476:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L476
    LE476:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE477
    L477:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L477
    LE477:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L475
    LE475:
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE478
    L478:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L478
    LE478:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L474
    LE474:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L467
    LE467:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE479
    L479:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L479
    LE479:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE480
    L480:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE481
    L481:
    add     qword [memoryPointer], 2 ;MOV
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE482
    L482:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L482
    LE482:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L481
    LE481:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE483
    L483:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE484
    L484:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE485
    L485:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L485
    LE485:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE486
    L486:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L486
    LE486:
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L484
    LE484:
    add     qword [memoryPointer], -2 ;MOV
    add     qword [memoryPointer], -4 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE487
    L487:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L487
    LE487:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L483
    LE483:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 5
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE488
    L488:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE489
    L489:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L489
    LE489:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L488
    LE488:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE490
    L490:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L490
    LE490:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE491
    L491:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE492
    L492:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L492
    LE492:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE493
    L493:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE494
    L494:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L494
    LE494:
    add     qword [memoryPointer], -4 ;MOV
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE495
    L495:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -16 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE496
    L496:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L496
    LE496:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE497
    L497:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L497
    LE497:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L495
    LE495:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L493
    LE493:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE498
    L498:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L498
    LE498:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE499
    L499:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE500
    L500:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L500
    LE500:
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE501
    L501:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -14 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE502
    L502:
    add     qword [memoryPointer], -3 ;MOV
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L502
    LE502:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE503
    L503:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L503
    LE503:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L501
    LE501:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L499
    LE499:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE504
    L504:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE505
    L505:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L505
    LE505:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L504
    LE504:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L491
    LE491:
    add     qword [memoryPointer], -7 ;MOV
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE506
    L506:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L506
    LE506:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 5
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE507
    L507:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE508
    L508:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L508
    LE508:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L507
    LE507:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE509
    L509:
    add     qword [memoryPointer], -7 ;MOV
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L509
    LE509:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L480
    LE480:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L17
    LE17:
    add     qword [memoryPointer], -4 ;MOV
    mov     rcx, [outHandle]
    mov     rdx, [memoryPointer]
    mov     r8, 1
    lea     r9, [rbp - 4]
    push    0
    call    WriteConsoleA
    add     qword [memoryPointer], 10 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE510
    L510:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L510
    LE510:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE511
    L511:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L511
    LE511:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 10
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE512
    L512:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE513
    L513:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 8 ;MOV
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L513
    LE513:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L512
    LE512:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -15 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE514
    L514:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L514
    LE514:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE515
    L515:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L515
    LE515:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE516
    L516:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE517
    L517:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L517
    LE517:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE518
    L518:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE519
    L519:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L519
    LE519:
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE520
    L520:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE521
    L521:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L521
    LE521:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L520
    LE520:
    add     qword [memoryPointer], -10 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L518
    LE518:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L516
    LE516:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE522
    L522:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L522
    LE522:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE523
    L523:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE524
    L524:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE525
    L525:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L525
    LE525:
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE526
    L526:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L526
    LE526:
    add     qword [memoryPointer], 6 ;MOV
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L524
    LE524:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE527
    L527:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE528
    L528:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L528
    LE528:
    add     qword [memoryPointer], -15 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L527
    LE527:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE529
    L529:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L529
    LE529:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE530
    L530:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE531
    L531:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE532
    L532:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L532
    LE532:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE533
    L533:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L533
    LE533:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L531
    LE531:
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE534
    L534:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L534
    LE534:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L530
    LE530:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L523
    LE523:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE535
    L535:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L535
    LE535:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE536
    L536:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE537
    L537:
    add     qword [memoryPointer], 3 ;MOV
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE538
    L538:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L538
    LE538:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L537
    LE537:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE539
    L539:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE540
    L540:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE541
    L541:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L541
    LE541:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE542
    L542:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L542
    LE542:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L540
    LE540:
    add     qword [memoryPointer], -2 ;MOV
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE543
    L543:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 7 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -7 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L543
    LE543:
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L539
    LE539:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 5
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE544
    L544:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE545
    L545:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L545
    LE545:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L544
    LE544:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 27 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE546
    L546:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L546
    LE546:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE547
    L547:
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE548
    L548:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L548
    LE548:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE549
    L549:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE550
    L550:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L550
    LE550:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE551
    L551:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -17 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE552
    L552:
    add     qword [memoryPointer], -7 ;MOV
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L552
    LE552:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE553
    L553:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L553
    LE553:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L551
    LE551:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L549
    LE549:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE554
    L554:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L554
    LE554:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE555
    L555:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -2 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE556
    L556:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L556
    LE556:
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE557
    L557:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -15 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE558
    L558:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L558
    LE558:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE559
    L559:
    add     qword [memoryPointer], 6 ;MOV
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L559
    LE559:
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L557
    LE557:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L555
    LE555:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], 1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE560
    L560:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -1 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE561
    L561:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L561
    LE561:
    add     qword [memoryPointer], -8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L560
    LE560:
    add     qword [memoryPointer], 8 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L547
    LE547:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE562
    L562:
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L562
    LE562:
    add     qword [memoryPointer], 4 ;MOV
    mov     eax, [memoryPointer]
    mov     byte [eax], 0
    add     qword [memoryPointer], -3 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 4
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE563
    L563:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE564
    L564:
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], 1
    add     qword [memoryPointer], -9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L564
    LE564:
    add     qword [memoryPointer], 9 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L563
    LE563:
    add     qword [memoryPointer], 5 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], 27 ;MOV
    mov     eax, [memoryPointer] ;ADD
    add     byte [eax], -1
    add     qword [memoryPointer], -6 ;MOV
    mov     eax, [memoryPointer] ;LPS
    mov     al, [eax]
    cmp     al, 0
    je      LE565
    L565:
    add     qword [memoryPointer], -4 ;MOV
    add     qword [memoryPointer], -5 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L565
    LE565:
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L536
    LE536:
    add     qword [memoryPointer], 3 ;MOV
    mov     eax, [memoryPointer] ;LPE
    mov     al, [eax]
    cmp     al, 0
    jne     L9
    LE9:
    xor     rcx, rcx
    call    ExitProcess
