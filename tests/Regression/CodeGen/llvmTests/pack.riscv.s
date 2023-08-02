.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	zext.h a2, a0
	slliw a3, a1, 16
	or a0, a2, a3
	ret
.p2align 2
.globl test10
test10:
	lui a4, 1048560
	srliw a3, a1, 17
	and a2, a0, a4
	or a0, a2, a3
	ret
.p2align 2
.globl test2
test2:
	slliw a2, a1, 12
	lui a4, 1048560
	zext.h a1, a0
	and a3, a2, a4
	or a0, a3, a1
	ret
.p2align 2
.globl test3
test3:
	zext.h a2, a0
	slliw a3, a1, 18
	or a0, a2, a3
	ret
.p2align 2
.globl test4
test4:
	zext.h a2, a0
	lui a4, 1048560
	and a3, a1, a4
	or a0, a2, a3
	ret
.p2align 2
.globl test5
test5:
	lui a4, 1048560
	srliw a3, a1, 16
	and a2, a0, a4
	or a0, a2, a3
	ret
.p2align 2
.globl test5a
test5a:
	lui a4, 1048560
	srliw a3, a1, 16
	and a2, a0, a4
	or a0, a2, a3
	ret
.p2align 2
.globl test6
test6:
	srliw a3, a1, 12
	lui a4, 1048560
	zext.h a2, a3
	and a1, a0, a4
	or a0, a2, a1
	ret
.p2align 2
.globl test7
test7:
	srliw a3, a1, 18
	lui a4, 1048560
	zext.h a2, a3
	and a1, a0, a4
	or a0, a2, a1
	ret
.p2align 2
.globl test8
test8:
	lui a4, 1048560
	srliw a3, a1, 22
	and a2, a0, a4
	or a0, a2, a3
	ret
.p2align 2
.globl test9
test9:
	lui a4, 1048560
	srliw a3, a1, 16
	and a2, a0, a4
	or a0, a2, a3
	ret
