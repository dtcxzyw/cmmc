.data
.text
.globl blt
blt:
	addi sp, sp, -8
	mv t1, a0
	mv t2, a1
	mv t3, a2
	sd a2, 0(sp)
	bge a0, a1, label3
	mv t1, a2
	sw zero, 0(a2)
label3:
	addi sp, sp, 8
	jr ra
