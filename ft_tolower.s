;int	ft_tolower(int c);
global _ft_tolower

extern _ft_isupper

%define BASE		rbp
%define STACK		rsp

section .text

_ft_tolower:
push	BASE
mov		BASE, STACK
	call _ft_isupper
	cmp rax, 1
	je exit
	mov rax, rdi
	mov		STACK, BASE
	pop		BASE
	ret

exit:
	add rdi, 32
	mov rax, rdi
	mov		STACK, BASE
	pop		BASE
	ret
