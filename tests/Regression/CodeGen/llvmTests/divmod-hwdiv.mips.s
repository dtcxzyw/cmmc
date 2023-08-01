.data
.text
.p2align 2
.globl test_i32_srem
test_i32_srem:
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.p2align 2
.globl test_i32_urem
test_i32_urem:
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
