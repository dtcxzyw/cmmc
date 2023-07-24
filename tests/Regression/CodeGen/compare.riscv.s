.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl seqz
seqz:
.p2align 2
	sltiu a0, a0, 1
	ret
.globl seqi
seqi:
.p2align 2
	xori a1, a0, 1
	sltiu a0, a1, 1
	ret
.globl seq
seq:
.p2align 2
	xor a2, a0, a1
	sltiu a0, a2, 1
	ret
.globl snei
snei:
.p2align 2
	xori a1, a0, 1
	sltu a0, zero, a1
	ret
.globl sne
sne:
.p2align 2
	xor a2, a0, a1
	sltu a0, zero, a2
	ret
.globl snez
snez:
.p2align 2
	sltu a0, zero, a0
	ret
.globl slti
slti:
.p2align 2
	slti a0, a0, 1
	ret
.globl slt
slt:
.p2align 2
	slt a0, a0, a1
	ret
.globl sgti
sgti:
.p2align 2
	li a1, 1
	slt a0, a1, a0
	ret
.globl sgt
sgt:
.p2align 2
	slt a0, a1, a0
	ret
.globl slei
slei:
.p2align 2
	slti a0, a0, 2
	ret
.globl sle
sle:
.p2align 2
	slt a2, a1, a0
	xori a0, a2, 1
	ret
.globl sgei
sgei:
.p2align 2
	slt a0, zero, a0
	ret
.globl sge
sge:
.p2align 2
	slt a2, a0, a1
	xori a0, a2, 1
	ret
.globl seq_all_one
seq_all_one:
.p2align 2
	xori a1, a0, -1
	sltiu a0, a1, 1
	ret
.globl sne_all_one
sne_all_one:
.p2align 2
	xori a1, a0, -1
	sltu a0, zero, a1
	ret
.globl slt_all_one
slt_all_one:
.p2align 2
	slti a0, a0, -1
	ret
.globl sgt_all_one
sgt_all_one:
.p2align 2
	li a1, -1
	slt a0, a1, a0
	ret
.globl sle_all_one
sle_all_one:
.p2align 2
	slti a0, a0, 0
	ret
.globl sge_all_one
sge_all_one:
.p2align 2
	li a1, -2
	slt a0, a1, a0
	ret
.globl feq
feq:
.p2align 2
	feq.s a0, f10, f11
	ret
.globl fne
fne:
.p2align 2
	feq.s a1, f10, f11
	xori a0, a1, 1
	ret
.globl flt
flt:
.p2align 2
	flt.s a0, f10, f11
	ret
.globl fgt
fgt:
.p2align 2
	flt.s a0, f11, f10
	ret
.globl fle
fle:
.p2align 2
	fle.s a0, f10, f11
	ret
.globl fge
fge:
.p2align 2
	fle.s a0, f11, f10
	ret
.globl fltz
fltz:
.p2align 2
	fmv.w.x f11, zero
	flt.s a0, f10, f11
	ret
