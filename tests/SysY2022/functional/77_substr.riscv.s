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
	li a1, 30064771072
	sd ra, 0(sp)
	ori a3, a1, 2
	ori a0, a1, 8
	sd s0, 8(sp)
	ori a1, a1, 3
	addi s0, sp, 96
	sd s1, 16(sp)
	addi s1, sp, 32
	sd s2, 24(sp)
	li s2, 1
	sd a0, 32(sp)
	li a0, 4294967296
	ori a2, a0, 4
	sd a2, 40(sp)
	li a2, 12884901888
	sd a3, 48(sp)
	ori a4, a2, 9
	slli a3, a0, 3
	sd a0, 56(sp)
	ori a2, a2, 4
	sd a4, 64(sp)
	ori a4, a3, 4
	sd a4, 72(sp)
	li a4, 38654705667
	sd a1, 80(sp)
	ori a1, a0, 7
	sw zero, 88(sp)
	sd a4, 96(sp)
	li a4, 8589934596
	sd a1, 104(sp)
	ori a1, a3, 6
	sd a4, 112(sp)
	sd a2, 120(sp)
	sd a1, 128(sp)
	li a1, 5
	sd a0, 136(sp)
	li a0, 43
	sw a1, 144(sp)
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
pcrel299:
	auipc a1, %pcrel_hi(p)
	addi a4, a1, %pcrel_lo(pcrel299)
	li a1, 14
.p2align 2
label2:
	sh2add a2, a0, a4
	addi a0, a0, 64
	sd zero, 0(a2)
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
	li a2, 256
	blt a0, a2, label2
	mv a5, s2
	addiw a2, s2, -1
	slli t0, s2, 6
	add a0, a4, t0
	li t0, 16
	addi a3, a0, -64
	bge s2, t0, label12
.p2align 2
label121:
	mv t0, s2
	bge s2, a1, label124
.p2align 2
label8:
	addiw t1, t0, -1
	sh2add t5, a2, s1
	sh2add t2, t1, s0
	lw t3, 0(t5)
	lw t4, 0(t2)
	addiw t2, t0, 1
	beq t3, t4, label9
	sh2add t4, t0, a3
	sh2add t5, t1, a0
	lw t3, 0(t4)
	lw t4, 0(t5)
	max t1, t3, t4
	sh2add t3, t0, a0
	mv t0, t2
	sw t1, 0(t3)
	blt t2, a1, label8
	j label294
.p2align 2
label9:
	sh2add t3, t1, a3
	lw t4, 0(t3)
	sh2add t3, t0, a0
	addi t1, t4, 1
	mv t0, t2
	sw t1, 0(t3)
	blt t2, a1, label8
	addiw a5, a5, 1
	addiw a2, a5, -1
	slli t0, a5, 6
	add a0, a4, t0
	li t0, 16
	addi a3, a0, -64
	blt a5, t0, label121
label12:
	lw a0, 1012(a4)
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
label294:
	addiw a5, a5, 1
	addiw a2, a5, -1
	slli t0, a5, 6
	add a0, a4, t0
	li t0, 16
	addi a3, a0, -64
	blt a5, t0, label121
	j label12
label124:
	addiw a5, a5, 1
	addiw a2, a5, -1
	slli t0, a5, 6
	add a0, a4, t0
	li t0, 16
	addi a3, a0, -64
	blt a5, t0, label121
	j label12
