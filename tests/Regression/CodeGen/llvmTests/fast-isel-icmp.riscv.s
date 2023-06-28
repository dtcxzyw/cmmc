.data
.text
.globl icmp_i16_signed
icmp_i16_signed:
	slli a0, a0, 16
	srai a0, a0, 16
	slli a1, a1, 16
	srai a1, a1, 16
	slt a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_i16_unsigned
icmp_i16_unsigned:
	li a2, 65535
	and a0, a0, a2
	and a1, a1, a2
	slt a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_i1_unsigned
icmp_i1_unsigned:
	sltu a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_i8_signed
icmp_i8_signed:
	slli a0, a0, 24
	srai a0, a0, 24
	slli a1, a1, 24
	srai a1, a1, 24
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl icmp_i8_unsigned
icmp_i8_unsigned:
	andi a0, a0, 255
	andi a1, a1, 255
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
