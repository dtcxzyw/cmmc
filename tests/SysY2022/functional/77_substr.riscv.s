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
	addi sp, sp, -144
	li a0, 8
	li a3, 7
	li a2, 4
	li a1, 1
	li a4, 2
	li t0, 9
	li a5, 3
	sd s0, 136(sp)
	addi s0, sp, 0
	sd s1, 56(sp)
	addi s1, sp, 64
	sd ra, 128(sp)
	sw a0, 64(sp)
	sw a3, 68(sp)
	sw a2, 72(sp)
	sw a1, 76(sp)
	sw a4, 80(sp)
	sw a3, 84(sp)
	sw zero, 88(sp)
	sw a1, 92(sp)
	sw t0, 96(sp)
	sw a5, 100(sp)
	sw a2, 104(sp)
	sw a0, 108(sp)
	sw a5, 112(sp)
	sw a3, 116(sp)
	sw zero, 120(sp)
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
pcrel205:
	auipc a1, %pcrel_hi(p)
	addi a0, a1, %pcrel_lo(pcrel205)
label2:
	sh2add a1, a2, a0
	li a3, 256
	addi a2, a2, 64
	sw zero, 0(a1)
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
	sw zero, 64(a1)
	sw zero, 68(a1)
	sw zero, 72(a1)
	sw zero, 76(a1)
	sw zero, 80(a1)
	sw zero, 84(a1)
	sw zero, 88(a1)
	sw zero, 92(a1)
	sw zero, 96(a1)
	sw zero, 100(a1)
	sw zero, 104(a1)
	sw zero, 108(a1)
	sw zero, 112(a1)
	sw zero, 116(a1)
	sw zero, 120(a1)
	sw zero, 124(a1)
	sw zero, 128(a1)
	sw zero, 132(a1)
	sw zero, 136(a1)
	sw zero, 140(a1)
	sw zero, 144(a1)
	sw zero, 148(a1)
	sw zero, 152(a1)
	sw zero, 156(a1)
	sw zero, 160(a1)
	sw zero, 164(a1)
	sw zero, 168(a1)
	sw zero, 172(a1)
	sw zero, 176(a1)
	sw zero, 180(a1)
	sw zero, 184(a1)
	sw zero, 188(a1)
	sw zero, 192(a1)
	sw zero, 196(a1)
	sw zero, 200(a1)
	sw zero, 204(a1)
	sw zero, 208(a1)
	sw zero, 212(a1)
	sw zero, 216(a1)
	sw zero, 220(a1)
	sw zero, 224(a1)
	sw zero, 228(a1)
	sw zero, 232(a1)
	sw zero, 236(a1)
	sw zero, 240(a1)
	sw zero, 244(a1)
	sw zero, 248(a1)
	sw zero, 252(a1)
	blt a2, a3, label2
	li a1, 1
	addiw a3, a1, -1
	slli a2, a1, 6
	add a4, a0, a2
	li a2, 16
	addi a5, a4, -64
	blt a1, a2, label121
label12:
	lw a0, 1012(a0)
	jal putint
	li a0, 10
	jal putch
	ld ra, 128(sp)
	mv a0, zero
	ld s1, 56(sp)
	ld s0, 136(sp)
	addi sp, sp, 144
	ret
label121:
	li a2, 1
	li t0, 14
	blt a2, t0, label8
	addiw a1, a1, 1
	addiw a3, a1, -1
	slli a2, a1, 6
	add a4, a0, a2
	li a2, 16
	addi a5, a4, -64
	blt a1, a2, label121
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
	blt a1, a2, label121
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
	blt a1, a2, label121
	j label12
