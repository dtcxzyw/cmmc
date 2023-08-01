.data
.text
.p2align 2
.globl f1
f1:
	mult $a0, $a0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl f2
f2:
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl f3
f3:
	sll $t0, $a0, 2
	addu $v0, $t0, $a0
	jr $ra
	nop
.p2align 2
.globl f4
f4:
	sll $v0, $a0, 2
	jr $ra
	nop
