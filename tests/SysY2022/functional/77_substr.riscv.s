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
	slli a3, a1, 32
	sd ra, 0(sp)
	ori a0, a3, 8
	sd s1, 8(sp)
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
	li a5, 9
	sd a4, 80(sp)
	slli a4, a5, 32
	sw zero, 88(sp)
	ori a5, a0, 7
	addi a3, a4, 3
	li a4, 2
	sd a3, 96(sp)
	slli a3, a4, 32
	sd a5, 104(sp)
	ori a4, a1, 4
	addi a5, a3, 4
	li a1, 5
	ori a3, a2, 6
	sd a5, 112(sp)
	sd a4, 120(sp)
	sd a3, 128(sp)
	sd a0, 136(sp)
	li a0, 43
	sw a1, 144(sp)
	jal putint
	li a0, 10
	jal putch
	mv a2, zero
pcrel422:
	auipc a3, %pcrel_hi(p)
	addi a0, a3, %pcrel_lo(pcrel422)
	mv a1, a0
	j label2
label31:
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
	blt a2, a3, label31
	addi a1, s2, 4
	mv a2, s0
	slli t0, s0, 6
	addi a3, s1, 4
	add a4, a0, t0
	mv t0, s0
	addi a5, a4, -64
	lw t1, -4(a1)
	sh2add t2, s0, a4
	sh2add t3, s0, a5
	lw t4, -4(a3)
	beq t1, t4, label12
	sh2add t6, s0, a5
	sh2add t4, s0, a4
	lw t5, 0(t6)
	lw a6, -4(t4)
	max t6, t5, a6
	sw t6, 0(t4)
	lw t4, 0(a3)
	beq t1, t4, label14
	lw t4, 4(t3)
	sh2add t6, s0, a4
	lw a6, 0(t6)
	max t5, t4, a6
	sw t5, 4(t2)
	lw t4, 4(a3)
	beq t1, t4, label16
	j label393
.p2align 2
label387:
	sh2add t6, t0, a5
	sh2add t4, t0, a4
	lw t5, 0(t6)
	lw a6, -4(t4)
	max t6, t5, a6
	sw t6, 0(t4)
	lw t4, 0(a3)
	bne t1, t4, label397
.p2align 2
label14:
	sh2add t4, t0, a5
	lw t6, 0(t4)
	addi t5, t6, 1
	sw t5, 4(t2)
	lw t4, 4(a3)
	beq t1, t4, label16
	lw t4, 8(t3)
	lw t6, 4(t2)
	max t5, t4, t6
	sw t5, 8(t2)
	lw t4, 8(a3)
	beq t1, t4, label18
	lw t4, 12(t3)
	addiw t0, t0, 4
	lw t5, 8(t2)
	max t6, t4, t5
	li t4, 13
	sw t6, 12(t2)
	blt t0, t4, label21
	j label402
.p2align 2
label397:
	lw t4, 4(t3)
	sh2add t6, t0, a4
	lw a6, 0(t6)
	max t5, t4, a6
	sw t5, 4(t2)
	lw t4, 4(a3)
	bne t1, t4, label405
.p2align 2
label16:
	lw t4, 4(t3)
	addi t5, t4, 1
	sw t5, 8(t2)
	lw t4, 8(a3)
	bne t1, t4, label180
.p2align 2
label18:
	lw t4, 8(t3)
	addiw t0, t0, 4
	addi t5, t4, 1
	li t4, 13
	sw t5, 12(t2)
	bge t0, t4, label385
.p2align 2
label21:
	addi a3, a3, 16
	sh2add t2, t0, a4
	sh2add t3, t0, a5
	lw t1, -4(a1)
	lw t4, -4(a3)
	bne t1, t4, label387
.p2align 2
label12:
	lw t4, -4(t3)
	sh2add t6, t0, a4
	addi t5, t4, 1
	sw t5, 0(t6)
	lw t4, 0(a3)
	beq t1, t4, label14
	lw t4, 4(t3)
	lw a6, 0(t6)
	max t5, t4, a6
	sw t5, 4(t2)
	lw t4, 4(a3)
	beq t1, t4, label16
.p2align 2
label393:
	lw t4, 8(t3)
	lw t6, 4(t2)
	max t5, t4, t6
	sw t5, 8(t2)
	lw t4, 8(a3)
	beq t1, t4, label18
.p2align 2
label401:
	lw t4, 12(t3)
	addiw t0, t0, 4
	lw t5, 8(t2)
	max t6, t4, t5
	li t4, 13
	sw t6, 12(t2)
	blt t0, t4, label21
label402:
	lw a4, 12(a3)
	beq t1, a4, label23
label403:
	lw a3, 16(t3)
	addiw a2, a2, 1
	lw a4, 12(t2)
	max a5, a3, a4
	li a3, 16
	sw a5, 16(t2)
	blt a2, a3, label26
	j label27
.p2align 2
label385:
	lw a4, 12(a3)
	bne t1, a4, label396
.p2align 2
label23:
	lw a3, 12(t3)
	addiw a2, a2, 1
	addi a4, a3, 1
	li a3, 16
	sw a4, 16(t2)
	bge a2, a3, label27
.p2align 2
label26:
	addi a1, a1, 4
	slli t0, a2, 6
	addi a3, s1, 4
	add a4, a0, t0
	lw t1, -4(a1)
	sh2add t2, s0, a4
	mv t0, s0
	addi a5, a4, -64
	lw t4, -4(a3)
	sh2add t3, s0, a5
	beq t1, t4, label12
	sh2add t6, s0, a5
	sh2add t4, s0, a4
	lw t5, 0(t6)
	lw a6, -4(t4)
	max t6, t5, a6
	sw t6, 0(t4)
	lw t4, 0(a3)
	beq t1, t4, label14
	lw t4, 4(t3)
	sh2add t6, s0, a4
	lw a6, 0(t6)
	max t5, t4, a6
	sw t5, 4(t2)
	lw t4, 4(a3)
	beq t1, t4, label16
	j label393
.p2align 2
label180:
	lw t4, 12(t3)
	addiw t0, t0, 4
	lw t5, 8(t2)
	max t6, t4, t5
	li t4, 13
	sw t6, 12(t2)
	blt t0, t4, label21
	lw a4, 12(a3)
	beq t1, a4, label23
	j label403
label405:
	lw t4, 8(t3)
	lw t6, 4(t2)
	max t5, t4, t6
	sw t5, 8(t2)
	lw t4, 8(a3)
	beq t1, t4, label18
	j label401
label27:
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
	lw a3, 16(t3)
	addiw a2, a2, 1
	lw a4, 12(t2)
	max a5, a3, a4
	li a3, 16
	sw a5, 16(t2)
	blt a2, a3, label26
	j label27
