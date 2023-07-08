.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl no_sat0_incorrect_constant
no_sat0_incorrect_constant:
	li a1, -1
	blt a0, zero, label7
	mv a1, a0
label7:
	mv a0, a1
	ret
.globl no_sat0_incorrect_variable
no_sat0_incorrect_variable:
	mv a2, zero
	blt a0, zero, label15
	mv a2, a1
label15:
	mv a0, a2
	ret
.globl sat0_base_16bit
sat0_base_16bit:
	sext.h a2, a0
	li a1, 65535
	mv a3, zero
	and a0, a0, a1
	blt a2, zero, label27
	mv a3, a0
label27:
	and a0, a3, a1
	ret
.globl sat0_base_32bit
sat0_base_32bit:
	mv a1, zero
	blt a0, zero, label34
	mv a1, a0
label34:
	mv a0, a1
	ret
.globl sat0_base_8bit
sat0_base_8bit:
	sext.b a1, a0
	mv a2, zero
	andi a0, a0, 255
	blt a1, zero, label44
	mv a2, a0
label44:
	andi a0, a2, 255
	ret
.globl sat0_lower_1
sat0_lower_1:
	slt a1, zero, a0
	subw a1, zero, a1
	and a0, a0, a1
	ret
.globl sat1_base_16bit
sat1_base_16bit:
	sext.h a2, a0
	li a1, 65535
	li a4, -1
	li a3, -1
	and a0, a0, a1
	blt a2, a4, label63
	mv a3, a0
label63:
	and a0, a3, a1
	ret
.globl sat1_base_32bit
sat1_base_32bit:
	li a2, -1
	li a1, -1
	blt a0, a2, label71
	mv a1, a0
label71:
	mv a0, a1
	ret
.globl sat1_base_8bit
sat1_base_8bit:
	sext.b a1, a0
	li a3, -1
	li a2, -1
	andi a0, a0, 255
	blt a1, a3, label82
	mv a2, a0
label82:
	andi a0, a2, 255
	ret
.globl sat1_lower_1
sat1_lower_1:
	li a2, -1
	mv a1, a0
	bgt a0, a2, label91
	li a1, -1
label91:
	mv a0, a1
	ret
