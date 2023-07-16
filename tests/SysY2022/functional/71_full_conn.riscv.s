.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -304
	addi a1, sp, 152
	sd s0, 280(sp)
	sd s5, 104(sp)
	sd s1, 0(sp)
	sd s6, 8(sp)
	sd s2, 16(sp)
	sd s3, 24(sp)
	sd s4, 32(sp)
	sd ra, 40(sp)
	sd a1, 288(sp)
	jal getint
	sd a0, 264(sp)
	ble a0, zero, label11
	mv s0, zero
	li a0, 5
	bge zero, a0, label10
label1486:
	li a2, 20
	mv s2, zero
	ld a1, 288(sp)
	mul a0, s0, a2
	add s1, a1, a0
	j label7
label10:
	lw a0, 152(sp)
	li a6, -106
	sh2add a2, a0, a0
	lw s2, 156(sp)
	slliw a3, a2, 4
	addw a1, a3, a2
	sd s2, 48(sp)
	sh1add a3, s2, s2
	slliw a2, a3, 3
	subw a3, a2, s2
	lw s2, 160(sp)
	addw a1, a1, a3
	sh2add a2, s2, s2
	sh3add a3, a2, s2
	sd s2, 80(sp)
	slliw a2, a3, 1
	lw s2, 164(sp)
	subw a4, zero, a2
	slliw a2, s2, 3
	addw a1, a1, a4
	subw a3, a2, s2
	sd s2, 72(sp)
	slliw a2, a3, 1
	subw a3, a2, s2
	slliw a2, a3, 3
	subw a3, s2, a2
	addw a2, a1, a3
	lw a1, 168(sp)
	slliw a5, a1, 5
	subw a3, a5, a1
	slliw a4, a3, 2
	lw a3, 172(sp)
	subw a5, a1, a4
	lw s2, 176(sp)
	slliw a4, a3, 6
	addw a2, a2, a5
	addw a2, a2, a4
	sd s2, 56(sp)
	slliw a4, s2, 4
	subw a5, a4, s2
	slliw t0, a5, 3
	subw t1, zero, t0
	addw a4, a2, t1
	lw a2, 180(sp)
	sh2add a5, a2, a2
	lw s2, 184(sp)
	sh2add t0, a5, a5
	slliw a5, s2, 4
	sh1add a4, t0, a4
	sd s2, 64(sp)
	subw t0, a5, s2
	slliw a5, t0, 2
	subw t0, s2, a5
	addw a5, a4, t0
	lw a4, 188(sp)
	sh1add t2, a4, a4
	lw s2, 192(sp)
	slliw t1, t2, 4
	subw t0, t1, a4
	sd s2, 272(sp)
	addw a5, a5, t0
	slliw t0, s2, 3
	subw t1, t0, s2
	slliw t0, t1, 4
	subw t1, s2, t0
	lw s2, 196(sp)
	addw a5, a5, t1
	slliw t0, s2, 4
	addw t1, t0, s2
	sd s2, 88(sp)
	slliw t0, t1, 2
	lw t4, 200(sp)
	subw a7, s2, t0
	lw s2, 204(sp)
	addw a5, a5, a7
	mulw t0, t4, a6
	sd s2, 96(sp)
	addw a5, a5, t0
	sh2add t0, s2, s2
	lw s2, 208(sp)
	slliw t2, t0, 4
	subw t1, t0, t2
	sh1add t0, s2, s2
	addw a5, a5, t1
	sd s2, 120(sp)
	slliw t1, t0, 4
	lw s2, 212(sp)
	addw t3, t1, t0
	slliw t2, t3, 1
	subw t0, zero, t2
	sd s2, 296(sp)
	addw a5, a5, t0
	slliw t0, s2, 4
	addw t1, t0, s2
	lw s2, 216(sp)
	sh1add a5, t1, a5
	sh2add t1, s2, s2
	slliw t0, t1, 3
	sd s2, 112(sp)
	subw t1, s2, t0
	lw s2, 220(sp)
	addw a5, a5, t1
	slliw t0, s2, 6
	addw t1, t0, s2
	sd s2, 256(sp)
	addw a5, a5, t1
	lw s2, 224(sp)
	sh1add t1, s2, s2
	slliw t0, t1, 4
	sd s2, 128(sp)
	subw t1, t0, s2
	addw t0, a5, t1
	lw a5, 228(sp)
	slliw t1, a5, 3
	subw t5, t1, a5
	slliw t2, t5, 4
	addw t3, t2, a5
	addw t1, t0, t3
	lw t0, 232(sp)
	slliw t2, t0, 3
	subw t3, t2, t0
	slliw t5, t3, 3
	subw t6, t5, t0
	sh1add t2, t6, t1
	lw t1, 236(sp)
	sh1add t3, t1, t1
	lw s2, 240(sp)
	slliw t5, t3, 4
	slliw t3, s2, 2
	subw t6, t5, t1
	sd s2, 136(sp)
	subw t5, zero, t3
	addw t2, t2, t6
	lw s2, 244(sp)
	addw t2, t2, t5
	sh2add t5, s2, s2
	slliw t6, t5, 4
	sd s2, 144(sp)
	addw t3, t2, t6
	lw t2, 248(sp)
	sh1add t5, t2, t2
	ld s2, 48(sp)
	slliw t6, t5, 3
	subw t5, t6, t2
	sh1add t3, t5, t3
	max t5, t3, zero
	li t3, 127
	min t5, t5, t3
	sh2add t6, t5, t5
	slliw s0, t6, 3
	mulw t6, a0, a6
	subw t5, s0, t5
	slliw s0, s2, 6
	subw s1, s0, s2
	ld s2, 80(sp)
	sh1add t6, s1, t6
	sh3add s0, s2, s2
	ld s2, 72(sp)
	slliw s1, s0, 1
	slliw s0, s2, 5
	subw s3, zero, s1
	subw s1, s2, s0
	addw t6, t6, s3
	ld s2, 56(sp)
	slliw s0, a1, 3
	addw t6, t6, s1
	subw s1, zero, s0
	sh1add s0, a3, a3
	addw t6, t6, s1
	slliw s1, s0, 4
	slliw s0, s2, 2
	subw s3, s1, a3
	slliw s2, a2, 4
	subw s1, zero, s0
	addw t6, t6, s3
	addw s0, s2, a2
	addw t6, t6, s1
	ld s2, 64(sp)
	slliw s1, s0, 2
	subw s3, s1, a2
	sh1add s1, s2, s2
	addw t6, t6, s3
	slliw s0, s1, 4
	subw s1, s0, s2
	slliw s0, s1, 1
	subw s2, zero, s0
	slliw s0, a4, 4
	addw t6, t6, s2
	subw s1, s0, a4
	sh3add s2, s1, a4
	subw s0, zero, s2
	ld s2, 272(sp)
	addw t6, t6, s0
	slliw s0, s2, 3
	subw s1, s0, s2
	ld s2, 88(sp)
	addw t6, t6, s1
	sh1add s0, s2, s2
	slliw s3, s0, 3
	subw s1, s0, s3
	slliw s0, t4, 4
	addw t6, t6, s1
	subw s2, s0, t4
	slliw s1, s2, 2
	ld s2, 96(sp)
	subw s0, zero, s1
	addw t6, t6, s0
	slliw s0, s2, 2
	subw s1, s0, s2
	slliw s0, s1, 2
	subw s1, s0, s2
	slliw s0, s1, 2
	subw s1, s2, s0
	ld s2, 120(sp)
	addw t6, t6, s1
	slliw s1, s2, 3
	subw s0, s1, s2
	ld s2, 296(sp)
	slliw s1, s0, 4
	subw s3, s1, s0
	sh1add s0, s2, s2
	addw t6, t6, s3
	slliw s1, s0, 3
	subw s2, s1, s0
	slliw s3, s2, 1
	ld s2, 112(sp)
	subw s0, zero, s3
	addw t6, t6, s0
	slliw s0, s2, 4
	subw s3, s0, s2
	slliw s1, s3, 1
	subw s0, s1, s2
	ld s2, 256(sp)
	slliw s1, s0, 2
	subw s3, s1, s0
	slliw s0, s2, 4
	addw t6, t6, s3
	subw s1, s0, s2
	slliw s0, s1, 1
	subw s1, s0, s2
	slliw s0, a5, 5
	addw t6, t6, s1
	ld s2, 128(sp)
	mulw s1, s2, a6
	addw t6, t6, s1
	subw s1, a5, s0
	slliw s0, t0, 3
	addw t6, t6, s1
	subw s2, s0, t0
	slliw s1, s2, 3
	subw s0, s1, t0
	slliw s2, s0, 1
	sh2add s0, t1, t1
	subw s1, zero, s2
	sh2add s2, s0, s0
	addw t6, t6, s1
	slliw s1, s2, 2
	ld s2, 136(sp)
	subw s0, zero, s1
	sh1add s1, s2, s2
	addw t6, t6, s0
	slliw s0, s1, 2
	subw s3, s0, s2
	ld s2, 144(sp)
	slliw s0, s3, 1
	subw s1, zero, s0
	sh2add s0, s2, s2
	addw t6, t6, s1
	slliw s1, s0, 4
	subw s2, s0, s1
	slliw s0, t2, 6
	addw t6, t6, s2
	subw s1, s0, t2
	slliw s3, s1, 1
	subw s2, t2, s3
	addw t6, t6, s2
	max s0, t6, zero
	min t6, s0, t3
	slliw s1, t6, 2
	subw s2, s1, t6
	slliw s0, s2, 2
	ld s2, 48(sp)
	subw t6, s0, t6
	slliw s1, t6, 3
	subw t6, s1, t6
	addw s0, t5, t6
	slliw t5, a0, 3
	subw t6, t5, a0
	slliw s1, t6, 1
	subw t5, s1, a0
	sh2add s1, s2, s2
	slliw t6, s1, 2
	subw t6, t6, s2
	ld s2, 80(sp)
	slliw s1, t6, 2
	sh1add t6, t5, s1
	sh2add t5, s2, s2
	slliw s1, t5, 3
	subw t5, s1, t5
	slliw s2, t5, 1
	subw t5, zero, s2
	ld s2, 72(sp)
	addw t6, t6, t5
	slliw s1, s2, 4
	subw s3, s1, s2
	slliw s1, s3, 1
	sh1add s3, a1, a1
	subw s4, s1, s2
	slliw s2, s3, 5
	addw t6, t6, s4
	subw s1, a1, s2
	sh1add s2, a3, a3
	addw t6, t6, s1
	slliw s1, s2, 5
	ld s2, 56(sp)
	addw t6, t6, s1
	slliw s1, s2, 3
	subw s3, s1, s2
	slliw s1, s3, 1
	subw s3, s1, s2
	slliw s2, a2, 4
	sh2add t6, s3, t6
	addw s4, s2, a2
	ld s2, 64(sp)
	slliw s1, s4, 2
	subw s3, zero, s1
	sh2add s1, s2, s2
	addw t6, t6, s3
	slliw s2, a4, 4
	subw s3, zero, s1
	addw s1, s2, a4
	addw t6, t6, s3
	ld s2, 272(sp)
	sh1add t6, s1, t6
	slliw s1, s2, 4
	addw s3, s1, s2
	ld s2, 88(sp)
	slliw s4, s3, 1
	subw s1, zero, s4
	addw t6, t6, s1
	sh1add s1, s2, s2
	slliw s3, s1, 4
	addw s2, s3, s1
	sh1add s1, t4, t4
	sh1add t6, s2, t6
	ld s2, 96(sp)
	sh1add t6, s1, t6
	sh2add s3, s2, s2
	slliw s1, s3, 2
	subw s4, s1, s2
	ld s2, 120(sp)
	slliw s3, s4, 1
	subw s1, zero, s3
	addw t6, t6, s1
	sh1add s1, s2, s2
	ld s2, 296(sp)
	sh3add s3, s1, s1
	slliw s1, s2, 3
	addw t6, t6, s3
	subw s3, s1, s2
	slliw s1, s3, 3
	subw s3, s1, s2
	ld s2, 112(sp)
	sh1add t6, s3, t6
	slliw s1, s2, 4
	subw s3, s1, s2
	slliw s1, s3, 1
	subw s3, s1, s2
	ld s2, 256(sp)
	sh2add t6, s3, t6
	sh2add s3, s2, s2
	slliw s1, s3, 3
	subw s3, s1, s2
	ld s2, 128(sp)
	addw t6, t6, s3
	slliw s1, s2, 6
	subw s3, s2, s1
	sh1add s1, a5, a5
	addw t6, t6, s3
	slliw s4, s1, 5
	addw s2, s4, s1
	subw s3, zero, s2
	slliw s2, t0, 6
	addw s1, t6, s3
	addw t6, s2, t0
	slliw s2, t1, 4
	addw s1, s1, t6
	subw s3, s2, t1
	ld s2, 136(sp)
	sh3add s1, s3, s1
	sh2add s4, s2, s2
	slliw s3, s4, 3
	subw s4, s2, s3
	ld s2, 144(sp)
	addw s1, s1, s4
	sh1add s4, s2, s2
	sh1add s2, t2, t2
	slliw s5, s4, 1
	subw s3, zero, s5
	slliw s5, s2, 4
	addw s1, s1, s3
	subw s3, s5, t2
	sh1add s4, s3, s1
	max s2, s4, zero
	min s1, s2, t3
	slliw s3, s1, 7
	subw s2, s3, s1
	sh1add s1, a0, a0
	addw s0, s0, s2
	slliw s2, s1, 3
	subw s3, a0, s2
	ld s2, 48(sp)
	addw a7, a7, s3
	slliw s1, s2, 6
	subw s3, s2, s1
	ld s2, 80(sp)
	addw a7, a7, s3
	slliw s3, s2, 3
	subw s1, s3, s2
	ld s2, 72(sp)
	slliw s4, s1, 3
	subw s3, s4, s1
	sh2add s1, s2, s2
	addw a7, a7, s3
	sh3add s2, a1, a1
	sh2add s3, s1, s1
	sh2add s1, a3, a3
	sh1add a7, s3, a7
	sh3add a7, s2, a7
	slliw s2, s1, 4
	addw s3, s2, s1
	ld s2, 56(sp)
	addw a7, a7, s3
	slliw s1, s2, 4
	subw s3, s1, s2
	slliw s1, s3, 1
	subw s2, zero, s1
	sh1add s1, a2, a2
	addw a7, a7, s2
	ld s2, 64(sp)
	sh2add a7, s1, a7
	slliw s1, s2, 6
	subw s4, s1, s2
	slliw s3, s4, 1
	subw s1, s3, s2
	slliw s2, a4, 3
	addw a7, a7, s1
	subw s3, s2, a4
	slliw s4, s3, 1
	subw s2, s4, a4
	sh3add s3, s2, s2
	ld s2, 272(sp)
	subw s4, zero, s3
	slliw s3, s2, 6
	addw a7, a7, s4
	addw s4, s3, s2
	slliw s2, t4, 6
	subw s3, zero, s4
	subw s5, s2, t4
	addw a7, a7, s3
	ld s2, 96(sp)
	slliw s4, s5, 1
	subw s3, s4, t4
	addw a7, a7, s3
	slliw s3, s2, 3
	subw s4, s3, s2
	slliw s3, s4, 3
	subw s4, s3, s2
	ld s2, 120(sp)
	sh1add a7, s4, a7
	slliw s3, s2, 5
	subw s4, s2, s3
	ld s2, 296(sp)
	addw a7, a7, s4
	slliw s3, s2, 5
	subw s4, s3, s2
	slliw s3, s4, 2
	subw s4, s2, s3
	ld s2, 112(sp)
	addw a7, a7, s4
	slliw s4, s2, 2
	subw s3, s4, s2
	slliw s4, s3, 3
	subw s5, s4, s3
	slliw s3, s5, 2
	sh1add s5, a5, a5
	subw s4, s3, s2
	ld s2, 256(sp)
	addw a7, a7, s4
	slliw s3, s2, 5
	subw s4, s3, s2
	slliw s3, s4, 1
	subw s4, s3, s2
	ld s2, 128(sp)
	sh1add a7, s4, a7
	sh1add s4, s2, s2
	slliw s3, s4, 2
	subw s4, s3, s2
	slliw s2, s5, 3
	addw a7, a7, s4
	subw s3, a5, s2
	sh1add s2, t0, t0
	addw a7, a7, s3
	slliw s3, s2, 4
	slliw s2, t1, 5
	subw s4, t0, s3
	subw s3, zero, s2
	addw a7, a7, s4
	ld s2, 136(sp)
	addw a7, a7, s3
	slliw s3, s2, 3
	subw s4, s3, s2
	slliw s3, s4, 1
	subw s4, s3, s2
	ld s2, 144(sp)
	sh3add s3, s4, s4
	sh1add s4, s2, s2
	subw s5, zero, s3
	slliw s3, s4, 5
	addw a7, a7, s5
	subw s4, s3, s2
	slliw s2, t2, 4
	addw a7, a7, s4
	subw s4, s2, t2
	slliw s3, s4, 2
	subw s2, s3, t2
	sh1add a7, s2, a7
	ld s2, 48(sp)
	max s3, a7, zero
	min a7, s3, t3
	mulw a6, a7, a6
	addw a7, s0, a6
	sh2add a6, s2, s2
	sh3add s0, a0, s1
	sh3add a6, a6, s2
	sh1add t6, a6, t6
	ld s2, 80(sp)
	sh1add s0, a6, s0
	slliw s1, s2, 3
	slliw a6, a0, 5
	subw s3, s1, s2
	slliw s1, s3, 1
	subw s4, s1, s2
	ld s2, 72(sp)
	slliw s3, s4, 3
	subw s1, zero, s3
	slliw s3, s2, 2
	addw s0, s0, s1
	subw s1, s3, s2
	slliw s4, s1, 4
	addw s3, s4, s1
	slliw s1, s3, 1
	subw s3, s1, s2
	slliw s1, a1, 4
	addw s0, s0, s3
	subw s3, s1, a1
	slliw s2, s3, 1
	subw s1, s2, a1
	slliw s3, s1, 2
	slliw s1, a3, 6
	subw s2, zero, s3
	subw s3, a3, s1
	addw s0, s0, s2
	ld s2, 56(sp)
	addw s0, s0, s3
	slliw s1, s2, 4
	subw s3, zero, s1
	sh2add s1, a2, a2
	addw s0, s0, s3
	slliw s2, s1, 3
	subw s3, s2, s1
	slliw s1, s3, 1
	subw s2, zero, s1
	sh2add s1, a4, a4
	addw s0, s0, s2
	slliw s2, s1, 4
	subw s3, s2, s1
	ld s2, 272(sp)
	addw s0, s0, s3
	slliw s1, s2, 5
	addw s3, s1, s2
	ld s2, 88(sp)
	sh1add s0, s3, s0
	sh1add s3, s2, s2
	slliw s2, t4, 2
	slliw s4, s3, 5
	subw s1, zero, s4
	addw s0, s0, s1
	subw s1, s2, t4
	slliw s3, s1, 4
	addw s2, s3, s1
	slliw s1, s2, 1
	ld s2, 96(sp)
	subw s3, t4, s1
	addw s0, s0, s3
	slliw s3, s2, 3
	subw s1, s3, s2
	sh3add s3, s1, s2
	ld s2, 120(sp)
	slliw s1, s3, 1
	subw s4, zero, s1
	slliw s1, s2, 4
	addw s0, s0, s4
	subw s3, s1, s2
	slliw s1, s3, 2
	subw s3, s1, s2
	ld s2, 296(sp)
	addw s0, s0, s3
	sh1add s1, s2, s2
	ld s2, 112(sp)
	sh2add s0, s1, s0
	sh2add s1, s2, s2
	ld s2, 256(sp)
	addw s0, s0, s1
	sh1add s3, s2, s2
	slliw s1, s3, 5
	subw s3, s2, s1
	ld s2, 128(sp)
	addw s0, s0, s3
	slliw s1, s2, 4
	subw s3, s1, s2
	slliw s1, s3, 1
	subw s3, s1, s2
	sh1add s1, a5, a5
	sh2add s0, s3, s0
	slliw s2, s1, 5
	subw s3, s1, s2
	slliw s2, t0, 4
	addw s0, s0, s3
	subw s1, s2, t0
	sh2add s2, t1, t1
	addw s0, s0, s1
	slliw s3, s2, 4
	ld s2, 136(sp)
	subw s1, s3, t1
	addw s0, s0, s1
	sh1add s1, s2, s2
	ld s2, 144(sp)
	addw s0, s0, s1
	slliw s3, s2, 3
	subw s1, s3, s2
	slliw s3, s1, 3
	subw s2, s3, s1
	slliw s3, t2, 5
	addw s0, s0, s2
	subw s1, s3, t2
	slliw s4, s1, 2
	subw s2, zero, s4
	addw s3, s0, s2
	max s1, s3, zero
	min s0, s1, t3
	sh1add s2, s0, s0
	sh3add s0, a0, a0
	subw s3, zero, s2
	ld s2, 48(sp)
	addw s1, a7, s3
	sh3add a7, s0, s0
	slliw s0, s2, 4
	addw s3, s0, s2
	ld s2, 80(sp)
	sh2add a7, s3, a7
	sh1add s0, s2, s2
	slliw s3, s0, 4
	addw s2, s3, s0
	slliw s0, s2, 1
	ld s2, 72(sp)
	subw s3, zero, s0
	sh3add s0, s2, s2
	addw a7, a7, s3
	sh2add s3, s0, s2
	slliw s2, a1, 4
	slliw s4, s3, 1
	subw s0, zero, s4
	subw s4, s2, a1
	addw a7, a7, s0
	slliw s2, a3, 4
	sh3add s3, s4, a1
	addw s0, a7, s3
	subw a7, a3, s2
	ld s2, 56(sp)
	addw s0, s0, a7
	slliw s3, s2, 3
	addw a7, t5, a7
	subw s4, s3, s2
	slliw s3, s4, 3
	subw s4, s3, s2
	slliw s3, a2, 2
	addw s0, s0, s4
	subw s2, s3, a2
	slliw s4, s2, 4
	addw s3, s4, s2
	slliw s2, s3, 1
	subw s4, s2, a2
	ld s2, 64(sp)
	addw s0, s0, s4
	slliw s3, s2, 3
	subw s4, s3, s2
	slliw s3, s4, 1
	subw s4, s2, s3
	addw s3, s0, s4
	slliw s0, a4, 5
	subw s2, s0, a4
	slliw s4, s2, 1
	ld s2, 272(sp)
	subw s0, zero, s4
	addw t5, s0, a7
	slliw s4, s2, 6
	addw s3, s3, s0
	slliw a7, a0, 4
	ld s2, 88(sp)
	addw s3, s3, s4
	subw s0, a7, a0
	slliw s4, s2, 3
	slliw a7, s0, 1
	subw s5, s4, s2
	sh3add s4, s5, s2
	sh2add s2, t4, t4
	sh1add s3, s4, s3
	slliw s4, s2, 2
	ld s2, 96(sp)
	subw s5, s4, t4
	sh1add s4, s2, s2
	sh1add s3, s5, s3
	ld s2, 120(sp)
	slliw s5, s4, 3
	subw s6, s4, s5
	slliw s4, s2, 3
	addw s3, s3, s6
	subw s5, s4, s2
	ld s2, 296(sp)
	slliw s4, s5, 4
	slliw s5, s2, 3
	addw s3, s3, s4
	subw s4, s5, s2
	sh3add s5, s4, s2
	ld s2, 112(sp)
	sh1add s3, s5, s3
	slliw s4, s2, 3
	subw s5, s4, s2
	ld s2, 256(sp)
	slliw s4, s5, 4
	sh2add s5, s2, s2
	addw s3, s3, s4
	ld s2, 128(sp)
	slliw s4, s5, 1
	slliw s5, s2, 4
	subw s6, zero, s4
	subw s4, zero, s5
	addw s3, s3, s6
	addw s2, s3, s4
	sh2add s3, a5, a5
	sh2add s5, s3, s3
	slliw s4, s5, 1
	subw s3, zero, s4
	slliw s4, t0, 3
	addw s2, s2, s3
	subw s3, s4, t0
	slliw s5, s3, 4
	slliw s3, t1, 4
	subw s4, zero, s5
	addw s2, s2, s4
	subw s4, s3, t1
	slliw s5, s4, 1
	subw s3, s5, t1
	slliw s4, s3, 2
	subw s5, zero, s4
	addw s3, s2, s5
	ld s2, 136(sp)
	sh1add s4, s2, s2
	sh3add s5, s4, s4
	slliw s2, s5, 1
	subw s4, zero, s2
	ld s2, 144(sp)
	addw s3, s3, s4
	sh2add s4, s2, s2
	sh3add s5, s4, s2
	sh3add s2, t2, t2
	sh1add s3, s5, s3
	slliw s4, s2, 3
	subw s5, zero, s4
	addw s2, s3, s5
	max s3, s2, zero
	min s4, s3, t3
	slliw s2, s4, 5
	slliw s4, a0, 4
	addw s1, s1, s2
	subw s3, s4, a0
	ld s2, 48(sp)
	slliw s4, s2, 2
	subw s6, s4, s2
	slliw s5, s6, 2
	subw s4, s5, s2
	ld s2, 80(sp)
	slliw s5, s4, 3
	subw s6, s4, s5
	slliw s4, s2, 5
	addw s3, s3, s6
	addw s5, s4, s2
	ld s2, 72(sp)
	sh1add s3, s5, s3
	sh1add s4, s2, s2
	slliw s5, s4, 4
	subw s2, s5, s4
	slliw s6, s2, 1
	subw s4, zero, s6
	addw s2, s3, s4
	sh1add s3, a1, a1
	slliw s5, s3, 1
	slliw s3, a3, 4
	subw s4, zero, s5
	addw s2, s2, s4
	subw s4, s3, a3
	slliw s5, s4, 1
	subw s6, zero, s5
	addw s3, s2, s6
	ld s2, 56(sp)
	slliw s4, s2, 3
	subw s5, zero, s4
	addw s2, s3, s5
	sh3add s3, a2, a2
	sh3add s5, s3, s3
	addw s4, s2, s5
	slliw s5, a4, 3
	ld s2, 64(sp)
	sh1add s3, s2, s4
	subw s4, s5, a4
	slliw s2, s4, 3
	subw s5, s2, a4
	ld s2, 272(sp)
	slliw s4, s5, 1
	sh1add s5, s2, s2
	subw s6, zero, s4
	slliw s4, s5, 5
	addw s3, s3, s6
	subw s5, s2, s4
	ld s2, 88(sp)
	addw s3, s3, s5
	slliw s4, s2, 4
	subw s5, s4, s2
	slliw s4, s5, 2
	subw s5, s4, s2
	slliw s2, t4, 3
	addw s3, s3, s5
	subw s4, s2, t4
	ld s2, 96(sp)
	slliw s5, s4, 1
	slliw s4, s2, 4
	subw s6, s5, t4
	subw s5, s4, s2
	sh2add s3, s6, s3
	ld s2, 120(sp)
	addw s3, s3, s5
	slliw s4, s2, 3
	subw s5, s4, s2
	slliw s4, s5, 3
	subw s5, s4, s2
	ld s2, 296(sp)
	addw s3, s3, s5
	slliw s4, s2, 5
	addw s5, s4, s2
	ld s2, 112(sp)
	subw s4, zero, s5
	addw s3, s3, s4
	slliw s4, s2, 3
	subw s5, s4, s2
	ld s2, 256(sp)
	sh1add s3, s5, s3
	slliw s4, s2, 4
	subw s5, s4, s2
	slliw s4, s5, 1
	subw s5, s4, s2
	ld s2, 128(sp)
	sh1add s3, s5, s3
	slliw s4, s2, 4
	addw s5, s4, s2
	slliw s4, s5, 2
	subw s5, s4, s2
	li s4, 86
	addw s3, s3, s5
	mulw s5, a5, s4
	addw s2, s3, s5
	sh2add s3, t0, t0
	slliw s5, s3, 4
	subw s4, t0, s5
	sh1add s5, t1, t1
	addw s2, s2, s4
	slliw s4, s5, 4
	addw s3, s2, s4
	ld s2, 136(sp)
	slliw s4, s2, 3
	subw s5, s4, s2
	slliw s4, s5, 1
	subw s5, s2, s4
	ld s2, 144(sp)
	addw s3, s3, s5
	slliw s4, s2, 4
	subw s5, s2, s4
	slliw s4, t2, 5
	addw s3, s3, s5
	addw s2, s4, t2
	sh1add s5, s2, s3
	max s3, s5, zero
	min s2, s3, t3
	sh1add s4, s2, s2
	slliw s3, s4, 5
	sh2add s4, a4, a4
	subw s2, s2, s3
	addw s3, a6, a0
	addw s1, s1, s2
	addw t6, t6, s3
	ld s2, 80(sp)
	slliw a6, s2, 4
	addw s3, a6, s2
	slliw a6, s3, 2
	subw a6, a6, s2
	ld s2, 72(sp)
	addw t6, t6, a6
	slliw a6, s2, 4
	subw a6, a6, s2
	slliw s2, a1, 1
	sh1add t6, a6, t6
	subw a6, zero, s2
	ld s2, 56(sp)
	addw t6, t6, a6
	slliw a6, a3, 6
	addw s3, a6, a3
	sh2add a3, a3, a3
	slliw a6, s2, 4
	addw t6, t6, s3
	subw a6, a6, s2
	sh3add t6, a6, t6
	slliw a6, a2, 3
	subw s2, a6, a2
	slliw a6, s2, 1
	ld s2, 64(sp)
	subw s3, a2, a6
	addw t6, t6, s3
	sh3add s3, s2, s2
	ld s2, 272(sp)
	sh1add a6, s3, t6
	addw t6, a6, s4
	slliw a6, s2, 3
	subw s3, a6, s2
	slliw a6, s3, 1
	subw a6, a6, s2
	ld s2, 88(sp)
	sh3add t6, a6, t6
	slliw a6, s2, 3
	subw a6, a6, s2
	slliw s3, a6, 4
	addw a6, s3, a6
	slliw s3, t4, 3
	subw s2, zero, a6
	addw a6, t6, s2
	ld s2, 96(sp)
	subw t6, t4, s3
	sh3add s4, s2, s2
	addw a6, a6, t6
	sh2add t4, t4, t4
	slliw s3, s4, 3
	subw s4, s3, s2
	ld s2, 120(sp)
	addw a6, a6, s4
	slliw s3, s2, 2
	subw s4, s3, s2
	sh3add s5, s4, s4
	slliw s3, s5, 2
	subw s4, s3, s2
	ld s2, 296(sp)
	addw a6, a6, s4
	sh1add s3, s2, s2
	ld s2, 112(sp)
	sh3add a6, s3, a6
	sh2add s3, s2, s2
	sh3add s4, s3, s2
	ld s2, 256(sp)
	sh1add a6, s4, a6
	sh1add s3, s2, s2
	ld s2, 128(sp)
	slliw s5, s3, 5
	slliw s3, s2, 3
	subw s4, zero, s5
	addw a6, a6, s4
	subw s4, s3, s2
	slliw s3, s4, 1
	subw s4, s3, s2
	slliw s2, a5, 4
	slliw s3, s4, 3
	subw s5, zero, s3
	subw s3, s2, a5
	addw a6, a6, s5
	sh1add s2, t1, t1
	sh3add s4, s3, a5
	subw s5, zero, s4
	slliw s4, s2, 5
	addw a6, a6, s5
	ld s2, 136(sp)
	addw s3, s4, t1
	slliw s4, s2, 2
	addw a6, a6, s3
	subw s3, s4, s2
	slliw s5, s3, 3
	subw s4, s5, s3
	slliw s3, s4, 2
	subw s4, s3, s2
	ld s2, 144(sp)
	addw a6, a6, s4
	sh1add s4, s2, s2
	slliw s3, s4, 3
	subw s4, s3, s2
	sh1add s2, t2, t2
	sh1add a6, s4, a6
	slliw s3, s2, 3
	subw s4, s3, s2
	slliw s2, s4, 2
	subw s3, zero, s2
	addw a6, a6, s3
	max s4, a6, zero
	min a6, s4, t3
	sh2add s2, a6, a6
	sh2add a6, s2, s2
	slliw s3, a6, 1
	subw s2, zero, s3
	addw a6, s1, s2
	ld s2, 48(sp)
	subw s1, a0, a7
	slliw a7, s2, 3
	addw t5, t5, s1
	subw a7, a7, s2
	ld s2, 72(sp)
	addw t5, t5, a7
	sh2add s0, s2, s2
	slliw a7, s0, 2
	subw a7, a7, s2
	ld s2, 56(sp)
	sh1add t5, a7, t5
	sh1add a7, a1, a1
	slliw s0, a7, 4
	subw a7, s0, a7
	slliw s1, a7, 1
	subw a7, zero, s1
	addw t5, t5, a7
	slliw a7, s2, 5
	ld s2, 64(sp)
	subw s0, zero, a7
	sh3add a7, a2, a2
	addw t5, t5, s0
	sh2add s0, a7, a2
	sh3add a7, s2, s2
	addw t5, t5, s0
	ld s2, 272(sp)
	sh2add t5, a7, t5
	slliw a7, s2, 6
	subw s0, a7, s2
	slliw a7, s0, 1
	subw a7, s2, a7
	ld s2, 88(sp)
	addw t5, t5, a7
	sh1add s0, s2, s2
	slliw a7, s0, 3
	subw s1, a7, s2
	ld s2, 96(sp)
	slliw a7, s1, 1
	subw s0, zero, a7
	slliw a7, t4, 3
	addw t5, t5, s0
	subw t4, a7, t4
	slliw a7, t4, 1
	subw s0, zero, a7
	addw t4, t5, s0
	sh3add t5, s2, s2
	sh2add a7, t5, s2
	ld s2, 120(sp)
	addw t4, t4, a7
	sh3add t5, s2, s2
	sh3add a7, t5, s2
	ld s2, 296(sp)
	subw t5, zero, a7
	addw t4, t4, t5
	slliw t5, s2, 4
	addw a7, t5, s2
	ld s2, 112(sp)
	slliw t5, a7, 1
	subw a7, zero, t5
	slliw t5, s2, 4
	addw t4, t4, a7
	subw t5, t5, s2
	slliw a7, t5, 1
	subw t5, a7, s2
	ld s2, 256(sp)
	slliw a7, t5, 2
	subw t5, t5, a7
	addw t4, t4, t5
	sh2add t5, s2, s2
	ld s2, 128(sp)
	slliw s0, t5, 4
	subw a7, t5, s0
	addw t4, t4, a7
	sh3add a7, s2, s2
	slliw t5, a7, 3
	subw a7, t5, s2
	ld s2, 136(sp)
	slliw t5, a5, 2
	addw t4, t4, a7
	subw s0, t5, a5
	slliw a7, s0, 2
	subw t5, a7, a5
	slliw s0, t5, 3
	subw a7, t5, s0
	addw t4, t4, a7
	slliw a7, t0, 2
	subw t5, a7, t0
	sh3add s0, t5, t5
	slliw a7, s0, 1
	subw t5, a7, t0
	addw t4, t4, t5
	sh3add t5, t1, t1
	sh2add a7, t5, t1
	slliw t5, s2, 3
	addw t4, t4, a7
	subw a7, t5, s2
	slliw t5, a7, 1
	subw a7, t5, s2
	slliw t5, a7, 3
	subw a7, s2, t5
	ld s2, 144(sp)
	addw t4, t4, a7
	slliw t5, s2, 3
	subw a7, t5, s2
	slliw t5, a7, 1
	subw a7, s2, t5
	ld s2, 48(sp)
	slliw t5, t2, 3
	addw t4, t4, a7
	subw s0, t5, t2
	sh3add a7, s0, t2
	slliw t5, a7, 1
	subw a7, zero, t5
	addw t4, t4, a7
	max t5, t4, zero
	min t4, t5, t3
	sh1add a7, t4, t4
	slliw t5, a7, 3
	subw a7, t4, t5
	slliw t5, a0, 4
	addw t4, a6, a7
	addw a6, t5, a0
	slliw a7, a6, 2
	subw t5, a7, a0
	addw a0, t6, t5
	sh1add t5, s2, s2
	ld s2, 80(sp)
	slliw t6, t5, 3
	subw a6, t6, t5
	sh2add t5, s2, s2
	sh1add a0, a6, a0
	sh3add t6, t5, s2
	ld s2, 72(sp)
	addw a0, a0, t6
	slliw t5, s2, 5
	subw t6, t5, s2
	slliw t5, t6, 2
	subw t6, s2, t5
	ld s2, 56(sp)
	sh1add t5, a1, a1
	addw a0, a0, t6
	slliw t6, t5, 3
	subw a1, t6, a1
	slliw t5, a1, 2
	subw t6, zero, t5
	addw a1, a0, t6
	sh1add a0, a3, a1
	slliw a1, s2, 2
	subw t5, a1, s2
	slliw a3, t5, 2
	subw a1, a3, s2
	ld s2, 64(sp)
	slliw a3, a1, 3
	subw t5, a1, a3
	sh2add a1, a2, a2
	addw a0, a0, t5
	slliw a2, a1, 4
	subw a3, a2, a1
	sh1add a1, s2, s2
	addw a0, a0, a3
	ld s2, 272(sp)
	slliw a2, a1, 5
	sh1add a1, a4, a4
	addw a0, a0, a2
	slliw a2, a1, 4
	addw a3, a2, a1
	subw a1, zero, a3
	addw a0, a0, a1
	slliw a1, s2, 3
	subw a2, a1, s2
	slliw a1, a2, 3
	subw a2, a1, s2
	slliw a1, a2, 1
	subw a2, a1, s2
	ld s2, 88(sp)
	addw a0, a0, a2
	sh3add a1, s2, s2
	sh2add a2, a1, s2
	ld s2, 96(sp)
	slliw a1, a2, 1
	subw a3, zero, a1
	slliw a1, s2, 5
	addw a0, a0, a3
	subw a2, a1, s2
	slliw a1, a2, 1
	subw a2, a1, s2
	ld s2, 120(sp)
	slliw a1, a2, 1
	subw a3, zero, a1
	slliw a1, s2, 4
	addw a0, a0, a3
	addw a2, a1, s2
	slliw a1, a2, 2
	subw a2, a1, s2
	ld s2, 296(sp)
	addw a0, a0, a2
	sh1add a2, s2, s2
	slliw a1, a2, 4
	subw a2, a1, s2
	ld s2, 112(sp)
	addw a0, a0, a2
	sh1add a2, s2, s2
	slliw a1, a2, 2
	subw a2, a1, s2
	ld s2, 256(sp)
	sh1add a0, a2, a0
	slliw a1, s2, 4
	addw a2, a1, s2
	ld s2, 128(sp)
	slliw a3, a2, 2
	sh2add a2, s2, s2
	subw a1, zero, a3
	addw a0, a0, a1
	slliw a1, a2, 2
	slliw a2, a5, 4
	subw a3, a1, s2
	ld s2, 136(sp)
	sh1add a0, a3, a0
	subw a3, a2, a5
	slliw a1, a3, 1
	subw a2, a1, a5
	slliw a1, t0, 2
	addw a0, a0, a2
	subw a2, a1, t0
	slliw a3, a2, 3
	subw a1, a3, t0
	sh2add a2, a1, a1
	slliw a1, t1, 4
	addw a0, a0, a2
	subw a3, a1, t1
	sh3add a2, a3, t1
	subw a1, zero, a2
	addw a0, a0, a1
	sh3add a1, s2, s2
	ld s2, 144(sp)
	sh2add a0, a1, a0
	slliw a2, s2, 3
	subw a1, a2, s2
	slliw a2, a1, 3
	subw a3, a1, a2
	sh2add a1, t2, t2
	addw a0, a0, a3
	slliw a2, a1, 4
	addw a4, a2, a1
	addw a1, a0, a4
	max a3, a1, zero
	min a0, a3, t3
	sh1add a2, a0, a0
	slliw a1, a2, 3
	subw a0, a1, a0
	li a1, 100
	sh1add a2, a0, t4
	slt s0, zero, a2
	subw a0, a1, s0
	jal putch
	li a0, 97
	bne s0, zero, label1453
	li a0, 111
label1453:
	jal putch
	li a0, 116
	bne s0, zero, label1455
	li a0, 103
label1455:
	jal putch
	li a0, 10
	jal putch
	ld a0, 264(sp)
	addiw a0, a0, -1
	sd a0, 264(sp)
	ble a0, zero, label11
	mv s0, zero
	li a0, 5
	bge zero, a0, label10
	j label1486
label7:
	jal getint
	sh2add a1, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a1)
	li a0, 5
	bge s2, a0, label9
	j label7
label9:
	addiw s0, s0, 1
	li a0, 5
	bge s0, a0, label10
	j label1486
label11:
	mv a0, zero
	ld ra, 40(sp)
	ld s4, 32(sp)
	ld s3, 24(sp)
	ld s2, 16(sp)
	ld s6, 8(sp)
	ld s1, 0(sp)
	ld s5, 104(sp)
	ld s0, 280(sp)
	addi sp, sp, 304
	ret
