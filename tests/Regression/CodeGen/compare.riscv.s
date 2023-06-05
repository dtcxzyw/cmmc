.data
.text
.globl seqz
seqz:
	sltiu t1, a0, 1
	mv a0, t1
	ret
.globl seqi
seqi:
	xori t1, a0, 1
	sltiu t2, t1, 1
	mv a0, t2
	ret
.globl seq
seq:
	xor t1, a0, a1
	sltiu t2, t1, 1
	mv a0, t2
	ret
.globl snei
snei:
	xori t1, a0, 1
	sltu t2, zero, t1
	mv a0, t2
	ret
.globl sne
sne:
	xor t1, a0, a1
	sltu t2, zero, t1
	mv a0, t2
	ret
.globl snez
snez:
	sltu t1, zero, a0
	mv a0, t1
	ret
.globl slti
slti:
	slti t1, a0, 1
	mv a0, t1
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
	slti t1, a0, 2
	mv a0, t1
	ret
.globl sle
sle:
	slt t1, a1, a0
	xori t2, t1, 1
	mv a0, t2
	ret
.globl sgei
sgei:
	slt t1, zero, a0
	mv a0, t1
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
