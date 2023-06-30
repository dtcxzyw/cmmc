.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
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
	sh2add a0, a1, a0
	lw a0, 0(a0)
	ret
.globl load_byte
load_byte:
	add a0, a0, a1
	lb a0, 0(a0)
	ret
.globl load_float
load_float:
	sh2add a0, a1, a0
	flw f10, 0(a0)
	ret
.globl store
store:
	sh2add a0, a1, a0
	sw a2, 0(a0)
	ret
.globl store_float
store_float:
	sh2add a0, a1, a0
	fsw f12, 0(a0)
	ret
.globl store_float_constant
store_float_constant:
	sh2add a0, a1, a0
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
	sh2add a0, a1, a0
	lw a0, 0(a0)
	ret
.globl gep2
gep2:
	addiw a1, a1, 3
	sh2add a0, a1, a0
	lw a0, 0(a0)
	ret
.globl gepseq
gepseq:
	sh2add a0, a1, a0
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
	sh2add a0, a0, a1
	lw a0, 0(a0)
	ret
.globl memset_impl
memset_impl:
	sw zero, 0(a0)
	li a1, 1
label98:
	sh2add a2, a1, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	addiw a1, a1, 16
	li a2, 113
	bge a1, a2, label100
	j label98
label100:
	sh2add a0, a1, a0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	sw zero, 32(a0)
	sw zero, 36(a0)
	sw zero, 40(a0)
	sw zero, 44(a0)
	sw zero, 48(a0)
	sw zero, 52(a0)
	sw zero, 56(a0)
	ret
