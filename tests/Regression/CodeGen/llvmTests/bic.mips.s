.data
.text
.p2align 2
.globl f1
f1:
	li $t0, -1
	xor $t0, $a1, $t0
	and $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl f2
f2:
	li $t0, -1
	xor $t0, $a1, $t0
	and $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl f3
f3:
	li $t0, -256
	and $v0, $a0, $t0
	jr $ra
	nop
