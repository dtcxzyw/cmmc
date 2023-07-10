.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_srem_allones
test_srem_allones:
	li a0, 1
	ret
.globl test_srem_even
test_srem_even:
	sext.h a1, a0
	li a4, -1840700269
	mul a2, a1, a4
	srli a3, a2, 32
	add a0, a3, a1
	srliw a3, a0, 31
	sraiw a2, a0, 3
	add a0, a3, a2
	li a2, 14
	mulw a3, a0, a2
	li a2, 65535
	subw a0, a1, a3
	sltu a1, zero, a0
	and a0, a1, a2
	ret
.globl test_srem_even_100
test_srem_even_100:
	li a3, 1374389535
	li a4, 100
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 37
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	li a2, 4294967295
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
.globl test_srem_even_bit30
test_srem_even_bit30:
	li a1, 1073741721
	mul a2, a0, a1
	addi a1, a1, 207
	srli a4, a2, 63
	srai a3, a2, 60
	add a2, a4, a3
	mulw a3, a2, a1
	li a2, 4294967295
	subw a0, a0, a3
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
.globl test_srem_even_bit31
test_srem_even_bit31:
	li a1, 2147483545
	mul a3, a0, a1
	xori a1, a1, -1
	srli a4, a3, 32
	sub a2, a4, a0
	srliw a4, a2, 31
	sraiw a3, a2, 30
	add a2, a4, a3
	mulw a3, a2, a1
	li a2, 4294967295
	subw a0, a0, a3
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
.globl test_srem_int_min
test_srem_int_min:
	li a1, 2147483647
	mul a2, a0, a1
	srli a3, a2, 32
	sub a1, a3, a0
	srliw a3, a1, 31
	sraiw a2, a1, 30
	add a1, a3, a2
	lui a2, 524288
	mulw a3, a1, a2
	li a2, 4294967295
	subw a0, a0, a3
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
.globl test_srem_negative_even
test_srem_negative_even:
	li a1, 1840700269
	mul a2, a0, a1
	srli a3, a2, 32
	sub a1, a3, a0
	srliw a3, a1, 31
	sraiw a2, a1, 3
	add a1, a3, a2
	li a2, -14
	mulw a3, a1, a2
	li a2, 4294967295
	subw a0, a0, a3
	sltu a1, zero, a0
	and a0, a1, a2
	ret
.globl test_srem_negative_odd
test_srem_negative_odd:
	li a3, -1717986919
	li a4, -5
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 33
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	li a2, 4294967295
	sltu a1, zero, a0
	and a0, a1, a2
	ret
.globl test_srem_odd
test_srem_odd:
	li a3, 1717986919
	li a4, 5
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 33
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	li a2, 4294967295
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
.globl test_srem_odd_25
test_srem_odd_25:
	li a3, 1374389535
	li a4, 25
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 35
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	li a2, 4294967295
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
.globl test_srem_odd_bit30
test_srem_odd_bit30:
	li a3, 536870911
	li a4, 1073741827
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 59
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	li a2, 4294967295
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
.globl test_srem_odd_bit31
test_srem_odd_bit31:
	li a3, -536870913
	li a4, -2147483645
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	li a2, 4294967295
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
.globl test_srem_odd_setne
test_srem_odd_setne:
	li a3, 1717986919
	li a4, 5
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 33
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	li a2, 4294967295
	sltu a1, zero, a0
	and a0, a1, a2
	ret
.globl test_srem_one
test_srem_one:
	li a0, 1
	ret
.globl test_srem_pow2
test_srem_pow2:
	andi a2, a0, 15
	li a3, 4294967295
	sltiu a1, a2, 1
	and a0, a1, a3
	ret
