.data
.text
.globl seqz
seqz:
	mv t1, a0
	sltiu t2, t1, 1
	mv t3, t2
	mv a0, t3
	jr ra
.globl seqi
seqi:
	mv t1, a0
	li t2, 1
	xor t3, t1, t2
	sltiu t4, t3, 1
	mv t5, t4
	mv a0, t5
	jr ra
.globl seq
seq:
	mv t1, a0
	mv t2, a1
	xor t3, t1, t2
	sltiu t4, t3, 1
	mv t5, t4
	mv a0, t5
	jr ra
.globl snei
snei:
	mv t1, a0
	li t2, 1
	xor t3, t1, t2
	sltiu t4, t3, 1
	xori t5, t4, 1
	mv t6, t5
	mv a0, t6
	jr ra
.globl sne
sne:
	mv t1, a0
	mv t2, a1
	xor t3, t1, t2
	sltiu t4, t3, 1
	xori t5, t4, 1
	mv t6, t5
	mv a0, t6
	jr ra
.globl snez
snez:
	mv t1, a0
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	mv a0, t4
	jr ra
.globl slti
slti:
	mv t1, a0
	li t2, 1
	slt t3, t1, t2
	mv t4, t3
	mv a0, t4
	jr ra
.globl slt
slt:
	mv t1, a0
	mv t2, a1
	slt t3, t1, t2
	mv t4, t3
	mv a0, t4
	jr ra
.globl sgti
sgti:
	mv t1, a0
	li t2, 1
	slt t3, t2, t1
	mv t4, t3
	mv a0, t4
	jr ra
.globl sgt
sgt:
	mv t1, a0
	mv t2, a1
	slt t3, t2, t1
	mv t4, t3
	mv a0, t4
	jr ra
.globl slei
slei:
	mv t1, a0
	li t2, 1
	slt t3, t2, t1
	xori t4, t3, 1
	mv t5, t4
	mv a0, t5
	jr ra
.globl sle
sle:
	mv t1, a0
	mv t2, a1
	slt t3, t2, t1
	xori t4, t3, 1
	mv t5, t4
	mv a0, t5
	jr ra
.globl sgei
sgei:
	mv t1, a0
	li t2, 1
	slt t3, t1, t2
	xori t4, t3, 1
	mv t5, t4
	mv a0, t5
	jr ra
.globl sge
sge:
	mv t1, a0
	mv t2, a1
	slt t3, t1, t2
	xori t4, t3, 1
	mv t5, t4
	mv a0, t5
	jr ra
