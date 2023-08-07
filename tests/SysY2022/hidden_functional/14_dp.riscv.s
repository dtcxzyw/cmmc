.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
t:
	.zero	8040
.align 8
dp:
	.zero	140700
.text
.p2align 2
.globl main
main:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s3, 16(sp)
	sd s4, 24(sp)
	sd s5, 32(sp)
	sd s0, 40(sp)
	sd s7, 48(sp)
	sd s1, 56(sp)
	sd s6, 64(sp)
	sd s8, 72(sp)
	jal getint
	li s4, 140
pcrel148:
	auipc a2, %pcrel_hi(dp)
	mv s2, a0
	mul a1, a0, s4
	addi s3, a2, %pcrel_lo(pcrel148)
	add s5, s3, a1
	jal getint
	li s1, 1
pcrel149:
	auipc a1, %pcrel_hi(t)
	mv s0, a0
	addi s7, a1, %pcrel_lo(pcrel149)
	ble s2, zero, label40
	addi s6, s7, 8
	mv s8, s1
.p2align 2
label26:
	jal getint
	mul a2, s8, s4
	andi a3, a0, 1
	addiw s8, s8, 1
	add a0, s3, a2
	sh2add a1, a3, s6
	sw s1, 0(a1)
	lw a1, -140(a0)
	lw a3, 4(s6)
	addw a2, a1, a3
	sw a2, 0(a0)
	blt s2, s8, label40
	addi s6, s6, 8
	j label26
label40:
	addi a0, s7, 8
	addi a1, s3, 140
	mv a2, s1
	addiw a4, s1, -1
	mul a5, a4, s4
	add a3, s3, a5
	blt s2, s1, label6
.p2align 2
label15:
	addi a5, a3, 4
	mv a4, s1
	addi a3, a1, 4
	blt s0, s1, label20
.p2align 2
label21:
	addiw a4, a4, 1
	lw t0, 0(a5)
	andi t2, a4, 1
	sh2add t3, t2, a0
	lw t1, 0(t3)
	addw t3, t0, t1
	lw t4, -4(a5)
	addw t2, t1, t4
	blt t2, t3, label22
	sw t2, 0(a3)
	addi a5, a5, 4
	addi a3, a3, 4
	bge s0, a4, label21
	j label138
.p2align 2
label22:
	sw t3, 0(a3)
	addi a5, a5, 4
	addi a3, a3, 4
	bge s0, a4, label21
	addiw a2, a2, 1
	addi a0, a0, 8
	addi a1, a1, 140
	addiw a4, a2, -1
	mul a5, a4, s4
	add a3, s3, a5
	bge s2, a2, label15
	j label6
label20:
	addiw a2, a2, 1
	addi a0, a0, 8
	addi a1, a1, 140
	addiw a4, a2, -1
	mul a5, a4, s4
	add a3, s3, a5
	bge s2, a2, label15
label6:
	blt s0, zero, label51
	mv a1, zero
	mv a0, zero
	j label10
.p2align 2
label138:
	addiw a2, a2, 1
	addi a0, a0, 8
	addi a1, a1, 140
	addiw a4, a2, -1
	mul a5, a4, s4
	add a3, s3, a5
	bge s2, a2, label15
	j label6
.p2align 2
label10:
	lw a2, 0(s5)
	addiw a1, a1, 1
	max a0, a0, a2
	blt s0, a1, label7
	addi s5, s5, 4
	j label10
label7:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s4, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s7, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label51:
	mv a0, zero
	j label7
