.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl basic_3
basic_3:
.p2align 2
	sltu a1, zero, a0
	xori a3, a0, 1
	sltu a2, zero, a3
	xori a3, a0, 2
	and a1, a1, a2
	sltu a2, zero, a3
	and a0, a1, a2
	ret
.globl basic_5
basic_5:
.p2align 2
	li a1, 1
	sll a3, a1, a0
	andi a2, a3, 31
	li a3, 4
	sltiu a1, a2, 1
	sltu a2, a3, a0
	or a0, a1, a2
	ret
.globl cross_64_with_9
cross_64_with_9:
.p2align 2
	addiw a1, a0, -35
	li a4, 1
	li a3, 360287970357415681
	sll a2, a4, a1
	and a4, a2, a3
	slti a3, a1, 0
	sltiu a2, a4, 1
	or a1, a2, a3
	li a2, 93
	slt a3, a2, a0
	or a0, a1, a3
	ret
.globl cross_32_with_5
cross_32_with_5:
.p2align 2
	addiw a1, a0, -35
	li a4, 1
	li a3, 3841
	sll a2, a4, a1
	and a4, a2, a3
	slti a3, a1, 0
	sltiu a2, a4, 1
	or a1, a2, a3
	li a2, 46
	slt a3, a2, a0
	or a0, a1, a3
	ret
.globl negative_5
negative_5:
.p2align 2
	addiw a1, a0, 7
	li a4, 1
	li a3, 5201
	sll a2, a4, a1
	and a4, a2, a3
	slti a3, a1, 0
	sltiu a2, a4, 1
	or a1, a2, a3
	li a2, 5
	slt a3, a2, a0
	or a0, a1, a3
	ret
