.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	sltu a2, zero, a0
	zext.w a3, a2
	addw a0, a1, a3
	ret
.p2align 2
.globl test1_commute
test1_commute:
	sltu a2, zero, a0
	zext.w a3, a2
	addw a0, a1, a3
	ret
.p2align 2
.globl test2
test2:
	sltiu a2, a0, 1
	zext.w a3, a2
	addw a0, a1, a3
	ret
.p2align 2
.globl test3
test3:
	sltiu a2, a0, 1
	zext.w a3, a2
	addw a0, a1, a3
	ret
.p2align 2
.globl test4
test4:
	sltu a2, zero, a0
	zext.w a3, a2
	addw a0, a1, a3
	ret
.p2align 2
.globl test5
test5:
	sltu a2, zero, a0
	zext.w a3, a2
	subw a0, a1, a3
	ret
.p2align 2
.globl test6
test6:
	sltiu a2, a0, 1
	zext.w a3, a2
	subw a0, a1, a3
	ret
.p2align 2
.globl test7
test7:
	sltiu a2, a0, 1
	zext.w a3, a2
	subw a0, a1, a3
	ret
.p2align 2
.globl test8
test8:
	sltu a2, zero, a0
	zext.w a3, a2
	subw a0, a1, a3
	ret
