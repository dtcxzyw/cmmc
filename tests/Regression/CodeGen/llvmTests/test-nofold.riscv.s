.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl t1
t1:
.p2align 2
	andi a1, a0, 15
	mv a0, a1
	beq a1, zero, label7
	li a0, 42
label7:
	ret
