;char  *ft_strcpy(char *s1, const char *s2);
global _ft_strcpy

%define BUFF_SIZE 	64
%define FIRST		rdi
%define SEC			rsi
%define THIRD		rdx
%define STACK		rsp
%define BASE		rbp

section .text

_ft_strcpy:
	push	BASE		;=eNTER
	mov		BASE, STACK	;=ENTER
	cmp			rsi, 0
	je			null
	cmp			rdi, 0
	je			null
	mov			rbx, rdi
	mov			rax, rdi

loop:
	cmp			[rsi], byte 0
	je			end
	mov			bl, [rsi]
	mov			[rdi], bl
	inc			rdi
	inc			rsi
	jmp			loop

null:
	mov			rax, 0
	mov		STACK, BASE
	pop		BASE
	ret

end:
	mov			[rdi], byte 0
	mov		STACK, BASE ;| == Leave
	pop		BASE      	;| == Leave
	ret
