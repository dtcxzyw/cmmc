.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -400
	li a0, 1
	li a4, 4
	li t5, 7
	addi a2, sp, 136
	addi a1, sp, 32
	sd ra, 0(sp)
	slli a3, a0, 33
	addi a2, a2, 76
	slli t0, a3, 2
	slli a0, a4, 32
	ori t1, a3, 1
	sd s0, 8(sp)
	ori t3, t0, 7
	sh1add a4, a3, a3
	addi a5, a0, 3
	addi s0, sp, 240
	ori t2, a4, 5
	li a0, 9
	sd s1, 16(sp)
	zext.w t4, a0
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
	slli t4, t5, 32
	sd t2, 136(sp)
	li t5, 9
	addi t2, t4, 5
	sd t3, 144(sp)
	slli t3, t5, 32
	sd t2, 152(sp)
	addi t4, t3, 9
	srli t2, a5, 2
	ori t3, t0, 9
	sd t4, 160(sp)
	ori a5, a4, 7
	ori t0, t1, 4
	ori a4, a3, 2
	sd t2, 168(sp)
	sd t3, 176(sp)
	sd a5, 184(sp)
	ori a5, t2, 2
	sd t0, 192(sp)
	li t0, 39
	sd a5, 200(sp)
	sd a4, 208(sp)
	li a4, 19
	bge a4, zero, label6
	j label28
.p2align 2
label380:
	addiw t0, t0, 15
	addiw a4, a4, -1
	addi a2, a2, -4
	blt a4, zero, label28
.p2align 2
label6:
	lw a5, 0(a2)
	sh2add a3, t0, s0
	li t1, 19
	lw t4, 0(a3)
	sh2add t2, t1, a1
	lw t6, 0(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label11
	sw t3, 0(a3)
	lw t4, -4(a3)
	lw t5, -4(t2)
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label14
	sw t3, -4(a3)
	lw t4, -8(a3)
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label17
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t6, -12(t2)
	addiw t2, t0, -4
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label20
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label24
	j label398
.p2align 2
label382:
	sw t3, 0(a3)
	lw t4, -4(a3)
	lw t5, -4(t2)
	mulw t6, a5, t5
	addw t3, t4, t6
	bgt t3, a0, label14
	sw t3, -4(a3)
	lw t4, -8(a3)
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label17
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t6, -12(t2)
	addiw t2, t0, -4
	mulw t5, a5, t6
	addw t3, t4, t5
	ble t3, a0, label400
.p2align 2
label20:
	sw t3, -12(a3)
	sh2add t4, t2, s0
	lui a6, 419430
	addiw t1, t1, -4
	lw t5, 0(t4)
	addiw a7, a6, 1639
	mul t6, t3, a7
	srli t3, t6, 63
	srai a6, t6, 34
	add s2, t3, a6
	addw a7, t5, s2
	sw a7, 0(t4)
	blt t1, zero, label380
.p2align 2
label24:
	addi a3, a3, -16
	mv t0, t2
	lw t4, 0(a3)
	sh2add t2, t1, a1
	lw t6, 0(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	ble t3, a0, label382
.p2align 2
label11:
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
	ble t3, a0, label146
.p2align 2
label14:
	sw t3, -4(a3)
	lui a7, 419430
	lw t5, -8(a3)
	addiw a6, a7, 1639
	mul t4, t3, a6
	srli a7, t4, 63
	srai t6, t4, 34
	add t3, a7, t6
	addw t4, t5, t3
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label17
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t6, -12(t2)
	addiw t2, t0, -4
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label20
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label24
	addiw t0, t0, 15
	addiw a4, a4, -1
	addi a2, a2, -4
	bge a4, zero, label6
	j label28
.p2align 2
label146:
	sw t3, -4(a3)
	lw t4, -8(a3)
	lw t6, -8(t2)
	mulw t5, a5, t6
	addw t3, t4, t5
	ble t3, a0, label387
.p2align 2
label17:
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
	bgt t3, a0, label20
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label24
	addiw t0, t0, 15
	addiw a4, a4, -1
	addi a2, a2, -4
	bge a4, zero, label6
	j label28
.p2align 2
label387:
	sw t3, -8(a3)
	lw t4, -12(a3)
	lw t6, -12(t2)
	addiw t2, t0, -4
	mulw t5, a5, t6
	addw t3, t4, t5
	bgt t3, a0, label20
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label24
.p2align 2
label398:
	addiw t0, t0, 15
	addiw a4, a4, -1
	addi a2, a2, -4
	bge a4, zero, label6
	j label28
.p2align 2
label400:
	sw t3, -12(a3)
	addiw t1, t1, -4
	bge t1, zero, label24
	addiw t0, t0, 15
	addiw a4, a4, -1
	addi a2, a2, -4
	bge a4, zero, label6
label28:
	lw a0, 240(sp)
	beq a0, zero, label202
	jal putint
	addi s0, s0, 4
	j label29
label202:
	addi s0, s0, 4
.p2align 2
label29:
	lw a0, 0(s0)
	jal putint
	li a0, 40
	addiw a1, s1, 1
	bge a1, a0, label32
	addi s0, s0, 4
	mv s1, a1
	j label29
label32:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 400
	ret
