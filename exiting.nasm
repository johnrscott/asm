;; -- NASM syntax --
;; Function: do nothing and exit
section .text
global _start
_start:
	; Store code number for system call (on interrupt 0x80)
	mov eax, 1	; A 1 in eax corresponds to request for program to exit 
	mov ebx, 2	; ebx specifies the return value
	int 80h		; OS syscall software interrupt 
	
