.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	lui a3, 526344
	addiw a1, a3, 129
	mul a2, a0, a1
	srli a3, a2, 32
	add a1, a3, a0
	srliw a3, a1, 31
	sraiw a2, a1, 7
	add a1, a3, a2
	addw a3, a0, a1
	slliw a2, a1, 8
	subw a1, a3, a2
	zext.w a0, a1
	ret
.p2align 2
.globl test2
test2:
	slli a3, a0, 1
	srli a1, a3, 56
	add a2, a0, a1
	andi a3, a2, -256
	subw a1, a0, a3
	zext.w a0, a1
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
