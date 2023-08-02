.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -392
	li a2, 8589934592
	li t1, 17179869187
	li a4, 25769803776
	li a1, 9
	addi a0, sp, 24
	sd ra, 0(sp)
	addi a3, sp, 128
	slli a5, a2, 2
	ori t0, a2, 1
	ori t2, a4, 5
	add.uw t4, a1, zero
	sd s0, 8(sp)
	ori t3, a5, 7
	addi s0, sp, 232
	ori a5, a5, 9
	sd s1, 16(sp)
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
	sd t0, 24(sp)
	sd t1, 32(sp)
	sd t2, 40(sp)
	sd t3, 48(sp)
	sd t4, 56(sp)
	sd t0, 64(sp)
	srli t0, a4, 1
	sd t1, 72(sp)
	ori a4, a4, 7
	ori t1, t0, 2
	sd t2, 80(sp)
	ori t2, a2, 4
	sd t3, 88(sp)
	ori a2, a2, 2
	sd t4, 96(sp)
	sd t1, 128(sp)
	li t1, 30064771077
	sd t2, 136(sp)
	li t2, 38654705673
	sd t1, 144(sp)
	li t1, 4294967296
	sd t2, 152(sp)
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
	lw a2, 0(t0)
	li t0, 19
	blt t0, zero, label122
.p2align 2
label14:
	sh2add t2, a5, s0
	sh2add t5, t0, a0
	lw t1, 0(t2)
	addiw t0, t0, -1
	lw t4, 0(t5)
	mulw t3, a2, t4
	addw t2, t1, t3
	addiw t1, a5, -1
	bgt t2, a1, label16
	sh2add t3, a5, s0
	mv a5, t1
	sw t2, 0(t3)
	bge t0, zero, label14
	j label287
.p2align 2
label16:
	sh2add t3, a5, s0
	li t5, 1717986919
	sh2add a5, t1, s0
	sw t2, 0(t3)
	lw t3, 0(a5)
	mul t2, t2, t5
	srli t6, t2, 63
	srai t4, t2, 34
	add t5, t6, t4
	addw t2, t3, t5
	sw t2, 0(a5)
	mv a5, t1
	bge t0, zero, label14
	addiw a5, t1, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
.p2align 2
label287:
	addiw a5, a5, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
label122:
	addiw a5, a5, 19
	addiw a4, a4, -1
	bge a4, zero, label10
	j label5
