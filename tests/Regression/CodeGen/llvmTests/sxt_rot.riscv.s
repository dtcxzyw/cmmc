.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test0
test0:
	sext.b a1, a0
	zext.w a0, a1
	ret
.p2align 2
.globl test1
test1:
	srliw a1, a0, 8
	slliw a2, a0, 24
	or a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test2
test2:
	srliw a2, a0, 8
	slliw a3, a0, 24
	or a0, a2, a3
	andi a2, a0, 255
	sext.b a3, a2
	zext.w a4, a3
	addw a0, a1, a4
	ret
.p2align 2
.globl test3
test3:
	srliw a2, a0, 16
	slliw a3, a0, 16
	or a0, a2, a3
	andi a2, a0, 255
	sext.b a3, a2
	zext.w a4, a3
	addw a0, a1, a4
	ret
.p2align 2
.globl test4
test4:
	srliw a2, a0, 8
	slliw a3, a0, 24
	or a0, a2, a3
	zext.h a2, a0
	sext.h a3, a2
	zext.w a4, a3
	addw a0, a1, a4
	ret
.p2align 2
.globl test5
test5:
	srliw a2, a0, 24
	slliw a3, a0, 8
	or a0, a2, a3
	zext.h a2, a0
	sext.h a3, a2
	zext.w a4, a3
	addw a0, a1, a4
	ret
.p2align 2
.globl test6
test6:
	sext.b a2, a0
	zext.w a3, a2
	addw a0, a1, a3
	ret
.p2align 2
.globl test7
test7:
	slliw a2, a0, 24
	srli a3, a2, 24
	addw a0, a1, a3
	ret
.p2align 2
.globl test8
test8:
	sext.h a2, a0
	zext.w a3, a2
	addw a0, a1, a3
	ret
.p2align 2
.globl test9
test9:
	slliw a2, a0, 16
	srli a3, a2, 16
	addw a0, a1, a3
	ret
