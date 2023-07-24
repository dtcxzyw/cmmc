.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
.p2align 2
	andi a0, a0, 255
	ret
.globl test10
test10:
.p2align 2
	srliw a2, a0, 24
	slliw a3, a0, 8
	or a0, a2, a3
	li a2, 65535
	and a3, a0, a2
	addw a0, a1, a3
	ret
.globl test11
test11:
.p2align 2
	andi a2, a0, 255
	addw a0, a1, a2
	ret
.globl test12
test12:
.p2align 2
	srliw a2, a0, 8
	andi a3, a2, 255
	addw a0, a1, a3
	ret
.globl test13
test13:
.p2align 2
	srliw a2, a0, 16
	andi a3, a2, 255
	addw a0, a1, a3
	ret
.globl test14
test14:
.p2align 2
	li a2, 65535
	and a3, a0, a2
	addw a0, a1, a3
	ret
.globl test15
test15:
.p2align 2
	srliw a2, a0, 8
	li a3, 65535
	and a4, a2, a3
	addw a0, a1, a4
	ret
.globl test16
test16:
.p2align 2
	srliw a2, a0, 24
	slliw a3, a0, 8
	or a0, a2, a3
	li a2, 65535
	and a3, a0, a2
	addw a0, a1, a3
	ret
.globl test2
test2:
.p2align 2
	andi a2, a1, 255
	addw a0, a0, a2
	ret
.globl test3
test3:
.p2align 2
	srliw a1, a0, 8
	slliw a3, a0, 24
	or a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test4
test4:
.p2align 2
	srliw a1, a0, 8
	slliw a2, a0, 24
	or a3, a1, a2
	andi a0, a3, 255
	ret
.globl test5
test5:
.p2align 2
	li a1, 65535
	and a0, a0, a1
	ret
.globl test6
test6:
.p2align 2
	li a2, 65535
	and a3, a1, a2
	addw a0, a0, a3
	ret
.globl test7
test7:
.p2align 2
	srliw a2, a0, 8
	slliw a0, a0, 24
	or a3, a2, a0
	andi a2, a3, 255
	addw a0, a1, a2
	ret
.globl test8
test8:
.p2align 2
	srliw a2, a0, 16
	slliw a0, a0, 16
	or a3, a2, a0
	andi a2, a3, 255
	addw a0, a1, a2
	ret
.globl test9
test9:
.p2align 2
	srliw a2, a0, 8
	slliw a3, a0, 24
	or a0, a2, a3
	li a2, 65535
	and a3, a0, a2
	addw a0, a1, a3
	ret
