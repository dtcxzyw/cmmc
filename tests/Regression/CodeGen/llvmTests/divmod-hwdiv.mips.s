.data
.text
.globl test_i32_srem
test_i32_srem:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl test_i32_urem
test_i32_urem:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
