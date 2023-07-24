.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl icmp_i16_signed
icmp_i16_signed:
.p2align 2
	sext.h a2, a0
	sext.h a0, a1
	slt a1, a2, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl icmp_i16_unsigned
icmp_i16_unsigned:
.p2align 2
	li a2, 65535
	and a3, a1, a2
	and a0, a0, a2
	li a2, 4294967295
	slt a1, a0, a3
	and a0, a1, a2
	ret
.globl icmp_i1_unsigned
icmp_i1_unsigned:
.p2align 2
	sltu a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.globl icmp_i8_signed
icmp_i8_signed:
.p2align 2
	sext.b a2, a0
	sext.b a0, a1
	slt a1, a0, a2
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl icmp_i8_unsigned
icmp_i8_unsigned:
.p2align 2
	andi a2, a0, 255
	andi a0, a1, 255
	slt a1, a0, a2
	li a2, 4294967295
	and a0, a1, a2
	ret
