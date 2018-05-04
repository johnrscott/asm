	# -- Include/multiple source file testing --
	#
	# File: start.asm
	# Purpose: Contains the entry point
	#
	# Compile and run:
	#	
	#  make
	#
	# Comments:
	#
	#  
	#
	.include "include.inc"
	
	.section .data
var:	.byte 0x30
msg:	.ascii "Test\n"
	.set size, 5

	.section .text
	.global _start

_start:
	# print message
	write $msg, $size,

	# Print the number of bytes written
	addl %eax, (var)
	write $(var), $1

	print \nHello\n
	print "Hello Oli" 

	# quit
	quit
