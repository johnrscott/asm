	# -- Empty executable --
	# If you don't have at least one instruction
	# the linker complains. Running this program
	# causes a segmentation fault (presumably
	# because it doesn't exit)
	#
	.section .text
	.global _start
_start:
	nop
	nop
	nop
