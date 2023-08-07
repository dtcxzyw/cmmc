.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
p:
	.zero	1024
.text
.p2align 2
.globl main
main:
	addi sp, sp, -152
	li a1, 7
	li a2, 1
	li t0, 9
	sd ra, 0(sp)
	slli a3, a1, 32
	sd s0, 8(sp)
	ori a0, a3, 8
	addi s0, sp, 96
	sd s2, 16(sp)
	addi s2, sp, 32
	sd s1, 24(sp)
	li s1, 1
	sd a0, 32(sp)
	slli a0, a2, 32
	ori a2, a3, 2
	ori a1, a0, 4
	sd a1, 40(sp)
	sh1add a1, a0, a0
	sd a2, 48(sp)
	ori a4, a1, 9
	slli a2, a0, 3
	sd a0, 56(sp)
	ori a5, a2, 4
	sd a4, 64(sp)
	ori a4, a3, 3
	sd a5, 72(sp)
	slli a3, t0, 32
	sd a4, 80(sp)
	addi a5, a3, 3
	ori a4, a0, 7
	li a3, 2
	sw zero, 88(sp)
	sd a5, 96(sp)
	slli a5, a3, 32
	sd a4, 104(sp)
	ori a3, a1, 4
	addi a4, a5, 4
	li a1, 5
	sd a4, 112(sp)
	ori a4, a2, 6
	sd a3, 120(sp)
	sd a4, 128(sp)
	sd a0, 136(sp)
	li a0, 43
	sw a1, 144(sp)
	jal putint
	li a0, 10
	jal putch
	mv a3, zero
pcrel457:
	auipc a1, %pcrel_hi(p)
	addi a2, a1, %pcrel_lo(pcrel457)
	li a1, 13
	mv a0, a2
.p2align 2
label2:
	sd zero, 0(a0)
	addi a3, a3, 64
	li a4, 256
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	sd zero, 64(a0)
	sd zero, 72(a0)
	sd zero, 80(a0)
	sd zero, 88(a0)
	sd zero, 96(a0)
	sd zero, 104(a0)
	sd zero, 112(a0)
	sd zero, 120(a0)
	sd zero, 128(a0)
	sd zero, 136(a0)
	sd zero, 144(a0)
	sd zero, 152(a0)
	sd zero, 160(a0)
	sd zero, 168(a0)
	sd zero, 176(a0)
	sd zero, 184(a0)
	sd zero, 192(a0)
	sd zero, 200(a0)
	sd zero, 208(a0)
	sd zero, 216(a0)
	sd zero, 224(a0)
	sd zero, 232(a0)
	sd zero, 240(a0)
	sd zero, 248(a0)
	bge a3, a4, label5
	addi a0, a0, 256
	j label2
label5:
	addi a0, a2, 64
	mv a3, s1
	li a4, 16
	bge s1, a4, label9
.p2align 2
label10:
	addiw a5, a3, -1
	addi t0, a0, 4
	slli t1, a5, 6
	add a4, a2, t1
	mv t1, s1
	addiw t3, s1, -1
	sh2add t5, a5, s2
	sh2add t4, t3, s0
	lw t2, 0(t5)
	lw t6, 0(t4)
	beq t2, t6, label29
	sh2add t4, t3, a0
	sh2add t6, s1, a4
	lw t5, 0(t6)
	lw t3, 0(t4)
	max a6, t5, t3
	sw a6, 0(t0)
	sh2add t5, s1, s0
	addiw t4, s1, 1
	lw t3, 0(t5)
	beq t2, t3, label15
	j label159
.p2align 2
label22:
	sh2add t0, t4, a4
	sh2add a4, t1, a0
	lw t2, 0(t0)
	addi a0, a0, 64
	addi a5, t2, 1
	sw a5, 0(a4)
	li a4, 16
	blt a3, a4, label10
	j label9
.p2align 2
label429:
	sh2add t6, t4, a4
	addiw t1, t1, 4
	sh2add a7, t3, a0
	lw t5, 0(t6)
	lw a6, 0(a7)
	sh2add a7, t4, a0
	max t6, t5, a6
	sw t6, 0(a7)
	blt t1, a1, label23
	sh2add t0, t4, s0
	addiw a3, a3, 1
	lw a5, 0(t0)
	beq t2, a5, label22
	sh2add t2, t1, a4
	sh2add t3, t4, a0
	lw a5, 0(t2)
	sh2add t2, t1, a0
	lw t0, 0(t3)
	addi a0, a0, 64
	max a4, a5, t0
	sw a4, 0(t2)
	li a4, 16
	blt a3, a4, label10
	j label9
.p2align 2
label15:
	sh2add t5, t1, a4
	sh2add a6, t4, a0
	lw t6, 0(t5)
	addi t3, t6, 1
	sw t3, 0(a6)
	sh2add t6, t4, s0
	addiw t3, t1, 2
	lw t5, 0(t6)
	beq t2, t5, label26
	j label17
.p2align 2
label23:
	addi t0, t0, 16
	addiw t3, t1, -1
	sh2add t5, a5, s2
	sh2add t4, t3, s0
	lw t2, 0(t5)
	lw t6, 0(t4)
	beq t2, t6, label29
	j label426
.p2align 2
label25:
	sh2add a6, t3, a4
	addiw t1, t1, 4
	sh2add t3, t4, a0
	lw t6, 0(a6)
	addi t5, t6, 1
	sw t5, 0(t3)
	blt t1, a1, label23
	j label428
