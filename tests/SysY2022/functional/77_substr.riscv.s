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
	li t0, 2
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
	li a5, 9
	sd a4, 80(sp)
	slli a4, a5, 32
	sw zero, 88(sp)
	ori a5, a0, 7
	addi a3, a4, 3
	sd a3, 96(sp)
	slli a3, t0, 32
	sd a5, 104(sp)
	addi a4, a3, 4
	ori a5, a1, 4
	ori a3, a2, 6
	sd a4, 112(sp)
	li a1, 5
	sd a5, 120(sp)
	sd a3, 128(sp)
	sd a0, 136(sp)
	li a0, 43
	sw a1, 144(sp)
	jal putint
	li a0, 10
	jal putch
	mv a3, zero
	li a0, 14
pcrel311:
	auipc a4, %pcrel_hi(p)
	addi a1, a4, %pcrel_lo(pcrel311)
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
	bge a3, a4, label118
	addi a2, a2, 256
	j label2
label118:
	addi a2, a1, 64
	mv a3, s2
	li a4, 16
	bge s2, a4, label19
.p2align 2
label10:
	addiw a4, a3, -1
	addi t0, a2, 4
	slli t1, a4, 6
	add a5, a1, t1
	mv t1, s2
	addiw t2, s2, -1
	sh2add t5, a4, s1
	sh2add t3, t2, s0
	lw t4, 0(t5)
	lw t6, 0(t3)
	bne t4, t6, label139
.p2align 2
label14:
	sh2add t4, t2, a5
	lw t5, 0(t4)
	addi t3, t5, 1
	sw t3, 0(t0)
	addiw t1, t1, 1
	blt t1, a0, label16
	addiw a3, a3, 1
	addi a2, a2, 64
	li a4, 16
	blt a3, a4, label10
	j label19
.p2align 2
label16:
	addi t0, t0, 4
	addiw t2, t1, -1
	sh2add t5, a4, s1
	sh2add t3, t2, s0
	lw t4, 0(t5)
	lw t6, 0(t3)
	beq t4, t6, label14
	sh2add t4, t1, a5
	sh2add t5, t2, a2
	addiw t1, t1, 1
	lw t3, 0(t4)
	lw t6, 0(t5)
	max t4, t3, t6
	sw t4, 0(t0)
	blt t1, a0, label16
	addiw a3, a3, 1
	addi a2, a2, 64
	li a4, 16
	blt a3, a4, label10
	j label19
.p2align 2
label139:
	sh2add t4, t1, a5
	sh2add t5, t2, a2
	addiw t1, t1, 1
	lw t3, 0(t4)
	lw t6, 0(t5)
	max t4, t3, t6
	sw t4, 0(t0)
	blt t1, a0, label16
	addiw a3, a3, 1
	addi a2, a2, 64
	li a4, 16
	blt a3, a4, label10
label19:
	lw a0, 1012(a1)
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
