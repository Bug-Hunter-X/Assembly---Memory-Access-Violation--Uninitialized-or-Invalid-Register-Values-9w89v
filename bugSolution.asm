section .data
    array DWORD 10, 20, 30, 40, 50 ; Sample array
    array_size EQU ($ - array) / 4 ; Calculate the size of the array

section .text
    global _start

_start:
    mov ecx, 2 ; Valid index into the array
    cmp ecx, array_size ; Check for out of bounds access 
    jae out_of_bounds ; If out of bounds jump to handle it
    mov ebx, array ; Base address of the array
    mov eax, [ebx + ecx*4] ; Access memory safely; Now safe as we check bounds
    ; ... further operations on eax
    jmp exit

out_of_bounds:
    ; Handle out of bounds access appropriately
    ;  This might involve logging an error, exiting, etc
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80

exit:
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80