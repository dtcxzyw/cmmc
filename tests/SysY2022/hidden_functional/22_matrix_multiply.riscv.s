.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
a:
	.zero	40000
.p2align 3
b:
	.zero	40000
.p2align 3
res:
	.zero	40000
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s6, 16(sp)
	sd s1, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	sd a0, 104(sp)
	jal getint
	li s4, 3
pcrel299:
	auipc a1, %pcrel_hi(a)
	addiw s2, a0, -3
	li s1, 400
	sd a0, 112(sp)
	mv t2, a0
	addi s6, a1, %pcrel_lo(pcrel299)
pcrel300:
	auipc a0, %pcrel_hi(b)
pcrel301:
	auipc a1, %pcrel_hi(res)
	addi s0, a0, %pcrel_lo(pcrel300)
	addi s5, a1, %pcrel_lo(pcrel301)
	ld a0, 104(sp)
	ble a0, zero, label13
	mv s3, s6
	mv s7, zero
	ld t2, 112(sp)
	bgt t2, zero, label6
	j label11
.p2align 2
label89:
	addiw s7, s7, 1
	ld a0, 104(sp)
	ble a0, s7, label13
.p2align 2
label12:
	addi s3, s3, 400
	ld t2, 112(sp)
	ble t2, zero, label11
.p2align 2
label6:
	mv s8, s3
	mv s9, zero
	j label7
.p2align 2
label10:
	addi s8, s8, 4
	mv s9, a1
.p2align 2
label7:
	jal getint
	addiw a1, s9, 1
	sw a0, 0(s8)
	ld t2, 112(sp)
	bgt t2, a1, label10
	j label89
label13:
	jal getint
	mv s8, a0
	jal getint
	mv s3, a0
	ble s8, zero, label14
	mv s7, s0
	mv s9, zero
	bgt a0, zero, label62
	j label67
.p2align 2
label208:
	addiw s9, s9, 1
	ble s8, s9, label14
.p2align 2
label68:
	addi s7, s7, 400
	ble s3, zero, label67
.p2align 2
label62:
	mv s10, s7
	mv s11, zero
	j label63
.p2align 2
label66:
	addi s10, s10, 4
.p2align 2
label63:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	bgt s3, s11, label66
	j label208
label14:
	ld a0, 104(sp)
	ble a0, zero, label57
	mv a2, s5
	mv a3, zero
	mv a0, zero
	mv a1, s6
	bgt s3, zero, label19
	j label44
.p2align 2
label261:
	addiw a3, a3, 1
	ld a0, 104(sp)
	ble a0, a3, label250
.p2align 2
label56:
	addi a2, a2, 400
	mul a0, a3, s1
	add a1, s6, a0
	ble s3, zero, label44
.p2align 2
label19:
	mv a4, a2
	mv a0, zero
	ld t2, 112(sp)
	bgt t2, zero, label25
	j label23
.p2align 2
label176:
	sw t1, 0(a4)
	addiw a0, a0, 1
	ble s3, a0, label261
.p2align 2
label24:
	addi a4, a4, 4
	ld t2, 112(sp)
	ble t2, zero, label251
.p2align 2
label25:
	lw t1, 0(a4)
	ld t2, 112(sp)
	ble t2, s4, label125
	mv a5, a1
	mv t0, zero
	j label27
.p2align 2
label31:
	addi a5, a5, 16
.p2align 2
label27:
	mul t4, t0, s1
	lw t3, 0(a5)
	addiw t0, t0, 4
	add t5, s0, t4
	sh2add t2, a0, t5
	lw t4, 0(t2)
	lw t6, 4(a5)
	lw a7, 400(t2)
	mulw s7, t3, t4
	mulw a6, t6, a7
	lw t6, 8(a5)
	addw t5, a6, s7
	lw a7, 800(t2)
	lw t4, 12(a5)
	mulw a6, t6, a7
	lw t6, 1200(t2)
	addw t3, t5, a6
	mulw t5, t4, t6
	addw a6, t3, t5
	addw t1, t1, a6
	bgt s2, t0, label31
	mv t3, t1
	ld t2, 112(sp)
	ble t2, t0, label253
.p2align 2
label36:
	mul t2, t0, s1
	mv t1, t3
	add a5, s0, t2
.p2align 2
label37:
	sh2add t4, t0, a1
	sh2add t3, a0, a5
	addiw t0, t0, 1
	lw t2, 0(t4)
	lw t5, 0(t3)
	mulw t4, t2, t5
	ld t2, 112(sp)
	addw t1, t1, t4
	ble t2, t0, label176
	addi a5, a5, 400
	j label37
.p2align 2
label125:
	mv t0, zero
	mv t3, t1
	ld t2, 112(sp)
	mv t1, zero
	bgt t2, zero, label36
	sw zero, 0(a4)
	addiw a0, a0, 1
	bgt s3, a0, label24
	j label119
label250:
	mv s0, zero
	bgt s3, zero, label49
.p2align 2
label54:
	li a0, 10
	jal putch
	ld a0, 104(sp)
	addiw s0, s0, 1
	ble a0, s0, label57
	addi s5, s5, 400
	ble s3, zero, label54
.p2align 2
label49:
	mv s1, s5
	mv s2, zero
.p2align 2
label50:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	jal putch
	addiw s2, s2, 1
	ble s3, s2, label54
	addi s1, s1, 4
	j label50
label57:
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label11:
	addiw s7, s7, 1
	ld a0, 104(sp)
	bgt a0, s7, label12
	j label13
label67:
	addiw s9, s9, 1
	bgt s8, s9, label68
	j label14
label23:
	addiw a0, a0, 1
	bgt s3, a0, label24
	j label119
label44:
	addiw a3, a3, 1
	ld a0, 104(sp)
	bgt a0, a3, label56
	j label250
label119:
	addiw a3, a3, 1
	ld a0, 104(sp)
	bgt a0, a3, label56
	j label250
.p2align 2
label251:
	addiw a0, a0, 1
	bgt s3, a0, label24
	j label119
.p2align 2
label253:
	sw t1, 0(a4)
	addiw a0, a0, 1
	bgt s3, a0, label24
	addiw a3, a3, 1
	ld a0, 104(sp)
	bgt a0, a3, label56
	j label250
