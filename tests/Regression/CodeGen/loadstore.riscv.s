.data
.text
.globl load
load:
	mv t1, a1
	slliw t2, t1, 2
	add t3, a0, t2
	lw t4, 0(t3)
	mv a0, t4
	jr ra
.globl store
store:
	mv t1, a1
	mv t2, a2
	slliw t3, t1, 2
	add t4, a0, t3
	sw t2, 0(t4)
	jr ra
.globl gep_const
gep_const:
	lw t1, 12(a0)
	mv a0, t1
	jr ra
.globl lb
lb:
	lb t1, 1(a0)
	mv t2, t1
	mv a0, t2
	jr ra
.globl sb
sb:
	mv t1, a1
	sb t1, 1(a0)
	jr ra
