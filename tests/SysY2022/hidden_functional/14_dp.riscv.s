.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
t:
	.zero	8040
.align 4
dp:
	.zero	140700
.text
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd s3, 48(sp)
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s0, 24(sp)
	sd s5, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel142:
	auipc a1, %pcrel_hi(dp)
	mv s3, a0
	addi a0, a1, %pcrel_lo(pcrel142)
	li a1, 140
	mv s2, a0
	mul a2, s3, a1
	add s1, a0, a2
	jal getint
	mv s0, a0
pcrel143:
	auipc a0, %pcrel_hi(t)
	addi s4, a0, %pcrel_lo(pcrel143)
	bgt s3, zero, label28
	li a0, 1
	addiw a1, a0, -1
	li a3, 140
	sh3add a2, a0, s4
	mul a4, a1, a3
	add a1, s2, a4
	mul a4, a0, a3
	add a3, s2, a4
	bge s3, a0, label39
	bge s0, zero, label68
.p2align 2
label130:
	mv a1, zero
	j label14
.p2align 2
label28:
	li s5, 1
	j label16
label68:
	mv a0, zero
	mv a1, zero
.p2align 2
label11:
	sh2add a2, a0, s1
	addiw a0, a0, 1
	lw a3, 0(a2)
	max a1, a1, a3
	bge s0, a0, label11
label14:
	mv a0, a1
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 56
	ret
label39:
	li a4, 1
	bge s0, a4, label6
	addiw a0, a0, 1
	addiw a1, a0, -1
	li a3, 140
	sh3add a2, a0, s4
	mul a4, a1, a3
	add a1, s2, a4
	mul a4, a0, a3
	add a3, s2, a4
	bge s3, a0, label39
	bge s0, zero, label68
	j label130
.p2align 2
label6:
	addiw a5, a4, 1
	sh2add t1, a4, a1
	andi t0, a5, 1
	sh2add t2, t0, a2
	lw t0, 0(t1)
	lw t2, 0(t2)
	addw t0, t0, t2
	lw t3, -4(t1)
	addw t1, t2, t3
	blt t1, t0, label7
	sh2add t0, a4, a3
	mv a4, a5
	sw t1, 0(t0)
	bge s0, a5, label6
	addiw a0, a0, 1
	addiw a1, a0, -1
	li a3, 140
	sh3add a2, a0, s4
	mul a4, a1, a3
	add a1, s2, a4
	mul a4, a0, a3
	add a3, s2, a4
	bge s3, a0, label39
	bge s0, zero, label68
	j label130
.p2align 2
label7:
	sh2add t1, a4, a3
	mv a4, a5
	sw t0, 0(t1)
	bge s0, a5, label6
	addiw a0, a0, 1
	addiw a1, a0, -1
	li a3, 140
	sh3add a2, a0, s4
	mul a4, a1, a3
	add a1, s2, a4
	mul a4, a0, a3
	add a3, s2, a4
	bge s3, a0, label39
	bge s0, zero, label68
	j label130
.p2align 2
label16:
	jal getint
	andi a2, a0, 1
	li a4, 140
	sh3add a0, s5, s4
	mul a3, s5, a4
	sh2add a1, a2, a0
	addiw s5, s5, 1
	li a2, 1
	sw a2, 0(a1)
	add a1, s2, a3
	lw a2, -140(a1)
	lw a3, 4(a0)
	addw a0, a2, a3
	sw a0, 0(a1)
	bge s3, s5, label16
	li a0, 1
	addiw a1, a0, -1
	li a3, 140
	sh3add a2, a0, s4
	mul a4, a1, a3
	add a1, s2, a4
	mul a4, a0, a3
	add a3, s2, a4
	bge s3, a0, label39
	bge s0, zero, label68
	j label130
