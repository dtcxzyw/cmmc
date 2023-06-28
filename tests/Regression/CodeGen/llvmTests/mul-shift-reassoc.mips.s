.data
.section .rodata
.bss
.text
.globl test
test:
	sll $t0, $a0, 1
	addiu $t0, $t0, 1
	mult $a1, $t0
	mflo $v0
	jr $ra
	nop
