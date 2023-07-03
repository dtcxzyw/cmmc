.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl and_1
and_1:
	andi a0, a0, 255
	andi a1, a1, 255
	and a0, a0, a1
	sltu a0, zero, a0
	subw a0, zero, a0
	and a0, a2, a0
	ret
.globl and_2
and_2:
	andi a0, a0, 255
	andi a1, a1, 255
	and a0, a0, a1
	li a1, 4294967295
	sltu a0, zero, a0
	and a0, a0, a1
	ret
.globl xor_1
xor_1:
	andi a0, a0, 255
	andi a1, a1, 255
	xor a0, a0, a1
	sltu a0, zero, a0
	subw a0, zero, a0
	and a0, a2, a0
	ret
.globl xor_2
xor_2:
	andi a0, a0, 255
	andi a1, a1, 255
	xor a0, a0, a1
	li a1, 4294967295
	sltu a0, zero, a0
	and a0, a0, a1
	ret
