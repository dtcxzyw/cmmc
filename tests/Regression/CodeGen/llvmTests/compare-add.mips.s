.data
.section .rodata
.bss
.text
.globl X
X:
	addiu $t0, $a0, 14
	xori $t0, $t0, 12345
	sltu $v0, $zero, $t0
	jr $ra
	nop
