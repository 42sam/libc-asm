global _ft_isdigit

section .text

%define BASE		rbp
%define STACK		rsp

_ft_isdigit:
push	BASE
mov		BASE, STACK
	mov rax, 1 
	cmp	rdi, 0x30
	jl exit
	cmp rdi, 0x39
	jg exit
	mov		STACK, BASE
	pop		BASE
	ret

exit:
	mov rax, 0
	mov		STACK, BASE
	pop		BASE
	ret 
