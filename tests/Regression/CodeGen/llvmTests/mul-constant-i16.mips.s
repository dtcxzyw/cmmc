.data
.text
.globl test_mul_by_1
test_mul_by_1:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_10
test_mul_by_10:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 2
	addu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_11
test_mul_by_11:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 1
	addu $t1, $t1, $t0
	sll $t1, $t1, 2
	subu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_12
test_mul_by_12:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 1
	addu $t0, $t1, $t0
	sll $t0, $t0, 2
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_13
test_mul_by_13:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 3
	subu $t1, $t1, $t0
	sll $t1, $t1, 1
	subu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_14
test_mul_by_14:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 3
	subu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_15
test_mul_by_15:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 4
	subu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_16
test_mul_by_16:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t0, $t0, 4
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_17
test_mul_by_17:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 4
	addu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_18
test_mul_by_18:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 3
	addu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_19
test_mul_by_19:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 2
	addu $t1, $t1, $t0
	sll $t1, $t1, 2
	subu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_2
test_mul_by_2:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_20
test_mul_by_20:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 2
	addu $t0, $t1, $t0
	sll $t0, $t0, 2
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_21
test_mul_by_21:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 1
	addu $t0, $t1, $t0
	sll $t1, $t0, 3
	subu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_22
test_mul_by_22:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 1
	addu $t1, $t1, $t0
	sll $t1, $t1, 2
	subu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_23
test_mul_by_23:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 1
	addu $t1, $t1, $t0
	sll $t1, $t1, 3
	subu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_24
test_mul_by_24:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 1
	addu $t0, $t1, $t0
	sll $t0, $t0, 3
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_25
test_mul_by_25:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 2
	addu $t0, $t1, $t0
	sll $t1, $t0, 2
	addu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_26
test_mul_by_26:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 3
	subu $t1, $t1, $t0
	sll $t1, $t1, 1
	subu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_27
test_mul_by_27:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 1
	addu $t0, $t1, $t0
	sll $t1, $t0, 3
	addu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_28
test_mul_by_28:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 3
	subu $t0, $t1, $t0
	sll $t0, $t0, 2
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_29
test_mul_by_29:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 4
	subu $t1, $t1, $t0
	sll $t1, $t1, 1
	subu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_3
test_mul_by_3:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 1
	addu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_30
test_mul_by_30:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 4
	subu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_31
test_mul_by_31:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 5
	subu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_32
test_mul_by_32:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t0, $t0, 5
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_37
test_mul_by_37:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 3
	addu $t1, $t1, $t0
	sll $t1, $t1, 2
	addu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_4
test_mul_by_4:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t0, $t0, 2
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_41
test_mul_by_41:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 2
	addu $t1, $t1, $t0
	sll $t1, $t1, 3
	addu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_5
test_mul_by_5:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 2
	addu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_520
test_mul_by_520:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 6
	addu $t0, $t1, $t0
	sll $t0, $t0, 3
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_6
test_mul_by_6:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 1
	addu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_62
test_mul_by_62:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 5
	subu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_66
test_mul_by_66:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 5
	addu $t0, $t1, $t0
	sll $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_7
test_mul_by_7:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 3
	subu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_73
test_mul_by_73:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 3
	addu $t1, $t1, $t0
	sll $t1, $t1, 3
	addu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_8
test_mul_by_8:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t0, $t0, 3
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_9
test_mul_by_9:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 3
	addu $t0, $t1, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_neg10
test_mul_by_neg10:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 2
	addu $t0, $t1, $t0
	sll $t0, $t0, 1
	subu $t0, $zero, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_by_neg36
test_mul_by_neg36:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 3
	addu $t0, $t1, $t0
	sll $t0, $t0, 2
	subu $t0, $zero, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_mul_spec
test_mul_spec:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	sll $t1, $t0, 3
	addu $t1, $t1, $t0
	sll $t1, $t1, 16
	sra $t1, $t1, 16
	addiu $t1, $t1, 42
	sll $t1, $t1, 16
	sra $t1, $t1, 16
	sll $t2, $t0, 2
	addu $t0, $t2, $t0
	sll $t0, $t0, 16
	sra $t0, $t0, 16
	addiu $t0, $t0, 2
	sll $t0, $t0, 16
	sra $t0, $t0, 16
	mult $t1, $t0
	mflo $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
