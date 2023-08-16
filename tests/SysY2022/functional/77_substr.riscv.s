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
	# stack usage: CalleeArg[0] Local[112] RegSpill[0] CalleeSaved[32]
	addi sp, sp, -152
	li a1, 7
	li a2, 1
	li t0, 9
	sd ra, 0(sp)
	slli a3, a1, 32
	sd s1, 8(sp)
	ori a0, a3, 8
	addi s1, sp, 96
	sd s2, 16(sp)
	addi s2, sp, 32
	sd s0, 24(sp)
	li s0, 1
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
pcrel421:
	auipc a1, %pcrel_hi(p)
	addi a0, a1, %pcrel_lo(pcrel421)
	li a1, 13
	mv a2, a0
.p2align 2
label2:
	sd zero, 0(a2)
	addiw a3, a3, 64
	li a4, 256
	sd zero, 8(a2)
	sd zero, 16(a2)
	sd zero, 24(a2)
	sd zero, 32(a2)
	sd zero, 40(a2)
	sd zero, 48(a2)
	sd zero, 56(a2)
	sd zero, 64(a2)
	sd zero, 72(a2)
	sd zero, 80(a2)
	sd zero, 88(a2)
	sd zero, 96(a2)
	sd zero, 104(a2)
	sd zero, 112(a2)
	sd zero, 120(a2)
	sd zero, 128(a2)
	sd zero, 136(a2)
	sd zero, 144(a2)
	sd zero, 152(a2)
	sd zero, 160(a2)
	sd zero, 168(a2)
	sd zero, 176(a2)
	sd zero, 184(a2)
	sd zero, 192(a2)
	sd zero, 200(a2)
	sd zero, 208(a2)
	sd zero, 216(a2)
	sd zero, 224(a2)
	sd zero, 232(a2)
	sd zero, 240(a2)
	sd zero, 248(a2)
	bge a3, a4, label132
	addi a2, a2, 256
	j label2
label132:
	addi a2, s2, 4
	mv a3, s0
	slli t1, s0, 6
	addi a4, s1, 4
	add a5, a0, t1
	mv t1, s0
	addi t0, a5, -64
	lw t2, -4(a2)
	sh2add t3, s0, a5
	sh2add t4, s0, t0
	lw t5, -4(a4)
	beq t2, t5, label13
	sh2add a7, s0, t0
	sh2add t5, s0, a5
	lw t6, 0(a7)
	lw a6, -4(t5)
	max a7, t6, a6
	sw a7, 0(t5)
	lw t5, 0(a4)
	beq t2, t5, label15
	lw t5, 4(t4)
	sh2add t6, s0, a5
	lw a7, 0(t6)
	max a6, t5, a7
	sw a6, 4(t3)
	lw t5, 4(a4)
	beq t2, t5, label17
	j label393
.p2align 2
label386:
	lw a5, 12(a4)
	bne t2, a5, label396
.p2align 2
label23:
	lw a4, 12(t4)
	addiw a3, a3, 1
	addi a5, a4, 1
	li a4, 16
	sw a5, 16(t3)
	bge a3, a4, label26
.p2align 2
label27:
	addi a2, a2, 4
	slli t1, a3, 6
	addi a4, s1, 4
	add a5, a0, t1
	lw t2, -4(a2)
	mv t1, s0
	sh2add t3, s0, a5
	addi t0, a5, -64
	lw t5, -4(a4)
	sh2add t4, s0, t0
	bne t2, t5, label398
.p2align 2
label13:
	lw t5, -4(t4)
	sh2add a6, t1, a5
	addi t6, t5, 1
	sw t6, 0(a6)
	lw t5, 0(a4)
	beq t2, t5, label15
	lw t5, 4(t4)
	sh2add t6, t1, a5
	lw a7, 0(t6)
	max a6, t5, a7
	sw a6, 4(t3)
	lw t5, 4(a4)
	bne t2, t5, label393
.p2align 2
label17:
	lw t5, 4(t4)
	addi t6, t5, 1
	sw t6, 8(t3)
	lw t5, 8(a4)
	beq t2, t5, label19
	lw t5, 12(t4)
	addiw t1, t1, 4
	lw t6, 8(t3)
	max a6, t5, t6
	sw a6, 12(t3)
	blt t1, a1, label28
	lw a5, 12(a4)
	beq t2, a5, label23
label403:
	lw a4, 16(t4)
	addiw a3, a3, 1
	lw a5, 12(t3)
	max t0, a4, a5
	li a4, 16
	sw t0, 16(t3)
	blt a3, a4, label27
	j label26
.p2align 2
label398:
	sh2add a7, t1, t0
	sh2add t5, t1, a5
	lw t6, 0(a7)
	lw a6, -4(t5)
	max a7, t6, a6
	sw a7, 0(t5)
	lw t5, 0(a4)
	beq t2, t5, label15
	lw t5, 4(t4)
	sh2add t6, t1, a5
	lw a7, 0(t6)
	max a6, t5, a7
	sw a6, 4(t3)
	lw t5, 4(a4)
	beq t2, t5, label17
.p2align 2
label393:
	lw t5, 8(t4)
	lw a6, 4(t3)
	max t6, t5, a6
	sw t6, 8(t3)
	lw t5, 8(a4)
	bne t2, t5, label401
.p2align 2
label19:
	lw t5, 8(t4)
	addiw t1, t1, 4
	addi t6, t5, 1
	sw t6, 12(t3)
	bge t1, a1, label386
.p2align 2
label28:
	addi a4, a4, 16
	sh2add t3, t1, a5
	sh2add t4, t1, t0
	lw t2, -4(a2)
	lw t5, -4(a4)
	beq t2, t5, label13
	sh2add a7, t1, t0
	sh2add t5, t1, a5
	lw t6, 0(a7)
	lw a6, -4(t5)
	max a7, t6, a6
	sw a7, 0(t5)
	lw t5, 0(a4)
	bne t2, t5, label399
.p2align 2
label15:
	sh2add a6, t1, t0
	lw t5, 0(a6)
	addi t6, t5, 1
	sw t6, 4(t3)
	lw t5, 4(a4)
	beq t2, t5, label17
	lw t5, 8(t4)
	lw a6, 4(t3)
	max t6, t5, a6
	sw t6, 8(t3)
	lw t5, 8(a4)
	beq t2, t5, label19
	lw t5, 12(t4)
	addiw t1, t1, 4
	lw t6, 8(t3)
	max a6, t5, t6
	sw a6, 12(t3)
	blt t1, a1, label28
	j label402
.p2align 2
label399:
	lw t5, 4(t4)
	sh2add t6, t1, a5
	lw a7, 0(t6)
	max a6, t5, a7
	sw a6, 4(t3)
	lw t5, 4(a4)
	beq t2, t5, label17
	lw t5, 8(t4)
	lw a6, 4(t3)
	max t6, t5, a6
	sw t6, 8(t3)
	lw t5, 8(a4)
	beq t2, t5, label19
.p2align 2
label401:
	lw t5, 12(t4)
	addiw t1, t1, 4
	lw t6, 8(t3)
	max a6, t5, t6
	sw a6, 12(t3)
	blt t1, a1, label28
label402:
	lw a5, 12(a4)
	beq t2, a5, label23
	j label403
label26:
	lw a0, 1012(a0)
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 152
	ret
label396:
	lw a4, 16(t4)
	addiw a3, a3, 1
	lw a5, 12(t3)
	max t0, a4, a5
	li a4, 16
	sw t0, 16(t3)
	blt a3, a4, label27
	j label26
