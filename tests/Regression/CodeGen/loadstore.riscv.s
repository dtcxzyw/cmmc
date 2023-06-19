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
.globl gep1
gep1:
	slliw t1, a1, 2
	add t2, a0, t1
	lw t3, 0(t2)
	mv a0, t3
	ret
.globl gep2
gep2:
	addiw t1, a1, 3
	slliw t2, t1, 2
	add t3, a0, t2
	lw t4, 0(t3)
	mv a0, t4
	ret
.globl gepseq
gepseq:
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd s2, 0(sp)
	slliw t1, a1, 2
	add t2, a0, t1
	lw t3, 0(t2)
	lw t4, 4(t2)
	lw t5, 8(t2)
	lw t6, 12(t2)
	addw s0, t3, t4
	addw s1, s0, t5
	addw s2, s1, t6
	mv a0, s2
	ld s2, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
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
pcrel89:
	auipc t1, %pcrel_hi(y)
	lw t2, %pcrel_lo(pcrel89)(t1)
	mv a0, t2
	ret
.globl global_addressing_array
global_addressing_array:
pcrel102:
	auipc t1, %pcrel_hi(arr)
	addi t2, t1, %pcrel_lo(pcrel102)
	slli t3, a0, 2
	add t4, t2, t3
	lw t5, 0(t4)
	mv a0, t5
	ret
