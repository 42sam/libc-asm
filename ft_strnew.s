;char	*ft_strnew(size_t size);
global _ft_strnew

extern _ft_memalloc

%define BASE		rbp
%define STACK		rsp

section .text

_ft_strnew:
push	BASE
mov		BASE, STACK
	inc		rdi					; increment the first arg (size)
	call	_ft_memalloc		; call function
	mov		STACK, BASE
	pop		BASE
	ret							; return
