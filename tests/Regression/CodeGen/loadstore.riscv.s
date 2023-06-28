.data
.section .rodata
.bss
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
	slliw a1, a1, 2
	add a0, a0, a1
	lw a0, 0(a0)
	ret
.globl load_byte
load_byte:
	add a0, a0, a1
	lb a0, 0(a0)
	ret
.globl load_float
load_float:
	slliw a1, a1, 2
	add a0, a0, a1
	flw f10, 0(a0)
	ret
.globl store
store:
	slliw a1, a1, 2
	add a0, a0, a1
	sw a2, 0(a0)
	ret
.globl store_float
store_float:
	slliw a1, a1, 2
	add a0, a0, a1
	fsw f12, 0(a0)
	ret
.globl store_float_constant
store_float_constant:
	slliw a1, a1, 2
	add a0, a0, a1
	lui a1, 260096
	fmv.w.x f10, a1
	fsw f10, 0(a0)
	ret
.globl gep_const
gep_const:
	lw a0, 12(a0)
	ret
.globl gep1
gep1:
	slliw a1, a1, 2
	add a0, a0, a1
	lw a0, 0(a0)
	ret
.globl gep2
gep2:
	addiw a1, a1, 3
	slliw a1, a1, 2
	add a0, a0, a1
	lw a0, 0(a0)
	ret
.globl gepseq
gepseq:
	slliw a1, a1, 2
	add a0, a0, a1
	lw a1, 0(a0)
	lw a2, 4(a0)
	addw a1, a1, a2
	lw a2, 8(a0)
	addw a1, a1, a2
	lw a0, 12(a0)
	addw a0, a1, a0
	ret
.globl lb
lb:
	lb a0, 1(a0)
	ret
.globl sb
sb:
	sb a1, 1(a0)
	ret
.globl global_addressing_scalar
global_addressing_scalar:
pcrel87:
	auipc a0, %pcrel_hi(y)
	lw a0, %pcrel_lo(pcrel87)(a0)
	ret
.globl global_addressing_array
global_addressing_array:
pcrel96:
	auipc a1, %pcrel_hi(arr)
	addi a1, a1, %pcrel_lo(pcrel96)
	slli a0, a0, 2
	add a0, a1, a0
	lw a0, 0(a0)
	ret
