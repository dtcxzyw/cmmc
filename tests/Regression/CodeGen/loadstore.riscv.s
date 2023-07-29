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
	addiw a4, a1, -4
	ble a1, zero, label111
	li a3, 4
	bgt a1, a3, label121
	mv a2, zero
	j label109
label121:
	mv a3, zero
label107:
	sh2add a2, a3, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a2, a3, 4
	ble a4, a2, label109
	mv a3, a2
	j label107
label109:
	sh2add a4, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a4)
	bgt a1, a2, label109
label111:
	ret
