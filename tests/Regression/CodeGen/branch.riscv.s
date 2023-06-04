.data
.text
.globl blt
blt:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	mv s1, a1
	mv t1, a2
	sd t1, 0(sp)
	bge s0, s1, label3
	ld s0, 0(sp)
	sw zero, 0(s0)
label3:
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
