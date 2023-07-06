.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl mul_neg_fold
mul_neg_fold:
	sh3add a0, a0, a0
	subw a0, zero, a0
	addw a0, a1, a0
	ret
.globl test_mul_by_1
test_mul_by_1:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_10
test_mul_by_10:
	sh2add a0, a0, a0
	li a1, 4294967295
	slliw a0, a0, 1
	and a0, a0, a1
	ret
.globl test_mul_by_11
test_mul_by_11:
	sh1add a1, a0, a0
	slliw a1, a1, 2
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_12
test_mul_by_12:
	sh1add a0, a0, a0
	li a1, 4294967295
	slliw a0, a0, 2
	and a0, a0, a1
	ret
.globl test_mul_by_13
test_mul_by_13:
	slliw a1, a0, 3
	subw a1, a1, a0
	slliw a1, a1, 1
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_14
test_mul_by_14:
	slliw a1, a0, 3
	subw a0, a1, a0
	li a1, 4294967295
	slliw a0, a0, 1
	and a0, a0, a1
	ret
.globl test_mul_by_15
test_mul_by_15:
	slliw a1, a0, 4
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_16
test_mul_by_16:
	slliw a0, a0, 4
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_17
test_mul_by_17:
	slliw a1, a0, 4
	addw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_18
test_mul_by_18:
	sh3add a0, a0, a0
	li a1, 4294967295
	slliw a0, a0, 1
	and a0, a0, a1
	ret
.globl test_mul_by_19
test_mul_by_19:
	sh2add a1, a0, a0
	slliw a1, a1, 2
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_2
test_mul_by_2:
	slliw a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_20
test_mul_by_20:
	sh2add a0, a0, a0
	li a1, 4294967295
	slliw a0, a0, 2
	and a0, a0, a1
	ret
.globl test_mul_by_21
test_mul_by_21:
	sh1add a0, a0, a0
	slliw a1, a0, 3
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_22
test_mul_by_22:
	sh1add a1, a0, a0
	slliw a1, a1, 2
	subw a0, a1, a0
	li a1, 4294967295
	slliw a0, a0, 1
	and a0, a0, a1
	ret
.globl test_mul_by_23
test_mul_by_23:
	sh1add a1, a0, a0
	slliw a1, a1, 3
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_24
test_mul_by_24:
	sh1add a0, a0, a0
	li a1, 4294967295
	slliw a0, a0, 3
	and a0, a0, a1
	ret
.globl test_mul_by_25
test_mul_by_25:
	sh2add a0, a0, a0
	li a1, 4294967295
	sh2add a0, a0, a0
	and a0, a0, a1
	ret
.globl test_mul_by_26
test_mul_by_26:
	slliw a1, a0, 3
	subw a1, a1, a0
	slliw a1, a1, 1
	subw a0, a1, a0
	li a1, 4294967295
	slliw a0, a0, 1
	and a0, a0, a1
	ret
.globl test_mul_by_27
test_mul_by_27:
	sh1add a0, a0, a0
	li a1, 4294967295
	sh3add a0, a0, a0
	and a0, a0, a1
	ret
.globl test_mul_by_28
test_mul_by_28:
	slliw a1, a0, 3
	subw a0, a1, a0
	li a1, 4294967295
	slliw a0, a0, 2
	and a0, a0, a1
	ret
.globl test_mul_by_29
test_mul_by_29:
	slliw a1, a0, 4
	subw a1, a1, a0
	slliw a1, a1, 1
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_3
test_mul_by_3:
	sh1add a0, a0, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_30
test_mul_by_30:
	slliw a1, a0, 4
	subw a0, a1, a0
	li a1, 4294967295
	slliw a0, a0, 1
	and a0, a0, a1
	ret
.globl test_mul_by_31
test_mul_by_31:
	slliw a1, a0, 5
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_32
test_mul_by_32:
	slliw a0, a0, 5
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_37
test_mul_by_37:
	sh3add a1, a0, a0
	sh2add a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_4
test_mul_by_4:
	slliw a0, a0, 2
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_41
test_mul_by_41:
	sh2add a1, a0, a0
	sh3add a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_5
test_mul_by_5:
	sh2add a0, a0, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_520
test_mul_by_520:
	slliw a1, a0, 6
	addw a0, a1, a0
	li a1, 4294967295
	slliw a0, a0, 3
	and a0, a0, a1
	ret
.globl test_mul_by_6
test_mul_by_6:
	sh1add a0, a0, a0
	li a1, 4294967295
	slliw a0, a0, 1
	and a0, a0, a1
	ret
.globl test_mul_by_62
test_mul_by_62:
	slliw a1, a0, 5
	subw a0, a1, a0
	li a1, 4294967295
	slliw a0, a0, 1
	and a0, a0, a1
	ret
.globl test_mul_by_66
test_mul_by_66:
	slliw a1, a0, 5
	addw a0, a1, a0
	li a1, 4294967295
	slliw a0, a0, 1
	and a0, a0, a1
	ret
.globl test_mul_by_7
test_mul_by_7:
	slliw a1, a0, 3
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_73
test_mul_by_73:
	sh3add a1, a0, a0
	sh3add a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_8
test_mul_by_8:
	slliw a0, a0, 3
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_9
test_mul_by_9:
	sh3add a0, a0, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_neg10
test_mul_by_neg10:
	sh2add a0, a0, a0
	li a1, 4294967295
	slliw a0, a0, 1
	subw a0, zero, a0
	and a0, a0, a1
	ret
.globl test_mul_by_neg36
test_mul_by_neg36:
	sh3add a0, a0, a0
	li a1, 4294967295
	slliw a0, a0, 2
	subw a0, zero, a0
	and a0, a0, a1
	ret
.globl test_mul_spec
test_mul_spec:
	sh3add a1, a0, a0
	sh2add a0, a0, a0
	addiw a1, a1, 42
	addiw a0, a0, 2
	mulw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret