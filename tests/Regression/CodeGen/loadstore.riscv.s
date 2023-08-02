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
	sh2add a0, a1, a0
	sw a2, 0(a0)
	ret
.p2align 2
.globl store_float
store_float:
	sh2add a0, a1, a0
	fsw f10, 0(a0)
	ret
.p2align 2
.globl store_float_constant
store_float_constant:
	sh2add a2, a1, a0
	lui a0, 260096
	fmv.w.x f10, a0
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
	lw a3, 0(a2)
	lw a1, 4(a2)
	addw a0, a3, a1
	lw a3, 8(a2)
	lw a2, 12(a2)
	addw a1, a0, a3
	addw a0, a1, a2
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
	ble a0, zero, label114
pcrel198:
	auipc a2, %pcrel_hi(arr)
	li a3, 4
	addi a1, a2, %pcrel_lo(pcrel198)
	ble a0, a3, label123
	addiw a2, a0, -4
	addiw a4, a0, -20
	li a5, 16
	ble a2, a5, label129
	mv a3, zero
.p2align 2
label108:
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
	bgt a4, a3, label108
label110:
	sh2add a4, a3, a1
	addiw a3, a3, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt a2, a3, label110
	mv a2, a3
label112:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	sw zero, 0(a4)
	bgt a0, a2, label112
label114:
	ret
label123:
	mv a2, zero
	j label112
label129:
	mv a3, zero
	j label110
.p2align 2
.globl fused_store
fused_store:
pcrel265:
	auipc a1, %pcrel_hi(arr)
	li a3, 1
	addi a0, a1, %pcrel_lo(pcrel265)
	slli a2, a3, 32
	li a3, 3
	sd a2, %pcrel_lo(pcrel265)(a1)
	slli a1, a3, 32
	li a3, 5
	addi a2, a1, 2
	slli a1, a3, 32
	sd a2, 8(a0)
	li a3, 7
	addi a2, a1, 4
	sd a2, 16(a0)
	slli a2, a3, 32
	li a3, 9
	addi a1, a2, 6
	sd a1, 24(a0)
	slli a1, a3, 32
	li a3, 11
	addi a2, a1, 8
	sd a2, 32(a0)
	slli a2, a3, 32
	li a3, 13
	addi a1, a2, 10
	sd a1, 40(a0)
	slli a1, a3, 32
	li a3, 15
	addi a2, a1, 12
	slli a1, a3, 32
	sd a2, 48(a0)
	addi a2, a1, 14
	sd a2, 56(a0)
	ret
.p2align 2
.globl merge_store
merge_store:
pcrel276:
	auipc a2, %pcrel_hi(x)
	slli a3, a1, 32
	add.uw a0, a0, a3
	sd a0, %pcrel_lo(pcrel276)(a2)
	ret
