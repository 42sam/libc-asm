global _ft_isprint

section .text

%define BASE		rbp
%define STACK		rsp

_ft_isprint:
push	BASE
mov		BASE, STACK
	mov rax, 1
	cmp rdi, 0x20
	jl exit
	cmp rdi, 0x7e
	jg exit
	mov		STACK, BASE
	pop		BASE
	ret

exit:
	mov rax, 0
	mov		STACK, BASE
	pop		BASE
	ret
