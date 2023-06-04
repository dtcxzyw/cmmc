.data
.text
.globl select
select:
	addi sp, sp, -64
	sd s0, 48(sp)
	sd s1, 56(sp)
	mv s0, a0
	mv s1, a1
	mv t1, a2
	sltiu t2, s0, 1
	xori t3, t2, 1
	mv t4, s1
	sd t4, 0(sp)
	sd t1, 8(sp)
	bne t3, zero, label9
	ld s0, 8(sp)
	mv s1, s0
	sd s1, 0(sp)
label9:
	ld s0, 0(sp)
	mv a0, s0
	ld s1, 56(sp)
	ld s0, 48(sp)
	addi sp, sp, 64
	jr ra
