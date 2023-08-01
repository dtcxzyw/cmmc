.data
.text
.p2align 2
.globl test_mul_by_1
test_mul_by_1:
	andi $t0, $a0, 255
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_10
test_mul_by_10:
	andi $t0, $a0, 255
	sll $t1, $t0, 2
	addu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_11
test_mul_by_11:
	andi $t0, $a0, 255
	li $t1, 11
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_12
test_mul_by_12:
	andi $t0, $a0, 255
	sll $t1, $t0, 1
	addu $t0, $t1, $t0
	sll $t0, $t0, 2
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_13
test_mul_by_13:
	andi $t0, $a0, 255
	li $t1, 13
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_14
test_mul_by_14:
	andi $t0, $a0, 255
	sll $t1, $t0, 3
	subu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_15
test_mul_by_15:
	andi $t0, $a0, 255
	sll $t1, $t0, 4
	subu $t0, $t1, $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_16
test_mul_by_16:
	andi $t0, $a0, 255
	sll $t0, $t0, 4
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_17
test_mul_by_17:
	andi $t0, $a0, 255
	sll $t1, $t0, 4
	addu $t0, $t1, $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_18
test_mul_by_18:
	andi $t0, $a0, 255
	sll $t1, $t0, 3
	addu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_19
test_mul_by_19:
	andi $t0, $a0, 255
	li $t1, 19
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_2
test_mul_by_2:
	andi $t0, $a0, 255
	sll $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_20
test_mul_by_20:
	andi $t0, $a0, 255
	sll $t1, $t0, 2
	addu $t0, $t1, $t0
	sll $t0, $t0, 2
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_21
test_mul_by_21:
	andi $t0, $a0, 255
	li $t1, 21
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_22
test_mul_by_22:
	andi $t0, $a0, 255
	li $t1, 22
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_23
test_mul_by_23:
	andi $t0, $a0, 255
	li $t1, 23
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_24
test_mul_by_24:
	andi $t0, $a0, 255
	sll $t1, $t0, 1
	addu $t0, $t1, $t0
	sll $t0, $t0, 3
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_25
test_mul_by_25:
	andi $t0, $a0, 255
	li $t1, 25
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_26
test_mul_by_26:
	andi $t0, $a0, 255
	li $t1, 26
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_27
test_mul_by_27:
	andi $t0, $a0, 255
	li $t1, 27
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_28
test_mul_by_28:
	andi $t0, $a0, 255
	sll $t1, $t0, 3
	subu $t0, $t1, $t0
	sll $t0, $t0, 2
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_29
test_mul_by_29:
	andi $t0, $a0, 255
	li $t1, 29
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_3
test_mul_by_3:
	andi $t0, $a0, 255
	sll $t1, $t0, 1
	addu $t0, $t1, $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_30
test_mul_by_30:
	andi $t0, $a0, 255
	sll $t1, $t0, 4
	subu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_31
test_mul_by_31:
	andi $t0, $a0, 255
	sll $t1, $t0, 5
	subu $t0, $t1, $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_32
test_mul_by_32:
	andi $t0, $a0, 255
	sll $t0, $t0, 5
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_37
test_mul_by_37:
	andi $t0, $a0, 255
	li $t1, 37
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_4
test_mul_by_4:
	andi $t0, $a0, 255
	sll $t0, $t0, 2
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_41
test_mul_by_41:
	andi $t0, $a0, 255
	li $t1, 41
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_5
test_mul_by_5:
	andi $t0, $a0, 255
	sll $t1, $t0, 2
	addu $t0, $t1, $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_520
test_mul_by_520:
	andi $t0, $a0, 255
	sll $t0, $t0, 3
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_6
test_mul_by_6:
	andi $t0, $a0, 255
	sll $t1, $t0, 1
	addu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_62
test_mul_by_62:
	andi $t0, $a0, 255
	sll $t1, $t0, 5
	subu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_66
test_mul_by_66:
	andi $t0, $a0, 255
	sll $t1, $t0, 5
	addu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_7
test_mul_by_7:
	andi $t0, $a0, 255
	sll $t1, $t0, 3
	subu $t0, $t1, $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_73
test_mul_by_73:
	andi $t0, $a0, 255
	li $t1, 73
	mult $t0, $t1
	mflo $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_8
test_mul_by_8:
	andi $t0, $a0, 255
	sll $t0, $t0, 3
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_9
test_mul_by_9:
	andi $t0, $a0, 255
	sll $t1, $t0, 3
	addu $t0, $t1, $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_neg10
test_mul_by_neg10:
	andi $t0, $a0, 255
	sll $t1, $t0, 2
	addu $t0, $t1, $t0
	sll $t0, $t0, 1
	subu $t0, $zero, $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test_mul_by_neg36
test_mul_by_neg36:
	andi $t0, $a0, 255
	sll $t1, $t0, 3
	addu $t0, $t1, $t0
	sll $t0, $t0, 2
	subu $t0, $zero, $t0
	andi $v0, $t0, 255
	jr $ra
	nop
