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
	slliw a2, a1, 2
	add a3, a0, a2
	lw a4, 0(a3)
	mv a0, a4
	ret
.globl load_byte
load_byte:
	add a2, a0, a1
	lb a3, 0(a2)
	mv a0, a3
	ret
.globl load_float
load_float:
	slliw a2, a1, 2
	add a3, a0, a2
	flw f10, 0(a3)
	ret
.globl store
store:
	slliw a3, a1, 2
	add a4, a0, a3
	sw a2, 0(a4)
	ret
.globl store_float
store_float:
	slliw a2, a1, 2
	add a3, a0, a2
	fsw f12, 0(a3)
	ret
.globl gep_const
gep_const:
	lw a1, 12(a0)
	mv a0, a1
	ret
.globl gep1
gep1:
	slliw a2, a1, 2
	add a3, a0, a2
	lw a4, 0(a3)
	mv a0, a4
	ret
.globl gep2
gep2:
	addiw a2, a1, 3
	slliw a3, a2, 2
	add a4, a0, a3
	lw a5, 0(a4)
	mv a0, a5
	ret
.globl gepseq
gepseq:
	slliw a2, a1, 2
	add a3, a0, a2
	lw a4, 0(a3)
	lw a5, 4(a3)
	lw t1, 8(a3)
	lw t2, 12(a3)
	addw t3, a4, a5
	addw t4, t3, t1
	addw t5, t4, t2
	mv a0, t5
	ret
.globl lb
lb:
	lb a1, 1(a0)
	mv a0, a1
	ret
.globl sb
sb:
	sb a1, 1(a0)
	ret
.globl global_addressing_scalar
global_addressing_scalar:
pcrel133:
	auipc a0, %pcrel_hi(y)
	lw a1, %pcrel_lo(pcrel133)(a0)
	mv a0, a1
	ret
.globl global_addressing_array
global_addressing_array:
pcrel147:
	auipc a1, %pcrel_hi(arr)
	addi a2, a1, %pcrel_lo(pcrel147)
	slli a3, a0, 2
	add a4, a2, a3
	lw a5, 0(a4)
	mv a0, a5
	ret
