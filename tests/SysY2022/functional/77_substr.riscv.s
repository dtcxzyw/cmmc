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
	slli t0, a4, 32
	sd a5, 104(sp)
	ori a4, a1, 4
	addi a3, t0, 4
	li a1, 5
	sd a3, 112(sp)
	ori a3, a2, 6
	sd a4, 120(sp)
	sd a3, 128(sp)
	sd a0, 136(sp)
	li a0, 43
	sw a1, 144(sp)
	jal putint
	li a0, 10
	jal putch
	mv a3, zero
	li a0, 13
pcrel425:
	auipc a4, %pcrel_hi(p)
	addi a1, a4, %pcrel_lo(pcrel425)
	mv a2, a1
.p2align 2
label2:
	sd zero, 0(a2)
	addi a3, a3, 64
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
	addi a3, s2, 4
	addi a2, a1, 64
	mv a4, s0
	addi a5, a2, -64
	li t0, 16
	blt s0, t0, label12
	j label11
.p2align 2
label387:
	lw a5, 12(t0)
	addiw a4, a4, 1
	bne t1, a5, label398
.p2align 2
label28:
	lw t0, 12(t4)
	addi a3, a3, 4
	addi a2, a2, 64
	addi a5, t0, 1
	li t0, 16
	sw a5, 16(t3)
	addi a5, a2, -64
	bge a4, t0, label11
.p2align 2
label12:
	addi t0, s1, 4
	mv t2, s0
	lw t1, -4(a3)
	sh2add t3, s0, a2
	sh2add t4, s0, a5
	lw t5, -4(t0)
	beq t1, t5, label16
	sh2add a6, s0, a5
	sh2add t5, s0, a2
	lw t6, 0(a6)
	lw a7, -4(t5)
	max a6, t6, a7
	sw a6, 0(t5)
	lw t5, 0(t0)
	bne t1, t5, label395
.p2align 2
label18:
	sh2add t5, t2, a5
	lw t6, 0(t5)
	addi a6, t6, 1
	sw a6, 4(t3)
	lw t5, 4(t0)
	beq t1, t5, label29
	lw t5, 8(t4)
	lw a6, 4(t3)
	max t6, t5, a6
	sw t6, 8(t3)
	lw t5, 8(t0)
	bne t1, t5, label188
.p2align 2
label22:
	lw t5, 8(t4)
	addiw t2, t2, 4
	addi t6, t5, 1
	sw t6, 12(t3)
	bge t2, a0, label387
.p2align 2
label25:
	addi t0, t0, 16
	sh2add t3, t2, a2
	sh2add t4, t2, a5
	lw t1, -4(a3)
	lw t5, -4(t0)
	bne t1, t5, label389
.p2align 2
label16:
	lw t5, -4(t4)
	sh2add a6, t2, a2
	addi t6, t5, 1
	sw t6, 0(a6)
	lw t5, 0(t0)
	beq t1, t5, label18
	lw t5, 4(t4)
	sh2add a7, t2, a2
	lw a6, 0(a7)
	max t6, t5, a6
	sw t6, 4(t3)
	lw t5, 4(t0)
	bne t1, t5, label396
.p2align 2
label29:
	lw t5, 4(t4)
	addi t6, t5, 1
	sw t6, 8(t3)
	lw t5, 8(t0)
	beq t1, t5, label22
	lw t5, 12(t4)
	addiw t2, t2, 4
	lw a6, 8(t3)
	max t6, t5, a6
	sw t6, 12(t3)
	blt t2, a0, label25
	lw a5, 12(t0)
	addiw a4, a4, 1
	beq t1, a5, label28
	lw a5, 16(t4)
	addi a3, a3, 4
	addi a2, a2, 64
	lw t1, 12(t3)
	max t0, a5, t1
	addi a5, a2, -64
	sw t0, 16(t3)
	li t0, 16
	blt a4, t0, label12
	j label11
.p2align 2
label389:
	sh2add a6, t2, a5
	sh2add t5, t2, a2
	lw t6, 0(a6)
	lw a7, -4(t5)
	max a6, t6, a7
	sw a6, 0(t5)
	lw t5, 0(t0)
	beq t1, t5, label18
	lw t5, 4(t4)
	sh2add a7, t2, a2
	lw a6, 0(a7)
	max t6, t5, a6
	sw t6, 4(t3)
	lw t5, 4(t0)
	beq t1, t5, label29
	lw t5, 8(t4)
	lw a6, 4(t3)
	max t6, t5, a6
	sw t6, 8(t3)
	lw t5, 8(t0)
	beq t1, t5, label22
	lw t5, 12(t4)
	addiw t2, t2, 4
	lw a6, 8(t3)
	max t6, t5, a6
	sw t6, 12(t3)
	blt t2, a0, label25
	lw a5, 12(t0)
	addiw a4, a4, 1
	beq t1, a5, label28
	j label403
.p2align 2
label396:
	lw t5, 8(t4)
	lw a6, 4(t3)
	max t6, t5, a6
	sw t6, 8(t3)
	lw t5, 8(t0)
	beq t1, t5, label22
	lw t5, 12(t4)
	addiw t2, t2, 4
	lw a6, 8(t3)
	max t6, t5, a6
	sw t6, 12(t3)
	blt t2, a0, label25
	lw a5, 12(t0)
	addiw a4, a4, 1
	beq t1, a5, label28
	j label403
.p2align 2
label395:
	lw t5, 4(t4)
	sh2add a7, t2, a2
	lw a6, 0(a7)
	max t6, t5, a6
	sw t6, 4(t3)
	lw t5, 4(t0)
	beq t1, t5, label29
	lw t5, 8(t4)
	lw a6, 4(t3)
	max t6, t5, a6
	sw t6, 8(t3)
	lw t5, 8(t0)
	beq t1, t5, label22
	lw t5, 12(t4)
	addiw t2, t2, 4
	lw a6, 8(t3)
	max t6, t5, a6
	sw t6, 12(t3)
	blt t2, a0, label25
	j label397
.p2align 2
label188:
	lw t5, 12(t4)
	addiw t2, t2, 4
	lw a6, 8(t3)
	max t6, t5, a6
	sw t6, 12(t3)
	blt t2, a0, label25
.p2align 2
label397:
	lw a5, 12(t0)
	addiw a4, a4, 1
	beq t1, a5, label28
.p2align 2
label403:
	lw a5, 16(t4)
	addi a3, a3, 4
	addi a2, a2, 64
	lw t1, 12(t3)
	max t0, a5, t1
	addi a5, a2, -64
	sw t0, 16(t3)
	li t0, 16
	blt a4, t0, label12
label11:
	lw a0, 1012(a1)
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
.p2align 2
label398:
	lw a5, 16(t4)
	addi a3, a3, 4
	addi a2, a2, 64
	lw t1, 12(t3)
	max t0, a5, t1
	addi a5, a2, -64
	sw t0, 16(t3)
	li t0, 16
	blt a4, t0, label12
	j label11
