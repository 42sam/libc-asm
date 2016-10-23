;char  *ft_strncpy(char *s1, const char *s2, size_t n);
global _ft_strncpy

%define THIRD		rdx
%define CNT			rcx
%define FIRST		rdi
%define SEC			rsi
%define BASE		rbp
%define STACK		rsp

section .text

_ft_strncpy:
	push	BASE			
	push	CNT			
	push	THIRD
	push	FIRST
	push	rax
	mov		BASE, STACK

	cmp		SEC, 0
	je		null
	cmp		FIRST, 0
	je		null

	mov		CNT, THIRD
	mov		rax, FIRST
	rep		movsb;=memcpy
	jmp		exit

null:;if one arg is NULL
	mov		rax, 0
	jmp		exit

end:
	mov		[FIRST], byte 0
	jmp		exit

exit:
	mov		STACK, BASE;LEAVE
	pop		rax
	pop		FIRST
	pop		THIRD
	pop		CNT
	pop		BASE
	ret
