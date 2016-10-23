;void	 ft_bzero(void *s, size_t n);
global	_ft_bzero

%define CNT			rcx
%define FIRST		rdi
%define SEC			rsi
%define BASE		rbp
%define STACK		rsp

section .text

_ft_bzero:
push	BASE
mov		BASE, STACK
	cmp		SEC, 0
	je		end
	mov		CNT, SEC
bzero_loop:
	cmp		rdi, 0 ;semble inutile mais bon
	je		end
	mov		[rdi], byte 0
	inc		rdi
	loop	bzero_loop

end:
mov		STACK, BASE
pop		BASE
	ret
