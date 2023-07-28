.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_mul_by_1
test_mul_by_1:
.p2align 2
	sext.h a1, a0
	li a2, 65535
	and a0, a1, a2
	ret
.globl test_mul_by_10
test_mul_by_10:
.p2align 2
	sext.h a1, a0
	li a3, 10
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_11
test_mul_by_11:
.p2align 2
	sext.h a1, a0
	li a3, 11
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_12
test_mul_by_12:
.p2align 2
	sext.h a1, a0
	li a3, 12
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_13
test_mul_by_13:
.p2align 2
	sext.h a1, a0
	li a3, 13
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_14
test_mul_by_14:
.p2align 2
	sext.h a1, a0
	li a3, 14
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_15
test_mul_by_15:
.p2align 2
	sext.h a1, a0
	slliw a3, a1, 4
	subw a2, a3, a1
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_16
test_mul_by_16:
.p2align 2
	sext.h a2, a0
	li a3, 65535
	slliw a1, a2, 4
	and a0, a1, a3
	ret
.globl test_mul_by_17
test_mul_by_17:
.p2align 2
	sext.h a1, a0
	slliw a3, a1, 4
	addw a2, a3, a1
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_18
test_mul_by_18:
.p2align 2
	sext.h a1, a0
	li a3, 18
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_19
test_mul_by_19:
.p2align 2
	sext.h a1, a0
	li a3, 19
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_2
test_mul_by_2:
.p2align 2
	sext.h a2, a0
	li a3, 65535
	slliw a1, a2, 1
	and a0, a1, a3
	ret
.globl test_mul_by_20
test_mul_by_20:
.p2align 2
	sext.h a1, a0
	li a3, 20
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_21
test_mul_by_21:
.p2align 2
	sext.h a1, a0
	li a3, 21
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_22
test_mul_by_22:
.p2align 2
	sext.h a1, a0
	li a3, 22
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_23
test_mul_by_23:
.p2align 2
	sext.h a1, a0
	li a3, 23
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_24
test_mul_by_24:
.p2align 2
	sext.h a1, a0
	li a3, 24
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_25
test_mul_by_25:
.p2align 2
	sext.h a1, a0
	li a3, 25
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_26
test_mul_by_26:
.p2align 2
	sext.h a1, a0
	li a3, 26
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_27
test_mul_by_27:
.p2align 2
	sext.h a1, a0
	li a3, 27
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_28
test_mul_by_28:
.p2align 2
	sext.h a1, a0
	li a3, 28
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_29
test_mul_by_29:
.p2align 2
	sext.h a1, a0
	li a3, 29
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_3
test_mul_by_3:
.p2align 2
	sext.h a2, a0
	li a3, 65535
	sh1add a1, a2, a2
	and a0, a1, a3
	ret
.globl test_mul_by_30
test_mul_by_30:
.p2align 2
	sext.h a1, a0
	li a3, 30
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_31
test_mul_by_31:
.p2align 2
	sext.h a1, a0
	slliw a3, a1, 5
	subw a2, a3, a1
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_32
test_mul_by_32:
.p2align 2
	sext.h a2, a0
	li a3, 65535
	slliw a1, a2, 5
	and a0, a1, a3
	ret
.globl test_mul_by_37
test_mul_by_37:
.p2align 2
	sext.h a1, a0
	li a3, 37
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_4
test_mul_by_4:
.p2align 2
	sext.h a2, a0
	li a3, 65535
	slliw a1, a2, 2
	and a0, a1, a3
	ret
.globl test_mul_by_41
test_mul_by_41:
.p2align 2
	sext.h a1, a0
	li a3, 41
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_5
test_mul_by_5:
.p2align 2
	sext.h a2, a0
	li a3, 65535
	sh2add a1, a2, a2
	and a0, a1, a3
	ret
.globl test_mul_by_520
test_mul_by_520:
.p2align 2
	sext.h a1, a0
	li a3, 520
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_6
test_mul_by_6:
.p2align 2
	sext.h a1, a0
	li a3, 6
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_62
test_mul_by_62:
.p2align 2
	sext.h a1, a0
	li a3, 62
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_66
test_mul_by_66:
.p2align 2
	sext.h a1, a0
	li a3, 66
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_7
test_mul_by_7:
.p2align 2
	sext.h a1, a0
	slliw a3, a1, 3
	subw a2, a3, a1
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_73
test_mul_by_73:
.p2align 2
	sext.h a1, a0
	li a3, 73
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_8
test_mul_by_8:
.p2align 2
	sext.h a2, a0
	li a3, 65535
	slliw a1, a2, 3
	and a0, a1, a3
	ret
.globl test_mul_by_9
test_mul_by_9:
.p2align 2
	sext.h a2, a0
	li a3, 65535
	sh3add a1, a2, a2
	and a0, a1, a3
	ret
.globl test_mul_by_neg10
test_mul_by_neg10:
.p2align 2
	sext.h a1, a0
	li a3, -10
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_by_neg36
test_mul_by_neg36:
.p2align 2
	sext.h a1, a0
	li a3, -36
	mulw a2, a1, a3
	li a1, 65535
	and a0, a2, a1
	ret
.globl test_mul_spec
test_mul_spec:
.p2align 2
	sext.h a1, a0
	sh3add a4, a1, a1
	sext.h a2, a4
	sh2add a4, a1, a1
	addiw a3, a2, 42
	sext.h a1, a4
	sext.h a0, a3
	addiw a2, a1, 2
	sext.h a3, a2
	li a2, 65535
	mulw a1, a0, a3
	and a0, a1, a2
	ret
