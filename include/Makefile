run: program
	objdump -D program

program: program.o
	ld -o program program.o

program.o: start.asm include.inc
	as -o program.o start.asm
