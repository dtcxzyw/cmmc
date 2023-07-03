.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl no_sat0_incorrect_constant
no_sat0_incorrect_constant:
	slti a2, a0, 0
	li a1, -1
	bne a2, zero, label7
	mv a1, a0
label7:
	mv a0, a1
	ret
.globl no_sat0_incorrect_variable
no_sat0_incorrect_variable:
	slti a2, a0, 0
	mv a0, zero
	bne a2, zero, label15
	mv a0, a1
label15:
	ret
.globl sat0_base_16bit
sat0_base_16bit:
	sext.h a1, a0
	li a2, 65535
	slti a3, a1, 0
	and a1, a0, a2
	mv a0, zero
	bne a3, zero, label27
	mv a0, a1
label27:
	and a0, a0, a2
	ret
.globl sat0_base_32bit
sat0_base_32bit:
	slti a2, a0, 0
	mv a1, zero
	bne a2, zero, label34
	mv a1, a0
label34:
	mv a0, a1
	ret
.globl sat0_base_8bit
sat0_base_8bit:
	sext.b a1, a0
	slti a2, a1, 0
	andi a1, a0, 255
	mv a0, zero
	bne a2, zero, label44
	mv a0, a1
label44:
	andi a0, a0, 255
	ret
.globl sat0_lower_1
sat0_lower_1:
	slt a1, zero, a0
	subw a1, zero, a1
	and a0, a0, a1
	ret
.globl sat1_base_16bit
sat1_base_16bit:
	sext.h a1, a0
	li a2, 65535
	slti a3, a1, -1
	and a1, a0, a2
	li a0, -1
	bne a3, zero, label62
	mv a0, a1
label62:
	and a0, a0, a2
	ret
.globl sat1_base_32bit
sat1_base_32bit:
	slti a2, a0, -1
	li a1, -1
	bne a2, zero, label69
	mv a1, a0
label69:
	mv a0, a1
	ret
.globl sat1_base_8bit
sat1_base_8bit:
	sext.b a1, a0
	slti a2, a1, -1
	andi a1, a0, 255
	li a0, -1
	bne a2, zero, label79
	mv a0, a1
label79:
	andi a0, a0, 255
	ret
.globl sat1_lower_1
sat1_lower_1:
	li a1, -1
	slt a1, a1, a0
	bne a1, zero, label87
	li a0, -1
label87:
	ret
