.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	lui a2, 526344
	addiw a3, a2, 129
	mul a1, a0, a3
	srli a4, a1, 32
	add a2, a4, a0
	srliw a5, a2, 31
	sraiw a3, a2, 7
	add a1, a5, a3
	addw t0, a0, a1
	slliw a4, a1, 8
	subw a2, t0, a4
	zext.w a0, a2
	ret
.p2align 2
.globl test2
test2:
	mv a1, a0
	bge a0, zero, label28
	addiw a1, a0, 255
label28:
	andi a2, a1, -256
	subw a3, a0, a2
	zext.w a0, a3
	ret
.p2align 2
.globl test3
test3:
	li a1, 255
	remuw a0, a0, a1
	ret
.p2align 2
.globl test4
test4:
	andi a0, a0, 255
	ret
.p2align 2
.globl test5
test5:
	li a2, 41
	remw a1, a2, a0
	zext.w a0, a1
	ret
