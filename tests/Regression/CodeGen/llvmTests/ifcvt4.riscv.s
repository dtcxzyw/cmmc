.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl t
t:
.p2align 2
	beq a0, a1, label9
	subw a5, zero, a1
	mv a3, a1
	mv a4, zero
	j label5
label29:
	mv a0, a2
label9:
	ret
label5:
	mulw t0, a5, a4
	addw a2, a0, t0
	blt a3, a2, label7
	subw a1, a1, a2
	beq a2, a1, label29
	mv a0, a2
	subw a5, zero, a1
	mv a3, a1
	mv a4, zero
	j label5
label7:
	subw a2, a2, a1
	addiw a4, a4, 1
	bne a1, a2, label5
	j label29
