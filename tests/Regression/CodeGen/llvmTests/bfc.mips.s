.data
.text
.p2align 2
.globl f1
f1:
	li $t0, -16777201
	and $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl f2
f2:
	li $t0, -8388608
	and $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl f3
f3:
	andi $v0, $a0, 4095
	jr $ra
	nop
