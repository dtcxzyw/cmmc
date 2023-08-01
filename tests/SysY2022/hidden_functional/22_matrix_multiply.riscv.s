.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	40000
.align 8
b:
	.zero	40000
.align 8
res:
	.zero	40000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s3, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s7, zero
	addiw s3, a0, -8
	mv s5, a0
pcrel270:
	auipc a0, %pcrel_hi(a)
	addi s6, a0, %pcrel_lo(pcrel270)
pcrel271:
	auipc a0, %pcrel_hi(b)
	addi s2, a0, %pcrel_lo(pcrel271)
pcrel272:
	auipc a0, %pcrel_hi(res)
	addi s1, a0, %pcrel_lo(pcrel272)
label2:
	ble s0, s7, label8
.p2align 2
label4:
	li a0, 400
	mul a1, s7, a0
	add s4, s6, a1
	ble s5, zero, label54
	mv s8, zero
.p2align 2
label5:
	jal getint
	sh2add a1, s8, s4
	addiw s8, s8, 1
	sw a0, 0(a1)
	bgt s5, s8, label5
	addiw s7, s7, 1
	bgt s0, s7, label4
label8:
	jal getint
	mv s8, a0
	jal getint
	mv s9, zero
	mv s4, a0
label9:
	bgt s8, s9, label11
label70:
	mv a3, zero
	j label15
.p2align 2
label11:
	li a0, 400
	mul a1, s9, a0
	add s7, s2, a1
	ble s4, zero, label75
	mv s10, zero
.p2align 2
label13:
	jal getint
	sh2add a1, s10, s7
	addiw s10, s10, 1
	sw a0, 0(a1)
	bgt s4, s10, label13
	addiw s9, s9, 1
	bgt s8, s9, label11
	j label70
label15:
	li a1, 400
	mul a0, a3, a1
	add a1, s6, a0
	add a2, s1, a0
	bgt s0, a3, label93
label92:
	mv s3, zero
	j label17
.p2align 2
label93:
	mv a0, zero
	bgt s4, zero, label27
	j label26
label17:
	ble s0, s3, label23
.p2align 2
label19:
	li a1, 400
	mul a0, s3, a1
	add s2, s1, a0
	ble s4, zero, label20
	mv s5, zero
	j label21
.p2align 2
label20:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bgt s0, s3, label19
	j label23
.p2align 2
label21:
	sh2add a1, s5, s2
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s5, s5, 1
	bgt s4, s5, label21
	j label20
.p2align 2
label258:
	addiw a3, a3, 1
	li a1, 400
	mul a0, a3, a1
	add a1, s6, a0
	add a2, s1, a0
	bgt s0, a3, label93
	j label92
.p2align 2
label27:
	ble s5, zero, label118
	sh2add a4, a0, a2
	li t0, 8
	lw a5, 0(a4)
	ble s5, t0, label124
	mv a4, zero
	j label33
.p2align 2
label29:
	li t0, 400
	sh2add t2, a4, a1
	mul t1, a4, t0
	addiw a4, a4, 1
	add t3, s2, t1
	lw t1, 0(t2)
	sh2add t0, a0, t3
	lw t3, 0(t0)
	mulw t0, t1, t3
	addw a5, a5, t0
	bgt s5, a4, label29
	sh2add t0, a0, a2
	sw a5, 0(t0)
	addiw a0, a0, 1
	bgt s4, a0, label27
	j label258
.p2align 2
label33:
	li t2, 400
	mul t1, a4, t2
	addi t2, t2, 2000
	add t0, s2, t1
	addi a6, t0, 400
	sh2add t1, a4, a1
	sh2add t4, a0, t0
	addiw a4, a4, 8
	lw t3, 0(t1)
	sh2add t5, a0, a6
	lw t4, 0(t4)
	lw t6, 4(t1)
	lw a6, 0(t5)
	mulw t4, t3, t4
	mulw t5, t6, a6
	addi t6, t0, 800
	addw t3, t5, t4
	lw t4, 8(t1)
	sh2add t5, a0, t6
	lw t6, 0(t5)
	mulw t5, t4, t6
	lw t4, 12(t1)
	addi t6, t0, 1200
	addw t3, t3, t5
	sh2add t5, a0, t6
	lw t6, 0(t5)
	mulw t5, t4, t6
	addi t6, t0, 1600
	addw t3, t3, t5
	sh2add t4, a0, t6
	lw t5, 16(t1)
	lw t6, 0(t4)
	mulw t4, t5, t6
	lw t5, 20(t1)
	addi t6, t0, 2000
	addw t3, t3, t4
	sh2add t4, a0, t6
	lw t6, 0(t4)
	mulw t4, t5, t6
	add t6, t0, t2
	addw t3, t3, t4
	sh2add t5, a0, t6
	lw t4, 24(t1)
	lw t6, 0(t5)
	mulw t5, t4, t6
	addi t4, t2, 400
	addw t3, t3, t5
	add t5, t0, t4
	lw t0, 28(t1)
	sh2add t2, a0, t5
	lw t1, 0(t2)
	mulw t2, t0, t1
	addw t0, t3, t2
	addw a5, a5, t0
	bgt s3, a4, label33
	j label29
label23:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s2, 48(sp)
	ld s7, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label26:
	addiw a3, a3, 1
	li a1, 400
	mul a0, a3, a1
	add a1, s6, a0
	add a2, s1, a0
	bgt s0, a3, label93
	j label92
.p2align 2
label118:
	addiw a0, a0, 1
	bgt s4, a0, label27
	j label26
label54:
	addiw s7, s7, 1
	j label2
.p2align 2
label124:
	mv a4, zero
	j label29
label75:
	addiw s9, s9, 1
	j label9
