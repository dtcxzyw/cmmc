.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl neg_only_one_truncation
neg_only_one_truncation:
.p2align 2
	andi a3, a1, 255
	andi a5, a2, 255
	addw a0, a0, a2
	addw a1, a3, a5
	andi a4, a1, 255
	sext.b a3, a4
	andi a4, a0, 255
	sext.b a2, a4
	blt a3, a2, label2
	andi a0, a1, 255
	j label3
label2:
	andi a0, a0, 255
label3:
	andi a0, a0, 255
	ret
.globl neg_type_mismatch
neg_type_mismatch:
.p2align 2
	li a3, 65535
	addw a0, a0, a2
	and a5, a2, a3
	and a4, a1, a3
	addw a1, a4, a5
	andi a4, a1, 255
	sext.b a3, a4
	andi a4, a0, 255
	sext.b a2, a4
	blt a3, a2, label27
	andi a0, a1, 255
	j label28
label27:
	andi a0, a0, 255
label28:
	andi a0, a0, 255
	ret
.globl negative_CopyFromReg
negative_CopyFromReg:
.p2align 2
	addw a3, a1, a2
	andi a2, a0, 255
	andi a4, a3, 255
	sext.b a1, a4
	sext.b a4, a2
	blt a1, a4, label54
	andi a0, a3, 255
	j label55
label54:
	andi a0, a0, 255
label55:
	andi a0, a0, 255
	ret
.globl negative_CopyFromRegs
negative_CopyFromRegs:
.p2align 2
	andi a4, a0, 255
	andi a3, a1, 255
	sext.b a2, a4
	sext.b a4, a3
	bgt a2, a4, label76
	andi a0, a1, 255
	j label77
label76:
	andi a0, a0, 255
label77:
	andi a0, a0, 255
	ret
.globl t0
t0:
.p2align 2
	addw a0, a0, a2
	addw a1, a1, a2
	andi a4, a0, 255
	andi a2, a1, 255
	sext.b a3, a4
	sext.b a4, a2
	bgt a3, a4, label96
	andi a0, a1, 255
	j label97
label96:
	andi a0, a0, 255
label97:
	andi a0, a0, 255
	ret
