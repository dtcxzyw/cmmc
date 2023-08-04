.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test
test:
	bgt a0, zero, label7
	mv a0, zero
	j label2
label7:
	lui a3, 1
	lui a4, 16
	addiw a2, a3, 854
	addiw a3, a4, -1
	mul a1, a0, a2
	rem a2, a1, a3
	sext.w a0, a2
label2:
	ret
.p2align 2
.globl test2
test2:
	lui a4, 524296
	addiw a3, a4, 1
	mul a2, a0, a3
	srli a5, a2, 32
	add a4, a5, a0
	srliw t1, a4, 31
	sraiw t0, a4, 15
	add a2, t1, t0
	lui t0, 16
	addw t2, a0, a2
	slliw a5, a2, 16
	addiw a2, t0, -1
	subw a4, t2, a5
	mv a0, a4
	bge a4, zero, label65
	addw a0, a4, a2
label65:
	mul t0, a1, a3
	srli a4, t0, 32
	add a5, a4, a1
	srliw t1, a5, 31
	sraiw a3, a5, 15
	add a4, t1, a3
	addw t2, a1, a4
	slliw t0, a4, 16
	subw a5, t2, t0
	mv a3, a5
	bge a5, zero, label67
	addw a3, a5, a2
label67:
	addw a1, a0, a3
	sub a4, zero, a2
	xori a2, a4, -1
	addw t0, a0, a4
	addw a5, a3, t0
	mv a0, a5
	bgt a1, a2, label69
	mv a0, a1
label69:
	ret
.p2align 2
.globl test3
test3:
	slli a1, a0, 30
	add a2, a1, a0
	srli a5, a2, 63
	srai a3, a2, 61
	add a1, a5, a3
	addw a2, a0, a1
	slliw a4, a1, 31
	subw a0, a2, a4
	ret
.p2align 2
.globl test4
test4:
	srliw a1, a0, 31
	add a2, a0, a1
	andi a3, a2, -2
	subw a4, a0, a3
	sh1add a0, a0, a4
	ret
