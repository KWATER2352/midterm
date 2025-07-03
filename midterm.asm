section .text

global _start

_start:



	mov eax, [var1] 
	add eax, 2
	mov [result1], eax ;result = var1 +2, 1 + 2 = 3
	
    mov ebx, [var3]
	sub ebx, [var2]
	mov [result2], ebx   ;result2=var3-var2, 3 - 1 = 2

    mov eax, [result1]
    xor edx, edx
	div dword [result2] ;final result div is [result1/result2]
                        ; 3/2 = 1 

    mov ebx, 0
	mov eax, 1
	int 0x80

section .data
	var1 dd 1
	var2 dd 1
	var3 dd 3

section .bss

	result1 resd 1
	result2 resd 1

