.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -400
	li a1, 1
	li a4, 4
	li t5, 7
	addi a0, sp, 32
	addi a2, sp, 136
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
	addi s0, sp, 240
	ori t2, a4, 5
	li a1, 9
	sd s1, 16(sp)
	zext.w t4, a1
	li s1, 1
	sd s2, 24(sp)
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
	sd zero, 392(sp)
	sd t1, 32(sp)
	sd a5, 40(sp)
	sd t2, 48(sp)
	sd t3, 56(sp)
	sd t4, 64(sp)
	sd t1, 72(sp)
	srli t1, a4, 1
	sd a5, 80(sp)
	sd t2, 88(sp)
	ori t2, t1, 2
	sd t3, 96(sp)
	ori t3, a3, 4
	sd t4, 104(sp)
	sd t2, 136(sp)
	slli t2, t5, 32
	sd t3, 144(sp)
	li t5, 9
	addi t4, t2, 5
	slli t3, t5, 32
	srli t2, a5, 2
	sd t4, 152(sp)
	ori a5, a4, 7
	addi t4, t3, 9
	ori a4, t2, 2
	ori t3, t0, 9
	sd t4, 160(sp)
	ori t0, t1, 4
	sd t2, 168(sp)
	sd t3, 176(sp)
	sd a5, 184(sp)
	ori a5, a3, 2
	sd t0, 192(sp)
	li a3, 19
	li t0, 39
	sd a4, 200(sp)
	sd a5, 208(sp)
	bge a3, zero, label14
label6:
	lw a0, 240(sp)
	bne a0, zero, label13
	addi s0, s0, 4
	j label8
.p2align 2
label14:
	lw a4, 0(a2)
	sh2add a5, t0, s0
	li t1, 19
	lw t4, 0(a5)
	sh2add t2, t1, a0
	lw t6, 0(t2)
	addiw t2, t0, -1
	mulw t5, a4, t6
	addw t3, t4, t5
	bgt t3, a1, label22
	sw t3, 0(a5)
	addiw t1, t1, -1
	blt t1, zero, label142
.p2align 2
label20:
	addi a5, a5, -4
	mv t0, t2
	lw t4, 0(a5)
	sh2add t2, t1, a0
	lw t6, 0(t2)
	addiw t2, t0, -1
	mulw t5, a4, t6
	addw t3, t4, t5
	bgt t3, a1, label22
	sw t3, 0(a5)
	addiw t1, t1, -1
	bge t1, zero, label20
	j label302
.p2align 2
label22:
	sw t3, 0(a5)
	sh2add t4, t2, s0
	lui a6, 419430
	addiw t1, t1, -1
	lw t5, 0(t4)
	addiw a7, a6, 1639
	mul t6, t3, a7
	srli t3, t6, 63
	srai a6, t6, 34
	add s2, t3, a6
	addw a7, t5, s2
	sw a7, 0(t4)
	bge t1, zero, label20
	addiw t0, t0, 18
	addiw a3, a3, -1
	addi a2, a2, -4
	bge a3, zero, label14
	j label6
.p2align 2
label8:
	lw a0, 0(s0)
	jal putint
	li a0, 40
	addiw a1, s1, 1
	bge a1, a0, label11
	addi s0, s0, 4
	mv s1, a1
	j label8
label13:
	jal putint
	addi s0, s0, 4
	j label8
label11:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 400
	ret
.p2align 2
label302:
	addiw t0, t0, 18
	addiw a3, a3, -1
	addi a2, a2, -4
	bge a3, zero, label14
	j label6
label142:
	addiw t0, t0, 18
	addiw a3, a3, -1
	addi a2, a2, -4
	bge a3, zero, label14
	j label6
