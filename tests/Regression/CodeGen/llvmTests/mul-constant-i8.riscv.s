.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_mul_by_1
test_mul_by_1:
	andi a0, a0, 255
	andi a0, a0, 255
	ret
.globl test_mul_by_10
test_mul_by_10:
	andi a0, a0, 255
	sh2add a0, a0, a0
	slliw a0, a0, 1
	andi a0, a0, 255
	ret
.globl test_mul_by_11
test_mul_by_11:
	andi a0, a0, 255
	sh1add a1, a0, a0
	slliw a1, a1, 2
	subw a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_12
test_mul_by_12:
	andi a0, a0, 255
	sh1add a0, a0, a0
	slliw a0, a0, 2
	andi a0, a0, 255
	ret
.globl test_mul_by_13
test_mul_by_13:
	andi a0, a0, 255
	slliw a1, a0, 3
	subw a1, a1, a0
	slliw a1, a1, 1
	subw a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_14
test_mul_by_14:
	andi a0, a0, 255
	slliw a1, a0, 3
	subw a0, a1, a0
	slliw a0, a0, 1
	andi a0, a0, 255
	ret
.globl test_mul_by_15
test_mul_by_15:
	andi a0, a0, 255
	slliw a1, a0, 4
	subw a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_16
test_mul_by_16:
	andi a0, a0, 255
	slliw a0, a0, 4
	andi a0, a0, 255
	ret
.globl test_mul_by_17
test_mul_by_17:
	andi a0, a0, 255
	slliw a1, a0, 4
	addw a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_18
test_mul_by_18:
	andi a0, a0, 255
	sh3add a0, a0, a0
	slliw a0, a0, 1
	andi a0, a0, 255
	ret
.globl test_mul_by_19
test_mul_by_19:
	andi a0, a0, 255
	sh2add a1, a0, a0
	slliw a1, a1, 2
	subw a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_2
test_mul_by_2:
	andi a0, a0, 255
	slliw a0, a0, 1
	andi a0, a0, 255
	ret
.globl test_mul_by_20
test_mul_by_20:
	andi a0, a0, 255
	sh2add a0, a0, a0
	slliw a0, a0, 2
	andi a0, a0, 255
	ret
.globl test_mul_by_21
test_mul_by_21:
	andi a0, a0, 255
	sh1add a0, a0, a0
	slliw a1, a0, 3
	subw a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_22
test_mul_by_22:
	andi a0, a0, 255
	sh1add a1, a0, a0
	slliw a1, a1, 2
	subw a0, a1, a0
	slliw a0, a0, 1
	andi a0, a0, 255
	ret
.globl test_mul_by_23
test_mul_by_23:
	andi a0, a0, 255
	sh1add a1, a0, a0
	slliw a1, a1, 3
	subw a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_24
test_mul_by_24:
	andi a0, a0, 255
	sh1add a0, a0, a0
	slliw a0, a0, 3
	andi a0, a0, 255
	ret
.globl test_mul_by_25
test_mul_by_25:
	andi a0, a0, 255
	sh2add a0, a0, a0
	sh2add a0, a0, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_26
test_mul_by_26:
	andi a0, a0, 255
	slliw a1, a0, 3
	subw a1, a1, a0
	slliw a1, a1, 1
	subw a0, a1, a0
	slliw a0, a0, 1
	andi a0, a0, 255
	ret
.globl test_mul_by_27
test_mul_by_27:
	andi a0, a0, 255
	sh1add a0, a0, a0
	sh3add a0, a0, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_28
test_mul_by_28:
	andi a0, a0, 255
	slliw a1, a0, 3
	subw a0, a1, a0
	slliw a0, a0, 2
	andi a0, a0, 255
	ret
.globl test_mul_by_29
test_mul_by_29:
	andi a0, a0, 255
	slliw a1, a0, 4
	subw a1, a1, a0
	slliw a1, a1, 1
	subw a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_3
test_mul_by_3:
	andi a0, a0, 255
	sh1add a0, a0, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_30
test_mul_by_30:
	andi a0, a0, 255
	slliw a1, a0, 4
	subw a0, a1, a0
	slliw a0, a0, 1
	andi a0, a0, 255
	ret
.globl test_mul_by_31
test_mul_by_31:
	andi a0, a0, 255
	slliw a1, a0, 5
	subw a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_32
test_mul_by_32:
	andi a0, a0, 255
	slliw a0, a0, 5
	andi a0, a0, 255
	ret
.globl test_mul_by_37
test_mul_by_37:
	andi a0, a0, 255
	sh3add a1, a0, a0
	sh2add a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_4
test_mul_by_4:
	andi a0, a0, 255
	slliw a0, a0, 2
	andi a0, a0, 255
	ret
.globl test_mul_by_41
test_mul_by_41:
	andi a0, a0, 255
	sh2add a1, a0, a0
	sh3add a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_5
test_mul_by_5:
	andi a0, a0, 255
	sh2add a0, a0, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_520
test_mul_by_520:
	andi a0, a0, 255
	slliw a0, a0, 3
	andi a0, a0, 255
	ret
.globl test_mul_by_6
test_mul_by_6:
	andi a0, a0, 255
	sh1add a0, a0, a0
	slliw a0, a0, 1
	andi a0, a0, 255
	ret
.globl test_mul_by_62
test_mul_by_62:
	andi a0, a0, 255
	slliw a1, a0, 5
	subw a0, a1, a0
	slliw a0, a0, 1
	andi a0, a0, 255
	ret
.globl test_mul_by_66
test_mul_by_66:
	andi a0, a0, 255
	slliw a1, a0, 5
	addw a0, a1, a0
	slliw a0, a0, 1
	andi a0, a0, 255
	ret
.globl test_mul_by_7
test_mul_by_7:
	andi a0, a0, 255
	slliw a1, a0, 3
	subw a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_73
test_mul_by_73:
	andi a0, a0, 255
	sh3add a1, a0, a0
	sh3add a0, a1, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_8
test_mul_by_8:
	andi a0, a0, 255
	slliw a0, a0, 3
	andi a0, a0, 255
	ret
.globl test_mul_by_9
test_mul_by_9:
	andi a0, a0, 255
	sh3add a0, a0, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_neg10
test_mul_by_neg10:
	andi a0, a0, 255
	sh2add a0, a0, a0
	slliw a0, a0, 1
	subw a0, zero, a0
	andi a0, a0, 255
	ret
.globl test_mul_by_neg36
test_mul_by_neg36:
	andi a0, a0, 255
	sh3add a0, a0, a0
	slliw a0, a0, 2
	subw a0, zero, a0
	andi a0, a0, 255
	ret
