;void	*ft_memset(void *b, int c, size_t n);
global	_ft_memset

%define BASE		rbp
%define STACK		rsp

section .text

_ft_memset:
push	BASE
mov		BASE, STACK
	mov		rcx, rdx ; lenght to counter
	mov		rdx, rdi ; str ecrase lenght
	mov		rax, rsi ; char in "return register"
	cld				 ; clear dir flag 
	rep		stosb	 ; repeat char in string
	mov		rax, rdx ; return str
	mov		STACK, BASE
	pop		BASE
	ret				 ; return
