.data
.align 4
.globl y
y:
	.zero	4
.align 4
.globl arr
arr:
	.zero	400
.text
.globl load
load:
	mv t1, a1
	slliw t2, a1, 2
	add t3, a0, t2
	lw t4, 0(t3)
	mv a0, t4
	ret
.globl store
store:
	mv t1, a1
	mv t2, a2
	slliw t3, a1, 2
	add t4, a0, t3
	sw a2, 0(t4)
	ret
.globl gep_const
gep_const:
	lw t1, 12(a0)
	mv a0, t1
	ret
.globl lb
lb:
	lb t1, 1(a0)
	mv t2, t1
	mv a0, t1
	ret
.globl sb
sb:
	mv t1, a1
	sb a1, 1(a0)
	ret
.globl global_addressing_scalar
global_addressing_scalar:
pcrel46:
	auipc t1, %pcrel_hi(y)
	lw t2, %pcrel_lo(pcrel46)(t1)
	mv a0, t2
	ret
.globl global_addressing_array
global_addressing_array:
	mv t1, a0
pcrel60:
	auipc t2, %pcrel_hi(arr)
	addi t3, t2, %pcrel_lo(pcrel60)
	slli t4, a0, 2
	add t5, t3, t4
	lw t6, 0(t5)
	mv a0, t6
	ret
