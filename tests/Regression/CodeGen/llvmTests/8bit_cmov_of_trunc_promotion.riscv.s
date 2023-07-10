.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl neg_only_one_truncation
neg_only_one_truncation:
	andi a3, a1, 255
	andi a5, a2, 255
	addw a0, a0, a2
	addw a1, a3, a5
	andi a4, a1, 255
	sext.b a3, a4
	andi a4, a0, 255
	sext.b a2, a4
	bge a3, a2, label21
	andi a0, a0, 255
	j label3
label21:
	andi a0, a1, 255
label3:
	andi a0, a0, 255
	ret
.globl neg_type_mismatch
neg_type_mismatch:
	li a3, 65535
	addw a0, a0, a2
	and a5, a2, a3
	and a4, a1, a3
	addw a1, a4, a5
	andi a4, a1, 255
	sext.b a3, a4
	andi a4, a0, 255
	sext.b a2, a4
	bge a3, a2, label47
	andi a0, a0, 255
	j label29
label47:
	andi a0, a1, 255
label29:
	andi a0, a0, 255
	ret
.globl negative_CopyFromReg
negative_CopyFromReg:
	addw a3, a1, a2
	andi a2, a0, 255
	andi a4, a3, 255
	sext.b a1, a4
	sext.b a4, a2
	bge a1, a4, label72
	andi a0, a0, 255
	j label57
label72:
	andi a0, a3, 255
label57:
	andi a0, a0, 255
	ret
.globl negative_CopyFromRegs
negative_CopyFromRegs:
	andi a4, a0, 255
	andi a3, a1, 255
	sext.b a2, a4
	sext.b a4, a3
	ble a2, a4, label93
	andi a0, a0, 255
	j label80
label93:
	andi a0, a1, 255
label80:
	andi a0, a0, 255
	ret
.globl t0
t0:
	addw a0, a0, a2
	addw a1, a1, a2
	andi a4, a0, 255
	andi a2, a1, 255
	sext.b a3, a4
	sext.b a4, a2
	ble a3, a4, label117
	andi a0, a0, 255
	j label101
label117:
	andi a0, a1, 255
label101:
	andi a0, a0, 255
	ret
