.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl no_sat0_incorrect_constant
no_sat0_incorrect_constant:
	li a1, -1
	blt a0, zero, label7
	mv a1, a0
label7:
	mv a0, a1
	ret
.p2align 2
.globl no_sat0_incorrect_variable
no_sat0_incorrect_variable:
	mv a2, zero
	blt a0, zero, label16
	mv a2, a1
label16:
	mv a0, a2
	ret
.p2align 2
.globl sat0_base_16bit
sat0_base_16bit:
	sext.h a1, a0
	zext.h a2, a0
	mv a0, zero
	blt a1, zero, label27
	mv a0, a2
label27:
	zext.h a0, a0
	ret
.p2align 2
.globl sat0_base_32bit
sat0_base_32bit:
	mv a1, zero
	blt a0, zero, label35
	mv a1, a0
label35:
	mv a0, a1
	ret
.p2align 2
.globl sat0_base_8bit
sat0_base_8bit:
	sext.b a1, a0
	andi a2, a0, 255
	mv a0, zero
	blt a1, zero, label46
	mv a0, a2
label46:
	andi a0, a0, 255
	ret
.p2align 2
.globl sat0_lower_1
sat0_lower_1:
	mv a1, a0
	bgt a0, zero, label54
	mv a1, zero
label54:
	mv a0, a1
	ret
.p2align 2
.globl sat1_base_16bit
sat1_base_16bit:
	sext.h a1, a0
	zext.h a2, a0
	li a3, -1
	li a0, -1
	blt a1, a3, label66
	mv a0, a2
label66:
	zext.h a0, a0
	ret
.p2align 2
.globl sat1_base_32bit
sat1_base_32bit:
	li a2, -1
	li a1, -1
	blt a0, a2, label75
	mv a1, a0
label75:
	mv a0, a1
	ret
.p2align 2
.globl sat1_base_8bit
sat1_base_8bit:
	sext.b a1, a0
	andi a2, a0, 255
	li a3, -1
	li a0, -1
	blt a1, a3, label87
	mv a0, a2
label87:
	andi a0, a0, 255
	ret
.p2align 2
.globl sat1_lower_1
sat1_lower_1:
	li a2, -1
	mv a1, a0
	bgt a0, a2, label97
	li a1, -1
label97:
	mv a0, a1
	ret
