.data
.section .rodata
.bss
.text
.globl f
f:
	sltu $t0, $a1, $a0
	movn $a1, $a0, $t0
	move $v0, $a1
	jr $ra
	nop
