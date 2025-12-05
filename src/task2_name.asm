%include "asm_io.inc"
global asm_main

segment .bss
    name resb 100

segment .data
    msg1 db "Enter your name: ", 0
    msg2 db "Enter number of times (50-100): ", 0
    err db "Invalid number!", 0

segment .text

; ---------------------------
; CUSTOM READ STRING FUNCTION
; ---------------------------
read_string_my:
    ; EAX = buffer
    ; EBX = max length
    push ecx
    push edx

.next_char:
    call read_char
    cmp al, 0x0A
    je .done

    mov [eax], al
    inc eax
    dec ebx
    jnz .next_char

.done:
    mov byte [eax], 0
    pop edx
    pop ecx
    ret

; ---------------------------
; MAIN PROGRAM
; ---------------------------
asm_main:

    mov eax, msg1
    call print_string

    mov eax, name
    mov ebx, 100
    call read_string_my

    mov eax, msg2
    call print_string
    call read_int
    mov ecx, eax

    cmp ecx, 50
    jl invalid
    cmp ecx, 100
    jg invalid

print_loop:
    mov eax, name
    call print_string
    call print_nl
    loop print_loop
    ret

invalid:
    mov eax, err
    call print_string
    call print_nl
    ret
