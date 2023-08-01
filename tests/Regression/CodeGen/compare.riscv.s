.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl seqz
seqz:
	sltiu a0, a0, 1
	ret
.p2align 2
.globl seqi
seqi:
	xori a1, a0, 1
	sltiu a0, a1, 1
	ret
.p2align 2
.globl seq
seq:
	xor a2, a0, a1
	sltiu a0, a2, 1
	ret
.p2align 2
.globl snei
snei:
	xori a1, a0, 1
	sltu a0, zero, a1
	ret
.p2align 2
.globl sne
sne:
	xor a2, a0, a1
	sltu a0, zero, a2
	ret
.p2align 2
.globl snez
snez:
	sltu a0, zero, a0
	ret
.p2align 2
.globl slti
slti:
	slti a0, a0, 1
	ret
.p2align 2
.globl slt
slt:
	slt a0, a0, a1
	ret
.p2align 2
.globl sgti
sgti:
	li a1, 1
	slt a0, a1, a0
	ret
.p2align 2
.globl sgt
sgt:
	slt a0, a1, a0
	ret
.p2align 2
.globl slei
slei:
	slti a0, a0, 2
	ret
.p2align 2
.globl sle
sle:
	slt a2, a1, a0
	xori a0, a2, 1
	ret
.p2align 2
.globl sgei
sgei:
	slt a0, zero, a0
	ret
.p2align 2
.globl sge
sge:
	slt a2, a0, a1
	xori a0, a2, 1
	ret
.p2align 2
.globl seq_all_one
seq_all_one:
	xori a1, a0, -1
	sltiu a0, a1, 1
	ret
.p2align 2
.globl sne_all_one
sne_all_one:
	xori a1, a0, -1
	sltu a0, zero, a1
	ret
.p2align 2
.globl slt_all_one
slt_all_one:
	slti a0, a0, -1
	ret
.p2align 2
.globl sgt_all_one
sgt_all_one:
	li a1, -1
	slt a0, a1, a0
	ret
.p2align 2
.globl sle_all_one
sle_all_one:
	srliw a0, a0, 31
	ret
.p2align 2
.globl sge_all_one
sge_all_one:
	li a1, -2
	slt a0, a1, a0
	ret
.p2align 2
.globl feq
feq:
	feq.s a0, f10, f11
	ret
.p2align 2
.globl fne
fne:
	feq.s a1, f10, f11
	xori a0, a1, 1
	ret
.p2align 2
.globl flt
flt:
	flt.s a0, f10, f11
	ret
.p2align 2
.globl fgt
fgt:
	flt.s a0, f11, f10
	ret
.p2align 2
.globl fle
fle:
	fle.s a0, f10, f11
	ret
.p2align 2
.globl fge
fge:
	fle.s a0, f11, f10
	ret
.p2align 2
.globl fltz
fltz:
	fmv.w.x f11, zero
	flt.s a0, f10, f11
	ret
.p2align 2
.globl sgez
sgez:
	li a1, -1
	slt a0, a1, a0
	ret
