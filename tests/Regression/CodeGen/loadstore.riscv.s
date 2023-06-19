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
	slliw t1, a1, 2
	add t2, a0, t1
	lw t3, 0(t2)
	mv a0, t3
	ret
.globl store
store:
	slliw t1, a1, 2
	add t2, a0, t1
	sw a2, 0(t2)
	ret
.globl gep_const
gep_const:
	lw t1, 12(a0)
	mv a0, t1
	ret
.globl lb
lb:
	lb t1, 1(a0)
	mv a0, t1
	ret
.globl sb
sb:
	sb a1, 1(a0)
	ret
.globl global_addressing_scalar
global_addressing_scalar:
pcrel42:
	auipc t1, %pcrel_hi(y)
	lw t2, %pcrel_lo(pcrel42)(t1)
	mv a0, t2
	ret
.globl global_addressing_array
global_addressing_array:
pcrel55:
	auipc t1, %pcrel_hi(arr)
	addi t2, t1, %pcrel_lo(pcrel55)
	slli t3, a0, 2
	add t4, t2, t3
	lw t5, 0(t4)
	mv a0, t5
	ret
