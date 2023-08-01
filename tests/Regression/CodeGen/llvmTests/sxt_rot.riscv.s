.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test0
test0:
	sext.b a1, a0
	li a2, 4294967295
	and a0, a1, a2
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
	slliw a0, a0, 24
	or a3, a2, a0
	andi a2, a3, 255
	li a3, 4294967295
	sext.b a0, a2
	and a2, a0, a3
	addw a0, a1, a2
	ret
.p2align 2
.globl test3
test3:
	srliw a2, a0, 16
	slliw a0, a0, 16
	or a3, a2, a0
	andi a2, a3, 255
	li a3, 4294967295
	sext.b a0, a2
	and a2, a0, a3
	addw a0, a1, a2
	ret
.p2align 2
.globl test4
test4:
	srliw a2, a0, 8
	slliw a3, a0, 24
	li a4, 65535
	or a0, a2, a3
	li a3, 4294967295
	and a2, a0, a4
	sext.h a0, a2
	and a2, a0, a3
	addw a0, a1, a2
	ret
.p2align 2
.globl test5
test5:
	srliw a2, a0, 24
	slliw a3, a0, 8
	li a4, 65535
	or a0, a2, a3
	li a3, 4294967295
	and a2, a0, a4
	sext.h a0, a2
	and a2, a0, a3
	addw a0, a1, a2
	ret
.p2align 2
.globl test6
test6:
	sext.b a2, a0
	li a4, 4294967295
	and a3, a2, a4
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
	li a4, 4294967295
	and a3, a2, a4
	addw a0, a1, a3
	ret
.p2align 2
.globl test9
test9:
	slliw a2, a0, 16
	srli a3, a2, 16
	addw a0, a1, a3
	ret
