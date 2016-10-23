;int	ft_isascii(int c);
global _ft_isascii

%define BASE		rbp
%define STACK		rsp

section .text
	
_ft_isascii:
	push	BASE
	mov		BASE, STACK
	mov rax, 1
	cmp rdi, 0x0
	jl exit
	cmp rdi, 0x7f
	jg exit
	mov		STACK, BASE
	pop		BASE
	ret

exit:
	mov rax, 0
	mov		STACK, BASE
	pop		BASE
	ret
