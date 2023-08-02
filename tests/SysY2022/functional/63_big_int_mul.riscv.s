.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -400
	li a0, 1
	li a3, 4
	li t5, 7
	addi a2, sp, 32
	addi a1, sp, 136
	sd ra, 0(sp)
	slli a4, a0, 33
	sd s0, 8(sp)
	slli t0, a4, 2
	slli a0, a3, 32
	ori t1, a4, 1
	addi s0, sp, 240
	ori t3, t0, 7
	sh1add a3, a4, a4
	addi a5, a0, 3
	sd s1, 16(sp)
	ori t2, a3, 5
	li a0, 9
	li s1, 1
	sd s2, 24(sp)
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
	sd zero, 392(sp)
	sd t1, 32(sp)
	sd a5, 40(sp)
	sd t2, 48(sp)
	sd t3, 56(sp)
	sd t4, 64(sp)
	sd t1, 72(sp)
	srli t1, a3, 1
	sd a5, 80(sp)
	sd t2, 88(sp)
	ori t2, t1, 2
	sd t3, 96(sp)
	ori t3, a4, 4
	sd t4, 104(sp)
	sd t2, 136(sp)
	slli t2, t5, 32
	sd t3, 144(sp)
	li t5, 9
	addi t4, t2, 5
	slli t3, t5, 32
	srli t2, a5, 2
	sd t4, 152(sp)
	ori a5, a3, 7
	addi t4, t3, 9
	addi a3, a1, 76
	ori t3, t0, 9
	sd t4, 160(sp)
	ori t0, t1, 4
	sd t2, 168(sp)
	li t1, 39
	sd t3, 176(sp)
	sd a5, 184(sp)
	ori a5, t2, 2
	sd t0, 192(sp)
	ori t0, a4, 2
	sd a5, 200(sp)
	li a4, 19
	sd t0, 208(sp)
	blt a4, zero, label6
.p2align 2
label14:
	lw a1, 0(a3)
	sh2add t0, t1, s0
	addi a5, a2, 76
	li t2, 19
	blt t2, zero, label131
.p2align 2
label20:
	lw t4, 0(t0)
	addiw t1, t1, -1
	addiw t2, t2, -1
	lw t5, 0(a5)
	mulw t6, a1, t5
	addw t3, t4, t6
	bgt t3, a0, label22
	sw t3, 0(t0)
	addi a5, a5, -4
	addi t0, t0, -4
	bge t2, zero, label20
	j label297
.p2align 2
label22:
	sw t3, 0(t0)
	sh2add t4, t1, s0
	lui a6, 419430
	addi a5, a5, -4
	addi t0, t0, -4
	addiw a7, a6, 1639
	lw t5, 0(t4)
	mul t6, t3, a7
	srli s2, t6, 63
	srai a6, t6, 34
	add t3, s2, a6
	addw a7, t5, t3
	sw a7, 0(t4)
	bge t2, zero, label20
	addiw t1, t1, 19
	addiw a4, a4, -1
	addi a3, a3, -4
	bge a4, zero, label14
label6:
	lw a0, 240(sp)
	bne a0, zero, label7
	addi s0, s0, 4
	j label8
.p2align 2
label297:
	addiw t1, t1, 19
	addiw a4, a4, -1
	addi a3, a3, -4
	bge a4, zero, label14
	j label6
label7:
	jal putint
	addi s0, s0, 4
.p2align 2
label8:
	lw a0, 0(s0)
	jal putint
	li a0, 40
	addiw a1, s1, 1
	bge a1, a0, label12
	addi s0, s0, 4
	mv s1, a1
	j label8
label12:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 400
	ret
label131:
	addiw t1, t1, 19
	addiw a4, a4, -1
	addi a3, a3, -4
	bge a4, zero, label14
	j label6
