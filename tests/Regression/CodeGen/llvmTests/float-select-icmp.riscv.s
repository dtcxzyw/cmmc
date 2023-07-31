.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl select_icmp_eq
select_icmp_eq:
.p2align 2
	beq a0, a1, label10
	fmv.s f10, f11
label10:
	ret
.globl select_icmp_ne
select_icmp_ne:
.p2align 2
	bne a0, a1, label21
	fmv.s f10, f11
label21:
	ret
.globl select_icmp_sge
select_icmp_sge:
.p2align 2
	bge a0, a1, label34
	fmv.s f10, f11
label34:
	ret
.globl select_icmp_sgt
select_icmp_sgt:
.p2align 2
	bgt a0, a1, label46
	fmv.s f10, f11
label46:
	ret
.globl select_icmp_sgt_zero
select_icmp_sgt_zero:
.p2align 2
	fmv.w.x f10, zero
	lui a1, 260096
	fmv.w.x f11, a1
	bgt a0, zero, label57
	fmv.s f10, f11
label57:
	ret
.globl select_icmp_sle
select_icmp_sle:
.p2align 2
	ble a0, a1, label70
	fmv.s f10, f11
label70:
	ret
.globl select_icmp_slt
select_icmp_slt:
.p2align 2
	blt a0, a1, label82
	fmv.s f10, f11
label82:
	ret
.globl select_icmp_slt_one
select_icmp_slt_one:
.p2align 2
	lui a1, 260096
	fmv.w.x f11, zero
	fmv.w.x f10, a1
	li a1, 1
	blt a0, a1, label94
	fmv.s f10, f11
label94:
	ret
.globl select_icmp_uge
select_icmp_uge:
.p2align 2
	bgeu a0, a1, label105
	fmv.s f10, f11
label105:
	ret
.globl select_icmp_ugt
select_icmp_ugt:
.p2align 2
	bgtu a0, a1, label115
	fmv.s f10, f11
label115:
	ret
.globl select_icmp_ule
select_icmp_ule:
.p2align 2
	bleu a0, a1, label126
	fmv.s f10, f11
label126:
	ret
.globl select_icmp_ult
select_icmp_ult:
.p2align 2
	bltu a0, a1, label136
	fmv.s f10, f11
label136:
	ret
