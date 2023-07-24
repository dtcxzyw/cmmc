.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl and_1
and_1:
.p2align 2
	andi a0, a0, 255
	andi a1, a1, 255
	and a3, a0, a1
	sltu a4, zero, a3
	subw a1, zero, a4
	and a0, a2, a1
	ret
.globl and_2
and_2:
.p2align 2
	andi a2, a0, 255
	andi a0, a1, 255
	and a3, a2, a0
	li a2, 4294967295
	sltu a1, zero, a3
	and a0, a1, a2
	ret
.globl xor_1
xor_1:
.p2align 2
	andi a0, a0, 255
	andi a1, a1, 255
	xor a3, a0, a1
	sltu a4, zero, a3
	subw a1, zero, a4
	and a0, a2, a1
	ret
.globl xor_2
xor_2:
.p2align 2
	andi a2, a0, 255
	andi a0, a1, 255
	xor a3, a2, a0
	li a2, 4294967295
	sltu a1, zero, a3
	and a0, a1, a2
	ret
