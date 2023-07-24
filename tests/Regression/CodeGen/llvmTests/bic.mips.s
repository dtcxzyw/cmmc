.data
.text
.globl f1
f1:
.p2align 2
	li $t0, -1
	xor $t0, $a1, $t0
	and $v0, $a0, $t0
	jr $ra
	nop
.globl f2
f2:
.p2align 2
	li $t0, -1
	xor $t0, $a1, $t0
	and $v0, $a0, $t0
	jr $ra
	nop
.globl f3
f3:
.p2align 2
	li $t0, -256
	and $v0, $a0, $t0
	jr $ra
	nop
