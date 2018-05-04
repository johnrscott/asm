	.global	_start	
	.text

	.macro quit
	movl $1, %eax
	movl $0, %ebx
	int $0x80
	.endm

_start:
	mov $0x0, %ah
	#mov $'!', %al 
	#int $0x10
	#quit	
