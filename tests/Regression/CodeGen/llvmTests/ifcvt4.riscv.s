.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl t
t:
	beq a0, a1, label2
	subw a5, zero, a1
	mv a3, a1
	mv a4, zero
	mv t0, zero
	sext.w a2, a0
	blt a1, a2, label9
	subw a1, a1, a2
	bne a2, a1, label35
label45:
	mv a0, a2
label2:
	ret
label9:
	subw a2, a2, a1
	addiw a4, a4, 1
	bne a1, a2, label7
	j label45
label35:
	mv a0, a2
	subw a5, zero, a1
	mv a3, a1
	mv a4, zero
	mv t0, zero
	sext.w a2, a2
	blt a1, a2, label9
	subw a1, a1, a2
	bne a2, a1, label35
	j label45
label7:
	mulw t0, a5, a4
	addw a2, a0, t0
	blt a3, a2, label9
	subw a1, a1, a2
	bne a2, a1, label35
	j label45
