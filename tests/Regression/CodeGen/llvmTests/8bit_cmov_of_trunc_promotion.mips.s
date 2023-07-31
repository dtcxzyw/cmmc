.data
.text
.globl neg_only_one_truncation
neg_only_one_truncation:
.p2align 2
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
	bgez $t2, label20
	nop
	andi $t0, $t1, 255
	b label3
	nop
label20:
	andi $t0, $t0, 255
label3:
	andi $v0, $t0, 255
	jr $ra
	nop
.globl neg_type_mismatch
neg_type_mismatch:
.p2align 2
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
	bgez $t2, label49
	nop
	andi $t0, $t1, 255
	b label32
	nop
label49:
	andi $t0, $t0, 255
label32:
	andi $v0, $t0, 255
	jr $ra
	nop
.globl negative_CopyFromReg
negative_CopyFromReg:
.p2align 2
	addu $t0, $a1, $a2
	andi $t1, $t0, 255
	sll $t1, $t1, 24
	sra $t1, $t1, 24
	andi $t2, $a0, 255
	sll $t2, $t2, 24
	sra $t2, $t2, 24
	subu $t1, $t1, $t2
	bgez $t1, label75
	nop
	andi $t0, $a0, 255
	b label61
	nop
label75:
	andi $t0, $t0, 255
label61:
	andi $v0, $t0, 255
	jr $ra
	nop
.globl negative_CopyFromRegs
negative_CopyFromRegs:
.p2align 2
	andi $t0, $a0, 255
	sll $t0, $t0, 24
	sra $t0, $t0, 24
	andi $t1, $a1, 255
	sll $t1, $t1, 24
	sra $t1, $t1, 24
	subu $t0, $t0, $t1
	blez $t0, label99
	nop
	andi $t0, $a0, 255
	b label87
	nop
label99:
	andi $t0, $a1, 255
label87:
	andi $v0, $t0, 255
	jr $ra
	nop
.globl t0
t0:
.p2align 2
	addu $t0, $a0, $a2
	andi $t1, $t0, 255
	sll $t1, $t1, 24
	sra $t2, $t1, 24
	addu $t1, $a1, $a2
	andi $t3, $t1, 255
	sll $t3, $t3, 24
	sra $t3, $t3, 24
	subu $t2, $t2, $t3
	blez $t2, label126
	nop
	andi $t0, $t0, 255
	b label111
	nop
label126:
	andi $t0, $t1, 255
label111:
	andi $v0, $t0, 255
	jr $ra
	nop
