.data
.text
.globl blt
blt:
	addi sp, sp, -8
	mv t1, a0
	mv t2, a1
	mv t3, a2
	sd t3, 0(sp)
	bge t1, t2, label3
	ld t1, 0(sp)
	sw zero, 0(t1)
label3:
	addi sp, sp, 8
	jr ra
