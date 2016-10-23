global _ft_isspace

section	.text

%define BASE		rbp
%define STACK		rsp

_ft_isspace:
push	BASE
mov		BASE, STACK
	cmp		rdi, 32
	je		exit
	cmp		rdi, 9
	je		exit
	cmp		rdi, 11
	je		exit
	cmp		rdi, 10
	je		exit
	cmp		rdi, 13
	je		exit
	cmp		rdi, 12
	je		exit
	mov		rax, 0
	mov		STACK, BASE
	pop		BASE
	ret

exit:
	mov		rax, 1
	mov		STACK, BASE
	pop		BASE
	ret
