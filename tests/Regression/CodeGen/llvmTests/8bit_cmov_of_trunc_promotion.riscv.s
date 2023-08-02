.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl neg_only_one_truncation
neg_only_one_truncation:
	andi a4, a1, 255
	andi t0, a2, 255
	addw a3, a4, t0
	addw a4, a0, a2
	andi a5, a3, 255
	andi t0, a4, 255
	sext.b a1, a5
	sext.b a5, t0
	bge a1, a5, label20
	andi a1, a4, 255
	j label3
label20:
	andi a1, a3, 255
label3:
	andi a0, a1, 255
	ret
.p2align 2
.globl neg_type_mismatch
neg_type_mismatch:
	zext.h a4, a1
	zext.h t0, a2
	addw a3, a4, t0
	addw a4, a0, a2
	andi a5, a3, 255
	andi t0, a4, 255
	sext.b a1, a5
	sext.b a5, t0
	bge a1, a5, label46
	andi a1, a4, 255
	j label29
label46:
	andi a1, a3, 255
label29:
	andi a0, a1, 255
	ret
.p2align 2
.globl negative_CopyFromReg
negative_CopyFromReg:
	addw a3, a1, a2
	andi a1, a0, 255
	andi a5, a3, 255
	sext.b a2, a1
	sext.b a4, a5
	blt a4, a2, label55
	andi a1, a3, 255
label55:
	andi a0, a1, 255
	ret
.p2align 2
.globl negative_CopyFromRegs
negative_CopyFromRegs:
	andi a4, a0, 255
	andi a3, a1, 255
	sext.b a2, a4
	sext.b a5, a3
	ble a2, a5, label90
	andi a1, a0, 255
	j label78
label90:
	andi a1, a1, 255
label78:
	andi a0, a1, 255
	ret
.p2align 2
.globl t0
t0:
	addw a3, a0, a2
	addw a0, a1, a2
	andi a5, a3, 255
	andi t0, a0, 255
	sext.b a4, a5
	sext.b a5, t0
	ble a4, a5, label114
	andi a1, a3, 255
	j label99
label114:
	andi a1, a0, 255
label99:
	andi a0, a1, 255
	ret
