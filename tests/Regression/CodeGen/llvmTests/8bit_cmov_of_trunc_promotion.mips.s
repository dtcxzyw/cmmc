.data
.text
.globl neg_only_one_truncation
neg_only_one_truncation:
	andi $t0, $a1, 255
	andi $t1, $a2, 255
	addu $t0, $t0, $t1
	andi $t1, $t0, 255
	sll $t1, $t1, 24
	sra $t2, $t1, 24
	addu $t1, $a0, $a2
	andi $t3, $t1, 255
	sll $t3, $t3, 24
	sra $t3, $t3, 24
	subu $t2, $t2, $t3
	bgez $t2, label5
	nop
	andi $t0, $t1, 255
label3:
	andi $v0, $t0, 255
	jr $ra
	nop
label5:
	andi $t0, $t0, 255
	b label3
	nop
.globl neg_type_mismatch
neg_type_mismatch:
	andi $t0, $a1, 65535
	andi $t1, $a2, 65535
	addu $t0, $t0, $t1
	andi $t1, $t0, 255
	sll $t1, $t1, 24
	sra $t2, $t1, 24
	addu $t1, $a0, $a2
	andi $t3, $t1, 255
	sll $t3, $t3, 24
	sra $t3, $t3, 24
	subu $t2, $t2, $t3
	bgez $t2, label33
	nop
	andi $t0, $t1, 255
label31:
	andi $v0, $t0, 255
	jr $ra
	nop
label33:
	andi $t0, $t0, 255
	b label31
	nop
.globl negative_CopyFromReg
negative_CopyFromReg:
	addu $t0, $a1, $a2
	andi $t1, $t0, 255
	sll $t1, $t1, 24
	sra $t1, $t1, 24
	andi $t2, $a0, 255
	sll $t2, $t2, 24
	sra $t2, $t2, 24
	subu $t1, $t1, $t2
	bgez $t1, label61
	nop
	andi $t0, $a0, 255
label59:
	andi $v0, $t0, 255
	jr $ra
	nop
label61:
	andi $t0, $t0, 255
	b label59
	nop
.globl negative_CopyFromRegs
negative_CopyFromRegs:
	andi $t0, $a0, 255
	sll $t0, $t0, 24
	sra $t0, $t0, 24
	andi $t1, $a1, 255
	sll $t1, $t1, 24
	sra $t1, $t1, 24
	subu $t0, $t0, $t1
	blez $t0, label86
	nop
	andi $t0, $a0, 255
label84:
	andi $v0, $t0, 255
	jr $ra
	nop
label86:
	andi $t0, $a1, 255
	b label84
	nop
.globl t0
t0:
	addu $t0, $a0, $a2
	andi $t1, $t0, 255
	sll $t1, $t1, 24
	sra $t2, $t1, 24
	addu $t1, $a1, $a2
	andi $t3, $t1, 255
	sll $t3, $t3, 24
	sra $t3, $t3, 24
	subu $t2, $t2, $t3
	blez $t2, label109
	nop
	andi $t0, $t0, 255
label107:
	andi $v0, $t0, 255
	jr $ra
	nop
label109:
	andi $t0, $t1, 255
	b label107
	nop
