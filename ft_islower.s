global _ft_islower

section .text

%define BASE		rbp
%define STACK		rsp

_ft_islower:
push	BASE
mov		BASE, STACK
	mov rax, 1
	cmp rdi, 0x61
	jl exit
	cmp rdi, 0x7a
	jg exit
	mov		STACK, BASE
	pop		BASE
	ret
	
exit:
	mov rax, 0
	mov		STACK, BASE
	pop		BASE
	ret
