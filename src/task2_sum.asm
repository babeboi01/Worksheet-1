%include "asm_io.inc"
global asm_main

segment .data
    total dd 0

segment .text

asm_main:
    mov ecx, 100
    mov eax, 0  ; sum

sum_loop:
    add eax, ecx
    loop sum_loop

    mov [total], eax

    ; Print sum
    mov eax, [total]
    call print_int
    call print_nl

    ret
