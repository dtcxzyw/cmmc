.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
p:
	.zero	1024
.text
.globl main
main:
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
pcrel222:
	auipc a1, %pcrel_hi(p)
	addi a0, a1, %pcrel_lo(pcrel222)
	mv a1, zero
label2:
	sh2add a2, a1, a0
	sw zero, 0(a2)
	addi a1, a1, 16
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	li a2, 256
	bge a1, a2, label65
	j label2
label65:
	li a4, 1
	addiw a2, a4, -1
	slli a1, a4, 6
	li t0, 16
	add a3, a0, a1
	addi a5, a3, -64
	bge a4, t0, label12
	li a1, 1
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t3, a2, s1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	j label204
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
label189:
	addiw t0, a1, -1
	sh2add t3, a2, s1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	j label197
label11:
	addiw a4, a4, 1
	addiw a2, a4, -1
	slli a1, a4, 6
	li t0, 16
	add a3, a0, a1
	addi a5, a3, -64
	bge a4, t0, label12
	li a1, 1
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t3, a2, s1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	j label189
label197:
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t3, a2, s1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	j label197
label10:
	sh2add t2, a1, a5
	sh2add t0, a1, a3
	lw t1, 0(t2)
	addiw a1, a1, 1
	lw t2, -4(t0)
	max t1, t1, t2
	sw t1, 0(t0)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t3, a2, s1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	addiw t0, a1, -1
	sh2add t1, t0, s0
	lw t2, 0(t3)
	lw t1, 0(t1)
	bne t2, t1, label10
	j label197
label204:
	sh2add t1, t0, a5
	lw t2, 0(t1)
	sh2add t1, a1, a3
	addi t0, t2, 1
	addiw a1, a1, 1
	sw t0, 0(t1)
	li t0, 14
	bge a1, t0, label11
	j label189
