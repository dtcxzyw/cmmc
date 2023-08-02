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
.p2align 2
.globl main
main:
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s5, 8(sp)
	sd s0, 16(sp)
	sd s3, 24(sp)
	sd s7, 32(sp)
	sd s2, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
	sd s8, 64(sp)
	sd s4, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	sd a0, 104(sp)
	jal getint
	mv s8, zero
	li s0, 400
pcrel249:
	auipc a1, %pcrel_hi(a)
	addiw s3, a0, -4
	li s6, 4
	mv s5, a0
	addi s7, a1, %pcrel_lo(pcrel249)
pcrel250:
	auipc a0, %pcrel_hi(b)
pcrel251:
	auipc a1, %pcrel_hi(res)
	addi s2, a0, %pcrel_lo(pcrel250)
	addi s1, a1, %pcrel_lo(pcrel251)
label2:
	ld a0, 104(sp)
	ble a0, s8, label8
.p2align 2
label4:
	mul a0, s8, s0
	add s4, s7, a0
	ble s5, zero, label53
	mv s9, zero
.p2align 2
label5:
	jal getint
	sh2add a1, s9, s4
	addiw s9, s9, 1
	sw a0, 0(a1)
	bgt s5, s9, label5
	addiw s8, s8, 1
	ld a0, 104(sp)
	bgt a0, s8, label4
label8:
	jal getint
	mv s9, a0
	jal getint
	mv s10, zero
	mv s4, a0
label9:
	bgt s9, s10, label11
label69:
	mv a3, zero
	j label15
.p2align 2
label11:
	mul a0, s10, s0
	add s8, s2, a0
	ble s4, zero, label74
	mv s11, zero
.p2align 2
label13:
	jal getint
	sh2add a1, s11, s8
	addiw s11, s11, 1
	sw a0, 0(a1)
	bgt s4, s11, label13
	addiw s10, s10, 1
	bgt s9, s10, label11
	j label69
label15:
	mul a4, a3, s0
	ld a0, 104(sp)
	add a1, s7, a4
	add a2, s1, a4
	bgt a0, a3, label92
label91:
	mv s3, zero
	j label17
.p2align 2
label92:
	mv a0, zero
	bgt s4, zero, label27
	j label26
label17:
	ld a0, 104(sp)
	bgt a0, s3, label19
	j label23
.p2align 2
label232:
	sh2add t0, a0, a2
	sw a5, 0(t0)
	addiw a0, a0, 1
	bgt s4, a0, label27
.p2align 2
label233:
	addiw a3, a3, 1
	mul a4, a3, s0
	ld a0, 104(sp)
	add a1, s7, a4
	add a2, s1, a4
	bgt a0, a3, label92
	j label91
.p2align 2
label27:
	ble s5, zero, label28
	sh2add a4, a0, a2
	lw a5, 0(a4)
	bgt s5, s6, label126
	mv a4, zero
	mv t1, zero
	mv t2, a1
	mv t3, s2
	li a4, 1
	sh2add t0, a0, s2
	lw t1, 0(a1)
	lw t4, 0(t0)
	mulw t3, t1, t4
	addw a5, a5, t3
	bgt s5, a4, label30
	j label232
.p2align 2
label126:
	mv a4, zero
	j label34
.p2align 2
label30:
	mul t1, a4, s0
	sh2add t2, a4, a1
	add t3, s2, t1
	addiw a4, a4, 1
	sh2add t0, a0, t3
	lw t1, 0(t2)
	lw t4, 0(t0)
	mulw t3, t1, t4
	addw a5, a5, t3
	bgt s5, a4, label30
	sh2add t0, a0, a2
	sw a5, 0(t0)
	addiw a0, a0, 1
	bgt s4, a0, label27
	j label233
.p2align 2
label34:
	mul t2, a4, s0
	sh2add t0, a4, a1
	add t1, s2, t2
	addiw a4, a4, 4
	addi t6, t1, 400
	lw t2, 0(t0)
	sh2add t3, a0, t1
	sh2add a6, a0, t6
	lw t4, 0(t3)
	lw t5, 4(t0)
	lw t3, 0(a6)
	mulw a7, t2, t4
	addi a6, t1, 800
	sh2add t4, a0, a6
	mulw t6, t5, t3
	addi a6, t1, 1200
	lw t5, 8(t0)
	addw t3, t6, a7
	lw t6, 0(t4)
	sh2add t4, a0, a6
	mulw a7, t5, t6
	addw t2, t3, a7
	lw t3, 12(t0)
	lw t5, 0(t4)
	mulw t1, t3, t5
	addw t0, t2, t1
	addw a5, a5, t0
	bgt s3, a4, label34
	mul t1, a4, s0
	sh2add t2, a4, a1
	add t3, s2, t1
	addiw a4, a4, 1
	sh2add t0, a0, t3
	lw t1, 0(t2)
	lw t4, 0(t0)
	mulw t3, t1, t4
	addw a5, a5, t3
	bgt s5, a4, label30
	sh2add t0, a0, a2
	sw a5, 0(t0)
	addiw a0, a0, 1
	bgt s4, a0, label27
	addiw a3, a3, 1
	mul a4, a3, s0
	ld a0, 104(sp)
	add a1, s7, a4
	add a2, s1, a4
	bgt a0, a3, label92
	j label91
.p2align 2
label28:
	addiw a0, a0, 1
	bgt s4, a0, label27
	j label26
.p2align 2
label19:
	mul a0, s3, s0
	add s2, s1, a0
	ble s4, zero, label20
	mv s5, zero
	j label21
.p2align 2
label20:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	ld a0, 104(sp)
	bgt a0, s3, label19
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
label26:
	addiw a3, a3, 1
	mul a4, a3, s0
	ld a0, 104(sp)
	add a1, s7, a4
	add a2, s1, a4
	bgt a0, a3, label92
	j label91
label23:
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s7, 32(sp)
	ld s2, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s8, 64(sp)
	ld s4, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label53:
	addiw s8, s8, 1
	j label2
label74:
	addiw s10, s10, 1
	j label9
