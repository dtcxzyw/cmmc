.data
.section .rodata
.bss
.text
.globl tnaked
tnaked:
	jr $ra
	nop
.globl tnonaked
tnonaked:
	jr $ra
	nop
