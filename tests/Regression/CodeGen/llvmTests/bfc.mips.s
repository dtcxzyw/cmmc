.data
.text
.globl f1
f1:
.p2align 2
	li $t0, -16777201
	and $v0, $a0, $t0
	jr $ra
	nop
.globl f2
f2:
.p2align 2
	li $t0, -8388608
	and $v0, $a0, $t0
	jr $ra
	nop
.globl f3
f3:
.p2align 2
	andi $v0, $a0, 4095
	jr $ra
	nop
