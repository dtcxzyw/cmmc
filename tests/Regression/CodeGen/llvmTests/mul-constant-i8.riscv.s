.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test_mul_by_1
test_mul_by_1:
	andi a1, a0, 255
	andi a0, a1, 255
	ret
.p2align 2
.globl test_mul_by_10
test_mul_by_10:
	andi a1, a0, 255
	sh2add a2, a1, a1
	slliw a3, a2, 1
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_11
test_mul_by_11:
	andi a1, a0, 255
	li a2, 11
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_12
test_mul_by_12:
	andi a1, a0, 255
	sh1add a2, a1, a1
	slliw a3, a2, 2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_13
test_mul_by_13:
	andi a1, a0, 255
	li a2, 13
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_14
test_mul_by_14:
	andi a1, a0, 255
	slliw a2, a1, 3
	subw a3, a2, a1
	slliw a1, a3, 1
	andi a0, a1, 255
	ret
.p2align 2
.globl test_mul_by_15
test_mul_by_15:
	andi a1, a0, 255
	slliw a2, a1, 4
	subw a3, a2, a1
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_16
test_mul_by_16:
	andi a1, a0, 255
	slliw a2, a1, 4
	andi a0, a2, 255
	ret
.p2align 2
.globl test_mul_by_17
test_mul_by_17:
	andi a1, a0, 255
	slliw a2, a1, 4
	addw a3, a2, a1
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_18
test_mul_by_18:
	andi a1, a0, 255
	sh3add a2, a1, a1
	slliw a3, a2, 1
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_19
test_mul_by_19:
	andi a1, a0, 255
	li a2, 19
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_2
test_mul_by_2:
	andi a1, a0, 255
	slliw a2, a1, 1
	andi a0, a2, 255
	ret
.p2align 2
.globl test_mul_by_20
test_mul_by_20:
	andi a1, a0, 255
	sh2add a2, a1, a1
	slliw a3, a2, 2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_21
test_mul_by_21:
	andi a1, a0, 255
	li a2, 21
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_22
test_mul_by_22:
	andi a1, a0, 255
	li a2, 22
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_23
test_mul_by_23:
	andi a1, a0, 255
	li a2, 23
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_24
test_mul_by_24:
	andi a1, a0, 255
	sh1add a2, a1, a1
	slliw a3, a2, 3
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_25
test_mul_by_25:
	andi a1, a0, 255
	li a2, 25
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_26
test_mul_by_26:
	andi a1, a0, 255
	li a2, 26
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_27
test_mul_by_27:
	andi a1, a0, 255
	li a2, 27
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_28
test_mul_by_28:
	andi a1, a0, 255
	slliw a2, a1, 3
	subw a3, a2, a1
	slliw a1, a3, 2
	andi a0, a1, 255
	ret
.p2align 2
.globl test_mul_by_29
test_mul_by_29:
	andi a1, a0, 255
	li a2, 29
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_3
test_mul_by_3:
	andi a1, a0, 255
	sh1add a2, a1, a1
	andi a0, a2, 255
	ret
.p2align 2
.globl test_mul_by_30
test_mul_by_30:
	andi a1, a0, 255
	slliw a2, a1, 4
	subw a3, a2, a1
	slliw a1, a3, 1
	andi a0, a1, 255
	ret
.p2align 2
.globl test_mul_by_31
test_mul_by_31:
	andi a1, a0, 255
	slliw a2, a1, 5
	subw a3, a2, a1
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_32
test_mul_by_32:
	andi a1, a0, 255
	slliw a2, a1, 5
	andi a0, a2, 255
	ret
.p2align 2
.globl test_mul_by_37
test_mul_by_37:
	andi a1, a0, 255
	li a2, 37
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_4
test_mul_by_4:
	andi a1, a0, 255
	slliw a2, a1, 2
	andi a0, a2, 255
	ret
.p2align 2
.globl test_mul_by_41
test_mul_by_41:
	andi a1, a0, 255
	li a2, 41
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_5
test_mul_by_5:
	andi a1, a0, 255
	sh2add a2, a1, a1
	andi a0, a2, 255
	ret
.p2align 2
.globl test_mul_by_520
test_mul_by_520:
	andi a1, a0, 255
	slliw a2, a1, 3
	andi a0, a2, 255
	ret
.p2align 2
.globl test_mul_by_6
test_mul_by_6:
	andi a1, a0, 255
	sh1add a2, a1, a1
	slliw a3, a2, 1
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_62
test_mul_by_62:
	andi a1, a0, 255
	slliw a2, a1, 5
	subw a3, a2, a1
	slliw a1, a3, 1
	andi a0, a1, 255
	ret
.p2align 2
.globl test_mul_by_66
test_mul_by_66:
	andi a1, a0, 255
	slliw a2, a1, 5
	addw a3, a2, a1
	slliw a1, a3, 1
	andi a0, a1, 255
	ret
.p2align 2
.globl test_mul_by_7
test_mul_by_7:
	andi a1, a0, 255
	slliw a2, a1, 3
	subw a3, a2, a1
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_73
test_mul_by_73:
	andi a1, a0, 255
	li a2, 73
	mulw a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test_mul_by_8
test_mul_by_8:
	andi a1, a0, 255
	slliw a2, a1, 3
	andi a0, a2, 255
	ret
.p2align 2
.globl test_mul_by_9
test_mul_by_9:
	andi a1, a0, 255
	sh3add a2, a1, a1
	andi a0, a2, 255
	ret
.p2align 2
.globl test_mul_by_neg10
test_mul_by_neg10:
	andi a1, a0, 255
	sh2add a2, a1, a1
	slliw a3, a2, 1
	subw a1, zero, a3
	andi a0, a1, 255
	ret
.p2align 2
.globl test_mul_by_neg36
test_mul_by_neg36:
	andi a1, a0, 255
	sh3add a2, a1, a1
	slliw a3, a2, 2
	subw a1, zero, a3
	andi a0, a1, 255
	ret
