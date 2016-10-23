;void  *ft_memalloc(size_t size);
global _ft_memalloc

extern _malloc, _ft_bzero

%define FIRST		rdi
%define SEC			rsi
%define BASE		rbp
%define STACK		rsp

section .text

_ft_memalloc:
push	BASE
mov		BASE, STACK
	cmp		rdi, 0
	je		null
	push	rdi
	call	_malloc
	pop		rsi
	cmp		rax, 0			
	je		null
	mov		rdi, rax
	call	_ft_bzero
	jmp		end

null:
		mov rax, 0

end:
mov		STACK, BASE
pop		BASE
	ret
