.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test_mul_by_1
test_mul_by_1:
	sext.h a1, a0
	zext.h a0, a1
	ret
.p2align 2
.globl test_mul_by_10
test_mul_by_10:
	sext.h a1, a0
	sh2add a2, a1, a1
	slliw a3, a2, 1
	zext.h a0, a3
	ret
.p2align 2
.globl test_mul_by_11
test_mul_by_11:
	sext.h a1, a0
	li a3, 11
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_12
test_mul_by_12:
	sext.h a1, a0
	sh1add a2, a1, a1
	slliw a3, a2, 2
	zext.h a0, a3
	ret
.p2align 2
.globl test_mul_by_13
test_mul_by_13:
	sext.h a1, a0
	li a3, 13
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_14
test_mul_by_14:
	sext.h a1, a0
	slliw a2, a1, 3
	subw a3, a2, a1
	slliw a4, a3, 1
	zext.h a0, a4
	ret
.p2align 2
.globl test_mul_by_15
test_mul_by_15:
	sext.h a1, a0
	slliw a2, a1, 4
	subw a3, a2, a1
	zext.h a0, a3
	ret
.p2align 2
.globl test_mul_by_16
test_mul_by_16:
	sext.h a1, a0
	slliw a2, a1, 4
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_17
test_mul_by_17:
	sext.h a1, a0
	slliw a2, a1, 4
	addw a3, a2, a1
	zext.h a0, a3
	ret
.p2align 2
.globl test_mul_by_18
test_mul_by_18:
	sext.h a1, a0
	sh3add a2, a1, a1
	slliw a3, a2, 1
	zext.h a0, a3
	ret
.p2align 2
.globl test_mul_by_19
test_mul_by_19:
	sext.h a1, a0
	li a3, 19
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_2
test_mul_by_2:
	sext.h a1, a0
	slliw a2, a1, 1
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_20
test_mul_by_20:
	sext.h a1, a0
	sh2add a2, a1, a1
	slliw a3, a2, 2
	zext.h a0, a3
	ret
.p2align 2
.globl test_mul_by_21
test_mul_by_21:
	sext.h a1, a0
	li a3, 21
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_22
test_mul_by_22:
	sext.h a1, a0
	li a3, 22
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_23
test_mul_by_23:
	sext.h a1, a0
	li a3, 23
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_24
test_mul_by_24:
	sext.h a1, a0
	sh1add a2, a1, a1
	slliw a3, a2, 3
	zext.h a0, a3
	ret
.p2align 2
.globl test_mul_by_25
test_mul_by_25:
	sext.h a1, a0
	li a3, 25
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_26
test_mul_by_26:
	sext.h a1, a0
	li a3, 26
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_27
test_mul_by_27:
	sext.h a1, a0
	li a3, 27
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_28
test_mul_by_28:
	sext.h a1, a0
	slliw a2, a1, 3
	subw a3, a2, a1
	slliw a4, a3, 2
	zext.h a0, a4
	ret
.p2align 2
.globl test_mul_by_29
test_mul_by_29:
	sext.h a1, a0
	li a3, 29
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_3
test_mul_by_3:
	sext.h a1, a0
	sh1add a2, a1, a1
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_30
test_mul_by_30:
	sext.h a1, a0
	slliw a2, a1, 4
	subw a3, a2, a1
	slliw a4, a3, 1
	zext.h a0, a4
	ret
.p2align 2
.globl test_mul_by_31
test_mul_by_31:
	sext.h a1, a0
	slliw a2, a1, 5
	subw a3, a2, a1
	zext.h a0, a3
	ret
.p2align 2
.globl test_mul_by_32
test_mul_by_32:
	sext.h a1, a0
	slliw a2, a1, 5
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_37
test_mul_by_37:
	sext.h a1, a0
	li a3, 37
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_4
test_mul_by_4:
	sext.h a1, a0
	slliw a2, a1, 2
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_41
test_mul_by_41:
	sext.h a1, a0
	li a3, 41
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_5
test_mul_by_5:
	sext.h a1, a0
	sh2add a2, a1, a1
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_520
test_mul_by_520:
	sext.h a1, a0
	slliw a2, a1, 6
	addw a3, a2, a1
	slliw a4, a3, 3
	zext.h a0, a4
	ret
.p2align 2
.globl test_mul_by_6
test_mul_by_6:
	sext.h a1, a0
	sh1add a2, a1, a1
	slliw a3, a2, 1
	zext.h a0, a3
	ret
.p2align 2
.globl test_mul_by_62
test_mul_by_62:
	sext.h a1, a0
	slliw a2, a1, 5
	subw a3, a2, a1
	slliw a4, a3, 1
	zext.h a0, a4
	ret
.p2align 2
.globl test_mul_by_66
test_mul_by_66:
	sext.h a1, a0
	slliw a2, a1, 5
	addw a3, a2, a1
	slliw a4, a3, 1
	zext.h a0, a4
	ret
.p2align 2
.globl test_mul_by_7
test_mul_by_7:
	sext.h a1, a0
	slliw a2, a1, 3
	subw a3, a2, a1
	zext.h a0, a3
	ret
.p2align 2
.globl test_mul_by_73
test_mul_by_73:
	sext.h a1, a0
	li a3, 73
	mulw a2, a1, a3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_8
test_mul_by_8:
	sext.h a1, a0
	slliw a2, a1, 3
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_9
test_mul_by_9:
	sext.h a1, a0
	sh3add a2, a1, a1
	zext.h a0, a2
	ret
.p2align 2
.globl test_mul_by_neg10
test_mul_by_neg10:
	sext.h a1, a0
	sh2add a2, a1, a1
	slliw a3, a2, 1
	subw a4, zero, a3
	zext.h a0, a4
	ret
.p2align 2
.globl test_mul_by_neg36
test_mul_by_neg36:
	sext.h a1, a0
	sh3add a2, a1, a1
	slliw a3, a2, 2
	subw a4, zero, a3
	zext.h a0, a4
	ret
.p2align 2
.globl test_mul_spec
test_mul_spec:
	sext.h a1, a0
	sh2add a0, a1, a1
	sh3add a4, a1, a1
	sext.h a3, a4
	addiw a5, a3, 42
	sext.h a3, a0
	sext.h a2, a5
	addiw a4, a3, 2
	sext.h a1, a4
	mulw a5, a2, a1
	zext.h a0, a5
	ret
