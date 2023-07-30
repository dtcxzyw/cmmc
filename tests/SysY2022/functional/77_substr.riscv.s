.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
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
	sd s0, 128(sp)
	addi s0, sp, 0
	sd s1, 136(sp)
	addi s1, sp, 64
	sd ra, 56(sp)
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
pcrel206:
	auipc a1, %pcrel_hi(p)
	addi a0, a1, %pcrel_lo(pcrel206)
label2:
	sh2add a1, a2, a0
	li a3, 256
	addi a2, a2, 64
	sd zero, 0(a1)
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
	blt a2, a3, label2
	li a1, 1
	addiw a3, a1, -1
	slli a5, a1, 6
	add a2, a0, a5
	li a5, 16
	addi a4, a2, -64
	blt a1, a5, label121
label12:
	lw a0, 1012(a0)
	jal putint
	li a0, 10
	jal putch
	ld ra, 56(sp)
	mv a0, zero
	ld s1, 136(sp)
	ld s0, 128(sp)
	addi sp, sp, 144
	ret
label121:
	li a5, 1
	li t0, 14
	blt a5, t0, label8
	addiw a1, a1, 1
	addiw a3, a1, -1
	slli a5, a1, 6
	add a2, a0, a5
	li a5, 16
	addi a4, a2, -64
	blt a1, a5, label121
	j label12
.p2align 2
label8:
	addiw t0, a5, -1
	sh2add t4, a3, s1
	sh2add t1, t0, s0
	lw t2, 0(t4)
	lw t3, 0(t1)
	addiw t1, a5, 1
	beq t2, t3, label9
	sh2add t3, a5, a4
	sh2add t4, t0, a2
	lw t2, 0(t3)
	lw t3, 0(t4)
	max t0, t2, t3
	sh2add t2, a5, a2
	mv a5, t1
	sw t0, 0(t2)
	li t0, 14
	blt t1, t0, label8
	addiw a1, a1, 1
	addiw a3, a1, -1
	slli a5, a1, 6
	add a2, a0, a5
	li a5, 16
	addi a4, a2, -64
	blt a1, a5, label121
	j label12
.p2align 2
label9:
	sh2add t3, t0, a4
	lw t2, 0(t3)
	sh2add t3, a5, a2
	addi t0, t2, 1
	mv a5, t1
	sw t0, 0(t3)
	li t0, 14
	blt t1, t0, label8
	addiw a1, a1, 1
	addiw a3, a1, -1
	slli a5, a1, 6
	add a2, a0, a5
	li a5, 16
	addi a4, a2, -64
	blt a1, a5, label121
	j label12
