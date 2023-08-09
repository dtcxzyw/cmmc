.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[360] RegSpill[0] CalleeSaved[24]
	addi sp, sp, -392
	li a0, 1
	li a4, 4
	li t5, 7
	addi a2, sp, 128
	addi a1, sp, 24
	slli a3, a0, 33
	addi a2, a2, 76
	sd ra, 0(sp)
	slli t0, a3, 2
	slli a0, a4, 32
	ori t1, a3, 1
	sd s0, 8(sp)
	ori t3, t0, 7
	sh1add a4, a3, a3
	addi a5, a0, 3
	addi s0, sp, 232
	ori t2, a4, 5
	li a0, 9
	sd s1, 16(sp)
	zext.w t4, a0
	li s1, 1
	sd zero, 232(sp)
	sd zero, 240(sp)
	sd zero, 248(sp)
	sd zero, 256(sp)
	sd zero, 264(sp)
	sd zero, 272(sp)
	sd zero, 280(sp)
	sd zero, 288(sp)
	sd zero, 296(sp)
	sd zero, 304(sp)
	sd zero, 312(sp)
	sd zero, 320(sp)
	sd zero, 328(sp)
	sd zero, 336(sp)
	sd zero, 344(sp)
	sd zero, 352(sp)
	sd zero, 360(sp)
	sd zero, 368(sp)
	sd zero, 376(sp)
	sd zero, 384(sp)
	sd t1, 24(sp)
	sd a5, 32(sp)
	sd t2, 40(sp)
	sd t3, 48(sp)
	sd t4, 56(sp)
	sd t1, 64(sp)
	srli t1, a4, 1
	sd a5, 72(sp)
	sd t2, 80(sp)
	ori t2, t1, 2
	sd t3, 88(sp)
	ori t3, a3, 4
	sd t4, 96(sp)
	slli t4, t5, 32
	sd t2, 128(sp)
	li t5, 9
	addi t2, t4, 5
	sd t3, 136(sp)
	slli t3, t5, 32
	sd t2, 144(sp)
	addi t4, t3, 9
	srli t2, a5, 2
	ori t3, t0, 9
	sd t4, 152(sp)
	ori a5, t1, 4
	li t0, 39
	ori t4, a4, 7
	sd t2, 160(sp)
	ori a4, t2, 2
	sd t3, 168(sp)
	sd t4, 176(sp)
	sd a5, 184(sp)
	ori a5, a3, 2
	sd a4, 192(sp)
	li a4, 19
	sd a5, 200(sp)
	bge a4, zero, label14
	j label6
.p2align 2
label381:
	addiw t0, t0, 15
	addiw a4, a4, -1
	addi a2, a2, -4
	blt a4, zero, label6
.p2align 2
label14:
	sh2add a3, t0, s0
	lw a5, 0(a2)
	li t1, 19
	sh2add t2, t1, a1
	lw t4, 0(a3)
	lw t5, 0(t2)
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label34
	sw t3, 0(a3)
	lw t4, -4(a3)
	lw t5, -4(t2)
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label21
	sw t3, -4(a3)
	lw t4, -8(a3)
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label24
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t6, -12(t2)
	addiw t2, t0, -4
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label27
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label31
	addiw t0, t0, 15
	addiw a4, a4, -1
	addi a2, a2, -4
	bge a4, zero, label14
	j label6
.p2align 2
label383:
	sw t3, 0(a3)
	lw t4, -4(a3)
	lw t5, -4(t2)
	mulw t6, a5, t5
	addw t3, t4, t6
	ble t3, a0, label396
.p2align 2
label21:
	sw t3, -4(a3)
	lui a6, 419430
	lw t5, -8(a3)
	addiw a7, a6, 1639
	mul t4, t3, a7
	srli a6, t4, 63
	srai t6, t4, 34
	add t3, a6, t6
	addw t4, t5, t3
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	ble t3, a0, label173
.p2align 2
label24:
	sw t3, -8(a3)
	lui a6, 419430
	lw t5, -12(a3)
	addiw a7, a6, 1639
	mul t4, t3, a7
	srli a6, t4, 63
	srai t6, t4, 34
	add t3, a6, t6
	addw t4, t5, t3
	lw t6, -12(t2)
	addiw t2, t0, -4
	mulw t5, a5, t6
	addw t3, t4, t5
	ble t3, a0, label187
.p2align 2
label27:
	sw t3, -12(a3)
	lui a7, 419430
	addiw t1, t1, -4
	addiw a6, a7, 1639
	lw t4, -16(a3)
	mul t5, t3, a6
	srli a7, t5, 63
	srai t6, t5, 34
	add t3, a7, t6
	addw a6, t4, t3
	sw a6, -16(a3)
	blt t1, zero, label381
.p2align 2
label31:
	addi a3, a3, -16
	mv t0, t2
	lw t4, 0(a3)
	sh2add t2, t1, a1
	lw t5, 0(t2)
	mulw t6, a5, t5
	addw t3, t4, t6
	ble t3, a0, label383
.p2align 2
label34:
	sw t3, 0(a3)
	lui a7, 419430
	lw t5, -4(a3)
	addiw a6, a7, 1639
	mul t4, t3, a6
	srli a7, t4, 63
	srai t6, t4, 34
	add t3, a7, t6
	addw t4, t5, t3
	lw t5, -4(t2)
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label21
	sw t3, -4(a3)
	lw t4, -8(a3)
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label24
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t6, -12(t2)
	addiw t2, t0, -4
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label27
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label31
	addiw t0, t0, 15
	addiw a4, a4, -1
	addi a2, a2, -4
	bge a4, zero, label14
	j label6
.p2align 2
label173:
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t6, -12(t2)
	addiw t2, t0, -4
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label27
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label31
	addiw t0, t0, 15
	addiw a4, a4, -1
	addi a2, a2, -4
	bge a4, zero, label14
	j label6
.p2align 2
label396:
	sw t3, -4(a3)
	lw t4, -8(a3)
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label24
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t6, -12(t2)
	addiw t2, t0, -4
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label27
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label31
	addiw t0, t0, 15
	addiw a4, a4, -1
	addi a2, a2, -4
	bge a4, zero, label14
	j label6
.p2align 2
label187:
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label31
	addiw t0, t0, 15
	addiw a4, a4, -1
	addi a2, a2, -4
	bge a4, zero, label14
label6:
	lw a0, 232(sp)
	bne a0, zero, label8
	addi s0, s0, 4
	j label9
.p2align 2
label13:
	addi s0, s0, 4
	mv s1, a1
.p2align 2
label9:
	lw a0, 0(s0)
	jal putint
	li a0, 40
	addiw a1, s1, 1
	blt a1, a0, label13
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 392
	ret
label8:
	jal putint
	addi s0, s0, 4
	j label9
