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
	li s1, 400
pcrel284:
	auipc a1, %pcrel_hi(b)
	addiw s2, a0, -3
	sd a0, 112(sp)
	mv t2, a0
	addi s0, a1, %pcrel_lo(pcrel284)
pcrel285:
	auipc a0, %pcrel_hi(a)
	addi s6, a0, %pcrel_lo(pcrel285)
pcrel286:
	auipc a0, %pcrel_hi(res)
	addi s5, a0, %pcrel_lo(pcrel286)
	ld a0, 104(sp)
	ble a0, zero, label13
	mv s3, s6
	mv s7, zero
	ld t2, 112(sp)
	bgt t2, zero, label6
	j label11
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
label13:
	jal getint
	mv s8, a0
	jal getint
	mv s3, a0
	ble s8, zero, label25
	mv s7, s0
	mv s9, zero
	bgt a0, zero, label18
	j label23
.p2align 2
label22:
	addi s10, s10, 4
.p2align 2
label19:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	bgt s3, s11, label22
	addiw s9, s9, 1
	ble s8, s9, label25
.p2align 2
label24:
	addi s7, s7, 400
	ble s3, zero, label23
.p2align 2
label18:
	mv s10, s7
	mv s11, zero
	j label19
label25:
	ld a0, 104(sp)
	ble a0, zero, label68
	mv a2, s5
	mv a3, zero
	mv a0, zero
	mv a1, s6
	bgt s3, zero, label30
	j label55
.p2align 2
label257:
	addiw a3, a3, 1
	ld a0, 104(sp)
	ble a0, a3, label252
.p2align 2
label67:
	addi a2, a2, 400
	mul a0, a3, s1
	add a1, s6, a0
	ble s3, zero, label55
.p2align 2
label30:
	mv a4, a2
	mv a0, zero
	ld t2, 112(sp)
	bgt t2, zero, label36
	li a0, 1
	bgt s3, a0, label35
	j label135
.p2align 2
label54:
	addi a5, a5, 400
.p2align 2
label50:
	sh2add t3, t0, a1
	sh2add t5, a0, a5
	addiw t0, t0, 1
	lw t2, 0(t3)
	lw t4, 0(t5)
	mulw t3, t2, t4
	ld t2, 112(sp)
	addw t1, t1, t3
	bgt t2, t0, label54
	sw t1, 0(a4)
	addiw a0, a0, 1
	ble s3, a0, label257
.p2align 2
label35:
	addi a4, a4, 4
	ld t2, 112(sp)
	ble t2, zero, label253
.p2align 2
label36:
	lw t1, 0(a4)
	ld t2, 112(sp)
	ble t2, s4, label141
	mv a5, a1
	mv t0, zero
	j label38
.p2align 2
label42:
	addi a5, a5, 16
.p2align 2
label38:
	mul t5, t0, s1
	lw t3, 0(a5)
	addiw t0, t0, 4
	add t4, s0, t5
	sh2add t2, a0, t4
	lw t5, 0(t2)
	lw t6, 4(a5)
	lw t4, 400(t2)
	mulw a7, t3, t5
	mulw a6, t6, t4
	lw t6, 8(a5)
	addw t4, a6, a7
	lw t5, 800(t2)
	mulw a6, t6, t5
	lw t5, 12(a5)
	addw t3, t4, a6
	lw t6, 1200(t2)
	mulw a6, t5, t6
	addw t4, t3, a6
	addw t1, t1, t4
	bgt s2, t0, label42
	mv t3, t1
	ld t2, 112(sp)
	ble t2, t0, label255
.p2align 2
label49:
	mul t2, t0, s1
	mv t1, t3
	add a5, s0, t2
	j label50
.p2align 2
label141:
	mv t0, zero
	mv t3, t1
	ld t2, 112(sp)
	mv t1, zero
	bgt t2, zero, label49
	sw zero, 0(a4)
	addiw a0, a0, 1
	bgt s3, a0, label35
	addiw a3, a3, 1
	ld a0, 104(sp)
	bgt a0, a3, label67
	j label252
.p2align 2
label255:
	sw t1, 0(a4)
	addiw a0, a0, 1
	bgt s3, a0, label35
	addiw a3, a3, 1
	ld a0, 104(sp)
	bgt a0, a3, label67
label252:
	mv s0, zero
	bgt s3, zero, label60
.p2align 2
label65:
	li a0, 10
	jal putch
	ld a0, 104(sp)
	addiw s0, s0, 1
	ble a0, s0, label68
	addi s5, s5, 400
	ble s3, zero, label65
.p2align 2
label60:
	mv s1, s5
	mv s2, zero
.p2align 2
label61:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	jal putch
	addiw s2, s2, 1
	ble s3, s2, label65
	addi s1, s1, 4
	j label61
label68:
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
label23:
	addiw s9, s9, 1
	bgt s8, s9, label24
	j label25
label55:
	addiw a3, a3, 1
	ld a0, 104(sp)
	bgt a0, a3, label67
	j label252
.p2align 2
label253:
	addiw a0, a0, 1
	bgt s3, a0, label35
label135:
	addiw a3, a3, 1
	ld a0, 104(sp)
	bgt a0, a3, label67
	j label252
