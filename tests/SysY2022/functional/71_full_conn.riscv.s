.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -416
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	jal getint
	sd a0, 272(sp)
	ble a0, zero, label11
.p2align 2
label17:
	mv s0, zero
	li a0, 5
	bge zero, a0, label10
.p2align 2
label6:
	sh2add a0, s0, s0
	addi a1, sp, 96
	mv s2, zero
	sh2add s1, a0, a1
.p2align 2
label7:
	jal getint
	sh2add a1, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a1)
	li a0, 5
	blt s2, a0, label7
	addiw s0, s0, 1
	blt s0, a0, label6
.p2align 2
label10:
	lw t5, 96(sp)
	li a1, 85
	li a3, -103
	li t2, -106
	li a6, -13
	sd t5, 384(sp)
	mulw a0, t5, a1
	lw t4, 100(sp)
	li a1, 23
	sd t4, 368(sp)
	mulw a2, t4, a1
	lw t5, 104(sp)
	li a1, -82
	addw a0, a0, a2
	sd t5, 360(sp)
	mulw a2, t5, a1
	lw t5, 108(sp)
	addw a0, a0, a2
	li a2, -123
	mulw a1, t5, a3
	sd t5, 376(sp)
	addw a0, a0, a1
	lw t5, 112(sp)
	mulw a1, t5, a2
	sd t5, 352(sp)
	addw a0, a0, a1
	lw t3, 116(sp)
	slli a2, t3, 6
	addw a0, a0, a2
	sd t3, 344(sp)
	sd a2, 80(sp)
	lw t5, 120(sp)
	slli a3, t5, 4
	subw t1, a3, t5
	sd t5, 288(sp)
	sd a3, 56(sp)
	slli a3, t1, 3
	sd t1, 408(sp)
	subw a2, zero, a3
	li t1, 47
	addw a1, a0, a2
	lw t5, 124(sp)
	li a0, 50
	sd t5, 336(sp)
	mulw a2, t5, a0
	lw t6, 128(sp)
	addw a1, a1, a2
	li a2, -59
	sd t6, 328(sp)
	mulw a3, t6, a2
	lw t5, 132(sp)
	addw a1, a1, a3
	mulw a2, t5, t1
	sd t5, 88(sp)
	li t1, -102
	addw a1, a1, a2
	lw t5, 136(sp)
	li a2, -111
	sd t5, 216(sp)
	mulw a3, t5, a2
	lw t5, 140(sp)
	addw a2, a1, a3
	li a3, -67
	sd t5, 280(sp)
	mulw a1, t5, a3
	lw t5, 144(sp)
	addw a2, a2, a1
	mulw a3, t5, t2
	sd t5, 400(sp)
	li t2, -75
	addw a2, a2, a3
	lw t5, 148(sp)
	mulw a3, t5, t2
	sd t5, 320(sp)
	li t2, -106
	addw a2, a2, a3
	lw t5, 152(sp)
	mulw a3, t5, t1
	sd t5, 312(sp)
	li t1, 47
	addw a2, a2, a3
	lw t5, 156(sp)
	slli a4, t5, 4
	addw a3, a4, t5
	sd t5, 304(sp)
	sh1add a2, a3, a2
	slli a5, a3, 1
	li a3, -39
	sd a5, 392(sp)
	lw t4, 160(sp)
	mulw a4, t4, a3
	sd t4, 296(sp)
	addw a2, a2, a4
	lw t5, 164(sp)
	slli a4, t5, 6
	addw a5, a4, t5
	sd t5, 200(sp)
	addw a2, a2, a5
	lw t5, 168(sp)
	mulw a4, t5, t1
	sd t5, 224(sp)
	addw a2, a2, a4
	lw t5, 172(sp)
	li a4, 113
	sd t5, 232(sp)
	mulw a5, t5, a4
	lw t5, 176(sp)
	addw a4, a2, a5
	li a2, 110
	sd t5, 240(sp)
	mulw a5, t5, a2
	lw t5, 180(sp)
	addw a4, a4, a5
	sd t5, 248(sp)
	mulw a5, t5, t1
	li t1, 46
	addw a4, a4, a5
	lw t5, 184(sp)
	slli t0, t5, 2
	subw a5, zero, t0
	sd t5, 256(sp)
	addw a4, a4, a5
	lw t5, 188(sp)
	sh2add t0, t5, t5
	slliw a5, t0, 4
	sd t5, 264(sp)
	addw a4, a4, a5
	lw t5, 192(sp)
	mulw a5, t5, t1
	sd t5, 208(sp)
	addw t0, a4, a5
	li t5, 127
	max a4, t0, zero
	li t0, 39
	min t1, a4, t5
	ld t5, 384(sp)
	ld t4, 368(sp)
	mulw a5, t1, t0
	slli a4, t4, 6
	mulw t1, t5, t2
	ld t5, 360(sp)
	subw t2, a4, t4
	sh3add t3, t5, t5
	sh1add t1, t2, t1
	ld t5, 376(sp)
	slliw t2, t3, 1
	subw t4, zero, t2
	slli t2, t5, 5
	addw t1, t1, t4
	subw t3, t5, t2
	ld t5, 352(sp)
	addw t1, t1, t3
	slli t4, t5, 3
	subw t3, zero, t4
	addw t2, t1, t3
	ld t3, 344(sp)
	li t1, 47
	ld t5, 288(sp)
	mulw t4, t3, t1
	addw t1, t2, t4
	slli t4, t5, 2
	ld t5, 336(sp)
	subw t3, zero, t4
	li t4, -21
	addw t2, t1, t3
	li t1, 67
	mulw t3, t5, t1
	ld t5, 88(sp)
	li t1, -94
	addw t2, t2, t3
	mulw t3, t6, t1
	li t6, -110
	addw t1, t2, t3
	li t2, -121
	mulw t3, t5, t2
	ld t5, 216(sp)
	addw t1, t1, t3
	slli t2, t5, 3
	subw t3, t2, t5
	ld t5, 280(sp)
	addw t1, t1, t3
	mulw t2, t5, t4
	ld t5, 400(sp)
	addw t1, t1, t2
	slli t2, t5, 4
	subw t4, t2, t5
	ld t5, 320(sp)
	slli t2, t4, 2
	subw t3, zero, t2
	li t2, -43
	addw t1, t1, t3
	mulw t3, t5, t2
	ld t5, 312(sp)
	li t2, 105
	addw t1, t1, t3
	mulw t3, t5, t2
	ld t5, 304(sp)
	li t2, -42
	addw t1, t1, t3
	ld t4, 296(sp)
	mulw t3, t5, t2
	ld t5, 200(sp)
	li t2, 87
	addw t1, t1, t3
	mulw t3, t4, t2
	li t2, 29
	addw t1, t1, t3
	mulw t3, t5, t2
	li t2, -106
	addw t1, t1, t3
	ld t5, 224(sp)
	mulw t3, t5, t2
	ld t5, 232(sp)
	addw t1, t1, t3
	slli t2, t5, 5
	subw t3, t5, t2
	li t2, -100
	addw t1, t1, t3
	ld t5, 240(sp)
	mulw t3, t5, t6
	li t6, -95
	addw t1, t1, t3
	ld t5, 248(sp)
	mulw t3, t5, t2
	li t2, -22
	addw t1, t1, t3
	ld t5, 256(sp)
	mulw t3, t5, t2
	li t2, -75
	addw t1, t1, t3
	ld t5, 264(sp)
	mulw t3, t5, t2
	li t2, -125
	addw t1, t1, t3
	ld t5, 208(sp)
	mulw t3, t5, t2
	li t5, 127
	addw t1, t1, t3
	max t2, t1, zero
	min t1, t2, t5
	ld t5, 384(sp)
	li t2, 77
	ld t4, 368(sp)
	mulw t3, t1, t2
	li t2, 26
	addw t1, a5, t3
	mulw a5, t5, t2
	ld t5, 360(sp)
	li t2, 76
	mulw t3, t4, t2
	addw a5, a5, t3
	li t3, -70
	mulw t2, t5, t3
	addw a5, a5, t2
	sd t2, 72(sp)
	li t2, 29
	ld t5, 376(sp)
	mulw t3, t5, t2
	ld t5, 352(sp)
	addw a5, a5, t3
	ld t3, 344(sp)
	sh1add t4, t3, t3
	mulw t2, t5, t6
	li t6, 52
	addw a5, a5, t2
	ld t5, 288(sp)
	slliw t2, t4, 5
	addw a5, a5, t2
	mulw t2, t5, t6
	ld t5, 336(sp)
	addw a5, a5, t2
	ld t6, 328(sp)
	slli t2, t5, 4
	addw t4, t2, t5
	ld t5, 88(sp)
	slli t2, t4, 2
	subw t3, zero, t2
	addw a5, a5, t3
	sh2add t3, t6, t6
	subw t2, zero, t3
	addw a5, a5, t2
	slli t2, t5, 4
	addw t3, t2, t5
	ld t5, 216(sp)
	sh1add a5, t3, a5
	slli t2, t5, 4
	addw t3, t2, t5
	ld t5, 280(sp)
	slli t2, t3, 1
	subw t4, zero, t2
	li t2, 102
	addw a5, a5, t4
	mulw t3, t5, t2
	li t2, -38
	addw a5, a5, t3
	ld t5, 400(sp)
	sh1add t3, t5, t5
	ld t5, 320(sp)
	sh1add a5, t3, a5
	mulw t3, t5, t2
	ld t5, 312(sp)
	li t2, 27
	addw a5, a5, t3
	mulw t3, t5, t2
	ld t5, 304(sp)
	addw a5, a5, t3
	ld t4, 296(sp)
	mulw t3, t5, a2
	ld t5, 200(sp)
	addw t2, a5, t3
	li a5, 116
	mulw t3, t4, a5
	addw t2, t2, t3
	mulw t3, t5, t0
	ld t5, 224(sp)
	addw t0, t2, t3
	slli t2, t5, 6
	subw t3, t5, t2
	ld t5, 232(sp)
	li t2, -99
	addw t0, t0, t3
	mulw t3, t5, t2
	ld t5, 240(sp)
	addw t0, t0, t3
	slli t3, t5, 6
	addw t2, t3, t5
	addw t0, t0, t2
	sd t2, 64(sp)
	ld t5, 248(sp)
	slli t2, t5, 4
	subw t3, t2, t5
	ld t5, 256(sp)
	sh3add t0, t3, t0
	mulw t2, t5, a3
	ld t5, 264(sp)
	addw a3, t0, t2
	sh1add t3, t5, t5
	ld t5, 208(sp)
	slliw t0, t3, 1
	subw t2, zero, t0
	li t0, 94
	addw a3, a3, t2
	mulw t2, t5, t0
	li t5, 127
	addw a3, a3, t2
	max t0, a3, zero
	min a3, t0, t5
	ld t5, 384(sp)
	slliw t0, a3, 7
	ld t4, 368(sp)
	subw t2, t0, a3
	subw a4, t4, a4
	addw a3, t1, t2
	li t1, -23
	mulw t0, t5, t1
	ld t5, 360(sp)
	addw a1, a1, t0
	li t0, 49
	addw a1, a1, a4
	mulw a4, t5, t0
	ld t5, 376(sp)
	addw a1, a1, a4
	mulw a4, t5, a0
	ld t5, 352(sp)
	addw a0, a1, a4
	ld t3, 344(sp)
	li a1, 85
	sh3add a4, t5, t5
	ld t1, 408(sp)
	sh3add a0, a4, a0
	ld t5, 336(sp)
	mulw a4, t3, a1
	addw a0, a0, a4
	slli a4, t1, 1
	li t1, 125
	subw a1, zero, a4
	sh1add a4, t5, t5
	addw a0, a0, a1
	ld t5, 88(sp)
	sh2add a1, a4, a0
	li a4, -117
	mulw a0, t6, t1
	li t6, 82
	addw a1, a1, a0
	mulw t3, t5, a4
	ld t5, 216(sp)
	addw t2, a1, t3
	slli a1, t5, 6
	addw t4, a1, t5
	ld t5, 400(sp)
	subw t3, zero, t4
	addw t2, t2, t3
	mulw t3, t5, t1
	ld t5, 320(sp)
	addw t1, t2, t3
	li t3, 83
	mulw t2, t5, a2
	ld t5, 312(sp)
	addw a2, t1, t2
	slli t1, t5, 5
	subw t2, t5, t1
	ld t5, 304(sp)
	addw t1, a2, t2
	ld t4, 296(sp)
	li a2, -123
	mulw t2, t5, a2
	ld t5, 200(sp)
	addw a2, t1, t2
	li t1, 122
	mulw t2, t4, t3
	addw a2, a2, t2
	mulw t2, t5, t1
	ld t5, 224(sp)
	li t1, 11
	addw a2, a2, t2
	mulw t2, t5, t1
	li t1, -23
	addw a2, a2, t2
	ld t5, 232(sp)
	mulw t2, t5, t1
	ld t5, 240(sp)
	li t1, -47
	addw a2, a2, t2
	mulw t2, t5, t1
	ld t5, 248(sp)
	addw a2, a2, t2
	slli t2, t5, 5
	ld t5, 256(sp)
	subw t1, zero, t2
	li t2, -106
	addw a2, a2, t1
	mulw t1, t5, a4
	ld t5, 264(sp)
	li a4, 95
	addw a2, a2, t1
	mulw t1, t5, a4
	ld t5, 208(sp)
	li a4, 118
	addw a2, a2, t1
	mulw t1, t5, a4
	li t5, 127
	addw a4, a2, t1
	max a2, a4, zero
	min a4, a2, t5
	ld t5, 384(sp)
	ld t4, 368(sp)
	sh3add a0, t5, a0
	mulw a2, a4, t2
	li a4, -116
	li t2, -104
	addw t1, a3, a2
	mulw a3, t4, t6
	li t6, -95
	addw a0, a0, a3
	sd a3, 40(sp)
	ld t5, 360(sp)
	mulw a3, t5, t2
	ld t5, 376(sp)
	addw a2, a0, a3
	li a0, 101
	mulw a3, t5, a0
	ld t5, 352(sp)
	addw a2, a2, a3
	ld t3, 344(sp)
	mulw t2, t5, a4
	addw a3, a2, t2
	ld a2, 80(sp)
	subw t4, t3, a2
	addw t2, a3, t4
	ld a3, 56(sp)
	ld t5, 336(sp)
	subw t3, zero, a3
	addw a2, t2, t3
	li t3, -70
	mulw a3, t5, t3
	ld t5, 88(sp)
	addw a2, a2, a3
	li a3, 75
	mulw t2, t5, a3
	ld t5, 216(sp)
	addw a2, a2, t2
	slli a3, t5, 5
	addw t2, a3, t5
	ld t5, 280(sp)
	sh1add a2, t2, a2
	sh1add t3, t5, t5
	ld t5, 400(sp)
	slliw a3, t3, 5
	subw t2, zero, a3
	li a3, -101
	addw a2, a2, t2
	mulw t2, t5, a3
	ld t5, 320(sp)
	li a3, -114
	addw a2, a2, t2
	mulw t2, t5, a3
	ld t5, 312(sp)
	li a3, 59
	addw a2, a2, t2
	mulw t2, t5, a3
	ld t5, 304(sp)
	addw a2, a2, t2
	sh1add t2, t5, t5
	sh2add a2, t2, a2
	sd t2, 48(sp)
	ld t4, 296(sp)
	ld t5, 200(sp)
	sh2add t2, t4, t4
	addw a2, a2, t2
	mulw t2, t5, t6
	ld t5, 224(sp)
	addw a2, a2, t2
	mulw t2, t5, a5
	ld t5, 232(sp)
	li a5, -93
	addw a2, a2, t2
	mulw t2, t5, a5
	ld t5, 240(sp)
	addw a2, a2, t2
	slli a5, t5, 4
	subw t2, a5, t5
	ld t5, 248(sp)
	li a5, 79
	addw a2, a2, t2
	mulw t2, t5, a5
	ld t5, 256(sp)
	addw a2, a2, t2
	sh1add a5, t5, t5
	ld t5, 264(sp)
	addw a2, a2, a5
	mulw t0, t5, t0
	ld t5, 208(sp)
	addw a5, a2, t0
	slli a2, t5, 5
	subw t0, a2, t5
	li t5, 127
	slli t2, t0, 2
	subw t3, zero, t2
	addw t0, a5, t3
	max a5, t0, zero
	min t0, a5, t5
	ld t5, 384(sp)
	sh1add a5, t0, t0
	ld t4, 368(sp)
	subw t3, zero, a5
	li a5, 81
	addw t2, t1, t3
	mulw t0, t5, a5
	slli t1, t4, 4
	ld t5, 360(sp)
	addw t3, t1, t4
	li t1, -102
	sh2add t0, t3, t0
	mulw t3, t5, t1
	li t1, -74
	addw t0, t0, t3
	ld t5, 376(sp)
	mulw t3, t5, t1
	ld t5, 352(sp)
	li t1, 121
	addw t0, t0, t3
	ld t3, 344(sp)
	mulw t4, t5, t1
	addw t0, t0, t4
	slli t4, t3, 4
	subw t1, t4, t3
	subw t4, t3, t4
	addw t3, t0, t4
	sd t4, 32(sp)
	li t0, 55
	ld t5, 288(sp)
	mulw t4, t5, t0
	ld t5, 336(sp)
	addw t3, t3, t4
	ld t6, 328(sp)
	mulw t4, t5, a0
	ld t5, 88(sp)
	addw a0, t3, t4
	mulw t4, t6, a6
	addw t3, a0, t4
	slli a0, t5, 5
	subw t4, a0, t5
	ld t5, 280(sp)
	slli t6, t4, 1
	subw a0, zero, t6
	addw t4, t3, a0
	addw t3, t4, a1
	li a1, 114
	mulw t4, t5, a1
	ld t5, 400(sp)
	addw t3, t3, t4
	li t4, 38
	mulw t6, t5, t4
	li t4, -21
	addw t3, t3, t6
	ld t5, 320(sp)
	mulw t6, t5, t4
	ld t5, 312(sp)
	addw t3, t3, t6
	slli t4, t5, 3
	subw t6, t4, t5
	ld t5, 304(sp)
	slli t4, t6, 4
	addw t3, t3, t4
	ld t4, 296(sp)
	mulw t6, t5, a1
	slli t5, t4, 3
	addw a1, t3, t6
	subw t3, t5, t4
	ld t5, 200(sp)
	slli t6, t3, 4
	sh2add t4, t5, t5
	addw a1, a1, t6
	ld t5, 224(sp)
	slliw a6, t4, 1
	subw t6, zero, a6
	addw a1, a1, t6
	slli t6, t5, 4
	ld t5, 232(sp)
	subw a6, zero, t6
	addw t4, a1, a6
	li a1, -50
	mulw t6, t5, a1
	ld t5, 240(sp)
	addw t4, t4, t6
	slli t6, t5, 3
	subw a6, t6, t5
	ld t5, 248(sp)
	slli a7, a6, 4
	subw t6, zero, a7
	addw t4, t4, t6
	mulw t6, t5, a4
	ld t5, 256(sp)
	addw a4, t4, t6
	li t4, -54
	mulw t6, t5, t4
	ld t5, 264(sp)
	addw a4, a4, t6
	li t6, 82
	mulw t4, t5, t6
	ld t5, 208(sp)
	addw a4, a4, t4
	sh3add t4, t5, t5
	slliw t6, t4, 3
	subw t5, zero, t6
	li t6, -77
	addw t4, a4, t5
	li t5, 127
	max a4, t4, zero
	min t4, a4, t5
	ld t5, 384(sp)
	slliw a4, t4, 5
	slli t4, t5, 4
	addw t2, t2, a4
	subw a4, t4, t5
	ld t4, 368(sp)
	ld t5, 360(sp)
	mulw a6, t4, t6
	slli t4, t5, 5
	addw a4, a4, a6
	addw t6, t4, t5
	ld t5, 376(sp)
	sh1add t4, t6, a4
	li a4, -90
	mulw a6, t5, a4
	ld t5, 352(sp)
	addw t6, t4, a6
	sh1add a7, t5, t5
	slli t4, t5, 1
	slliw a6, a7, 1
	subw a7, zero, a6
	addw t5, t6, a7
	slli t6, t1, 1
	subw a6, zero, t6
	addw t1, t5, a6
	ld t5, 288(sp)
	slli t6, t5, 3
	ld t5, 336(sp)
	subw a6, zero, t6
	ld t6, 328(sp)
	addw t1, t1, a6
	li a6, -13
	mulw a5, t5, a5
	ld t5, 88(sp)
	addw t1, t1, a5
	sh1add a5, t6, t1
	li t6, -110
	mulw t1, t5, t6
	li t6, -95
	addw a5, a5, t1
	ld t5, 216(sp)
	mulw t1, t5, t6
	li t6, 52
	addw a5, a5, t1
	ld t5, 280(sp)
	mulw t1, t5, a3
	ld t5, 400(sp)
	addw a3, a5, t1
	mulw a5, t5, t6
	li t6, -95
	addw a3, a3, a5
	ld t5, 320(sp)
	slli a5, t5, 4
	subw t1, a5, t5
	ld t5, 312(sp)
	addw a3, a3, t1
	mulw a5, t5, t0
	ld t5, 304(sp)
	addw a3, a3, a5
	slli a5, t5, 5
	addw t1, a5, t5
	ld t5, 200(sp)
	subw a5, zero, t1
	li t1, 67
	addw t0, a3, a5
	li a5, 58
	sh1add a3, t3, t0
	mulw t0, t5, a5
	li a5, 86
	addw a3, a3, t0
	ld t5, 224(sp)
	mulw t0, t5, t1
	ld t5, 232(sp)
	addw a3, a3, t0
	mulw t0, t5, a5
	ld t5, 240(sp)
	li a5, -79
	addw a3, a3, t0
	mulw t0, t5, a5
	ld t5, 248(sp)
	addw a3, a3, t0
	sh1add a5, t5, t5
	ld t5, 256(sp)
	slliw t0, a5, 4
	addw a3, a3, t0
	mulw a5, t5, a6
	ld t5, 264(sp)
	addw a3, a3, a5
	slli a5, t5, 4
	subw t0, t5, a5
	ld t5, 208(sp)
	addw a3, a3, t0
	addw a2, a2, t5
	li t5, 127
	sh1add a5, a2, a3
	max a3, a5, zero
	min a2, a3, t5
	mulw a3, a2, t6
	addw a5, t2, a3
	ld t2, 64(sp)
	ld a3, 40(sp)
	ld t5, 384(sp)
	addw a2, t2, a3
	li t2, 107
	slli a3, t5, 5
	addw t0, a3, t5
	ld t5, 360(sp)
	addw a2, a2, t0
	subw t0, zero, t4
	mulw a3, t5, t1
	ld t5, 376(sp)
	addw a2, a2, a3
	ld t3, 344(sp)
	slli a3, t5, 4
	subw t1, a3, t5
	sh1add a2, t1, a2
	addw a3, a2, t0
	ld a2, 80(sp)
	ld t1, 408(sp)
	addw t0, a2, t3
	ld t5, 336(sp)
	addw a3, a3, t0
	ld t6, 328(sp)
	sh3add a2, t1, a3
	sh3add t0, t6, t6
	mulw a3, t5, a6
	li t6, 82
	ld t5, 88(sp)
	addw a2, a2, a3
	sh2add t1, t5, t5
	li a3, 104
	sh1add a2, t0, a2
	ld t5, 216(sp)
	addw a2, a2, t1
	mulw t1, t5, a3
	ld t5, 280(sp)
	li a3, -119
	addw a2, a2, t1
	mulw t1, t5, a3
	ld t5, 400(sp)
	addw a3, a2, t1
	slli t1, t5, 3
	subw a2, t5, t1
	ld t5, 320(sp)
	addw t1, a3, a2
	li a3, 71
	mulw t3, t5, a3
	ld t5, 312(sp)
	addw t1, t1, t3
	mulw t4, t5, t2
	ld t2, 48(sp)
	addw t3, t1, t4
	ld t4, 296(sp)
	sh3add t1, t2, t3
	ld t5, 200(sp)
	sh1add t3, t5, t5
	mulw t2, t4, t6
	ld t5, 224(sp)
	li t6, -77
	slliw t4, t3, 5
	addw t1, t1, t2
	subw t2, zero, t4
	addw t1, t1, t2
	li t2, -104
	mulw t3, t5, t2
	li t2, -121
	addw t1, t1, t3
	ld t5, 232(sp)
	mulw t3, t5, t2
	ld t5, 248(sp)
	li t2, 97
	addw t1, t1, t3
	mulw t3, t5, t2
	ld t5, 256(sp)
	addw t1, t1, t3
	li t3, 83
	mulw t4, t5, t3
	ld t5, 264(sp)
	addw t2, t1, t4
	li t1, 46
	mulw t3, t5, t1
	ld t5, 208(sp)
	addw t1, t2, t3
	li t2, -84
	mulw t3, t5, t2
	li t5, 127
	addw t2, t1, t3
	li t3, -70
	max t1, t2, zero
	min t2, t1, t5
	mulw t1, t2, a1
	ld t2, 72(sp)
	addw a1, a5, t1
	ld t4, 32(sp)
	li a5, -29
	ld t5, 384(sp)
	addw t1, t2, t4
	li t2, -125
	addw a0, a0, t1
	ld t4, 368(sp)
	mulw t1, t5, a5
	ld t5, 376(sp)
	slli a5, t4, 3
	addw a0, a0, t1
	subw t1, a5, t4
	li t4, 38
	addw a0, a0, t1
	mulw a5, t5, t4
	ld t5, 352(sp)
	addw a0, a0, a5
	mulw a4, t5, a4
	ld t5, 288(sp)
	addw a0, a0, a4
	slli t1, t5, 5
	ld t5, 336(sp)
	subw a5, zero, t1
	addw a4, a0, a5
	li a0, 37
	mulw a5, t5, a0
	ld t5, 216(sp)
	addw t1, a4, a5
	li a5, -46
	sh2add a4, t0, t1
	li t1, -23
	mulw t0, t5, t2
	li t2, -75
	addw a4, a4, t0
	ld t5, 280(sp)
	mulw t0, t5, a5
	ld t5, 400(sp)
	addw a4, a4, t0
	mulw a5, t5, t3
	ld t5, 320(sp)
	addw a4, a4, a5
	li a5, -73
	mulw t0, t5, a0
	ld t5, 312(sp)
	addw a4, a4, t0
	mulw t0, t5, a5
	ld a5, 392(sp)
	addw a4, a4, t0
	ld t4, 296(sp)
	subw t0, zero, a5
	ld t5, 200(sp)
	li a5, -87
	addw a4, a4, t0
	mulw t0, t4, a5
	mulw a5, t5, t2
	addw a4, a4, t0
	li t2, 29
	addw a4, a4, a5
	ld t5, 224(sp)
	mulw a5, t5, a3
	ld t5, 232(sp)
	addw a3, a4, a5
	li a4, 53
	mulw a5, t5, t6
	ld t5, 240(sp)
	addw a3, a3, a5
	mulw a5, t5, a4
	ld t5, 248(sp)
	addw a3, a3, a5
	mulw a4, t5, a0
	ld t5, 256(sp)
	addw a0, a3, a4
	li a3, -103
	mulw a4, t5, a3
	ld t5, 264(sp)
	addw a0, a0, a4
	mulw a3, t5, a6
	ld t5, 208(sp)
	addw a0, a0, a3
	li a3, -114
	mulw a4, t5, a3
	li t5, 127
	addw a0, a0, a4
	max a3, a0, zero
	min a0, a3, t5
	ld t5, 384(sp)
	ld t4, 368(sp)
	mulw a3, a0, t1
	li t1, 67
	addw a0, a1, a3
	mulw a3, t5, t1
	li t1, -74
	addw a1, a2, a3
	ld t5, 360(sp)
	li a2, 42
	mulw a3, t4, a2
	li a2, 41
	addw a1, a1, a3
	mulw a3, t5, a2
	ld t5, 376(sp)
	li a2, -123
	addw a1, a1, a3
	mulw a3, t5, a2
	ld t5, 352(sp)
	li a2, -92
	addw a1, a1, a3
	ld t3, 344(sp)
	mulw a3, t5, a2
	ld t5, 288(sp)
	sh2add a2, t3, t3
	addw a1, a1, a3
	li a3, 75
	sh1add a1, a2, a1
	mulw a2, t5, t6
	ld t5, 336(sp)
	addw a1, a1, a2
	ld t6, 328(sp)
	mulw a2, t5, a3
	ld t5, 88(sp)
	addw a1, a1, a2
	sh1add a2, t6, t6
	slliw a3, a2, 5
	li a2, -51
	addw a1, a1, a3
	mulw a3, t5, a2
	ld t5, 216(sp)
	li a2, 109
	addw a1, a1, a3
	mulw a3, t5, a2
	li a2, -122
	addw a1, a1, a3
	ld t5, 280(sp)
	mulw a3, t5, t1
	li t1, 67
	addw a1, a1, a3
	ld t5, 320(sp)
	mulw a3, t5, a2
	ld t5, 312(sp)
	addw a1, a1, a3
	mulw a2, t5, t1
	ld t5, 304(sp)
	li t1, 47
	addw a1, a1, a2
	ld t4, 296(sp)
	li a2, 22
	mulw a3, t5, t1
	li t1, 46
	addw a1, a1, a3
	ld t5, 200(sp)
	mulw a3, t4, a2
	li t4, 38
	slli a2, t5, 4
	addw a1, a1, a3
	addw a4, a2, t5
	ld t5, 224(sp)
	slli a2, a4, 2
	subw a3, zero, a2
	addw a1, a1, a3
	mulw a2, t5, t4
	ld t5, 232(sp)
	addw a1, a1, a2
	li a2, 115
	mulw a3, t5, t2
	li t2, -121
	addw a1, a1, a3
	ld t5, 240(sp)
	mulw a3, t5, a2
	ld t5, 248(sp)
	addw a1, a1, a3
	mulw a2, t5, t2
	ld t5, 256(sp)
	addw a1, a1, a2
	sh3add a3, t5, t5
	li a2, -49
	ld t5, 264(sp)
	sh2add a1, a3, a1
	mulw a3, t5, a2
	ld t5, 208(sp)
	addw a2, a1, a3
	li a1, 85
	mulw a3, t5, a1
	li t5, 127
	addw a2, a2, a3
	max a1, a2, zero
	min a2, a1, t5
	mulw a1, a2, t1
	addw a0, a0, a1
	li a1, 100
	slt s0, zero, a0
	subw a0, a1, s0
	jal putch
	li a0, 97
	bne s0, zero, label1013
	li a0, 111
.p2align 2
label1013:
	jal putch
	li a0, 116
	bne s0, zero, label1015
	li a0, 103
.p2align 2
label1015:
	jal putch
	li a0, 10
	jal putch
	ld a0, 272(sp)
	addiw a0, a0, -1
	sd a0, 272(sp)
	bgt a0, zero, label17
label11:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 416
	ret
