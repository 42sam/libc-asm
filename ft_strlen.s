;size_t	ft_strlen(const char *s);
global _ft_strlen

%define STR		rdi
%define CNT		rcx
%define BASE		rbp
%define STACK		rsp

section .text
	
_ft_strlen:
	push	BASE
	mov		BASE, STACK

	push CNT
	push STR

	cmp STR, 0
	je exit

	xor CNT, CNT;compteur a zéro
	mov rax, 0

	not CNT 
	repne scasb ;search for what's in "al" decrementing CNT
	not CNT 
	sub CNT, 1
	mov rax, CNT ; could have done lea rax, [CNT - 1]
	jmp	exit
	
exit:
	pop STR
	pop CNT
	mov		STACK, BASE
	pop		BASE
	ret
