.data
.text
.globl test1
test1:
.p2align 2
	li $t0, -268435441
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl test2
test2:
.p2align 2
	li $v0, 65533
	jr $ra
	nop
.globl test3
test3:
.p2align 2
	ori $v0, $a0, 65533
	jr $ra
	nop
