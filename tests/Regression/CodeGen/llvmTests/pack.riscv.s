.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
	li a2, 65535
	and a0, a0, a2
	slliw a1, a1, 16
	or a0, a0, a1
	ret
.globl test10
test10:
	li a2, -65536
	and a0, a0, a2
	srliw a1, a1, 17
	or a0, a0, a1
	ret
.globl test2
test2:
	slliw a1, a1, 12
	li a2, -65536
	and a1, a1, a2
	li a2, 65535
	and a0, a0, a2
	or a0, a1, a0
	ret
.globl test3
test3:
	li a2, 65535
	and a0, a0, a2
	slliw a1, a1, 18
	or a0, a0, a1
	ret
.globl test4
test4:
	li a2, 65535
	and a0, a0, a2
	li a2, -65536
	and a1, a1, a2
	or a0, a0, a1
	ret
.globl test5
test5:
	li a2, -65536
	and a0, a0, a2
	srliw a1, a1, 16
	or a0, a0, a1
	ret
.globl test5a
test5a:
	li a2, -65536
	and a0, a0, a2
	srliw a1, a1, 16
	or a0, a0, a1
	ret
.globl test6
test6:
	srliw a1, a1, 12
	li a2, 65535
	and a1, a1, a2
	li a2, -65536
	and a0, a0, a2
	or a0, a1, a0
	ret
.globl test7
test7:
	srliw a1, a1, 18
	li a2, 65535
	and a1, a1, a2
	li a2, -65536
	and a0, a0, a2
	or a0, a1, a0
	ret
.globl test8
test8:
	li a2, -65536
	and a0, a0, a2
	srliw a1, a1, 22
	or a0, a0, a1
	ret
.globl test9
test9:
	li a2, -65536
	and a0, a0, a2
	srliw a1, a1, 16
	or a0, a0, a1
	ret
