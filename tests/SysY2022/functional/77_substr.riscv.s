.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
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
	slli a5, t0, 32
	sd a4, 80(sp)
	li t0, 2
	addi a3, a5, 3
	ori a4, a0, 7
	sw zero, 88(sp)
	slli a5, t0, 32
	sd a3, 96(sp)
	addi a3, a5, 4
	sd a4, 104(sp)
	ori a4, a1, 4
	sd a3, 112(sp)
	li a1, 5
	ori a3, a2, 6
	sd a4, 120(sp)
	sd a3, 128(sp)
	sd a0, 136(sp)
	li a0, 43
	sw a1, 144(sp)
	jal putint
	li a0, 10
	jal putch
	mv a2, zero
pcrel413:
	auipc a3, %pcrel_hi(p)
	addi a0, a3, %pcrel_lo(pcrel413)
	mv a1, a0
	j label2
label36:
	addi a1, a1, 256
.p2align 2
label2:
	sd zero, 0(a1)
	addiw a2, a2, 64
	li a3, 256
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	blt a2, a3, label36
	addi a1, s2, 4
	mv a2, s0
	slli t0, s0, 6
	addi a3, s1, 4
	mv t1, s0
	add a4, a0, t0
	addi a5, a4, -64
	lw t0, -4(a1)
	sh2add t2, s0, a4
	sh2add t3, s0, a5
	lw t4, -4(a3)
	beq t0, t4, label12
	sh2add a6, s0, a5
	lw t4, 0(a6)
	lw t6, -4(t2)
	max t5, t4, t6
	sh2add t4, s0, a4
	sw t5, 0(t4)
	lw t6, 0(a3)
	beq t0, t6, label34
	lw t6, 4(t3)
	max t5, t5, t6
	sw t5, 4(t4)
	lw t6, 4(a3)
	beq t0, t6, label18
	j label177
.p2align 2
label27:
	lw a4, 12(t3)
	addiw a2, a2, 1
	addiw a3, a4, 1
	li a4, 16
	sw a3, 16(t2)
	bge a2, a4, label32
.p2align 2
label31:
	addi a1, a1, 4
	slli t0, a2, 6
	addi a3, s1, 4
	mv t1, s0
	add a4, a0, t0
	sh2add t2, s0, a4
	lw t0, -4(a1)
	addi a5, a4, -64
	lw t4, -4(a3)
	sh2add t3, s0, a5
	bne t0, t4, label390
.p2align 2
label12:
	lw t4, -4(t3)
	addiw t5, t4, 1
	sh2add t4, t1, a4
	sw t5, 0(t4)
	lw t6, 0(a3)
	beq t0, t6, label34
	lw t6, 4(t3)
	max t5, t5, t6
	sw t5, 4(t4)
	lw t6, 4(a3)
	bne t0, t6, label392
.p2align 2
label18:
	lw t5, 4(t3)
	addiw t4, t5, 1
	sw t4, 8(t2)
	lw t5, 8(a3)
	beq t0, t5, label21
	lw t5, 12(t3)
	addiw t1, t1, 4
	max t4, t4, t5
	li t5, 13
	sw t4, 12(t2)
	blt t1, t5, label25
.p2align 2
label386:
	lw a4, 12(a3)
	beq t0, a4, label27
	lw a4, 16(t3)
	addiw a2, a2, 1
	lw a5, 12(t2)
	max a3, a4, a5
	li a4, 16
	sw a3, 16(t2)
	blt a2, a4, label31
	j label32
.p2align 2
label390:
	sh2add a6, t1, a5
	lw t4, 0(a6)
	lw t6, -4(t2)
	max t5, t4, t6
	sh2add t4, t1, a4
	sw t5, 0(t4)
	lw t6, 0(a3)
	bne t0, t6, label396
.p2align 2
label34:
	sh2add a6, t1, a5
	lw t6, 0(a6)
	addiw t5, t6, 1
	sw t5, 4(t4)
	lw t6, 4(a3)
	beq t0, t6, label18
	lw t6, 8(t3)
	max t4, t5, t6
	sw t4, 8(t2)
	lw t5, 8(a3)
	bne t0, t5, label391
.p2align 2
label21:
	lw t5, 8(t3)
	addiw t1, t1, 4
	addiw t4, t5, 1
	li t5, 13
	sw t4, 12(t2)
	bge t1, t5, label377
.p2align 2
label25:
	addi a3, a3, 16
	sh2add t2, t1, a4
	sh2add t3, t1, a5
	lw t0, -4(a1)
	lw t4, -4(a3)
	beq t0, t4, label12
	sh2add a6, t1, a5
	lw t4, 0(a6)
	lw t6, -4(t2)
	max t5, t4, t6
	sh2add t4, t1, a4
	sw t5, 0(t4)
	lw t6, 0(a3)
	beq t0, t6, label34
	lw t6, 4(t3)
	max t5, t5, t6
	sw t5, 4(t4)
	lw t6, 4(a3)
	beq t0, t6, label18
	lw t6, 8(t3)
	max t4, t5, t6
	sw t4, 8(t2)
	lw t5, 8(a3)
	beq t0, t5, label21
label385:
	lw t5, 12(t3)
	addiw t1, t1, 4
	max t4, t4, t5
	li t5, 13
	sw t4, 12(t2)
	blt t1, t5, label25
	j label386
.p2align 2
label377:
	lw a4, 12(a3)
	beq t0, a4, label27
	lw a4, 16(t3)
	addiw a2, a2, 1
	lw a5, 12(t2)
	max a3, a4, a5
	li a4, 16
	sw a3, 16(t2)
	blt a2, a4, label31
	j label32
.p2align 2
label392:
	lw t6, 8(t3)
	max t4, t5, t6
	sw t4, 8(t2)
	lw t5, 8(a3)
	beq t0, t5, label21
	lw t5, 12(t3)
	addiw t1, t1, 4
	max t4, t4, t5
	li t5, 13
	sw t4, 12(t2)
	blt t1, t5, label25
	j label386
.p2align 2
label391:
	lw t5, 12(t3)
	addiw t1, t1, 4
	max t4, t4, t5
	li t5, 13
	sw t4, 12(t2)
	blt t1, t5, label25
	j label386
label396:
	lw t6, 4(t3)
	max t5, t5, t6
	sw t5, 4(t4)
	lw t6, 4(a3)
	beq t0, t6, label18
label177:
	lw t6, 8(t3)
	max t4, t5, t6
	sw t4, 8(t2)
	lw t5, 8(a3)
	beq t0, t5, label21
	j label385
label32:
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
