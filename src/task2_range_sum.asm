%include "asm_io.inc"
global asm_main

segment .data
    msg_start db "Enter start value: ", 0
    msg_end db "Enter end value: ", 0
    err_msg db "Invalid range!", 0

segment .text

asm_main:
    ; Ask start
    mov eax, msg_start
    call print_string
    call read_int
    mov ebx, eax   ; start → EBX

    ; Ask end
    mov eax, msg_end
    call print_string
    call read_int
    mov ecx, eax   ; end → ECX

    ; Validate
    cmp ecx, ebx
    jl invalid

    mov eax, 0  ; sum register

sum_loop:
    add eax, ebx
    inc ebx
    cmp ebx, ecx
    jle sum_loop

    ; Print sum
    call print_int
    call print_nl
    ret

invalid:
    mov eax, err_msg
    call print_string
    call print_nl
    ret

