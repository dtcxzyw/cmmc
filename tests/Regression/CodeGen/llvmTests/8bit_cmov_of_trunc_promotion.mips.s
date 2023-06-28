.data
.text
.globl neg_only_one_truncation
neg_only_one_truncation:
	andi $t0, $a2, 255
	andi $t1, $a1, 255
	andi $t0, $t0, 255
	addu $t0, $t1, $t0
	andi $t0, $t0, 255
	addu $t1, $a0, $a2
	andi $t1, $t1, 255
	sll $t2, $t1, 24
	sra $t2, $t2, 24
	sll $t3, $t0, 24
	sra $t3, $t3, 24
	subu $t2, $t2, $t3
	blez $t2, label22
	nop
	andi $t0, $t1, 255
	b label3
	nop
label22:
	andi $t0, $t0, 255
label3:
	andi $v0, $t0, 255
	jr $ra
	nop
.globl neg_type_mismatch
neg_type_mismatch:
	addu $t0, $a0, $a2
	andi $t0, $t0, 255
	andi $t2, $a2, 65535
	andi $t1, $a1, 65535
	andi $t2, $t2, 65535
	addu $t1, $t1, $t2
	andi $t1, $t1, 255
	sll $t2, $t0, 24
	sra $t2, $t2, 24
	sll $t3, $t1, 24
	sra $t3, $t3, 24
	subu $t2, $t2, $t3
	blez $t2, label52
	nop
	andi $t0, $t0, 255
	b label33
	nop
label52:
	andi $t0, $t1, 255
label33:
	andi $v0, $t0, 255
	jr $ra
	nop
.globl negative_CopyFromReg
negative_CopyFromReg:
	andi $t0, $a0, 255
	addu $t1, $a1, $a2
	andi $t1, $t1, 255
	sll $t2, $t0, 24
	sra $t2, $t2, 24
	sll $t3, $t1, 24
	sra $t3, $t3, 24
	subu $t2, $t2, $t3
	blez $t2, label78
	nop
	andi $t0, $t0, 255
	b label63
	nop
label78:
	andi $t0, $t1, 255
label63:
	andi $v0, $t0, 255
	jr $ra
	nop
.globl negative_CopyFromRegs
negative_CopyFromRegs:
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	sll $t2, $t0, 24
	sra $t2, $t2, 24
	sll $t3, $t1, 24
	sra $t3, $t3, 24
	subu $t2, $t2, $t3
	blez $t2, label102
	nop
	andi $t0, $t0, 255
	b label89
	nop
label102:
	andi $t0, $t1, 255
label89:
	andi $v0, $t0, 255
	jr $ra
	nop
.globl t0
t0:
	addu $t0, $a0, $a2
	andi $t0, $t0, 255
	addu $t1, $a1, $a2
	andi $t1, $t1, 255
	sll $t2, $t0, 24
	sra $t2, $t2, 24
	sll $t3, $t1, 24
	sra $t3, $t3, 24
	subu $t2, $t2, $t3
	blez $t2, label129
	nop
	andi $t0, $t0, 255
	b label113
	nop
label129:
	andi $t0, $t1, 255
label113:
	andi $v0, $t0, 255
	jr $ra
	nop
