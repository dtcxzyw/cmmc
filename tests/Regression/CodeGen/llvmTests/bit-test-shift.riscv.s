.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl x
x:
	andi a2, a0, 256
	mv a1, zero
	beq a2, zero, label8
	li a1, -26
label8:
	zext.w a0, a1
	ret
