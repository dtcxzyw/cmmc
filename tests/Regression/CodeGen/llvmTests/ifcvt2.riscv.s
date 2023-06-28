.data
.section .rodata
.bss
.text
.globl t1
t1:
	slti a4, a3, 4
	li a5, 10
	slt a5, a5, a2
	or a4, a4, a5
	addw a0, a0, a1
	beq a4, zero, label3
	addw a0, a2, a0
	subw a0, a0, a3
label3:
	ret
.globl t2
t2:
	addw a0, a0, a1
	li a1, 4
	bge a3, a1, label27
	li a1, 10
	ble a2, a1, label27
	addw a0, a2, a0
	subw a0, a0, a3
label27:
	ret
