.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
	sltu a0, zero, a0
	li a2, 4294967295
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test1_commute
test1_commute:
	sltu a0, zero, a0
	li a2, 4294967295
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test2
test2:
	sltiu a0, a0, 1
	li a2, 4294967295
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test3
test3:
	sltiu a0, a0, 1
	li a2, 4294967295
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test4
test4:
	sltu a0, zero, a0
	li a2, 4294967295
	and a0, a0, a2
	addw a0, a1, a0
	ret
.globl test5
test5:
	sltu a0, zero, a0
	li a2, 4294967295
	and a0, a0, a2
	subw a0, a1, a0
	ret
.globl test6
test6:
	sltiu a0, a0, 1
	li a2, 4294967295
	and a0, a0, a2
	subw a0, a1, a0
	ret
.globl test7
test7:
	sltiu a0, a0, 1
	li a2, 4294967295
	and a0, a0, a2
	subw a0, a1, a0
	ret
.globl test8
test8:
	sltu a0, zero, a0
	li a2, 4294967295
	and a0, a0, a2
	subw a0, a1, a0
	ret