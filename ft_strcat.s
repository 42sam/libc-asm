global _ft_strcat

%define FIRST		rdi
%define SEC			rsi
%define BASE		rbp
%define STACK		rsp

section .text

_ft_strcat:
		push	BASE
		mov		BASE, STACK
		xor		al, al
		mov		r9, FIRST

	find_end:
		cmp		byte [FIRST], 0
		je		cat
		inc		FIRST
		jmp		find_end

	cat:
		cmp		byte [SEC], 0
		je		end
		mov		rax, [SEC]
		mov		[FIRST], al
		inc		SEC
		inc		FIRST
		jmp		cat

	end:
		mov		byte [FIRST], 0
		mov		rax, r9
		mov		STACK, BASE
		pop		BASE
		ret
