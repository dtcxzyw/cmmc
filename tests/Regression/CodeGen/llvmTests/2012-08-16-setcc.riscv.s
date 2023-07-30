.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl and_1
and_1:
.p2align 2
	andi a0, a0, 255
	andi a3, a1, 255
	and a1, a0, a3
	mv a0, a2
	bne a1, zero, label11
	mv a0, zero
label11:
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
	andi a3, a1, 255
	xor a1, a0, a3
	mv a0, a2
	bne a1, zero, label32
	mv a0, zero
label32:
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
