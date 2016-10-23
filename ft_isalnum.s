;int	ft_isalnum(int c);
global _ft_isalnum

%define BASE		rbp
%define STACK		rsp

extern _ft_isalpha, _ft_isdigit

section .text

_ft_isalnum:
push	BASE
mov		BASE, STACK
	call _ft_isalpha
	cmp rax, 1
	je exit
	call _ft_isdigit
	je exit
	mov		STACK, BASE
	pop		BASE
	ret

exit:
mov		STACK, BASE
pop		BASE
	ret
