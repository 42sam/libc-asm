%define WRITE		0x2000004
%define STDOUT		1

section .data
null:	db "(null)", 10, 0

section .text
	extern	_ft_putchar
	extern	_ft_putstr
	global	_ft_puts

_ft_puts:
	cmp		rdi, 0				; compare first arg with zero
	je		put_null			; jump if equals to put_null

put_str:
	call	_ft_putstr			; call function
	cmp		rax, -1				; compare return register with -1
	je		err					; jump if equals to err
	mov		rdi, 10				; set first arg as 10 (\n)
	call	_ft_putchar			; call function
	cmp		rax, -1				; compare return register with -1
	je		err					; jump if equals to err
	jmp		success				; jump to success label

put_null:
	lea		rdi, [rel null]		; set first arg as address of null string
	call	_ft_putstr			; call function
	cmp		rax, -1				; compare return register with -1
	je		err					; jump if equals to err

success:
	mov		rax, 10				; set return values as 10 (nonnegative int)
	ret							; return

err:
	mov		rax, -1				; set return value as -1 (EOF)
	ret							; return
