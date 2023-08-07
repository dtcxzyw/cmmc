.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -392
	li a1, 1
	li a4, 4
	li t5, 9
	addi a0, sp, 24
	addi a2, sp, 128
	slli a3, a1, 33
	addi a2, a2, 76
	sd ra, 0(sp)
	slli t0, a3, 2
	slli a1, a4, 32
	ori t1, a3, 1
	sd s0, 8(sp)
	ori t3, t0, 7
	sh1add a4, a3, a3
	addi a5, a1, 3
	addi s0, sp, 232
	ori t2, a4, 5
	li a1, 9
	sd s1, 16(sp)
	zext.w t4, a1
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
	li t4, 7
	sd t2, 128(sp)
	slli t2, t4, 32
	sd t3, 136(sp)
	slli t4, t5, 32
	addi t3, t2, 5
	srli t2, a5, 2
	sd t3, 144(sp)
	ori a5, a4, 7
	addi t3, t4, 9
	ori a4, a3, 2
	sd t3, 152(sp)
	li a3, 19
	ori t3, t0, 9
	sd t2, 160(sp)
	ori t0, t1, 4
	sd t3, 168(sp)
	sd a5, 176(sp)
	ori a5, t2, 2
	sd t0, 184(sp)
	li t0, 39
	sd a5, 192(sp)
	sd a4, 200(sp)
	blt a3, zero, label28
.p2align 2
label6:
	lw a4, 0(a2)
	sh2add a5, t0, s0
	li t1, 19
	lw t3, 0(a5)
	sh2add t5, t1, a0
	lw t6, 0(t5)
	mulw t4, a4, t6
	addw t2, t3, t4
	bgt t2, a1, label27
	sw t2, 0(a5)
	lw t4, -4(a5)
	addiw t2, t1, -1
	sh2add t3, t2, a0
	lw t5, 0(t3)
	addiw t3, t0, -2
	mulw t6, a4, t5
	addw t2, t4, t6
	bgt t2, a1, label24
	j label145
.p2align 2
label408:
	addiw t0, t0, 15
	addiw a3, a3, -1
	addi a2, a2, -4
	bge a3, zero, label6
label28:
	lw a0, 232(sp)
	bne a0, zero, label35
	addi s0, s0, 4
.p2align 2
label30:
	lw a0, 0(s0)
	jal putint
	li a0, 40
	addiw a1, s1, 1
	bge a1, a0, label34
	addi s0, s0, 4
	mv s1, a1
	j label30
.p2align 2
label156:
	sh2add a6, t3, s0
	sh2add t6, t2, s0
	sw t4, 0(a6)
	addiw t4, t1, -3
	lw t5, 0(t6)
	sh2add t3, t4, a0
	lw a6, 0(t3)
	addiw t3, t0, -4
	mulw t6, a4, a6
	addw t4, t5, t6
	bgt t4, a1, label21
	j label415
.p2align 2
label15:
	sh2add t6, t3, s0
	lui a6, 419430
	sh2add t5, t2, s0
	sw t4, 0(t6)
	addiw a7, a6, 1639
	lw t3, 0(t5)
	mul t5, t4, a7
	srli a6, t5, 63
	srai t6, t5, 34
	add t4, a6, t6
	addw t5, t3, t4
	addiw t4, t1, -3
	sh2add t3, t4, a0
	lw a6, 0(t3)
	addiw t3, t0, -4
	mulw t6, a4, a6
	addw t4, t5, t6
	bgt t4, a1, label21
	j label174
.p2align 2
label20:
	addi a5, a5, -16
	mv t0, t3
	sh2add t5, t1, a0
	lw t3, 0(a5)
	lw t6, 0(t5)
	mulw t4, a4, t6
	addw t2, t3, t4
	bgt t2, a1, label27
	sw t2, 0(a5)
	addiw t2, t1, -1
	lw t4, -4(a5)
	sh2add t3, t2, a0
	lw t5, 0(t3)
	addiw t3, t0, -2
	mulw t6, a4, t5
	addw t2, t4, t6
	bgt t2, a1, label24
	j label417
.p2align 2
label21:
	sh2add t6, t2, s0
	lui a6, 419430
	addiw t1, t1, -4
	sh2add t5, t3, s0
	sw t4, 0(t6)
	addiw a7, a6, 1639
	lw t2, 0(t5)
	mul t6, t4, a7
	srli a7, t6, 63
	srai a6, t6, 34
	add t4, a7, a6
	addw t6, t2, t4
	sw t6, 0(t5)
	bge t1, zero, label20
	j label408
.p2align 2
label24:
	sw t2, -4(a5)
	sh2add t5, t3, s0
	lui a6, 419430
	lw t4, 0(t5)
	addiw a7, a6, 1639
	mul t5, t2, a7
	srli a6, t5, 63
	srai t6, t5, 34
	add t2, a6, t6
	addw t5, t4, t2
	addiw t2, t1, -2
	sh2add a7, t2, a0
	addiw t2, t0, -3
	lw t6, 0(a7)
	mulw a6, a4, t6
	addw t4, t5, a6
	bgt t4, a1, label15
	j label156
.p2align 2
label174:
	sh2add t6, t2, s0
	sw t4, 0(t6)
	addiw t1, t1, -4
	bge t1, zero, label20
	addiw t0, t0, 15
	addiw a3, a3, -1
	addi a2, a2, -4
	bge a3, zero, label6
	j label28
.p2align 2
label27:
	sw t2, 0(a5)
	lui t6, 419430
	lw t3, -4(a5)
	addiw a6, t6, 1639
	mul t4, t2, a6
	srli t6, t4, 63
	srai t5, t4, 34
	add t2, t6, t5
	addw t4, t3, t2
	addiw t2, t1, -1
	sh2add t3, t2, a0
	lw t5, 0(t3)
	addiw t3, t0, -2
	mulw t6, a4, t5
	addw t2, t4, t6
	bgt t2, a1, label24
	sw t2, -4(a5)
	sh2add t4, t3, s0
	addiw t2, t1, -2
	lw t5, 0(t4)
	sh2add a7, t2, a0
	addiw t2, t0, -3
	lw t6, 0(a7)
	mulw a6, a4, t6
	addw t4, t5, a6
	bgt t4, a1, label15
	j label156
.p2align 2
label417:
	sw t2, -4(a5)
	sh2add t4, t3, s0
	addiw t2, t1, -2
	lw t5, 0(t4)
	sh2add a7, t2, a0
	addiw t2, t0, -3
	lw t6, 0(a7)
	mulw a6, a4, t6
	addw t4, t5, a6
	bgt t4, a1, label15
	j label156
.p2align 2
label145:
	sw t2, -4(a5)
	sh2add t4, t3, s0
	lw t5, 0(t4)
	addiw t2, t1, -2
	sh2add a7, t2, a0
	addiw t2, t0, -3
	lw t6, 0(a7)
	mulw a6, a4, t6
	addw t4, t5, a6
	bgt t4, a1, label15
	j label156
.p2align 2
label415:
	sh2add t6, t2, s0
	addiw t1, t1, -4
	sw t4, 0(t6)
	bge t1, zero, label20
	addiw t0, t0, 15
	addiw a3, a3, -1
	addi a2, a2, -4
	bge a3, zero, label6
	j label28
label34:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 392
	ret
label35:
	jal putint
	addi s0, s0, 4
	j label30
