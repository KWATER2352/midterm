section .text

global _start

_start:
	mov eax, [var1]
	xor edx, edx 
	mov ecx, [var2]
	div ecx			; var1 / var2

	cmp edx, 0 ; Used this command in prev classes, checks if remainder is zero
	jz evnn

;if remainder is not zero the it cont and prints odd msg
	mov eax, 4
	mov ebx, 1
	mov ecx, odd_msg
	mov edx, 10	;len of odd msg
	int 0x80

	jmp exit

	
evnn:		;if remainder is even jump here and print else cont

	mov eax, 4
	mov ebx,1
	mov ecx, evnn_msg
	mov edx, 13  	;len of even msg
	int 0x80

exit: 
   	mov eax, 1
	xor ebx, ebx
	int 0x80

section .data
	var1 dd 7
	var2 dd 2
	odd_msg db "odd number", 0xA, 0
    evnn_msg db "even number", 0xA, 0


section .bss




