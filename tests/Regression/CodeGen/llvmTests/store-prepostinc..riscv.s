.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
.p2align 2
	li a1, 16711935
	and a0, a0, a1
	ret
.globl test10
test10:
.p2align 2
	srliw a2, a0, 12
	li a3, 458759
	srliw a0, a0, 7
	and a1, a2, a3
	li a2, 16253176
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl test11
test11:
.p2align 2
	andi a1, a0, 3
	li a2, 65537
	sllw a3, a2, a1
	li a2, 458759
	sraiw a0, a3, 1
	li a3, 4294967295
	and a1, a0, a2
	and a0, a1, a3
	ret
.globl test2
test2:
.p2align 2
	srliw a1, a0, 8
	li a2, 16711935
	and a0, a1, a2
	ret
.globl test3
test3:
.p2align 2
	srliw a1, a0, 8
	li a2, 16711935
	and a0, a1, a2
	ret
.globl test4
test4:
.p2align 2
	srliw a1, a0, 8
	li a2, 16711935
	and a0, a1, a2
	ret
.globl test5
test5:
.p2align 2
	srliw a1, a0, 8
	li a2, 16711935
	and a0, a1, a2
	ret
.globl test6
test6:
.p2align 2
	srliw a2, a0, 16
	slliw a0, a0, 16
	andi a1, a2, 255
	lui a2, 4080
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl test7
test7:
.p2align 2
	srliw a2, a0, 16
	slliw a0, a0, 16
	andi a1, a2, 255
	lui a2, 4080
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl test8
test8:
.p2align 2
	slliw a1, a0, 8
	lui a3, 4080
	and a2, a1, a3
	srliw a1, a0, 24
	or a0, a2, a1
	ret
.globl test9
test9:
.p2align 2
	slliw a1, a0, 8
	lui a3, 4080
	and a2, a1, a3
	srliw a1, a0, 24
	or a0, a2, a1
	ret
