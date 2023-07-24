.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
.p2align 2
	li a3, 65535
	slliw a1, a1, 16
	and a2, a0, a3
	or a0, a2, a1
	ret
.globl test10
test10:
.p2align 2
	lui a3, 1048560
	srliw a1, a1, 17
	and a2, a0, a3
	or a0, a2, a1
	ret
.globl test2
test2:
.p2align 2
	slliw a2, a1, 12
	lui a3, 1048560
	and a1, a2, a3
	li a2, 65535
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl test3
test3:
.p2align 2
	li a3, 65535
	slliw a1, a1, 18
	and a2, a0, a3
	or a0, a2, a1
	ret
.globl test4
test4:
.p2align 2
	li a2, 65535
	lui a3, 1048560
	and a0, a0, a2
	and a1, a1, a3
	or a0, a0, a1
	ret
.globl test5
test5:
.p2align 2
	lui a3, 1048560
	srliw a1, a1, 16
	and a2, a0, a3
	or a0, a2, a1
	ret
.globl test5a
test5a:
.p2align 2
	lui a3, 1048560
	srliw a1, a1, 16
	and a2, a0, a3
	or a0, a2, a1
	ret
.globl test6
test6:
.p2align 2
	srliw a2, a1, 12
	li a3, 65535
	and a1, a2, a3
	lui a2, 1048560
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl test7
test7:
.p2align 2
	srliw a2, a1, 18
	li a3, 65535
	and a1, a2, a3
	lui a2, 1048560
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl test8
test8:
.p2align 2
	lui a3, 1048560
	srliw a1, a1, 22
	and a2, a0, a3
	or a0, a2, a1
	ret
.globl test9
test9:
.p2align 2
	lui a3, 1048560
	srliw a1, a1, 16
	and a2, a0, a3
	or a0, a2, a1
	ret
