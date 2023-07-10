.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_srem_even
test_srem_even:
	sext.b a1, a0
	li a3, 715827883
	mul a0, a1, a3
	li a3, 6
	srli a4, a0, 63
	srli a2, a0, 32
	add a0, a4, a2
	mulw a2, a0, a3
	subw a0, a1, a2
	li a2, 4294967295
	xori a3, a0, 1
	sltiu a1, a3, 1
	and a0, a1, a2
	ret
.globl test_srem_odd
test_srem_odd:
	li a1, -1518422781
	mul a2, a0, a1
	srli a3, a2, 32
	add a1, a3, a0
	srliw a3, a1, 31
	sraiw a2, a1, 6
	add a1, a3, a2
	li a2, 99
	mulw a3, a1, a2
	li a2, 4294967295
	subw a0, a0, a3
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
.globl test_srem_pow2_setne
test_srem_pow2_setne:
	sext.b a2, a0
	andi a3, a2, 3
	li a2, 4294967295
	sltu a1, zero, a3
	and a0, a1, a2
	ret
