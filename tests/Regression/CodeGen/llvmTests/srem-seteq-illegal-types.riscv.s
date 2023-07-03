.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_srem_even
test_srem_even:
	sext.b a0, a0
	li a1, 715827883
	mul a1, a0, a1
	srli a2, a1, 32
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 6
	mulw a1, a1, a2
	subw a0, a0, a1
	li a1, 4294967295
	xori a0, a0, 1
	sltiu a0, a0, 1
	and a0, a0, a1
	ret
.globl test_srem_odd
test_srem_odd:
	li a1, -1518422781
	mul a1, a0, a1
	srli a1, a1, 32
	add a1, a1, a0
	sraiw a2, a1, 6
	srliw a1, a1, 31
	add a1, a1, a2
	li a2, 99
	mulw a1, a1, a2
	subw a0, a0, a1
	li a1, 4294967295
	sltiu a0, a0, 1
	and a0, a0, a1
	ret
.globl test_srem_pow2_setne
test_srem_pow2_setne:
	sext.b a0, a0
	li a1, 4294967295
	andi a0, a0, 3
	sltu a0, zero, a0
	and a0, a0, a1
	ret
