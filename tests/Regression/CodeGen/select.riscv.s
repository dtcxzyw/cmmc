.data
.text
.globl select
select:
	addi sp, sp, -16
	mv t1, a0
	mv t2, a1
	mv t3, a2
	sltiu t4, t1, 1
	xori t5, t4, 1
	mv t6, t2
	sd t6, 0(sp)
	sd t3, 8(sp)
	bne t5, zero, label9
	ld t1, 8(sp)
	mv t2, t1
	sd t2, 0(sp)
label9:
	ld t1, 0(sp)
	mv a0, t1
	addi sp, sp, 16
	jr ra
