.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -392
	li a1, 1
	li a4, 4
	li t5, 7
	addi a0, sp, 24
	addi a3, sp, 128
	slli a2, a1, 33
	sd ra, 0(sp)
	slli a1, a4, 32
	slli t0, a2, 2
	ori t1, a2, 1
	sd s0, 8(sp)
	sh1add a4, a2, a2
	addi a5, a1, 3
	ori t3, t0, 7
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
	slli t3, t5, 32
	sd t4, 96(sp)
	li t5, 9
	ori t4, a2, 4
	sd t2, 128(sp)
	addi t2, t3, 5
	sd t4, 136(sp)
	slli t3, t5, 32
	sd t2, 144(sp)
	addi t4, t3, 9
	srli t2, a5, 2
	ori t3, t0, 9
	sd t4, 152(sp)
	ori a5, t1, 4
	ori t0, a2, 2
	ori t4, a4, 7
	sd t2, 160(sp)
	ori a4, t2, 2
	sd t3, 168(sp)
	sd t4, 176(sp)
	sd a5, 184(sp)
	li a5, 39
	sd a4, 192(sp)
	li a4, 19
	sd t0, 200(sp)
	bge a4, zero, label10
label5:
	lw a0, 232(sp)
	beq a0, zero, label7
	jal putint
.p2align 2
label7:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 40
	addiw s1, s1, 1
	blt s1, a0, label7
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 392
	ret
.p2align 2
label10:
	sh2add t0, a4, a3
	li t1, 19
	lw a2, 0(t0)
	blt t1, zero, label122
.p2align 2
label14:
	sh2add t2, a5, s0
	sh2add t0, t1, a0
	lw t3, 0(t2)
	addiw t1, t1, -1
	lw t5, 0(t0)
	addiw t0, a5, -1
	mulw t4, a2, t5
	addw t2, t3, t4
	bgt t2, a1, label16
	sh2add t3, a5, s0
	mv a5, t0
	sw t2, 0(t3)
	bge t1, zero, label14
	j label295
.p2align 2
label16:
	sh2add t5, a5, s0
	lui a6, 419430
	sh2add t3, t0, s0
	sw t2, 0(t5)
	addiw t6, a6, 1639
	lw t4, 0(t3)
	mul a5, t2, t6
	srli a6, a5, 63
	srai t5, a5, 34
	mv a5, t0
	add t6, a6, t5
	addw t2, t4, t6
	sw t2, 0(t3)
	bge t1, zero, label14
	addiw a5, t0, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
.p2align 2
label295:
	addiw a5, a5, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
label122:
	addiw a5, a5, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
