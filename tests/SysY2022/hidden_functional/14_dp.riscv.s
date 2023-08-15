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
	sd s2, 8(sp)
	sd s6, 16(sp)
	sd s1, 24(sp)
	sd s4, 32(sp)
	sd s0, 40(sp)
	sd s5, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	jal getint
pcrel132:
	auipc a2, %pcrel_hi(dp)
	mv s2, a0
	addi s6, a2, %pcrel_lo(pcrel132)
	li a0, 140
	mul a1, s2, a0
	add s4, s6, a1
	jal getint
pcrel133:
	auipc a1, %pcrel_hi(t)
	li s1, 1
	mv s0, a0
	addi s3, a1, %pcrel_lo(pcrel133)
	ble s2, zero, label2
	addi s5, s6, 140
	mv s7, s1
	j label12
.p2align 2
label15:
	addi s5, s5, 140
.p2align 2
label12:
	jal getint
	sh3add a1, s7, s3
	andi a2, a0, 1
	addiw s7, s7, 1
	sh2add a3, a2, a1
	sw s1, 0(a3)
	lw a0, -140(s5)
	lw a2, 4(a1)
	addw a3, a0, a2
	sw a3, 0(s5)
	bge s2, s7, label15
	addi a2, s6, 140
	mv a3, s1
	sh3add a0, s1, s3
	addi a1, a2, -140
	bgt s0, zero, label22
	j label20
.p2align 2
label26:
	addi a1, a1, 4
.p2align 2
label23:
	addiw a4, a4, 1
	lw a5, 0(a1)
	andi t1, a4, 1
	sh2add t2, t1, a0
	lw t0, 0(t2)
	addw t4, a5, t0
	lw t3, -4(a1)
	addw t1, t0, t3
	max t2, t1, t4
	sw t2, 140(a1)
	bge s0, a4, label26
	addiw a3, a3, 1
	blt s2, a3, label2
.p2align 2
label21:
	addi a2, a2, 140
	sh3add a0, a3, s3
	addi a1, a2, -140
	ble s0, zero, label20
.p2align 2
label22:
	addi a1, a1, 4
	mv a4, s1
	j label23
label2:
	blt s0, zero, label40
	mv a1, zero
	mv a0, zero
.p2align 2
label6:
	lw a2, 0(s4)
	addiw a1, a1, 1
	max a0, a0, a2
	blt s0, a1, label3
	addi s4, s4, 4
	j label6
label3:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s4, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
label20:
	addiw a3, a3, 1
	bge s2, a3, label21
	j label2
label40:
	mv a0, zero
	j label3
