.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl icmp_eq
icmp_eq:
	xor a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_eq_constant
icmp_eq_constant:
	xori a0, a0, 42
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_eq_constant_2048
icmp_eq_constant_2048:
	li a1, 2048
	xor a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_eq_constant_2049
icmp_eq_constant_2049:
	li a1, 2049
	xor a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_eq_constant_neg_2047
icmp_eq_constant_neg_2047:
	xori a0, a0, -2047
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_eq_constant_neg_2048
icmp_eq_constant_neg_2048:
	xori a0, a0, -2048
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_eqz
icmp_eqz:
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ne
icmp_ne:
	xor a0, a0, a1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ne_constant
icmp_ne_constant:
	xori a0, a0, 42
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ne_constant_2048
icmp_ne_constant_2048:
	li a1, 2048
	xor a0, a0, a1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ne_constant_2049
icmp_ne_constant_2049:
	li a1, 2049
	xor a0, a0, a1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ne_constant_neg_2047
icmp_ne_constant_neg_2047:
	xori a0, a0, -2047
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ne_constant_neg_2048
icmp_ne_constant_neg_2048:
	xori a0, a0, -2048
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ne_neg_1
icmp_ne_neg_1:
	xori a0, a0, -1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_nez
icmp_nez:
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sge
icmp_sge:
	slt a0, a0, a1
	xori a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sge_constant_2047
icmp_sge_constant_2047:
	li a1, 2046
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sge_constant_2048
icmp_sge_constant_2048:
	li a1, 2047
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sge_constant_neg_2047
icmp_sge_constant_neg_2047:
	li a1, -2048
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sge_constant_neg_2048
icmp_sge_constant_neg_2048:
	li a1, -1
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sge_constant_zero
icmp_sge_constant_zero:
	li a1, -1
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sgt
icmp_sgt:
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sgt_constant_2046
icmp_sgt_constant_2046:
	li a1, 2046
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sgt_constant_2047
icmp_sgt_constant_2047:
	li a1, 2047
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sgt_constant_neg_2049
icmp_sgt_constant_neg_2049:
	li a1, -2049
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sgt_constant_neg_2050
icmp_sgt_constant_neg_2050:
	li a1, -2050
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sgt_constant_zero
icmp_sgt_constant_zero:
	slt a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sle
icmp_sle:
	slt a0, a1, a0
	xori a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sle_constant_2046
icmp_sle_constant_2046:
	slti a0, a0, 2047
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sle_constant_2047
icmp_sle_constant_2047:
	li a1, 2048
	slt a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sle_constant_neg_2049
icmp_sle_constant_neg_2049:
	slti a0, a0, -2048
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sle_constant_neg_2050
icmp_sle_constant_neg_2050:
	li a1, -2049
	slt a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_sle_constant_zero
icmp_sle_constant_zero:
	slti a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_slt
icmp_slt:
	slt a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_slt_constant_2047
icmp_slt_constant_2047:
	slti a0, a0, 2047
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_slt_constant_2048
icmp_slt_constant_2048:
	li a1, 2048
	slt a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_slt_constant_neg_2048
icmp_slt_constant_neg_2048:
	slti a0, a0, -2048
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_slt_constant_neg_2049
icmp_slt_constant_neg_2049:
	li a1, -2049
	slt a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_slt_constant_zero
icmp_slt_constant_zero:
	slti a0, a0, 0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_uge
icmp_uge:
	sltu a0, a0, a1
	xori a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_uge_constant_2047
icmp_uge_constant_2047:
	li a1, 2046
	sltu a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_uge_constant_2048
icmp_uge_constant_2048:
	li a1, 2047
	sltu a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_uge_constant_neg_2048
icmp_uge_constant_neg_2048:
	li a1, -2049
	sltu a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_uge_constant_neg_2049
icmp_uge_constant_neg_2049:
	li a1, -2050
	sltu a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_uge_constant_zero
icmp_uge_constant_zero:
	li a0, 1
	ret
.globl icmp_ugt
icmp_ugt:
	sltu a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ugt_constant_2046
icmp_ugt_constant_2046:
	li a1, 2046
	sltu a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ugt_constant_2047
icmp_ugt_constant_2047:
	li a1, 2047
	sltu a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ugt_constant_neg_2049
icmp_ugt_constant_neg_2049:
	li a1, -2049
	sltu a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ugt_constant_neg_2050
icmp_ugt_constant_neg_2050:
	li a1, -2050
	sltu a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ugt_constant_zero
icmp_ugt_constant_zero:
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ule
icmp_ule:
	sltu a0, a1, a0
	xori a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ule_constant_2046
icmp_ule_constant_2046:
	sltiu a0, a0, 2047
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ule_constant_2047
icmp_ule_constant_2047:
	li a1, 2048
	sltu a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ule_constant_neg_2049
icmp_ule_constant_neg_2049:
	sltiu a0, a0, -2048
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ule_constant_neg_2050
icmp_ule_constant_neg_2050:
	li a1, -2049
	sltu a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ule_constant_zero
icmp_ule_constant_zero:
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ult
icmp_ult:
	sltu a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ult_constant_2047
icmp_ult_constant_2047:
	sltiu a0, a0, 2047
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ult_constant_2048
icmp_ult_constant_2048:
	li a1, 2048
	sltu a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ult_constant_neg_2048
icmp_ult_constant_neg_2048:
	sltiu a0, a0, -2048
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ult_constant_neg_2049
icmp_ult_constant_neg_2049:
	li a1, -2049
	sltu a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_ult_constant_zero
icmp_ult_constant_zero:
	mv a0, zero
	ret
