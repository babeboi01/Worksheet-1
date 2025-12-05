%include "asm_io.inc"

global asm_main

segment .data
    num1 dd 10
    num2 dd 20

segment .text

asm_main:
    ; Load numbers
    mov eax, [num1]
    add eax, [num2]

    ; Print using print_int from asm_io
    call print_int
    call print_nl

    ; EAX already has result, ret sends it to C
    ret
