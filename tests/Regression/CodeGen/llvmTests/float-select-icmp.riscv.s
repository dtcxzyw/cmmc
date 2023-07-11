.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl select_icmp_eq
select_icmp_eq:
	beq a0, a1, label10
	fmv.s f10, f11
label10:
	ret
.globl select_icmp_ne
select_icmp_ne:
	bne a0, a1, label20
	fmv.s f10, f11
label20:
	ret
.globl select_icmp_sge
select_icmp_sge:
	bge a0, a1, label32
	fmv.s f10, f11
label32:
	ret
.globl select_icmp_sgt
select_icmp_sgt:
	bgt a0, a1, label43
	fmv.s f10, f11
label43:
	ret
.globl select_icmp_sgt_zero
select_icmp_sgt_zero:
	fmv.w.x f10, zero
	lui a1, 260096
	fmv.w.x f11, a1
	bgt a0, zero, label53
	fmv.s f10, f11
label53:
	ret
.globl select_icmp_sle
select_icmp_sle:
	ble a0, a1, label65
	fmv.s f10, f11
label65:
	ret
.globl select_icmp_slt
select_icmp_slt:
	blt a0, a1, label76
	fmv.s f10, f11
label76:
	ret
.globl select_icmp_slt_one
select_icmp_slt_one:
	lui a1, 260096
	fmv.w.x f11, zero
	fmv.w.x f10, a1
	li a1, 1
	blt a0, a1, label87
	fmv.s f10, f11
label87:
	ret
.globl select_icmp_uge
select_icmp_uge:
	bgeu a0, a1, label97
	fmv.s f10, f11
label97:
	ret
.globl select_icmp_ugt
select_icmp_ugt:
	bgtu a0, a1, label106
	fmv.s f10, f11
label106:
	ret
.globl select_icmp_ule
select_icmp_ule:
	bleu a0, a1, label116
	fmv.s f10, f11
label116:
	ret
.globl select_icmp_ult
select_icmp_ult:
	bltu a0, a1, label125
	fmv.s f10, f11
label125:
	ret