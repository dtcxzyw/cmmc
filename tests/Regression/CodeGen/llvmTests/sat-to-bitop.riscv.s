.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl no_sat0_incorrect_constant
no_sat0_incorrect_constant:
.p2align 2
	li a1, -1
	blt a0, zero, label7
	mv a1, a0
label7:
	mv a0, a1
	ret
.globl no_sat0_incorrect_variable
no_sat0_incorrect_variable:
.p2align 2
	mv a2, zero
	blt a0, zero, label16
	mv a2, a1
label16:
	mv a0, a2
	ret
.globl sat0_base_16bit
sat0_base_16bit:
.p2align 2
	sext.h a2, a0
	li a1, 65535
	mv a3, zero
	and a0, a0, a1
	blt a2, zero, label29
	mv a3, a0
label29:
	and a0, a3, a1
	ret
.globl sat0_base_32bit
sat0_base_32bit:
.p2align 2
	mv a1, zero
	blt a0, zero, label37
	mv a1, a0
label37:
	mv a0, a1
	ret
.globl sat0_base_8bit
sat0_base_8bit:
.p2align 2
	sext.b a1, a0
	andi a2, a0, 255
	mv a0, zero
	blt a1, zero, label48
	mv a0, a2
label48:
	andi a0, a0, 255
	ret
.globl sat0_lower_1
sat0_lower_1:
.p2align 2
	mv a1, a0
	bgt a0, zero, label56
	mv a1, zero
label56:
	mv a0, a1
	ret
.globl sat1_base_16bit
sat1_base_16bit:
.p2align 2
	sext.h a2, a0
	li a1, 65535
	li a4, -1
	li a3, -1
	and a0, a0, a1
	blt a2, a4, label70
	mv a3, a0
label70:
	and a0, a3, a1
	ret
.globl sat1_base_32bit
sat1_base_32bit:
.p2align 2
	li a2, -1
	li a1, -1
	blt a0, a2, label79
	mv a1, a0
label79:
	mv a0, a1
	ret
.globl sat1_base_8bit
sat1_base_8bit:
.p2align 2
	sext.b a1, a0
	andi a2, a0, 255
	li a3, -1
	li a0, -1
	blt a1, a3, label91
	mv a0, a2
label91:
	andi a0, a0, 255
	ret
.globl sat1_lower_1
sat1_lower_1:
.p2align 2
	li a2, -1
	mv a1, a0
	bgt a0, a2, label101
	li a1, -1
label101:
	mv a0, a1
	ret
