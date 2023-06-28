.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl seqz
seqz:
	sltiu a0, a0, 1
	ret
.globl seqi
seqi:
	xori a0, a0, 1
	sltiu a0, a0, 1
	ret
.globl seq
seq:
	xor a0, a0, a1
	sltiu a0, a0, 1
	ret
.globl snei
snei:
	xori a0, a0, 1
	sltu a0, zero, a0
	ret
.globl sne
sne:
	xor a0, a0, a1
	sltu a0, zero, a0
	ret
.globl snez
snez:
	sltu a0, zero, a0
	ret
.globl slti
slti:
	slti a0, a0, 1
	ret
.globl slt
slt:
	slt a0, a0, a1
	ret
.globl sgti
sgti:
	li a1, 1
	slt a0, a1, a0
	ret
.globl sgt
sgt:
	slt a0, a1, a0
	ret
.globl slei
slei:
	slti a0, a0, 2
	ret
.globl sle
sle:
	slt a0, a1, a0
	xori a0, a0, 1
	ret
.globl sgei
sgei:
	slt a0, zero, a0
	ret
.globl sge
sge:
	slt a0, a0, a1
	xori a0, a0, 1
	ret
.globl seq_all_one
seq_all_one:
	xori a0, a0, -1
	sltiu a0, a0, 1
	ret
.globl sne_all_one
sne_all_one:
	xori a0, a0, -1
	sltu a0, zero, a0
	ret
.globl slt_all_one
slt_all_one:
	slti a0, a0, -1
	ret
.globl sgt_all_one
sgt_all_one:
	li a1, -1
	slt a0, a1, a0
	ret
.globl sle_all_one
sle_all_one:
	slti a0, a0, 0
	ret
.globl sge_all_one
sge_all_one:
	li a1, -2
	slt a0, a1, a0
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
.globl fltz
fltz:
	fmv.w.x f11, zero
	flt.s a0, f10, f11
	ret
