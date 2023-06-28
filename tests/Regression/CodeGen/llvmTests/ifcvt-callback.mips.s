.data
.section .rodata
.bss
.text
.globl test_ifcvt
test_ifcvt:
	sltu $t0, $zero, $a0
	bne $t0, $zero, label10
	nop
	addiu $v0, $a1, -1
	b label3
	nop
label10:
	addiu $v0, $a1, 1
label3:
	jr $ra
	nop
