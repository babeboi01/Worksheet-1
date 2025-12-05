%include "asm_io.inc"

global asm_main

segment .data
    value dd 5

segment .text

asm_main:
    mov eax, [value]
    call print_int
    call print_nl
    ret
