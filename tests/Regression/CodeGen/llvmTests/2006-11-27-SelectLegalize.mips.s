.data
.section .rodata
.bss
.text
.globl test
test:
	sltu $t0, $zero, $a0
	movn $a2, $a1, $t0
	move $v0, $a2
	jr $ra
	nop
