.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
p:
	.zero	1024
.text
.globl main
main:
.p2align 2
	addi sp, sp, -136
	li a0, 8
	li a3, 7
	li a2, 4
	li a1, 1
	li a4, 2
	li t0, 9
	li a5, 3
	sd s0, 128(sp)
	addi s0, sp, 0
	sd s1, 120(sp)
	addi s1, sp, 52
	sd ra, 112(sp)
	sw a0, 52(sp)
	sw a3, 56(sp)
	sw a2, 60(sp)
	sw a1, 64(sp)
	sw a4, 68(sp)
	sw a3, 72(sp)
	sw zero, 76(sp)
	sw a1, 80(sp)
	sw t0, 84(sp)
	sw a5, 88(sp)
	sw a2, 92(sp)
	sw a0, 96(sp)
	sw a5, 100(sp)
	sw a3, 104(sp)
	sw zero, 108(sp)
	sw a5, 0(sp)
	sw t0, 4(sp)
	sw a3, 8(sp)
	sw a1, 12(sp)
	sw a2, 16(sp)
	sw a4, 20(sp)
	sw a2, 24(sp)
	li a2, 6
	sw a5, 28(sp)
	sw a2, 32(sp)
	sw a0, 36(sp)
	li a0, 43
	sw zero, 40(sp)
	sw a1, 44(sp)
	li a1, 5
	sw a1, 48(sp)
	jal putint
	li a0, 10
	jal putch
	mv a2, zero
pcrel151:
	auipc a1, %pcrel_hi(p)
	addi a0, a1, %pcrel_lo(pcrel151)
.p2align 2
label2:
	sh2add a1, a2, a0
	li a3, 256
	sw zero, 0(a1)
	addi a2, a2, 16
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	blt a2, a3, label2
	li a1, 1
	addiw a3, a1, -1
	slli a2, a1, 6
	add a4, a0, a2
	li a2, 16
	addi a5, a4, -64
	blt a1, a2, label73
label12:
	lw a0, 1012(a0)
	jal putint
	li a0, 10
	jal putch
	ld ra, 112(sp)
	mv a0, zero
	ld s1, 120(sp)
	ld s0, 128(sp)
	addi sp, sp, 136
	ret
label73:
	li a2, 1
	li t0, 14
	blt a2, t0, label8
	addiw a1, a1, 1
	addiw a3, a1, -1
	slli a2, a1, 6
	add a4, a0, a2
	li a2, 16
	addi a5, a4, -64
	blt a1, a2, label73
	j label12
.p2align 2
label8:
	addiw t0, a2, -1
	sh2add t3, a3, s1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	beq t2, t1, label9
	sh2add t2, a2, a5
	sh2add t0, a2, a4
	lw t1, 0(t2)
	addiw a2, a2, 1
	lw t2, -4(t0)
	max t1, t1, t2
	sw t1, 0(t0)
	li t0, 14
	blt a2, t0, label8
	addiw a1, a1, 1
	addiw a3, a1, -1
	slli a2, a1, 6
	add a4, a0, a2
	li a2, 16
	addi a5, a4, -64
	blt a1, a2, label73
	j label12
.p2align 2
label9:
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a2, a4
	addi t0, t2, 1
	addiw a2, a2, 1
	sw t0, 0(t1)
	li t0, 14
	blt a2, t0, label8
	addiw a1, a1, 1
	addiw a3, a1, -1
	slli a2, a1, 6
	add a4, a0, a2
	li a2, 16
	addi a5, a4, -64
	blt a1, a2, label73
	j label12
