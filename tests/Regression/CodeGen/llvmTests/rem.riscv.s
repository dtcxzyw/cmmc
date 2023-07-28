.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
.p2align 2
	li a1, -2139062143
	mul a2, a0, a1
	srli a3, a2, 32
	add a1, a3, a0
	srliw a3, a1, 31
	sraiw a2, a1, 7
	add a1, a3, a2
	slliw a2, a1, 8
	subw a3, a2, a1
	li a2, 4294967295
	subw a1, a0, a3
	and a0, a1, a2
	ret
.globl test2
test2:
.p2align 2
	slli a1, a0, 1
	srli a4, a1, 56
	add a2, a0, a4
	andi a3, a2, -256
	li a2, 4294967295
	subw a1, a0, a3
	and a0, a1, a2
	ret
.globl test3
test3:
.p2align 2
	li a1, 255
	remuw a0, a0, a1
	ret
.globl test4
test4:
.p2align 2
	andi a0, a0, 255
	ret
.globl test5
test5:
.p2align 2
	li a2, 41
	li a3, 4294967295
	remw a1, a2, a0
	and a0, a1, a3
	ret