.p2align 2
label26:
	sh2add a7, t4, a4
	sh2add a6, t3, a0
	addiw t4, t1, 3
	lw t6, 0(a7)
	addi t5, t6, 1
	sh2add t6, t3, s0
	sw t5, 0(a6)
	lw t5, 0(t6)
	beq t2, t5, label25
	j label429
.p2align 2
label29:
	sh2add t4, t3, a4
	lw t5, 0(t4)
	addiw t4, t1, 1
	addi t6, t5, 1
	sh2add t5, t1, s0
	sw t6, 0(t0)
	lw t3, 0(t5)
	beq t2, t3, label15
	sh2add t6, t4, a4
	lw t3, 0(t6)
	sh2add t6, t4, a0
	lw a6, 0(t0)
	max t5, t3, a6
	addiw t3, t1, 2
	sw t5, 0(t6)
	sh2add t6, t4, s0
	lw t5, 0(t6)
	beq t2, t5, label26
	sh2add a6, t3, a4
	sh2add a7, t4, a0
	lw t5, 0(a6)
	sh2add t4, t3, a0
	lw t6, 0(a7)
	max a6, t5, t6
	sh2add t6, t3, s0
	sw a6, 0(t4)
	addiw t4, t1, 3
	lw t5, 0(t6)
	beq t2, t5, label25
	sh2add t6, t4, a4
	addiw t1, t1, 4
	sh2add a7, t3, a0
	lw t5, 0(t6)
	lw a6, 0(a7)
	sh2add a7, t4, a0
	max t6, t5, a6
	sw t6, 0(a7)
	blt t1, a1, label23
	sh2add t0, t4, s0
	addiw a3, a3, 1
	lw a5, 0(t0)
	beq t2, a5, label22
	j label21
.p2align 2
label17:
	sh2add a6, t3, a4
	sh2add a7, t4, a0
	lw t5, 0(a6)
	sh2add t4, t3, a0
	lw t6, 0(a7)
	max a6, t5, t6
	sw a6, 0(t4)
	sh2add t6, t3, s0
	addiw t4, t1, 3
	lw t5, 0(t6)
	beq t2, t5, label25
	sh2add t6, t4, a4
	sh2add a7, t3, a0
	lw t5, 0(t6)
	lw a6, 0(a7)
	sh2add a7, t4, a0
	max t6, t5, a6
	sw t6, 0(a7)
	addiw t1, t1, 4
	blt t1, a1, label23
	sh2add t0, t4, s0
	addiw a3, a3, 1
	lw a5, 0(t0)
	beq t2, a5, label22
.p2align 2
label21:
	sh2add t2, t1, a4
	sh2add t3, t4, a0
	lw a5, 0(t2)
	sh2add t2, t1, a0
	lw t0, 0(t3)
	addi a0, a0, 64
	max a4, a5, t0
	sw a4, 0(t2)
	li a4, 16
	blt a3, a4, label10
	j label9
.p2align 2
label433:
	sh2add a6, t3, a4
	sh2add a7, t4, a0
	lw t5, 0(a6)
	sh2add t4, t3, a0
	lw t6, 0(a7)
	max a6, t5, t6
	sh2add t6, t3, s0
	sw a6, 0(t4)
	addiw t4, t1, 3
	lw t5, 0(t6)
	beq t2, t5, label25
	j label439
.p2align 2
label426:
	sh2add t4, t3, a0
	sh2add t6, t1, a4
	lw t5, 0(t6)
	lw t3, 0(t4)
	addiw t4, t1, 1
	max a6, t5, t3
	sh2add t5, t1, s0
	sw a6, 0(t0)
	lw t3, 0(t5)
	beq t2, t3, label15
	sh2add t6, t4, a4
	lw t3, 0(t6)
	sh2add t6, t4, a0
	lw a6, 0(t0)
	max t5, t3, a6
	addiw t3, t1, 2
	sw t5, 0(t6)
	sh2add t6, t4, s0
	lw t5, 0(t6)
	beq t2, t5, label26
	j label433
.p2align 2
label428:
	sh2add t0, t4, s0
	addiw a3, a3, 1
	lw a5, 0(t0)
	beq t2, a5, label22
	sh2add t2, t1, a4
	sh2add t3, t4, a0
	lw a5, 0(t2)
	sh2add t2, t1, a0
	lw t0, 0(t3)
	addi a0, a0, 64
	max a4, a5, t0
	sw a4, 0(t2)
	li a4, 16
	blt a3, a4, label10
	j label9
.p2align 2
label439:
	sh2add t6, t4, a4
	addiw t1, t1, 4
	sh2add a7, t3, a0
	lw t5, 0(t6)
	lw a6, 0(a7)
	sh2add a7, t4, a0
	max t6, t5, a6
	sw t6, 0(a7)
	blt t1, a1, label23
	sh2add t0, t4, s0
	addiw a3, a3, 1
	lw a5, 0(t0)
	beq t2, a5, label22
	j label21
label9:
	lw a0, 1012(a2)
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 152
	ret
.p2align 2
label159:
	sh2add t6, t4, a4
	lw t3, 0(t6)
	sh2add t6, t4, a0
	lw a6, 0(t0)
	max t5, t3, a6
	addiw t3, t1, 2
	sw t5, 0(t6)
	sh2add t6, t4, s0
	lw t5, 0(t6)
	beq t2, t5, label26
	j label433
