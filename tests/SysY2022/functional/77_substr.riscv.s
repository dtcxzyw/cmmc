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
	li a0, 8
	li a2, 7
	li a1, 4
	li a3, 2
	li a5, 9
	li a4, 3
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 96
	sd s1, 16(sp)
	addi s1, sp, 32
	sd s2, 24(sp)
	li s2, 1
	sw a0, 32(sp)
	sw a2, 36(sp)
	sw a1, 40(sp)
	sw s2, 44(sp)
	sw a3, 48(sp)
	sw a2, 52(sp)
	sw zero, 56(sp)
	sw s2, 60(sp)
	sw a5, 64(sp)
	sw a4, 68(sp)
	sw a1, 72(sp)
	sw a0, 76(sp)
	sw a4, 80(sp)
	sw a2, 84(sp)
	sw zero, 88(sp)
	sw a4, 96(sp)
	sw a5, 100(sp)
	sw a2, 104(sp)
	sw s2, 108(sp)
	sw a1, 112(sp)
	sw a3, 116(sp)
	sw a1, 120(sp)
	li a1, 6
	sw a4, 124(sp)
	sw a1, 128(sp)
	li a1, 5
	sw a0, 132(sp)
	li a0, 43
	sw zero, 136(sp)
	sw s2, 140(sp)
	sw a1, 144(sp)
	jal putint
	li a0, 10
	jal putch
	mv a2, zero
pcrel208:
	auipc a1, %pcrel_hi(p)
	addi a3, a1, %pcrel_lo(pcrel208)
.p2align 2
label2:
	sh2add a0, a2, a3
	addi a2, a2, 64
	sd zero, 0(a0)
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
	li a0, 256
	blt a2, a0, label2
	mv a4, s2
	addiw a1, s2, -1
	slli a5, s2, 6
	add a0, a3, a5
	li a5, 16
	addi a2, a0, -64
	bge s2, a5, label12
.p2align 2
label121:
	mv a5, s2
	li t0, 14
	bge s2, t0, label124
.p2align 2
label8:
	addiw t0, a5, -1
	sh2add t4, a1, s1
	sh2add t1, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	addiw t1, a5, 1
	beq t2, t3, label9
	sh2add t3, a5, a2
	sh2add t4, t0, a0
	lw t2, 0(t3)
	lw t3, 0(t4)
	max t0, t2, t3
	sh2add t2, a5, a0
	mv a5, t1
	sw t0, 0(t2)
	li t0, 14
	blt t1, t0, label8
	j label203
.p2align 2
label9:
	sh2add t2, t0, a2
	lw t3, 0(t2)
	sh2add t2, a5, a0
	addi t0, t3, 1
	mv a5, t1
	sw t0, 0(t2)
	li t0, 14
	blt t1, t0, label8
	addiw a4, a4, 1
	addiw a1, a4, -1
	slli a5, a4, 6
	add a0, a3, a5
	li a5, 16
	addi a2, a0, -64
	blt a4, a5, label121
label12:
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
label203:
	addiw a4, a4, 1
	addiw a1, a4, -1
	slli a5, a4, 6
	add a0, a3, a5
	li a5, 16
	addi a2, a0, -64
	blt a4, a5, label121
	j label12
label124:
	addiw a4, a4, 1
	addiw a1, a4, -1
	slli a5, a4, 6
	add a0, a3, a5
	li a5, 16
	addi a2, a0, -64
	blt a4, a5, label121
	j label12
