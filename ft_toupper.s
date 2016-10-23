;int	ft_toupper(int c);
global _ft_toupper

extern _ft_islower

%define BASE		rbp
%define STACK		rsp

section .text

_ft_toupper:
push	BASE
mov		BASE, STACK
	call _ft_islower
	cmp rax, 1
	je exit
	mov rax, rdi
	mov		STACK, BASE
	pop		BASE
	ret

exit:
	sub rdi, 32
	mov rax, rdi
	mov		STACK, BASE
	pop		BASE
	ret
