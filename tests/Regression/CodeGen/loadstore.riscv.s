.data
.text
.globl load
load:
	addi sp, sp, -48
	sd s0, 32(sp)
	sd s1, 40(sp)
	mv s0, a1
	slliw s1, s0, 2
	add t1, a0, s1
	lw t2, 0(t1)
	mv a0, t2
	ld s1, 40(sp)
	ld s0, 32(sp)
	addi sp, sp, 48
	jr ra
.globl store
store:
	addi sp, sp, -48
	sd s0, 32(sp)
	sd s1, 40(sp)
	mv s0, a1
	mv s1, a2
	slliw t1, s0, 2
	add t2, a0, t1
	sw s1, 0(t2)
	ld s1, 40(sp)
	ld s0, 32(sp)
	addi sp, sp, 48
	jr ra
.globl gep_const
gep_const:
	addi sp, sp, -16
	sd s0, 8(sp)
	lw s0, 12(a0)
	mv a0, s0
	ld s0, 8(sp)
	addi sp, sp, 16
	jr ra
