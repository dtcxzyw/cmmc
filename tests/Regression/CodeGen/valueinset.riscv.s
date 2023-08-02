.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl basic_3
basic_3:
	sltu a2, zero, a0
	xori a4, a0, 1
	xori a5, a0, 2
	sltu a3, zero, a4
	sltu a4, zero, a5
	and a1, a2, a3
	and a0, a1, a4
	ret
.p2align 2
.globl basic_5
basic_5:
	li a4, 1
	sll a3, a4, a0
	li a4, 4
	andi a2, a3, 31
	sltu a3, a4, a0
	sltiu a1, a2, 1
	or a0, a1, a3
	ret
.p2align 2
.globl cross_64_with_9
cross_64_with_9:
	addiw a1, a0, -35
	li a3, 1
	li t0, 360287970357415681
	slti a4, a1, 0
	sll a2, a3, a1
	and a5, a2, t0
	sltiu a3, a5, 1
	li a5, 93
	or a2, a3, a4
	slt a1, a5, a0
	or a0, a2, a1
	ret
.p2align 2
.globl cross_32_with_5
cross_32_with_5:
	addiw a1, a0, -35
	li a3, 1
	lui a5, 1
	sll a2, a3, a1
	addiw a4, a5, -255
	slti a5, a1, 0
	and t0, a2, a4
	li a4, 46
	sltiu a3, t0, 1
	slt a1, a4, a0
	or a2, a3, a5
	or a0, a2, a1
	ret
.p2align 2
.globl negative_5
negative_5:
	addiw a1, a0, 7
	li a3, 1
	lui a5, 1
	sll a2, a3, a1
	addiw a4, a5, 1105
	slti a5, a1, 0
	and t0, a2, a4
	li a4, 5
	sltiu a3, t0, 1
	slt a1, a4, a0
	or a2, a3, a5
	or a0, a2, a1
	ret
