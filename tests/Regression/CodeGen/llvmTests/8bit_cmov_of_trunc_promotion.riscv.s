.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl neg_only_one_truncation
neg_only_one_truncation:
	andi a3, a2, 255
	andi a3, a3, 255
	andi a1, a1, 255
	addw a1, a1, a3
	andi a1, a1, 255
	slli a3, a1, 24
	srai a3, a3, 24
	addw a0, a0, a2
	andi a0, a0, 255
	slli a2, a0, 24
	srai a2, a2, 24
	ble a2, a3, label22
	andi a0, a0, 255
	j label3
label22:
	andi a0, a1, 255
label3:
	andi a0, a0, 255
	ret
.globl neg_type_mismatch
neg_type_mismatch:
	li a3, 65535
	and a4, a2, a3
	and a4, a4, a3
	and a1, a1, a3
	addw a1, a1, a4
	andi a1, a1, 255
	slli a3, a1, 24
	srai a3, a3, 24
	addw a0, a0, a2
	andi a0, a0, 255
	slli a2, a0, 24
	srai a2, a2, 24
	ble a2, a3, label51
	andi a0, a0, 255
	j label32
label51:
	andi a0, a1, 255
label32:
	andi a0, a0, 255
	ret
.globl negative_CopyFromReg
negative_CopyFromReg:
	addw a1, a1, a2
	andi a1, a1, 255
	slli a2, a1, 24
	srai a2, a2, 24
	andi a0, a0, 255
	slli a3, a0, 24
	srai a3, a3, 24
	ble a3, a2, label79
	andi a0, a0, 255
	j label64
label79:
	andi a0, a1, 255
label64:
	andi a0, a0, 255
	ret
.globl negative_CopyFromRegs
negative_CopyFromRegs:
	andi a0, a0, 255
	slli a2, a0, 24
	srai a2, a2, 24
	andi a1, a1, 255
	slli a3, a1, 24
	srai a3, a3, 24
	ble a2, a3, label102
	andi a0, a0, 255
	j label89
label102:
	andi a0, a1, 255
label89:
	andi a0, a0, 255
	ret
.globl t0
t0:
	addw a0, a0, a2
	andi a0, a0, 255
	slli a3, a0, 24
	srai a3, a3, 24
	addw a1, a1, a2
	andi a1, a1, 255
	slli a2, a1, 24
	srai a2, a2, 24
	ble a3, a2, label128
	andi a0, a0, 255
	j label112
label128:
	andi a0, a1, 255
label112:
	andi a0, a0, 255
	ret
