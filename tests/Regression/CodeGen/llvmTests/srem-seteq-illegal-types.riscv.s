.data
.text
.globl test_srem_even
test_srem_even:
	slli a0, a0, 24
	srai a0, a0, 24
	li a1, 715827883
	mul a2, a0, a1
	srli a1, a2, 32
	srli a2, a2, 63
	add a1, a2, a1
	li a2, 6
	mulw a1, a1, a2
	subw a0, a0, a1
	xori a0, a0, 1
	sltiu a0, a0, 1
	li a1, 4294967295
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
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_pow2_setne
test_srem_pow2_setne:
	slli a0, a0, 24
	srai a0, a0, 24
	slli a1, a0, 1
	srli a1, a1, 62
	add a1, a0, a1
	sraiw a1, a1, 2
	li a2, 4
	mulw a1, a1, a2
	subw a0, a0, a1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
