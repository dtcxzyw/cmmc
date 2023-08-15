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
	li t5, 9
	sd ra, 0(sp)
	addi a2, sp, 128
	addi a1, sp, 24
	slli a3, a0, 33
	sd s0, 8(sp)
	addi a2, a2, 76
	slli t0, a3, 2
	slli a0, a4, 32
	ori t1, a3, 1
	addi s0, sp, 232
	sd s1, 16(sp)
	ori t3, t0, 7
	sh1add a4, a3, a3
	addi a5, a0, 3
	li s1, 1
	ori t2, a4, 5
	li a0, 9
	sd zero, 232(sp)
	zext.w t4, a0
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
	ori t2, a3, 4
	sd t3, 88(sp)
	ori t3, t1, 2
	sd t4, 96(sp)
	li t4, 7
	sd t3, 128(sp)
	slli t3, t4, 32
	sd t2, 136(sp)
	addi t2, t3, 5
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
	sh2add a3, t0, s0
	lw a5, 0(a2)
	li t1, 19
	sh2add t2, t1, a1
	lw t4, 0(a3)
	lw t5, 0(t2)
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label35
	sw t3, 0(a3)
	lw t4, -4(a3)
	lw t6, -4(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label12
	sw t3, -4(a3)
	lw t4, -8(a3)
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label16
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t5, -12(t2)
	addiw t2, t0, -4
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label19
	j label393
.p2align 2
label12:
	sw t3, -4(a3)
	lui a7, 419430
	lw t5, -8(a3)
	addiw a6, a7, 1639
	mul t4, t3, a6
	srli a7, t4, 63
	srai t6, t4, 34
	add t3, a7, t6
	lw t6, -8(t2)
	addw t4, t5, t3
	mulw t5, a5, t6
	addw t3, t4, t5
	ble t3, a0, label381
.p2align 2
label16:
	sw t3, -8(a3)
	lui a6, 419430
	lw t5, -12(a3)
	addiw a7, a6, 1639
	mul t4, t3, a7
	srli a6, t4, 63
	srai t6, t4, 34
	add t3, a6, t6
	addw t4, t5, t3
	lw t5, -12(t2)
	addiw t2, t0, -4
	mulw t6, a5, t5
	addw t3, t4, t6
	ble t3, a0, label171
.p2align 2
label19:
	sw t3, -12(a3)
	lui a7, 419430
	lw t4, -16(a3)
	addiw a6, a7, 1639
	mul t5, t3, a6
	srli a7, t5, 63
	srai t6, t5, 34
	add a6, a7, t6
	addw t3, t4, a6
	sw t3, -16(a3)
	addiw t1, t1, -4
	blt t1, zero, label181
.p2align 2
label21:
	addi a3, a3, -16
	mv t0, t2
	lw t4, 0(a3)
	sh2add t2, t1, a1
	lw t5, 0(t2)
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label35
	sw t3, 0(a3)
	lw t4, -4(a3)
	lw t6, -4(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label12
	sw t3, -4(a3)
	lw t4, -8(a3)
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label16
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t5, -12(t2)
	addiw t2, t0, -4
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label19
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label21
	j label395
.p2align 2
label181:
	addiw a4, a4, -1
	addiw t0, t0, 15
	blt a4, zero, label24
.p2align 2
label23:
	addi a2, a2, -4
	sh2add a3, t0, s0
	li t1, 19
	lw a5, 0(a2)
	sh2add t2, t1, a1
	lw t4, 0(a3)
	lw t5, 0(t2)
	mulw t6, a5, t5
	addw t3, t4, t6
	ble t3, a0, label391
.p2align 2
label35:
	sw t3, 0(a3)
	lui a7, 419430
	lw t5, -4(a3)
	addiw a6, a7, 1639
	mul t4, t3, a6
	srli a7, t4, 63
	srai t6, t4, 34
	add t3, a7, t6
	lw t6, -4(t2)
	addw t4, t5, t3
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label12
	sw t3, -4(a3)
	lw t4, -8(a3)
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label16
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t5, -12(t2)
	addiw t2, t0, -4
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label19
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label21
label395:
	addiw a4, a4, -1
	addiw t0, t0, 15
	bge a4, zero, label23
label24:
	lw a0, 232(sp)
	beq a0, zero, label25
	jal putint
	addi s0, s0, 4
.p2align 2
label26:
	lw a0, 0(s0)
	jal putint
	li a0, 40
	addiw a1, s1, 1
	bge a1, a0, label30
	addi s0, s0, 4
	mv s1, a1
	j label26
.p2align 2
label381:
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t5, -12(t2)
	addiw t2, t0, -4
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label19
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label21
	addiw a4, a4, -1
	addiw t0, t0, 15
	bge a4, zero, label23
	j label24
.p2align 2
label171:
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label21
	addiw a4, a4, -1
	addiw t0, t0, 15
	bge a4, zero, label23
	j label24
.p2align 2
label391:
	sw t3, 0(a3)
	lw t4, -4(a3)
	lw t6, -4(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label12
	sw t3, -4(a3)
	lw t4, -8(a3)
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label16
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t5, -12(t2)
	addiw t2, t0, -4
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label19
label393:
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label21
	j label395
label30:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 392
	ret
label25:
	addi s0, s0, 4
	j label26
