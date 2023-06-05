.data
.text
.globl seqz
seqz:
	mv t1, a0
	sltiu t2, a0, 1
	mv t3, t2
	mv a0, t2
	ret
.globl seqi
seqi:
	mv t1, a0
	li t2, 1
	xor t3, a0, t2
	sltiu t4, t3, 1
	mv t5, t4
	mv a0, t4
	ret
.globl seq
seq:
	mv t1, a0
	mv t2, a1
	xor t3, a0, a1
	sltiu t4, t3, 1
	mv t5, t4
	mv a0, t4
	ret
.globl snei
snei:
	mv t1, a0
	li t2, 1
	xor t3, a0, t2
	sltiu t4, t3, 1
	xori t5, t4, 1
	mv t6, t5
	mv a0, t5
	ret
.globl sne
sne:
	mv t1, a0
	mv t2, a1
	xor t3, a0, a1
	sltiu t4, t3, 1
	xori t5, t4, 1
	mv t6, t5
	mv a0, t5
	ret
.globl snez
snez:
	mv t1, a0
	sltiu t2, a0, 1
	xori t3, t2, 1
	mv t4, t3
	mv a0, t3
	ret
.globl slti
slti:
	mv t1, a0
	li t2, 1
	slt t3, a0, t2
	mv t4, t3
	mv a0, t3
	ret
.globl slt
slt:
	mv t1, a0
	mv t2, a1
	slt t3, a0, a1
	mv t4, t3
	mv a0, t3
	ret
.globl sgti
sgti:
	mv t1, a0
	li t2, 1
	slt t3, t2, a0
	mv t4, t3
	mv a0, t3
	ret
.globl sgt
sgt:
	mv t1, a0
	mv t2, a1
	slt t3, a1, a0
	mv t4, t3
	mv a0, t3
	ret
.globl slei
slei:
	mv t1, a0
	li t2, 1
	slt t3, t2, a0
	xori t4, t3, 1
	mv t5, t4
	mv a0, t4
	ret
.globl sle
sle:
	mv t1, a0
	mv t2, a1
	slt t3, a1, a0
	xori t4, t3, 1
	mv t5, t4
	mv a0, t4
	ret
.globl sgei
sgei:
	mv t1, a0
	li t2, 1
	slt t3, a0, t2
	xori t4, t3, 1
	mv t5, t4
	mv a0, t4
	ret
.globl sge
sge:
	mv t1, a0
	mv t2, a1
	slt t3, a0, a1
	xori t4, t3, 1
	mv t5, t4
	mv a0, t4
	ret
.globl feq
feq:
	feq.s t1, f10, f11
	mv t2, t1
	mv a0, t1
	ret
.globl fne
fne:
	feq.s t1, f10, f11
	xori t1, t1, 1
	mv t2, t1
	mv a0, t1
	ret
.globl flt
flt:
	flt.s t1, f10, f11
	mv t2, t1
	mv a0, t1
	ret
.globl fgt
fgt:
	flt.s t1, f11, f10
	mv t2, t1
	mv a0, t1
	ret
.globl fle
fle:
	fle.s t1, f10, f11
	mv t2, t1
	mv a0, t1
	ret
.globl fge
fge:
	fle.s t1, f11, f10
	mv t2, t1
	mv a0, t1
	ret
