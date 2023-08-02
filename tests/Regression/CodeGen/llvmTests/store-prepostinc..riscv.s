.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	li a1, 16711935
	and a0, a0, a1
	ret
.p2align 2
.globl test10
test10:
	srliw a2, a0, 12
	li a3, 458759
	srliw a0, a0, 7
	and a1, a2, a3
	li a3, 16253176
	and a2, a0, a3
	or a0, a1, a2
	ret
.p2align 2
.globl test11
test11:
	andi a1, a0, 3
	li a3, 65537
	sllw a2, a3, a1
	li a3, 458759
	sraiw a0, a2, 1
	and a1, a0, a3
	zext.w a0, a1
	ret
.p2align 2
.globl test2
test2:
	srliw a1, a0, 8
	li a2, 16711935
	and a0, a1, a2
	ret
.p2align 2
.globl test3
test3:
	srliw a1, a0, 8
	li a2, 16711935
	and a0, a1, a2
	ret
.p2align 2
.globl test4
test4:
	srliw a1, a0, 8
	li a2, 16711935
	and a0, a1, a2
	ret
.p2align 2
.globl test5
test5:
	srliw a1, a0, 8
	li a2, 16711935
	and a0, a1, a2
	ret
.p2align 2
.globl test6
test6:
	srliw a2, a0, 16
	lui a3, 4080
	slliw a0, a0, 16
	andi a1, a2, 255
	and a2, a0, a3
	or a0, a1, a2
	ret
.p2align 2
.globl test7
test7:
	srliw a2, a0, 16
	lui a3, 4080
	slliw a0, a0, 16
	andi a1, a2, 255
	and a2, a0, a3
	or a0, a1, a2
	ret
.p2align 2
.globl test8
test8:
	slliw a1, a0, 8
	lui a3, 4080
	and a2, a1, a3
	srliw a1, a0, 24
	or a0, a2, a1
	ret
.p2align 2
.globl test9
test9:
	slliw a1, a0, 8
	lui a3, 4080
	and a2, a1, a3
	srliw a1, a0, 24
	or a0, a2, a1
	ret
