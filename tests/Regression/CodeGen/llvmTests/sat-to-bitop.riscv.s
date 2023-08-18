.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl no_sat0_incorrect_constant
no_sat0_incorrect_constant:
	mv a1, a0
	li a0, -1
	blt a1, zero, label7
	mv a0, a1
label7:
	ret
.p2align 2
.globl no_sat0_incorrect_variable
no_sat0_incorrect_variable:
	mv a2, zero
	blt a0, zero, label15
	mv a2, a1
label15:
	mv a0, a2
	ret
.p2align 2
.globl sat0_base_16bit
sat0_base_16bit:
	sext.h a1, a0
	zext.h a3, a0
	mv a2, zero
	blt a1, zero, label25
	mv a2, a3
label25:
	zext.h a0, a2
	ret
.p2align 2
.globl sat0_base_32bit
sat0_base_32bit:
	mv a1, a0
	mv a0, zero
	blt a1, zero, label32
	mv a0, a1
label32:
	ret
.p2align 2
.globl sat0_base_8bit
sat0_base_8bit:
	sext.b a1, a0
	andi a3, a0, 255
	mv a2, zero
	blt a1, zero, label42
	mv a2, a3
label42:
	andi a0, a2, 255
	ret
.p2align 2
.globl sat0_lower_1
sat0_lower_1:
	mv a1, a0
	bgt a0, zero, label49
	mv a0, zero
label49:
	ret
.p2align 2
.globl sat1_base_16bit
sat1_base_16bit:
	sext.h a1, a0
	zext.h a2, a0
	li a4, -1
	li a3, -1
	blt a1, a4, label60
	mv a3, a2
label60:
	zext.h a0, a3
	ret
.p2align 2
.globl sat1_base_32bit
sat1_base_32bit:
	li a2, -1
	li a1, -1
	blt a0, a2, label68
	mv a1, a0
label68:
	mv a0, a1
	ret
.p2align 2
.globl sat1_base_8bit
sat1_base_8bit:
	sext.b a1, a0
	andi a2, a0, 255
	li a4, -1
	li a3, -1
	blt a1, a4, label79
	mv a3, a2
label79:
	andi a0, a3, 255
	ret
.p2align 2
.globl sat1_lower_1
sat1_lower_1:
	li a2, -1
	mv a1, a0
	bgt a0, a2, label88
	li a1, -1
label88:
	mv a0, a1
	ret
