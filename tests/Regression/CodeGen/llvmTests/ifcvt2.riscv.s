.data
.text
.globl t1
t1:
	addw a0, a0, a1
	slti a1, a3, 4
	li a4, 10
	slt a4, a4, a2
	or a1, a1, a4
	beq a1, zero, label3
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
