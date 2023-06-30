.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl neg_only_one_truncation
neg_only_one_truncation:
	andi a1, a1, 255
	andi a3, a2, 255
	addw a1, a1, a3
	andi a3, a1, 255
	slli a3, a3, 24
	srai a3, a3, 24
	addw a0, a0, a2
	andi a2, a0, 255
	slli a2, a2, 24
	srai a2, a2, 24
	ble a2, a3, label21
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
	and a1, a1, a3
	and a3, a2, a3
	addw a1, a1, a3
	andi a3, a1, 255
	slli a3, a3, 24
	srai a3, a3, 24
	addw a0, a0, a2
	andi a2, a0, 255
	slli a2, a2, 24
	srai a2, a2, 24
	ble a2, a3, label49
	andi a0, a0, 255
	j label31
label49:
	andi a0, a1, 255
label31:
	andi a0, a0, 255
	ret
.globl negative_CopyFromReg
negative_CopyFromReg:
	addw a1, a1, a2
	andi a2, a1, 255
	slli a2, a2, 24
	srai a2, a2, 24
	andi a3, a0, 255
	slli a3, a3, 24
	srai a3, a3, 24
	ble a3, a2, label76
	andi a0, a0, 255
	j label61
label76:
	andi a0, a1, 255
label61:
	andi a0, a0, 255
	ret
.globl negative_CopyFromRegs
negative_CopyFromRegs:
	andi a2, a0, 255
	slli a2, a2, 24
	srai a2, a2, 24
	andi a3, a1, 255
	slli a3, a3, 24
	srai a3, a3, 24
	ble a2, a3, label99
	andi a0, a0, 255
	j label86
label99:
	andi a0, a1, 255
label86:
	andi a0, a0, 255
	ret
.globl t0
t0:
	addw a0, a0, a2
	andi a3, a0, 255
	slli a3, a3, 24
	srai a3, a3, 24
	addw a1, a1, a2
	andi a2, a1, 255
	slli a2, a2, 24
	srai a2, a2, 24
	ble a3, a2, label125
	andi a0, a0, 255
	j label109
label125:
	andi a0, a1, 255
label109:
	andi a0, a0, 255
	ret
