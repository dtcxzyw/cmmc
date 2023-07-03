.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_srem_allones
test_srem_allones:
	li a1, -1
	remw a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_even
test_srem_even:
	sext.h a0, a0
	li a1, -1840700269
	mul a1, a0, a1
	srli a1, a1, 32
	add a1, a1, a0
	sraiw a2, a1, 3
	srliw a1, a1, 31
	add a1, a1, a2
	li a2, 14
	mulw a1, a1, a2
	subw a0, a0, a1
	sltu a0, zero, a0
	li a1, 65535
	and a0, a0, a1
	ret
.globl test_srem_even_100
test_srem_even_100:
	li a1, 1374389535
	mul a1, a0, a1
	srai a2, a1, 37
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 100
	mulw a1, a1, a2
	subw a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_even_bit30
test_srem_even_bit30:
	li a1, 1073741721
	mul a2, a0, a1
	srai a3, a2, 60
	srli a2, a2, 63
	add a2, a2, a3
	addi a1, a1, 207
	mulw a1, a2, a1
	subw a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_even_bit31
test_srem_even_bit31:
	li a1, 2147483545
	mul a1, a0, a1
	srli a1, a1, 32
	sub a1, a1, a0
	sraiw a2, a1, 30
	srliw a1, a1, 31
	add a1, a1, a2
	li a2, -2147483546
	mulw a1, a1, a2
	subw a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_int_min
test_srem_int_min:
	li a1, 2147483647
	mul a1, a0, a1
	srli a1, a1, 32
	sub a1, a1, a0
	sraiw a2, a1, 30
	srliw a1, a1, 31
	add a1, a1, a2
	li a2, -2147483648
	mulw a1, a1, a2
	subw a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_negative_even
test_srem_negative_even:
	li a1, 1840700269
	mul a1, a0, a1
	srli a1, a1, 32
	sub a1, a1, a0
	sraiw a2, a1, 3
	srliw a1, a1, 31
	add a1, a1, a2
	li a2, -14
	mulw a1, a1, a2
	subw a0, a0, a1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_negative_odd
test_srem_negative_odd:
	li a1, -1717986919
	mul a1, a0, a1
	srai a2, a1, 33
	srli a1, a1, 63
	add a1, a1, a2
	li a2, -5
	mulw a1, a1, a2
	subw a0, a0, a1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_odd
test_srem_odd:
	li a1, 1717986919
	mul a1, a0, a1
	srai a2, a1, 33
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 5
	mulw a1, a1, a2
	subw a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_odd_25
test_srem_odd_25:
	li a1, 1374389535
	mul a1, a0, a1
	srai a2, a1, 35
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 25
	mulw a1, a1, a2
	subw a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_odd_bit30
test_srem_odd_bit30:
	li a1, 536870911
	mul a1, a0, a1
	srai a2, a1, 59
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 1073741827
	mulw a1, a1, a2
	subw a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_odd_bit31
test_srem_odd_bit31:
	li a1, -536870913
	mul a1, a0, a1
	srai a2, a1, 60
	srli a1, a1, 63
	add a1, a1, a2
	li a2, -2147483645
	mulw a1, a1, a2
	subw a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_odd_setne
test_srem_odd_setne:
	li a1, 1717986919
	mul a1, a0, a1
	srai a2, a1, 33
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 5
	mulw a1, a1, a2
	subw a0, a0, a1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem_one
test_srem_one:
	li a0, 1
	ret
.globl test_srem_pow2
test_srem_pow2:
	andi a0, a0, 15
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
