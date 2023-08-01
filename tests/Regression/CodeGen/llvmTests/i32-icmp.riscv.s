.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl icmp_eq
icmp_eq:
	xor a3, a0, a1
	li a1, 4294967295
	sltiu a2, a3, 1
	and a0, a2, a1
	ret
.p2align 2
.globl icmp_eq_constant
icmp_eq_constant:
	xori a2, a0, 42
	li a3, 4294967295
	sltiu a1, a2, 1
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_eq_constant_2048
icmp_eq_constant_2048:
	li a2, 2048
	xor a3, a0, a2
	li a2, 4294967295
	sltiu a1, a3, 1
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_eq_constant_2049
icmp_eq_constant_2049:
	li a2, 2049
	xor a3, a0, a2
	li a2, 4294967295
	sltiu a1, a3, 1
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_eq_constant_neg_2047
icmp_eq_constant_neg_2047:
	xori a2, a0, -2047
	li a3, 4294967295
	sltiu a1, a2, 1
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_eq_constant_neg_2048
icmp_eq_constant_neg_2048:
	xori a2, a0, -2048
	li a3, 4294967295
	sltiu a1, a2, 1
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_eqz
icmp_eqz:
	sltiu a1, a0, 1
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_ne
icmp_ne:
	xor a3, a0, a1
	li a1, 4294967295
	sltu a2, zero, a3
	and a0, a2, a1
	ret
.p2align 2
.globl icmp_ne_constant
icmp_ne_constant:
	xori a2, a0, 42
	li a3, 4294967295
	sltu a1, zero, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_ne_constant_2048
icmp_ne_constant_2048:
	li a2, 2048
	xor a3, a0, a2
	li a2, 4294967295
	sltu a1, zero, a3
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_ne_constant_2049
icmp_ne_constant_2049:
	li a2, 2049
	xor a3, a0, a2
	li a2, 4294967295
	sltu a1, zero, a3
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_ne_constant_neg_2047
icmp_ne_constant_neg_2047:
	xori a2, a0, -2047
	li a3, 4294967295
	sltu a1, zero, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_ne_constant_neg_2048
icmp_ne_constant_neg_2048:
	xori a2, a0, -2048
	li a3, 4294967295
	sltu a1, zero, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_ne_neg_1
icmp_ne_neg_1:
	xori a2, a0, -1
	li a3, 4294967295
	sltu a1, zero, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_nez
icmp_nez:
	sltu a1, zero, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_sge
icmp_sge:
	slt a3, a0, a1
	li a1, 4294967295
	xori a2, a3, 1
	and a0, a2, a1
	ret
.p2align 2
.globl icmp_sge_constant_2047
icmp_sge_constant_2047:
	li a2, 2046
	li a3, 4294967295
	slt a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_sge_constant_2048
icmp_sge_constant_2048:
	li a2, 2047
	li a3, 4294967295
	slt a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_sge_constant_neg_2047
icmp_sge_constant_neg_2047:
	li a2, -2048
	li a3, 4294967295
	slt a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_sge_constant_neg_2048
icmp_sge_constant_neg_2048:
	li a2, -1
	li a3, 4294967295
	slt a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_sge_constant_zero
icmp_sge_constant_zero:
	li a2, -1
	li a3, 4294967295
	slt a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_sgt
icmp_sgt:
	slt a2, a1, a0
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl icmp_sgt_constant_2046
icmp_sgt_constant_2046:
	li a2, 2046
	li a3, 4294967295
	slt a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_sgt_constant_2047
icmp_sgt_constant_2047:
	li a2, 2047
	li a3, 4294967295
	slt a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_sgt_constant_neg_2049
icmp_sgt_constant_neg_2049:
	li a2, -2049
	li a3, 4294967295
	slt a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_sgt_constant_neg_2050
icmp_sgt_constant_neg_2050:
	li a2, -2050
	li a3, 4294967295
	slt a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_sgt_constant_zero
icmp_sgt_constant_zero:
	slt a1, zero, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_sle
icmp_sle:
	slt a3, a1, a0
	li a1, 4294967295
	xori a2, a3, 1
	and a0, a2, a1
	ret
