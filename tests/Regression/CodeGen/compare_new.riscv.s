.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl icmp_eq
icmp_eq:
.p2align 2
	xor a2, a0, a1
	sltiu a0, a2, 1
	ret
.globl icmp_ne
icmp_ne:
.p2align 2
	xor a2, a0, a1
	sltu a0, zero, a2
	ret
.globl icmp_slt
icmp_slt:
.p2align 2
	slt a0, a0, a1
	ret
.globl icmp_sle
icmp_sle:
.p2align 2
	slt a2, a1, a0
	xori a0, a2, 1
	ret
.globl icmp_sgt
icmp_sgt:
.p2align 2
	slt a0, a1, a0
	ret
.globl icmp_sge
icmp_sge:
.p2align 2
	slt a2, a0, a1
	xori a0, a2, 1
	ret
.globl icmp_ult
icmp_ult:
.p2align 2
	sltu a0, a0, a1
	ret
.globl icmp_ule
icmp_ule:
.p2align 2
	sltu a2, a1, a0
	xori a0, a2, 1
	ret
.globl icmp_ugt
icmp_ugt:
.p2align 2
	sltu a0, a1, a0
	ret
.globl icmp_uge
icmp_uge:
.p2align 2
	sltu a2, a0, a1
	xori a0, a2, 1
	ret
.globl fcmp_oeq
fcmp_oeq:
.p2align 2
	feq.s a0, f10, f11
	ret
.globl fcmp_olt
fcmp_olt:
.p2align 2
	flt.s a0, f10, f11
	ret
.globl fcmp_ole
fcmp_ole:
.p2align 2
	fle.s a0, f10, f11
	ret
.globl fcmp_ogt
fcmp_ogt:
.p2align 2
	flt.s a0, f11, f10
	ret
.globl fcmp_oge
fcmp_oge:
.p2align 2
	fle.s a0, f11, f10
	ret
.globl fcmp_une
fcmp_une:
.p2align 2
	feq.s a1, f10, f11
	xori a0, a1, 1
	ret
.globl fcmp_ult
fcmp_ult:
.p2align 2
	fle.s a1, f11, f10
	xori a0, a1, 1
	ret
.globl fcmp_ule
fcmp_ule:
.p2align 2
	flt.s a1, f11, f10
	xori a0, a1, 1
	ret
.globl fcmp_ugt
fcmp_ugt:
.p2align 2
	fle.s a1, f10, f11
	xori a0, a1, 1
	ret
.globl fcmp_uge
fcmp_uge:
.p2align 2
	flt.s a1, f10, f11
	xori a0, a1, 1
	ret
