.data
.text
.globl f1
f1:
.p2align 2
	mult $a0, $a0
	mflo $v0
	jr $ra
	nop
.globl f2
f2:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl f3
f3:
.p2align 2
	sll $t0, $a0, 2
	addu $v0, $t0, $a0
	jr $ra
	nop
.globl f4
f4:
.p2align 2
	sll $v0, $a0, 2
	jr $ra
	nop
