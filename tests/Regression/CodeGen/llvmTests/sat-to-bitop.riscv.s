.data
.section .rodata
.bss
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
	bge a1, zero, label25
	mv a0, zero
	j label17
label25:
	li a1, 65535
	and a0, a0, a1
label17:
	li a1, 65535
	and a0, a0, a1
	ret
.globl sat0_base_32bit
sat0_base_32bit:
	slti a2, a0, 0
	mv a1, zero
	bne a2, zero, label39
	mv a1, a0
label39:
	mv a0, a1
	ret
.globl sat0_base_8bit
sat0_base_8bit:
	slli a1, a0, 24
	srai a1, a1, 24
	bge a1, zero, label49
	mv a0, zero
	j label41
label49:
	andi a0, a0, 255
label41:
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
	slli a1, a0, 16
	srai a1, a1, 16
	li a2, -1
	bge a1, a2, label70
	li a0, -1
	j label62
label70:
	li a1, 65535
	and a0, a0, a1
label62:
	li a1, 65535
	and a0, a0, a1
	ret
.globl sat1_base_32bit
sat1_base_32bit:
	slti a2, a0, -1
	li a1, -1
	bne a2, zero, label85
	mv a1, a0
label85:
	mv a0, a1
	ret
.globl sat1_base_8bit
sat1_base_8bit:
	slli a1, a0, 24
	srai a1, a1, 24
	li a2, -1
	bge a1, a2, label95
	li a0, -1
	j label87
label95:
	andi a0, a0, 255
label87:
	andi a0, a0, 255
	ret
.globl sat1_lower_1
sat1_lower_1:
	li a1, -1
	slt a1, a1, a0
	bne a1, zero, label109
	li a0, -1
label109:
	ret
