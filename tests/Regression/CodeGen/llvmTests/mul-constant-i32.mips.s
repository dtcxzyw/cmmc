.data
.text
.globl mul_neg_fold
mul_neg_fold:
	li $t0, -9
	mult $a0, $t0
	mflo $t0
	addu $v0, $t0, $a1
	jr $ra
	nop
.globl test_mul_by_1
test_mul_by_1:
	move $v0, $a0
	jr $ra
	nop
.globl test_mul_by_10
test_mul_by_10:
	li $t0, 10
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_11
test_mul_by_11:
	li $t0, 11
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_12
test_mul_by_12:
	li $t0, 12
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_13
test_mul_by_13:
	li $t0, 13
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_14
test_mul_by_14:
	li $t0, 14
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_15
test_mul_by_15:
	li $t0, 15
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_16
test_mul_by_16:
	sll $v0, $a0, 4
	jr $ra
	nop
.globl test_mul_by_17
test_mul_by_17:
	li $t0, 17
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_18
test_mul_by_18:
	li $t0, 18
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_19
test_mul_by_19:
	li $t0, 19
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_2
test_mul_by_2:
	sll $v0, $a0, 1
	jr $ra
	nop
.globl test_mul_by_20
test_mul_by_20:
	li $t0, 20
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_21
test_mul_by_21:
	li $t0, 21
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_22
test_mul_by_22:
	li $t0, 22
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_23
test_mul_by_23:
	li $t0, 23
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_24
test_mul_by_24:
	li $t0, 24
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_25
test_mul_by_25:
	li $t0, 25
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_26
test_mul_by_26:
	li $t0, 26
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_27
test_mul_by_27:
	li $t0, 27
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_28
test_mul_by_28:
	li $t0, 28
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_29
test_mul_by_29:
	li $t0, 29
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_3
test_mul_by_3:
	li $t0, 3
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_30
test_mul_by_30:
	li $t0, 30
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_31
test_mul_by_31:
	li $t0, 31
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_32
test_mul_by_32:
	sll $v0, $a0, 5
	jr $ra
	nop
.globl test_mul_by_37
test_mul_by_37:
	li $t0, 37
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_4
test_mul_by_4:
	sll $v0, $a0, 2
	jr $ra
	nop
.globl test_mul_by_41
test_mul_by_41:
	li $t0, 41
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_5
test_mul_by_5:
	li $t0, 5
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_520
test_mul_by_520:
	li $t0, 520
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_6
test_mul_by_6:
	li $t0, 6
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_62
test_mul_by_62:
	li $t0, 62
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_66
test_mul_by_66:
	li $t0, 66
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_7
test_mul_by_7:
	li $t0, 7
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_73
test_mul_by_73:
	li $t0, 73
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_8
test_mul_by_8:
	sll $v0, $a0, 3
	jr $ra
	nop
.globl test_mul_by_9
test_mul_by_9:
	li $t0, 9
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_neg10
test_mul_by_neg10:
	li $t0, -10
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_by_neg36
test_mul_by_neg36:
	li $t0, -36
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test_mul_spec
test_mul_spec:
	li $t0, 9
	mult $a0, $t0
	mflo $t0
	addiu $t0, $t0, 42
	li $t1, 5
	mult $a0, $t1
	mflo $t1
	addiu $t1, $t1, 2
	mult $t0, $t1
	mflo $v0
	jr $ra
	nop
