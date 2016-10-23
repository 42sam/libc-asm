;void ft_cat(int fd);
global	_ft_cat

%define READ 		0x2000003
%define WRITE		0x2000004
%define BUFF_SIZE 	64
%define FIRST		rdi
%define SEC			rsi
%define THIRD		rdx
%define STACK		rsp
%define FD			rbx
%define BASE		rbp
%define STACK		rsp

section .text

_ft_cat :
	enter	BUFF_SIZE, 0
	cmp		FIRST, -1
	je		end
	mov		FD, FIRST;__helps loop

read:
	mov		FIRST, FD
	mov		rax, READ
	mov		SEC, STACK
	mov		THIRD, BUFF_SIZE
	syscall

	jc		end
	cmp		rax, 0
	je		end

put :
	mov		FIRST, 1
	mov		SEC, STACK
	mov		THIRD, rax
	mov		rax, WRITE
	syscall
	jc		end
	jmp		read

end :
	leave
	ret
