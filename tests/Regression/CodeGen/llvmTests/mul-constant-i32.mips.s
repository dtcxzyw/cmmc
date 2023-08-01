.data
.text
.p2align 2
.globl mul_neg_fold
mul_neg_fold:
	sll $t0, $a0, 3
	addu $t0, $t0, $a0
	subu $t0, $zero, $t0
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_1
test_mul_by_1:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_10
test_mul_by_10:
	sll $t0, $a0, 2
	addu $t0, $t0, $a0
	sll $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl test_mul_by_11
test_mul_by_11:
	li $t0, 11
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_12
test_mul_by_12:
	sll $t0, $a0, 1
	addu $t0, $t0, $a0
	sll $v0, $t0, 2
	jr $ra
	nop
.p2align 2
.globl test_mul_by_13
test_mul_by_13:
	li $t0, 13
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_14
test_mul_by_14:
	sll $t0, $a0, 3
	subu $t0, $t0, $a0
	sll $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl test_mul_by_15
test_mul_by_15:
	sll $t0, $a0, 4
	subu $v0, $t0, $a0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_16
test_mul_by_16:
	sll $v0, $a0, 4
	jr $ra
	nop
.p2align 2
.globl test_mul_by_17
test_mul_by_17:
	sll $t0, $a0, 4
	addu $v0, $t0, $a0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_18
test_mul_by_18:
	sll $t0, $a0, 3
	addu $t0, $t0, $a0
	sll $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl test_mul_by_19
test_mul_by_19:
	li $t0, 19
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_2
test_mul_by_2:
	sll $v0, $a0, 1
	jr $ra
	nop
.p2align 2
.globl test_mul_by_20
test_mul_by_20:
	sll $t0, $a0, 2
	addu $t0, $t0, $a0
	sll $v0, $t0, 2
	jr $ra
	nop
.p2align 2
.globl test_mul_by_21
test_mul_by_21:
	li $t0, 21
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_22
test_mul_by_22:
	li $t0, 22
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_23
test_mul_by_23:
	li $t0, 23
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_24
test_mul_by_24:
	sll $t0, $a0, 1
	addu $t0, $t0, $a0
	sll $v0, $t0, 3
	jr $ra
	nop
.p2align 2
.globl test_mul_by_25
test_mul_by_25:
	li $t0, 25
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_26
test_mul_by_26:
	li $t0, 26
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_27
test_mul_by_27:
	li $t0, 27
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_28
test_mul_by_28:
	sll $t0, $a0, 3
	subu $t0, $t0, $a0
	sll $v0, $t0, 2
	jr $ra
	nop
.p2align 2
.globl test_mul_by_29
test_mul_by_29:
	li $t0, 29
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_3
test_mul_by_3:
	sll $t0, $a0, 1
	addu $v0, $t0, $a0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_30
test_mul_by_30:
	sll $t0, $a0, 4
	subu $t0, $t0, $a0
	sll $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl test_mul_by_31
test_mul_by_31:
	sll $t0, $a0, 5
	subu $v0, $t0, $a0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_32
test_mul_by_32:
	sll $v0, $a0, 5
	jr $ra
	nop
.p2align 2
.globl test_mul_by_37
test_mul_by_37:
	li $t0, 37
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_4
test_mul_by_4:
	sll $v0, $a0, 2
	jr $ra
	nop
.p2align 2
.globl test_mul_by_41
test_mul_by_41:
	li $t0, 41
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_5
test_mul_by_5:
	sll $t0, $a0, 2
	addu $v0, $t0, $a0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_520
test_mul_by_520:
	sll $t0, $a0, 6
	addu $t0, $t0, $a0
	sll $v0, $t0, 3
	jr $ra
	nop
.p2align 2
.globl test_mul_by_6
test_mul_by_6:
	sll $t0, $a0, 1
	addu $t0, $t0, $a0
	sll $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl test_mul_by_62
test_mul_by_62:
	sll $t0, $a0, 5
	subu $t0, $t0, $a0
	sll $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl test_mul_by_66
test_mul_by_66:
	sll $t0, $a0, 5
	addu $t0, $t0, $a0
	sll $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl test_mul_by_7
test_mul_by_7:
	sll $t0, $a0, 3
	subu $v0, $t0, $a0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_73
test_mul_by_73:
	li $t0, 73
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_8
test_mul_by_8:
	sll $v0, $a0, 3
	jr $ra
	nop
.p2align 2
.globl test_mul_by_9
test_mul_by_9:
	sll $t0, $a0, 3
	addu $v0, $t0, $a0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_neg10
test_mul_by_neg10:
	sll $t0, $a0, 2
	addu $t0, $t0, $a0
	sll $t0, $t0, 1
	subu $v0, $zero, $t0
	jr $ra
	nop
.p2align 2
.globl test_mul_by_neg36
test_mul_by_neg36:
	sll $t0, $a0, 3
	addu $t0, $t0, $a0
	sll $t0, $t0, 2
	subu $v0, $zero, $t0
	jr $ra
	nop
.p2align 2
.globl test_mul_spec
test_mul_spec:
	sll $t0, $a0, 3
	addu $t0, $t0, $a0
	addiu $t0, $t0, 42
	sll $t1, $a0, 2
	addu $t1, $t1, $a0
	addiu $t1, $t1, 2
	mult $t0, $t1
	mflo $v0
	jr $ra
	nop
