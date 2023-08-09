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
.align 8
.globl x
x:
	.zero	8
.text
.p2align 2
.globl load
load:
	sh2add a2, a1, a0
	lw a0, 0(a2)
	ret
.p2align 2
.globl load_byte
load_byte:
	add a2, a0, a1
	lb a0, 0(a2)
	ret
.p2align 2
.globl load_float
load_float:
	sh2add a2, a1, a0
	flw f10, 0(a2)
	ret
.p2align 2
.globl store
store:
	sh2add a3, a1, a0
	sw a2, 0(a3)
	ret
.p2align 2
.globl store_float
store_float:
	sh2add a2, a1, a0
	fsw f10, 0(a2)
	ret
.p2align 2
.globl store_float_constant
store_float_constant:
	sh2add a2, a1, a0
	lui a3, 260096
	fmv.w.x f10, a3
	fsw f10, 0(a2)
	ret
.p2align 2
.globl gep_const
gep_const:
	lw a0, 12(a0)
	ret
.p2align 2
.globl gep1
gep1:
	sh2add a2, a1, a0
	lw a0, 0(a2)
	ret
.p2align 2
.globl gep2
gep2:
	addiw a2, a1, 3
	sh2add a3, a2, a0
	lw a0, 0(a3)
	ret
.p2align 2
.globl gepseq
gepseq:
	sh2add a2, a1, a0
	lw a4, 0(a2)
	lw a5, 4(a2)
	lw t0, 8(a2)
	addw a1, a4, a5
	lw a4, 12(a2)
	addw a3, a1, t0
	addw a0, a3, a4
	ret
.p2align 2
.globl lb
lb:
	lb a0, 1(a0)
	ret
.p2align 2
.globl sb
sb:
	sb a1, 1(a0)
	ret
.p2align 2
.globl global_addressing_scalar
global_addressing_scalar:
pcrel94:
	auipc a1, %pcrel_hi(y)
	lw a0, %pcrel_lo(pcrel94)(a1)
	ret
.p2align 2
.globl global_addressing_array
global_addressing_array:
pcrel104:
	auipc a3, %pcrel_hi(arr)
	addi a2, a3, %pcrel_lo(pcrel104)
	sh2add a1, a0, a2
	lw a0, 0(a1)
	ret
.p2align 2
.globl memset_impl
memset_impl:
	ble a0, zero, label106
pcrel222:
	auipc a1, %pcrel_hi(arr)
	li a2, 3
	addi a3, a1, %pcrel_lo(pcrel222)
	ble a0, a2, label137
	addiw a4, a0, -3
	addiw a5, a0, -18
	li t0, 15
	ble a4, t0, label155
	mv a1, a3
	mv a2, zero
	j label125
.p2align 2
label128:
	addi a1, a1, 64
.p2align 2
label125:
	addiw a2, a2, 16
	sd zero, 0(a1)
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	bgt a5, a2, label128
	mv a1, a2
label116:
	ble a4, a1, label159
	sh2add a2, a1, a3
	j label120
label123:
	addi a2, a2, 16
label120:
	addiw a1, a1, 4
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	bgt a4, a1, label123
label108:
	ble a0, a1, label106
	sh2add a2, a1, a3
	j label111
label114:
	addi a2, a2, 4
label111:
	addiw a1, a1, 1
	sw zero, 0(a2)
	bgt a0, a1, label114
label106:
	ret
label137:
	mv a1, zero
	j label108
label155:
	mv a1, zero
	mv a2, zero
	j label116
label159:
	mv a1, a2
	j label108
.p2align 2
.globl fused_store
fused_store:
pcrel290:
	auipc a1, %pcrel_hi(arr)
	li a3, 1
	li a4, 3
	addi a0, a1, %pcrel_lo(pcrel290)
	slli a2, a3, 32
	slli a3, a4, 32
	sd a2, %pcrel_lo(pcrel290)(a1)
	li a4, 5
	addi a2, a3, 2
	slli a1, a4, 32
	sd a2, 8(a0)
	li a4, 7
	addi a3, a1, 4
	slli a2, a4, 32
	sd a3, 16(a0)
	addi a1, a2, 6
	li a3, 9
	sd a1, 24(a0)
	slli a2, a3, 32
	li a3, 11
	addi a1, a2, 8
	slli a2, a3, 32
	sd a1, 32(a0)
	li a3, 13
	addi a1, a2, 10
	slli a2, a3, 32
	sd a1, 40(a0)
	li a3, 15
	addi a1, a2, 12
	slli a2, a3, 32
	sd a1, 48(a0)
	addi a1, a2, 14
	sd a1, 56(a0)
	ret
.p2align 2
.globl merge_store
merge_store:
pcrel302:
	auipc a2, %pcrel_hi(x)
	slli a3, a1, 32
	add.uw a4, a0, a3
	sd a4, %pcrel_lo(pcrel302)(a2)
	ret
