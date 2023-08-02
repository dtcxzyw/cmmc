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
	sd s1, 16(sp)
	addi s1, sp, 32
	sd s2, 24(sp)
	li s2, 1
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
	sd a3, 96(sp)
	slli a3, t0, 32
	sd a4, 104(sp)
	addi a5, a3, 4
	ori a4, a1, 4
	ori a3, a2, 6
	sd a5, 112(sp)
	li a1, 5
	sd a4, 120(sp)
	sd a3, 128(sp)
	sd a0, 136(sp)
	li a0, 43
	sw a1, 144(sp)
	jal putint
	li a0, 10
	jal putch
	mv a2, zero
	li a0, 14
pcrel308:
	auipc a4, %pcrel_hi(p)
	addi a3, a4, %pcrel_lo(pcrel308)
	mv a1, a3
.p2align 2
label2:
	sd zero, 0(a1)
	addi a2, a2, 64
	li a4, 256
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
	bge a2, a4, label117
	addi a1, a1, 256
	j label2
label117:
	addi a2, a3, 64
	mv a5, s2
	addiw a1, s2, -1
	addi a4, a2, -64
	li t0, 16
	bge s2, t0, label19
.p2align 2
label10:
	addi t1, a2, 4
	addi t0, a4, 4
	mv t2, s2
	bge s2, a0, label131
.p2align 2
label15:
	addiw t3, t2, -1
	sh2add a6, a1, s1
	addiw t2, t2, 1
	sh2add t4, t3, s0
	lw t5, 0(a6)
	lw t6, 0(t4)
	beq t5, t6, label16
	lw t4, 0(t0)
	sh2add a6, t3, a2
	addi t0, t0, 4
	lw t5, 0(a6)
	max t6, t4, t5
	sw t6, 0(t1)
	addi t1, t1, 4
	blt t2, a0, label15
	j label302
.p2align 2
label16:
	sh2add t5, t3, a4
	addi t0, t0, 4
	lw t6, 0(t5)
	addi t4, t6, 1
	sw t4, 0(t1)
	addi t1, t1, 4
	blt t2, a0, label15
	addiw a5, a5, 1
	addi a2, a2, 64
	addiw a1, a5, -1
	addi a4, a2, -64
	li t0, 16
	blt a5, t0, label10
label19:
	lw a0, 1012(a3)
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 152
	ret
.p2align 2
label302:
	addiw a5, a5, 1
	addi a2, a2, 64
	addiw a1, a5, -1
	addi a4, a2, -64
	li t0, 16
	blt a5, t0, label10
	j label19
label131:
	addiw a5, a5, 1
	addi a2, a2, 64
	addiw a1, a5, -1
	addi a4, a2, -64
	li t0, 16
	blt a5, t0, label10
	j label19
