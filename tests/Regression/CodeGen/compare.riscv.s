.data
.text
.globl seqz
seqz:
	sltiu t1, a0, 1
	mv a0, t1
	ret
.globl seqi
seqi:
	li t1, 1
	xor t2, a0, t1
	sltiu t3, t2, 1
	mv a0, t3
	ret
.globl seq
seq:
	xor t1, a0, a1
	sltiu t2, t1, 1
	mv a0, t2
	ret
.globl snei
snei:
	li t1, 1
	xor t2, a0, t1
	sltiu t3, t2, 1
	xori t4, t3, 1
	mv a0, t4
	ret
.globl sne
sne:
	xor t1, a0, a1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv a0, t3
	ret
.globl snez
snez:
	sltiu t1, a0, 1
	xori t2, t1, 1
	mv a0, t2
	ret
.globl slti
slti:
	li t1, 1
	slt t2, a0, t1
	mv a0, t2
	ret
.globl slt
slt:
	slt t1, a0, a1
	mv a0, t1
	ret
.globl sgti
sgti:
	li t1, 1
	slt t2, t1, a0
	mv a0, t2
	ret
.globl sgt
sgt:
	slt t1, a1, a0
	mv a0, t1
	ret
.globl slei
slei:
	li t1, 1
	slt t2, t1, a0
	xori t3, t2, 1
	mv a0, t3
	ret
.globl sle
sle:
	slt t1, a1, a0
	xori t2, t1, 1
	mv a0, t2
	ret
.globl sgei
sgei:
	li t1, 1
	slt t2, a0, t1
	xori t3, t2, 1
	mv a0, t3
	ret
.globl sge
sge:
	slt t1, a0, a1
	xori t2, t1, 1
	mv a0, t2
	ret
.globl feq
feq:
	feq.s t1, f10, f11
	mv a0, t1
	ret
.globl fne
fne:
	feq.s t1, f10, f11
	xori t1, t1, 1
	mv a0, t1
	ret
.globl flt
flt:
	flt.s t1, f10, f11
	mv a0, t1
	ret
.globl fgt
fgt:
	flt.s t1, f11, f10
	mv a0, t1
	ret
.globl fle
fle:
	fle.s t1, f10, f11
	mv a0, t1
	ret
.globl fge
fge:
	fle.s t1, f11, f10
	mv a0, t1
	ret
