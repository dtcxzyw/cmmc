.data
.section .rodata
.bss
.text
.globl t1
t1:
	sltu a1, zero, a0
	li a0, 10
	bne a1, zero, label8
	li a0, 20
label8:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl t2
t2:
	sltu a2, zero, a0
	mv a0, a1
	bne a2, zero, label15
	li a0, 20
label15:
	ret
.globl t3
t3:
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label24
	mv a0, a2
label24:
	addw a0, a1, a0
	ret
.globl t4
t4:
	sltu a1, zero, a0
	li a0, -10
	bne a1, zero, label32
	li a0, -1
label32:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl t5
t5:
	sltu a2, zero, a0
	mv a0, a1
	bne a2, zero, label39
	li a0, -2
label39:
	ret
.globl t6
t6:
	sltu a2, zero, a0
	mv a0, a1
	bne a2, zero, label46
	li a0, -978945
label46:
	ret
