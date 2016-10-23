global _ft_isupper

section .text

%define BASE		rbp
%define STACK		rsp

_ft_isupper:
push	BASE
mov		BASE, STACK
	mov rax, 1
	cmp rdi, 0x41
	jl exit
	cmp rdi, 0x5a
	jg exit
	mov		STACK, BASE
	pop		BASE
	ret

exit:
	mov rax, 0
	mov		STACK, BASE
	pop		BASE
	ret

