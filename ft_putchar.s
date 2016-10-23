global	_ft_putchar

%define WRITE		0x2000004
%define STDOUT		1
%define FIRST		rdi
%define SEC			rsi
%define THIRD		rdx
%define BASE		rbp
%define STACK		rsp
%define TO_COPY		rbx

section .text

_ft_putchar:
	push	BASE
	mov		BASE, STACK

	push	FIRST				
	mov		FIRST, STDOUT			
	mov		SEC, STACK; which is FIRST
	mov		THIRD, 1		
	mov		rax, WRITE			
	syscall		
	pop		FIRST
	mov		STACK, BASE
	pop		BASE
	ret
