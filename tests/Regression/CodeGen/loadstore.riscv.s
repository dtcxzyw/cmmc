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
.p2align 2
	sh2add a2, a1, a0
	lw a0, 0(a2)
	ret
.globl load_byte
load_byte:
.p2align 2
	add a2, a0, a1
	lb a0, 0(a2)
	ret
.globl load_float
load_float:
.p2align 2
	sh2add a2, a1, a0
	flw f10, 0(a2)
	ret
.globl store
store:
.p2align 2
	sh2add a0, a1, a0
	sw a2, 0(a0)
	ret
.globl store_float
store_float:
.p2align 2
	sh2add a0, a1, a0
	fsw f10, 0(a0)
	ret
.globl store_float_constant
store_float_constant:
.p2align 2
	sh2add a2, a1, a0
	lui a0, 260096
	fmv.w.x f10, a0
	fsw f10, 0(a2)
	ret
.globl gep_const
gep_const:
.p2align 2
	lw a0, 12(a0)
	ret
.globl gep1
gep1:
.p2align 2
	sh2add a2, a1, a0
	lw a0, 0(a2)
	ret
.globl gep2
gep2:
.p2align 2
	addiw a2, a1, 3
	sh2add a3, a2, a0
	lw a0, 0(a3)
	ret
.globl gepseq
gepseq:
.p2align 2
	sh2add a2, a1, a0
	lw a3, 0(a2)
	lw a1, 4(a2)
	addw a0, a3, a1
	lw a3, 8(a2)
	lw a2, 12(a2)
	addw a1, a0, a3
	addw a0, a1, a2
	ret
.globl lb
lb:
.p2align 2
	lb a0, 1(a0)
	ret
.globl sb
sb:
.p2align 2
	sb a1, 1(a0)
	ret
.globl global_addressing_scalar
global_addressing_scalar:
.p2align 2
pcrel86:
	auipc a1, %pcrel_hi(y)
	lw a0, %pcrel_lo(pcrel86)(a1)
	ret
.globl global_addressing_array
global_addressing_array:
.p2align 2
pcrel95:
	auipc a1, %pcrel_hi(arr)
	addi a2, a1, %pcrel_lo(pcrel95)
	sh2add a3, a0, a2
	lw a0, 0(a3)
	ret
.globl memset_impl
memset_impl:
.p2align 2
	mv a1, zero
.p2align 2
label97:
	sh2add a2, a1, a0
	addiw a1, a1, 16
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
	li a2, 128
	blt a1, a2, label97
	ret
