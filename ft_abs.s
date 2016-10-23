global _ft_abs

%define ARG		rdi
%define BASE		rbp
%define STACK		rsp


section .text

_ft_abs:
		push	BASE
		mov		BASE, STACK
		cmp		ARG, 0
		jl		_neg
		mov		rax, ARG
		jmp		end

_neg:
		not		ARG
		add		ARG, 1
		mov		rax, ARG

end:
		mov		STACK, BASE
		pop		BASE
		ret
