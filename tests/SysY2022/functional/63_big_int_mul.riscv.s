.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -392
	li a1, 1
	li a4, 4
	addi a0, sp, 24
	addi a3, sp, 128
	slli a2, a1, 33
	sd ra, 0(sp)
	slli a1, a4, 32
	slli a5, a2, 2
	ori t0, a2, 1
	sd s0, 8(sp)
	addi t1, a1, 3
	ori t3, a5, 7
	addi s0, sp, 232
	sd s1, 16(sp)
	li a1, 3
	ori a5, a5, 9
	li s1, 1
	sd zero, 232(sp)
	slli a4, a1, 33
	sd zero, 240(sp)
	li a1, 9
	ori t2, a4, 5
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
	ori a4, a4, 7
	ori t1, a2, 4
	sd t2, 80(sp)
	ori a2, a2, 2
	ori t2, t0, 2
	sd t3, 88(sp)
	li t3, 7
	sd t4, 96(sp)
	sd t2, 128(sp)
	sd t1, 136(sp)
	slli t1, t3, 32
	li t3, 9
	addi t2, t1, 5
	sd t2, 144(sp)
	slli t2, t3, 32
	addi t1, t2, 9
	li t2, 1
	sd t1, 152(sp)
	slli t1, t2, 32
	sd t1, 160(sp)
	sd a5, 168(sp)
	ori a5, t0, 4
	sd a4, 176(sp)
	ori a4, t1, 2
	sd a5, 184(sp)
	li a5, 39
	sd a4, 192(sp)
	li a4, 19
	sd a2, 200(sp)
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
	sh2add t3, a5, s0
	sh2add t2, t1, a0
	lw t0, 0(t3)
	addiw t1, t1, -1
	lw t4, 0(t2)
	mulw t3, a2, t4
	addw t2, t0, t3
	addiw t0, a5, -1
	bgt t2, a1, label16
	sh2add t3, a5, s0
	mv a5, t0
	sw t2, 0(t3)
	bge t1, zero, label14
	j label297
.p2align 2
label16:
	sh2add t3, a5, s0
	lui t4, 419430
	sh2add a5, t0, s0
	sw t2, 0(t3)
	addiw t5, t4, 1639
	lw t3, 0(a5)
	mul t2, t2, t5
	srli t5, t2, 63
	srai t4, t2, 34
	add t6, t5, t4
	addw t2, t3, t6
	sw t2, 0(a5)
	mv a5, t0
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
