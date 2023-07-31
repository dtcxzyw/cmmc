.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl y
y:
	.zero	4
.align 8
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
pcrel94:
	auipc a1, %pcrel_hi(y)
	lw a0, %pcrel_lo(pcrel94)(a1)
	ret
.globl global_addressing_array
global_addressing_array:
.p2align 2
pcrel104:
	auipc a1, %pcrel_hi(arr)
	addi a2, a1, %pcrel_lo(pcrel104)
	sh2add a3, a0, a2
	lw a0, 0(a3)
	ret
.globl memset_impl
memset_impl:
.p2align 2
	bgt a0, zero, label107
label106:
	ret
label107:
	auipc a2, %pcrel_hi(arr)
	li a3, 4
	addi a1, a2, %pcrel_lo(label107)
	ble a0, a3, label123
	addiw a2, a0, -4
	addiw a4, a0, -20
	li a5, 16
	ble a2, a5, label129
	mv a3, zero
label109:
	sh2add a5, a3, a1
	addiw a3, a3, 16
	sd zero, 0(a5)
	sd zero, 8(a5)
	sd zero, 16(a5)
	sd zero, 24(a5)
	sd zero, 32(a5)
	sd zero, 40(a5)
	sd zero, 48(a5)
	sd zero, 56(a5)
	bgt a4, a3, label109
label111:
	sh2add a4, a3, a1
	addiw a3, a3, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt a2, a3, label111
	mv a2, a3
label113:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw zero, 0(a4)
	bgt a0, a2, label113
	j label106
label123:
	mv a2, zero
	j label113
label129:
	mv a3, zero
	j label111
.globl fused_store
fused_store:
.p2align 2
pcrel217:
	auipc a1, %pcrel_hi(arr)
	li a2, 2
	li a3, 9
	addi a0, a1, %pcrel_lo(pcrel217)
	sw zero, %pcrel_lo(pcrel217)(a1)
	li a1, 1
	sw a1, 4(a0)
	li a1, 3
	sw a2, 8(a0)
	li a2, 4
	sw a1, 12(a0)
	li a1, 5
	sw a2, 16(a0)
	li a2, 6
	sw a1, 20(a0)
	li a1, 7
	sw a2, 24(a0)
	li a2, 8
	sw a1, 28(a0)
	li a1, 10
	sw a2, 32(a0)
	li a2, 11
	sw a3, 36(a0)
	sw a1, 40(a0)
	li a1, 12
	sw a2, 44(a0)
	li a2, 13
	sw a1, 48(a0)
	li a1, 14
	sw a2, 52(a0)
	li a2, 15
	sw a1, 56(a0)
	sw a2, 60(a0)
	ret
