.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -392
	li a1, 1
	li a4, 4
	li a5, 3
	addi a0, sp, 24
	addi a3, sp, 128
	sd ra, 0(sp)
	slli a2, a1, 33
	sd s0, 8(sp)
	slli a1, a4, 32
	ori t0, a2, 1
	addi s0, sp, 232
	sd s1, 16(sp)
	slli a4, a5, 33
	addi t1, a1, 3
	li s1, 1
	sd zero, 232(sp)
	slli a5, a2, 2
	ori t2, a4, 5
	li a1, 9
	sd zero, 240(sp)
	ori t3, a5, 7
	zext.w t4, a1
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
	sd t0, 24(sp)
	sd t1, 32(sp)
	sd t2, 40(sp)
	sd t3, 48(sp)
	sd t4, 56(sp)
	sd t0, 64(sp)
	srli t0, a4, 1
	sd t1, 72(sp)
	ori t1, a2, 4
	sd t2, 80(sp)
	ori t2, t0, 2
	sd t3, 88(sp)
	li t3, 7
	sd t4, 96(sp)
	li t4, 9
	sd t2, 128(sp)
	slli t2, t3, 32
	sd t1, 136(sp)
	slli t3, t4, 32
	addi t1, t2, 5
	li t4, 1
	addi t2, t3, 9
	sd t1, 144(sp)
	ori t3, a4, 7
	slli t1, t4, 32
	sd t2, 152(sp)
	ori a4, t1, 2
	ori t2, a5, 9
	sd t1, 160(sp)
	ori a5, t0, 4
	sd t2, 168(sp)
	ori t0, a2, 2
	sd t3, 176(sp)
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
	j label297
.p2align 2
label16:
	sh2add t5, a5, s0
	lui t6, 419430
	sh2add t3, t0, s0
	sw t2, 0(t5)
	addiw a6, t6, 1639
	lw t4, 0(t3)
	mul a5, t2, a6
	srli t6, a5, 63
	srai t5, a5, 34
	mv a5, t0
	add a6, t6, t5
	addw t2, t4, a6
	sw t2, 0(t3)
	bge t1, zero, label14
	addiw a5, t0, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
.p2align 2
label297:
	addiw a5, a5, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
label122:
	addiw a5, a5, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
