.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl and_1
and_1:
	andi a3, a0, 255
	andi a5, a1, 255
	mv a0, a2
	and a4, a3, a5
	bne a4, zero, label11
	mv a0, zero
label11:
	ret
.p2align 2
.globl and_2
and_2:
	andi a2, a0, 255
	andi a3, a1, 255
	and a4, a2, a3
	sltu a5, zero, a4
	zext.w a0, a5
	ret
.p2align 2
.globl xor_1
xor_1:
	andi a3, a0, 255
	andi a5, a1, 255
	mv a0, a2
	xor a4, a3, a5
	bne a4, zero, label31
	mv a0, zero
label31:
	ret
.p2align 2
.globl xor_2
xor_2:
	andi a2, a0, 255
	andi a3, a1, 255
	xor a4, a2, a3
	sltu a5, zero, a4
	zext.w a0, a5
	ret
