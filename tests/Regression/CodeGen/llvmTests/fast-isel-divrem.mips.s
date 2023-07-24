.data
.text
.globl test_sdiv16
test_sdiv16:
.p2align 2
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $a1, 16
	sra $t1, $t1, 16
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_sdiv32
test_sdiv32:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl test_sdiv8
test_sdiv8:
.p2align 2
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	sll $t1, $a1, 24
	sra $t1, $t1, 24
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.globl test_srem16
test_srem16:
.p2align 2
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $a1, 16
	sra $t1, $t1, 16
	div $zero, $t0, $t1
	mfhi $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_srem32
test_srem32:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl test_srem8
test_srem8:
.p2align 2
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	sll $t1, $a1, 24
	sra $t1, $t1, 24
	div $zero, $t0, $t1
	mfhi $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.globl test_udiv16
test_udiv16:
.p2align 2
	andi $t0, $a0, 65535
	andi $t1, $a1, 65535
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_udiv32
test_udiv32:
.p2align 2
	divu $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl test_udiv8
test_udiv8:
.p2align 2
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.globl test_urem16
test_urem16:
.p2align 2
	andi $t0, $a0, 65535
	andi $t1, $a1, 65535
	div $zero, $t0, $t1
	mfhi $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_urem32
test_urem32:
.p2align 2
	divu $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl test_urem8
test_urem8:
.p2align 2
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	div $zero, $t0, $t1
	mfhi $t0
	andi $v0, $t0, 255
	jr $ra
	nop
