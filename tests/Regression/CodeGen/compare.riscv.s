.data
.text
.globl seqz
seqz:
	sltiu a1, a0, 1
	mv a0, a1
	ret
.globl seqi
seqi:
	xori a1, a0, 1
	sltiu a2, a1, 1
	mv a0, a2
	ret
.globl seq
seq:
	xor a2, a0, a1
	sltiu a3, a2, 1
	mv a0, a3
	ret
.globl snei
snei:
	xori a1, a0, 1
	sltu a2, zero, a1
	mv a0, a2
	ret
.globl sne
sne:
	xor a2, a0, a1
	sltu a3, zero, a2
	mv a0, a3
	ret
.globl snez
snez:
	sltu a1, zero, a0
	mv a0, a1
	ret
.globl slti
slti:
	slti a1, a0, 1
	mv a0, a1
	ret
.globl slt
slt:
	slt a2, a0, a1
	mv a0, a2
	ret
.globl sgti
sgti:
	li a1, 1
	slt a2, a1, a0
	mv a0, a2
	ret
.globl sgt
sgt:
	slt a2, a1, a0
	mv a0, a2
	ret
.globl slei
slei:
	slti a1, a0, 2
	mv a0, a1
	ret
.globl sle
sle:
	slt a2, a1, a0
	xori a3, a2, 1
	mv a0, a3
	ret
.globl sgei
sgei:
	slt a1, zero, a0
	mv a0, a1
	ret
.globl sge
sge:
	slt a2, a0, a1
	xori a3, a2, 1
	mv a0, a3
	ret
.globl feq
feq:
	feq.s a0, f10, f11
	ret
.globl fne
fne:
	feq.s a0, f10, f11
	xori a0, a0, 1
	ret
.globl flt
flt:
	flt.s a0, f10, f11
	ret
.globl fgt
fgt:
	flt.s a0, f11, f10
	ret
.globl fle
fle:
	fle.s a0, f10, f11
	ret
.globl fge
fge:
	fle.s a0, f11, f10
	ret
