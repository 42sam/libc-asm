global	_ft_putstr

extern	_ft_strlen

%define WRITE		0x2000004
%define STDOUT		1
%define FIRST		rdi
%define SEC			rsi
%define THIRD		rdx
%define BASE		rbp
%define STACK		rsp

section .text

_ft_putstr:
	push	BASE
	mov		BASE, STACK

	call	_ft_strlen
	mov		THIRD, rax
	mov		SEC, FIRST
	mov		FIRST, STDOUT
	mov		rax, WRITE
	syscall

	mov		STACK, BASE
	pop		BASE
	ret
