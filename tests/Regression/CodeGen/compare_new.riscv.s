.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl icmp_eq
icmp_eq:
	xor a2, a0, a1
	sltiu a0, a2, 1
	ret
.p2align 2
.globl icmp_ne
icmp_ne:
	xor a2, a0, a1
	sltu a0, zero, a2
	ret
.p2align 2
.globl icmp_slt
icmp_slt:
	slt a0, a0, a1
	ret
.p2align 2
.globl icmp_sle
icmp_sle:
	slt a2, a1, a0
	xori a0, a2, 1
	ret
.p2align 2
.globl icmp_sgt
icmp_sgt:
	slt a0, a1, a0
	ret
.p2align 2
.globl icmp_sge
icmp_sge:
	slt a2, a0, a1
	xori a0, a2, 1
	ret
.p2align 2
.globl icmp_ult
icmp_ult:
	sltu a0, a0, a1
	ret
.p2align 2
.globl icmp_ule
icmp_ule:
	sltu a2, a1, a0
	xori a0, a2, 1
	ret
.p2align 2
.globl icmp_ugt
icmp_ugt:
	sltu a0, a1, a0
	ret
.p2align 2
.globl icmp_uge
icmp_uge:
	sltu a2, a0, a1
	xori a0, a2, 1
	ret
.p2align 2
.globl fcmp_oeq
fcmp_oeq:
	feq.s a0, f10, f11
	ret
.p2align 2
.globl fcmp_olt
fcmp_olt:
	flt.s a0, f10, f11
	ret
.p2align 2
.globl fcmp_ole
fcmp_ole:
	fle.s a0, f10, f11
	ret
.p2align 2
.globl fcmp_ogt
fcmp_ogt:
	flt.s a0, f11, f10
	ret
.p2align 2
.globl fcmp_oge
fcmp_oge:
	fle.s a0, f11, f10
	ret
.p2align 2
.globl fcmp_une
fcmp_une:
	feq.s a1, f10, f11
	xori a0, a1, 1
	ret
.p2align 2
.globl fcmp_ult
fcmp_ult:
	fle.s a1, f11, f10
	xori a0, a1, 1
	ret
.p2align 2
.globl fcmp_ule
fcmp_ule:
	flt.s a1, f11, f10
	xori a0, a1, 1
	ret
.p2align 2
.globl fcmp_ugt
fcmp_ugt:
	fle.s a1, f10, f11
	xori a0, a1, 1
	ret
.p2align 2
.globl fcmp_uge
fcmp_uge:
	flt.s a1, f10, f11
	xori a0, a1, 1
	ret