.p2align 2
.globl icmp_sle_constant_2046
icmp_sle_constant_2046:
	slti a1, a0, 2047
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_sle_constant_2047
icmp_sle_constant_2047:
	li a2, 2048
	li a3, 4294967295
	slt a1, a0, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_sle_constant_neg_2049
icmp_sle_constant_neg_2049:
	slti a1, a0, -2048
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_sle_constant_neg_2050
icmp_sle_constant_neg_2050:
	li a2, -2049
	li a3, 4294967295
	slt a1, a0, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_sle_constant_zero
icmp_sle_constant_zero:
	slti a1, a0, 1
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_slt
icmp_slt:
	slt a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl icmp_slt_constant_2047
icmp_slt_constant_2047:
	slti a1, a0, 2047
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_slt_constant_2048
icmp_slt_constant_2048:
	li a2, 2048
	li a3, 4294967295
	slt a1, a0, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_slt_constant_neg_2048
icmp_slt_constant_neg_2048:
	slti a1, a0, -2048
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_slt_constant_neg_2049
icmp_slt_constant_neg_2049:
	li a2, -2049
	li a3, 4294967295
	slt a1, a0, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_slt_constant_zero
icmp_slt_constant_zero:
	srliw a1, a0, 31
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_uge
icmp_uge:
	sltu a3, a0, a1
	li a1, 4294967295
	xori a2, a3, 1
	and a0, a2, a1
	ret
.p2align 2
.globl icmp_uge_constant_2047
icmp_uge_constant_2047:
	li a2, 2046
	li a3, 4294967295
	sltu a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_uge_constant_2048
icmp_uge_constant_2048:
	li a2, 2047
	li a3, 4294967295
	sltu a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_uge_constant_neg_2048
icmp_uge_constant_neg_2048:
	li a2, -2049
	li a3, 4294967295
	sltu a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_uge_constant_neg_2049
icmp_uge_constant_neg_2049:
	li a2, -2050
	li a3, 4294967295
	sltu a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_uge_constant_zero
icmp_uge_constant_zero:
	li a0, 1
	ret
.p2align 2
.globl icmp_ugt
icmp_ugt:
	sltu a2, a1, a0
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl icmp_ugt_constant_2046
icmp_ugt_constant_2046:
	li a2, 2046
	li a3, 4294967295
	sltu a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_ugt_constant_2047
icmp_ugt_constant_2047:
	li a2, 2047
	li a3, 4294967295
	sltu a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_ugt_constant_neg_2049
icmp_ugt_constant_neg_2049:
	li a2, -2049
	li a3, 4294967295
	sltu a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_ugt_constant_neg_2050
icmp_ugt_constant_neg_2050:
	li a2, -2050
	li a3, 4294967295
	sltu a1, a2, a0
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_ugt_constant_zero
icmp_ugt_constant_zero:
	sltu a1, zero, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_ule
icmp_ule:
	sltu a3, a1, a0
	li a1, 4294967295
	xori a2, a3, 1
	and a0, a2, a1
	ret
.p2align 2
.globl icmp_ule_constant_2046
icmp_ule_constant_2046:
	sltiu a1, a0, 2047
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_ule_constant_2047
icmp_ule_constant_2047:
	li a2, 2048
	li a3, 4294967295
	sltu a1, a0, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_ule_constant_neg_2049
icmp_ule_constant_neg_2049:
	sltiu a1, a0, -2048
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_ule_constant_neg_2050
icmp_ule_constant_neg_2050:
	li a2, -2049
	li a3, 4294967295
	sltu a1, a0, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_ule_constant_zero
icmp_ule_constant_zero:
	sltiu a1, a0, 1
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_ult
icmp_ult:
	sltu a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl icmp_ult_constant_2047
icmp_ult_constant_2047:
	sltiu a1, a0, 2047
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_ult_constant_2048
icmp_ult_constant_2048:
	li a2, 2048
	li a3, 4294967295
	sltu a1, a0, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_ult_constant_neg_2048
icmp_ult_constant_neg_2048:
	sltiu a1, a0, -2048
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl icmp_ult_constant_neg_2049
icmp_ult_constant_neg_2049:
	li a2, -2049
	li a3, 4294967295
	sltu a1, a0, a2
	and a0, a1, a3
	ret
.p2align 2
.globl icmp_ult_constant_zero
icmp_ult_constant_zero:
	mv a0, zero
	ret
