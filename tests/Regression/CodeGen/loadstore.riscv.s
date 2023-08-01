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
	auipc a1, %pcrel_hi(arr)
	addi a2, a1, %pcrel_lo(pcrel104)
	sh2add a3, a0, a2
	lw a0, 0(a3)
	ret
.p2align 2
.globl memset_impl
memset_impl:
	bgt a0, zero, label107
label106:
	ret
label107:
	addiw a3, a0, -8
pcrel152:
	auipc a2, %pcrel_hi(arr)
	li a4, 8
	addi a1, a2, %pcrel_lo(pcrel152)
	ble a0, a4, label121
	mv a2, zero
label108:
	sh2add a4, a2, a1
	addiw a2, a2, 8
	sd zero, 0(a4)
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	bgt a3, a2, label108
label110:
	sh2add a3, a2, a1
	addiw a2, a2, 1
	sw zero, 0(a3)
	bgt a0, a2, label110
	j label106
label121:
	mv a2, zero
	j label110
.p2align 2
.globl fused_store
fused_store:
pcrel188:
	auipc a1, %pcrel_hi(arr)
	li a2, 2
	li a3, 9
	addi a0, a1, %pcrel_lo(pcrel188)
	sw zero, %pcrel_lo(pcrel188)(a1)
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
