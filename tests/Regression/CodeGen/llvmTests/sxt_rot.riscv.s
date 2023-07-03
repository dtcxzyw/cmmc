.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test0
test0:
	sext.b a0, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test1
test1:
	srliw a1, a0, 8
	slliw a0, a0, 24
	or a0, a1, a0
	andi a0, a0, 255
	ret
.globl test2
test2:
	srliw a2, a0, 8
	slliw a0, a0, 24
	or a0, a2, a0
	li a2, 4294967295
	andi a0, a0, 255
	sext.b a0, a0
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test3
test3:
	srliw a2, a0, 16
	slliw a0, a0, 16
	or a0, a2, a0
	li a2, 4294967295
	andi a0, a0, 255
	sext.b a0, a0
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test4
test4:
	srliw a2, a0, 8
	slliw a0, a0, 24
	or a0, a2, a0
	li a2, 65535
	and a0, a0, a2
	li a2, 4294967295
	sext.h a0, a0
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test5
test5:
	srliw a2, a0, 24
	slliw a0, a0, 8
	or a0, a2, a0
	li a2, 65535
	and a0, a0, a2
	li a2, 4294967295
	sext.h a0, a0
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test6
test6:
	sext.b a0, a0
	li a2, 4294967295
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test7
test7:
	slliw a0, a0, 24
	srliw a0, a0, 24
	addw a0, a1, a0
	ret
.globl test8
test8:
	sext.h a0, a0
	li a2, 4294967295
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test9
test9:
	slliw a0, a0, 16
	srliw a0, a0, 16
	addw a0, a1, a0
	ret