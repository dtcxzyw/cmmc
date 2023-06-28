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
	slli a1, a0, 16
	srai a1, a1, 16
	slti a3, a1, 0
	li a2, 65535
	and a0, a0, a2
	mv a1, zero
	bne a3, zero, label28
	mv a1, a0
label28:
	and a0, a1, a2
	ret
.globl sat0_base_32bit
sat0_base_32bit:
	slti a2, a0, 0
	mv a1, zero
	bne a2, zero, label35
	mv a1, a0
label35:
	mv a0, a1
	ret
.globl sat0_base_8bit
sat0_base_8bit:
	slli a1, a0, 24
	srai a1, a1, 24
	slti a2, a1, 0
	andi a0, a0, 255
	mv a1, zero
	bne a2, zero, label46
	mv a1, a0
label46:
	andi a0, a1, 255
	ret
.globl sat0_lower_1
sat0_lower_1:
	slt a1, zero, a0
	subw a1, zero, a1
	and a0, a0, a1
	ret
.globl sat1_base_16bit
sat1_base_16bit:
	slli a1, a0, 16
	srai a1, a1, 16
	slti a3, a1, -1
	li a2, 65535
	and a0, a0, a2
	li a1, -1
	bne a3, zero, label65
	mv a1, a0
label65:
	and a0, a1, a2
	ret
.globl sat1_base_32bit
sat1_base_32bit:
	slti a2, a0, -1
	li a1, -1
	bne a2, zero, label72
	mv a1, a0
label72:
	mv a0, a1
	ret
.globl sat1_base_8bit
sat1_base_8bit:
	slli a1, a0, 24
	srai a1, a1, 24
	slti a2, a1, -1
	andi a0, a0, 255
	li a1, -1
	bne a2, zero, label83
	mv a1, a0
label83:
	andi a0, a1, 255
	ret
.globl sat1_lower_1
sat1_lower_1:
	li a1, -1
	slt a1, a1, a0
	bne a1, zero, label91
	li a0, -1
label91:
	ret
