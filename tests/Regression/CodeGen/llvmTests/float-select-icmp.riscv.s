.data
.section .rodata
.bss
.text
.globl select_icmp_eq
select_icmp_eq:
	xor a0, a0, a1
	sltiu a0, a0, 1
	fmv.s f10, f12
	bne a0, zero, label10
	fmv.s f10, f13
label10:
	ret
.globl select_icmp_ne
select_icmp_ne:
	xor a0, a0, a1
	sltu a0, zero, a0
	fmv.s f10, f12
	bne a0, zero, label20
	fmv.s f10, f13
label20:
	ret
.globl select_icmp_sge
select_icmp_sge:
	slt a0, a0, a1
	xori a0, a0, 1
	fmv.s f10, f12
	bne a0, zero, label32
	fmv.s f10, f13
label32:
	ret
.globl select_icmp_sgt
select_icmp_sgt:
	slt a0, a1, a0
	fmv.s f10, f12
	bne a0, zero, label43
	fmv.s f10, f13
label43:
	ret
.globl select_icmp_sgt_zero
select_icmp_sgt_zero:
	slt a0, zero, a0
	fmv.w.x f10, zero
	lui a1, 260096
	fmv.w.x f11, a1
	bne a0, zero, label53
	fmv.s f10, f11
label53:
	ret
.globl select_icmp_sle
select_icmp_sle:
	slt a0, a1, a0
	xori a0, a0, 1
	fmv.s f10, f12
	bne a0, zero, label65
	fmv.s f10, f13
label65:
	ret
.globl select_icmp_slt
select_icmp_slt:
	slt a0, a0, a1
	fmv.s f10, f12
	bne a0, zero, label76
	fmv.s f10, f13
label76:
	ret
.globl select_icmp_slt_one
select_icmp_slt_one:
	slti a0, a0, 1
	lui a1, 260096
	fmv.w.x f10, a1
	fmv.w.x f11, zero
	bne a0, zero, label86
	fmv.s f10, f11
label86:
	ret
.globl select_icmp_uge
select_icmp_uge:
	sltu a0, a0, a1
	xori a0, a0, 1
	fmv.s f10, f12
	bne a0, zero, label96
	fmv.s f10, f13
label96:
	ret
.globl select_icmp_ugt
select_icmp_ugt:
	sltu a0, a1, a0
	fmv.s f10, f12
	bne a0, zero, label105
	fmv.s f10, f13
label105:
	ret
.globl select_icmp_ule
select_icmp_ule:
	sltu a0, a1, a0
	xori a0, a0, 1
	fmv.s f10, f12
	bne a0, zero, label115
	fmv.s f10, f13
label115:
	ret
.globl select_icmp_ult
select_icmp_ult:
	sltu a0, a0, a1
	fmv.s f10, f12
	bne a0, zero, label124
	fmv.s f10, f13
label124:
	ret
