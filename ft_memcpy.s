;void	*ft_memcpy(void *s1, const void *s2, size_t n);
global	_ft_memcpy

%define FIRST		rdi
%define SEC			rsi
%define THIRD		rdx
%define CNT			rcx
%define BASE		rbp
%define STACK		rsp

section .text

_ft_memcpy:
	push	BASE
	mov		BASE, STACK
	push	FIRST
	push	SEC
	push	THIRD
	push	CNT

	cmp		SEC, 0
	je		end
	cmp		FIRST, 0
	je		end

	mov		rax, FIRST
	mov		CNT, THIRD
	rep		movsb;=memcpy
	jmp		end

end:
	pop		CNT
	pop		THIRD
	pop		SEC
	pop		FIRST
	mov		STACK, BASE
	pop		BASE
	ret
