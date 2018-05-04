	# -- Include/multiple source file testing --
	# Compile and run:
	#
	#  See start.asm
	#
	.section .text

	# Macro: quit
	# To be run at the end of the assembly program. Tells linux to
	# exit the program.
	.macro quit
	movl $1, %eax
	movl $0, %ebx
	int $0x80
	.endm

	# Macro: write
	# Pass as ascii string literal and a size to this macro to print the
	# message to the linux console
	.macro write msg, size
	movl \msg, %ecx
	movl \size, %edx
	movl $4, %eax
	movl $0, %ebx
	int $0x80
	.endm

	# macro: print
	# Like write -- pass an ascii string literal to be printed
	# Unlike write -- allocated memory and stores the string before
	# printing it.
	.macro print str
	.section .data
0:	.ascii "\str"
1:	.set length, 1b-0b
	.section .text
	write $0b, $length
	.endm
