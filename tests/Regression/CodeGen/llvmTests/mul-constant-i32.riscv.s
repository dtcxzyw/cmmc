.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl mul_neg_fold
mul_neg_fold:
.p2align 2
	sh3add a2, a0, a0
	subw a3, zero, a2
	addw a0, a1, a3
	ret
.globl test_mul_by_1
test_mul_by_1:
.p2align 2
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_10
test_mul_by_10:
.p2align 2
	sh2add a2, a0, a0
	li a3, 4294967295
	slliw a1, a2, 1
	and a0, a1, a3
	ret
.globl test_mul_by_11
test_mul_by_11:
.p2align 2
	li a2, 11
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_12
test_mul_by_12:
.p2align 2
	sh1add a2, a0, a0
	li a3, 4294967295
	slliw a1, a2, 2
	and a0, a1, a3
	ret
.globl test_mul_by_13
test_mul_by_13:
.p2align 2
	li a2, 13
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_14
test_mul_by_14:
.p2align 2
	slliw a2, a0, 3
	subw a3, a2, a0
	li a2, 4294967295
	slliw a1, a3, 1
	and a0, a1, a2
	ret
.globl test_mul_by_15
test_mul_by_15:
.p2align 2
	slliw a2, a0, 4
	li a3, 4294967295
	subw a1, a2, a0
	and a0, a1, a3
	ret
.globl test_mul_by_16
test_mul_by_16:
.p2align 2
	slliw a1, a0, 4
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl test_mul_by_17
test_mul_by_17:
.p2align 2
	slliw a2, a0, 4
	li a3, 4294967295
	addw a1, a2, a0
	and a0, a1, a3
	ret
.globl test_mul_by_18
test_mul_by_18:
.p2align 2
	sh3add a2, a0, a0
	li a3, 4294967295
	slliw a1, a2, 1
	and a0, a1, a3
	ret
.globl test_mul_by_19
test_mul_by_19:
.p2align 2
	li a2, 19
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_2
test_mul_by_2:
.p2align 2
	slliw a1, a0, 1
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl test_mul_by_20
test_mul_by_20:
.p2align 2
	sh2add a2, a0, a0
	li a3, 4294967295
	slliw a1, a2, 2
	and a0, a1, a3
	ret
.globl test_mul_by_21
test_mul_by_21:
.p2align 2
	li a2, 21
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_22
test_mul_by_22:
.p2align 2
	li a2, 22
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_23
test_mul_by_23:
.p2align 2
	li a2, 23
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_24
test_mul_by_24:
.p2align 2
	sh1add a2, a0, a0
	li a3, 4294967295
	slliw a1, a2, 3
	and a0, a1, a3
	ret
.globl test_mul_by_25
test_mul_by_25:
.p2align 2
	li a2, 25
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_26
test_mul_by_26:
.p2align 2
	li a2, 26
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_27
test_mul_by_27:
.p2align 2
	li a2, 27
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_28
test_mul_by_28:
.p2align 2
	slliw a2, a0, 3
	subw a3, a2, a0
	li a2, 4294967295
	slliw a1, a3, 2
	and a0, a1, a2
	ret
.globl test_mul_by_29
test_mul_by_29:
.p2align 2
	li a2, 29
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_3
test_mul_by_3:
.p2align 2
	sh1add a1, a0, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl test_mul_by_30
test_mul_by_30:
.p2align 2
	slliw a2, a0, 4
	subw a3, a2, a0
	li a2, 4294967295
	slliw a1, a3, 1
	and a0, a1, a2
	ret
.globl test_mul_by_31
test_mul_by_31:
.p2align 2
	slliw a2, a0, 5
	li a3, 4294967295
	subw a1, a2, a0
	and a0, a1, a3
	ret
.globl test_mul_by_32
test_mul_by_32:
.p2align 2
	slliw a1, a0, 5
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl test_mul_by_37
test_mul_by_37:
.p2align 2
	li a2, 37
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_4
test_mul_by_4:
.p2align 2
	slliw a1, a0, 2
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl test_mul_by_41
test_mul_by_41:
.p2align 2
	li a2, 41
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_5
test_mul_by_5:
.p2align 2
	sh2add a1, a0, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl test_mul_by_520
test_mul_by_520:
.p2align 2
	slliw a2, a0, 6
	addw a3, a2, a0
	li a2, 4294967295
	slliw a1, a3, 3
	and a0, a1, a2
	ret
.globl test_mul_by_6
test_mul_by_6:
.p2align 2
	sh1add a2, a0, a0
	li a3, 4294967295
	slliw a1, a2, 1
	and a0, a1, a3
	ret
.globl test_mul_by_62
test_mul_by_62:
.p2align 2
	slliw a2, a0, 5
	subw a3, a2, a0
	li a2, 4294967295
	slliw a1, a3, 1
	and a0, a1, a2
	ret
.globl test_mul_by_66
test_mul_by_66:
.p2align 2
	slliw a2, a0, 5
	addw a3, a2, a0
	li a2, 4294967295
	slliw a1, a3, 1
	and a0, a1, a2
	ret
.globl test_mul_by_7
test_mul_by_7:
.p2align 2
	slliw a2, a0, 3
	li a3, 4294967295
	subw a1, a2, a0
	and a0, a1, a3
	ret
.globl test_mul_by_73
test_mul_by_73:
.p2align 2
	li a2, 73
	li a3, 4294967295
	mulw a1, a0, a2
	and a0, a1, a3
	ret
.globl test_mul_by_8
test_mul_by_8:
.p2align 2
	slliw a1, a0, 3
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl test_mul_by_9
test_mul_by_9:
.p2align 2
	sh3add a1, a0, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl test_mul_by_neg10
test_mul_by_neg10:
.p2align 2
	sh2add a2, a0, a0
	slliw a3, a2, 1
	li a2, 4294967295
	subw a1, zero, a3
	and a0, a1, a2
	ret
.globl test_mul_by_neg36
test_mul_by_neg36:
.p2align 2
	sh3add a2, a0, a0
	slliw a3, a2, 2
	li a2, 4294967295
	subw a1, zero, a3
	and a0, a1, a2
	ret
.globl test_mul_spec
test_mul_spec:
.p2align 2
	sh3add a2, a0, a0
	li a3, 4294967295
	sh2add a0, a0, a0
	addiw a1, a2, 42
	addiw a2, a0, 2
	mulw a1, a1, a2
	and a0, a1, a3
	ret
