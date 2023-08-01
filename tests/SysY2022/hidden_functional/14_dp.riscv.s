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
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s3, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s4, 48(sp)
	jal getint
pcrel135:
	auipc a1, %pcrel_hi(dp)
	mv s3, a0
	addi a0, a1, %pcrel_lo(pcrel135)
	li a1, 140
	mv s2, a0
	mul a2, s3, a1
	add s1, a0, a2
	jal getint
	mv s0, a0
pcrel136:
	auipc a0, %pcrel_hi(t)
	addi s4, a0, %pcrel_lo(pcrel136)
	bgt s3, zero, label28
label27:
	li a3, 1
	j label2
label28:
	li s5, 1
	j label16
label2:
	addiw a0, a3, -1
	li a2, 140
	sh3add a1, a3, s4
	mul a4, a0, a2
	add a0, s2, a4
	mul a4, a3, a2
	add a2, s2, a4
	bge s3, a3, label39
	j label10
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
	j label27
.p2align 2
label39:
	li a4, 1
	blt s0, a4, label42
.p2align 2
label6:
	addiw a5, a4, 1
	sh2add t1, a4, a0
	andi t0, a5, 1
	sh2add t2, t0, a1
	lw t0, 0(t1)
	lw t2, 0(t2)
	addw t0, t0, t2
	lw t3, -4(t1)
	addw t1, t2, t3
	blt t1, t0, label7
	sh2add t0, a4, a2
	mv a4, a5
	sw t1, 0(t0)
	bge s0, a5, label6
	j label128
.p2align 2
label7:
	sh2add t1, a4, a2
	mv a4, a5
	sw t0, 0(t1)
	bge s0, a5, label6
	addiw a3, a3, 1
	addiw a0, a3, -1
	li a2, 140
	sh3add a1, a3, s4
	mul a4, a0, a2
	add a0, s2, a4
	mul a4, a3, a2
	add a2, s2, a4
	bge s3, a3, label39
	j label10
.p2align 2
label128:
	addiw a3, a3, 1
	addiw a0, a3, -1
	li a2, 140
	sh3add a1, a3, s4
	mul a4, a0, a2
	add a0, s2, a4
	mul a4, a3, a2
	add a2, s2, a4
	bge s3, a3, label39
label10:
	blt s0, zero, label67
	mv a0, zero
	mv a1, zero
.p2align 2
label11:
	sh2add a2, a0, s1
	addiw a0, a0, 1
	lw a3, 0(a2)
	max a1, a1, a3
	bge s0, a0, label11
	mv a0, a1
label14:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
label42:
	addiw a3, a3, 1
	addiw a0, a3, -1
	li a2, 140
	sh3add a1, a3, s4
	mul a4, a0, a2
	add a0, s2, a4
	mul a4, a3, a2
	add a2, s2, a4
	bge s3, a3, label39
	j label10
label67:
	mv a0, zero
	j label14
