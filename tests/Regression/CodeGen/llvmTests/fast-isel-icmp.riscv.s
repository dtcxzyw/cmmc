.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl icmp_i16_signed
icmp_i16_signed:
	sext.h a2, a0
	sext.h a3, a1
	slt a1, a2, a3
	zext.w a0, a1
	ret
.p2align 2
.globl icmp_i16_unsigned
icmp_i16_unsigned:
	zext.h a2, a0
	zext.h a3, a1
	slt a1, a2, a3
	zext.w a0, a1
	ret
.p2align 2
.globl icmp_i1_unsigned
icmp_i1_unsigned:
	sltu a2, a0, a1
	zext.w a0, a2
	ret
.p2align 2
.globl icmp_i8_signed
icmp_i8_signed:
	sext.b a2, a0
	sext.b a3, a1
	slt a1, a3, a2
	zext.w a0, a1
	ret
.p2align 2
.globl icmp_i8_unsigned
icmp_i8_unsigned:
	andi a2, a0, 255
	andi a3, a1, 255
	slt a1, a3, a2
	zext.w a0, a1
	ret
