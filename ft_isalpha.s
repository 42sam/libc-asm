;int	ft_isalpha(int c);
global _ft_isalpha

%define BASE		rbp
%define STACK		rsp

extern _ft_islower, _ft_isupper

section .text

_ft_isalpha:
push	BASE
mov		BASE, STACK
	call _ft_islower
	cmp rax, 1
	je exit
	call _ft_isupper
	je exit
	mov		STACK, BASE
	pop		BASE
	ret

exit:
mov		STACK, BASE
pop		BASE
	ret
