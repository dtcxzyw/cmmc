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
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s3, 8(sp)
	sd s4, 16(sp)
	sd s5, 24(sp)
	sd s0, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	jal getint
	li s5, 140
	mv s3, a0
pcrel138:
	auipc a0, %pcrel_hi(dp)
	addi s4, a0, %pcrel_lo(pcrel138)
	mul a0, s3, s5
	add s1, s4, a0
	jal getint
	li s2, 1
	mv s0, a0
pcrel139:
	auipc a0, %pcrel_hi(t)
	addi s6, a0, %pcrel_lo(pcrel139)
	bgt s3, zero, label28
label27:
	mv a3, s2
	j label2
label28:
	mv s7, s2
	j label16
label2:
	addiw a1, a3, -1
	mul a4, a3, s5
	mul a2, a1, s5
	sh3add a1, a3, s6
	add a0, s4, a2
	add a2, s4, a4
	bge s3, a3, label39
	j label10
.p2align 2
label16:
	jal getint
	mul a3, s7, s5
	andi a1, a0, 1
	sh3add a0, s7, s6
	addiw s7, s7, 1
	sh2add a2, a1, a0
	add a1, s4, a3
	sw s2, 0(a2)
	lw a2, -140(a1)
	lw a3, 4(a0)
	addw a0, a2, a3
	sw a0, 0(a1)
	bge s3, s7, label16
	j label27
.p2align 2
label39:
	mv a4, s2
	blt s0, s2, label42
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
	j label131
.p2align 2
label7:
	sh2add t1, a4, a2
	mv a4, a5
	sw t0, 0(t1)
	bge s0, a5, label6
	addiw a3, a3, 1
	addiw a1, a3, -1
	mul a4, a3, s5
	mul a2, a1, s5
	sh3add a1, a3, s6
	add a0, s4, a2
	add a2, s4, a4
	bge s3, a3, label39
	j label10
.p2align 2
label131:
	addiw a3, a3, 1
	addiw a1, a3, -1
	mul a4, a3, s5
	mul a2, a1, s5
	sh3add a1, a3, s6
	add a0, s4, a2
	add a2, s4, a4
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
	ld s4, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
label42:
	addiw a3, a3, 1
	addiw a1, a3, -1
	mul a4, a3, s5
	mul a2, a1, s5
	sh3add a1, a3, s6
	add a0, s4, a2
	add a2, s4, a4
	bge s3, a3, label39
	j label10
label67:
	mv a0, zero
	j label14
