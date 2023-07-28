.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -664
	addi a1, sp, 440
	sd s0, 240(sp)
	sd s1, 256(sp)
	sd s2, 272(sp)
	sd ra, 288(sp)
	sd a1, 200(sp)
	jal getint
	sd a0, 216(sp)
	ble a0, zero, label11
label17:
	mv s0, zero
	li a0, 5
	bge zero, a0, label10
.p2align 2
label6:
	sh2add a0, s0, s0
	ld a1, 200(sp)
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
	lw a7, 440(sp)
	li a0, 85
	li a2, 23
	li t0, -103
	li t6, -123
	li t5, -106
	li s0, -95
	mulw a1, a7, a0
	sd a7, 432(sp)
	lw a7, 444(sp)
	mulw a3, a7, a2
	sd a7, 176(sp)
	li a2, -82
	addw a1, a1, a3
	lw a7, 448(sp)
	mulw a3, a7, a2
	sd a7, 168(sp)
	addw a1, a1, a3
	lw a7, 452(sp)
	mulw a2, a7, t0
	sd a7, 416(sp)
	addw a1, a1, a2
	sd t0, 544(sp)
	li t0, 50
	lw a7, 456(sp)
	mulw a2, a7, t6
	sd a7, 160(sp)
	addw a1, a1, a2
	sd t6, 424(sp)
	lw a7, 460(sp)
	slli t1, a7, 6
	addw a1, a1, t1
	sd a7, 152(sp)
	sd t1, 608(sp)
	lw a7, 464(sp)
	slli t1, a7, 4
	subw t2, t1, a7
	sd a7, 96(sp)
	slli a3, t2, 3
	sd t1, 16(sp)
	subw a2, zero, a3
	sd t2, 600(sp)
	addw a1, a1, a2
	li t2, -75
	lw a7, 468(sp)
	mulw a2, a7, t0
	sd a7, 144(sp)
	addw a1, a1, a2
	sd t0, 400(sp)
	li a2, -59
	lw a7, 472(sp)
	mulw a3, a7, a2
	sd a7, 136(sp)
	addw a2, a1, a3
	lw a7, 476(sp)
	li a1, 47
	sd a7, 232(sp)
	mulw a3, a7, a1
	lw t6, 480(sp)
	addw a2, a2, a3
	li a3, -111
	sd t6, 312(sp)
	mulw a4, t6, a3
	lw a7, 484(sp)
	li t6, -102
	li a3, -67
	addw a2, a2, a4
	sd a7, 248(sp)
	mulw t0, a7, a3
	addw a2, a2, t0
	sd t0, 352(sp)
	li t0, -39
	lw a7, 488(sp)
	mulw a3, a7, t5
	sd a7, 592(sp)
	addw a2, a2, a3
	sd t5, 0(sp)
	li t5, 110
	lw a7, 492(sp)
	mulw a3, a7, t2
	sd a7, 128(sp)
	addw a2, a2, a3
	sd t2, 568(sp)
	lw a7, 496(sp)
	mulw a3, a7, t6
	sd a7, 120(sp)
	addw a2, a2, a3
	sd t6, 80(sp)
	lw a7, 500(sp)
	slli a4, a7, 4
	addw a3, a4, a7
	sd a7, 112(sp)
	sh1add a2, a3, a2
	slli t4, a3, 1
	sd t4, 584(sp)
	lw a7, 504(sp)
	mulw a3, a7, t0
	sd a7, 104(sp)
	addw a2, a2, a3
	sd t0, 336(sp)
	lw a7, 508(sp)
	slli a3, a7, 6
	addw a4, a3, a7
	sd a7, 264(sp)
	addw a2, a2, a4
	lw a7, 512(sp)
	mulw a3, a7, a1
	sd a7, 328(sp)
	addw a2, a2, a3
	lw a7, 516(sp)
	li a3, 113
	sd a7, 344(sp)
	mulw a4, a7, a3
	lw a7, 520(sp)
	addw a2, a2, a4
	mulw a3, a7, t5
	sd a7, 360(sp)
	addw a2, a2, a3
	sd t5, 384(sp)
	lw a7, 524(sp)
	mulw a4, a7, a1
	sd a7, 376(sp)
	addw a3, a2, a4
	lw a2, 528(sp)
	slli t0, a2, 2
	subw a5, zero, t0
	addw a4, a3, a5
	lw a3, 532(sp)
	sh2add t1, a3, a3
	lw a7, 536(sp)
	slliw t0, t1, 4
	addw a5, a4, t0
	sd a7, 280(sp)
	li a4, 46
	mulw t0, a7, a4
	li a7, 127
	addw t1, a5, t0
	sd a7, 296(sp)
	li t0, 39
	max a5, t1, zero
	min t1, a5, a7
	ld a7, 432(sp)
	ld t5, 0(sp)
	mulw a5, t1, t0
	mulw t1, a7, t5
	li t5, -21
	ld a7, 176(sp)
	slli t2, a7, 6
	subw t3, t2, a7
	sh1add t1, t3, t1
	sd t2, 304(sp)
	ld a7, 168(sp)
	sh3add t3, a7, a7
	ld a7, 416(sp)
	slliw t2, t3, 1
	subw t4, zero, t2
	slli t2, a7, 5
	addw t1, t1, t4
	subw t3, a7, t2
	ld a7, 160(sp)
	addw t1, t1, t3
	slli t3, a7, 3
	ld a7, 152(sp)
	subw t2, zero, t3
	addw t1, t1, t2
	mulw t2, a7, a1
	ld a7, 96(sp)
	addw t1, t1, t2
	slli t4, a7, 2
	subw t3, zero, t4
	li t4, -121
	addw t2, t1, t3
	li t1, 67
	sd t1, 560(sp)
	ld a7, 144(sp)
	mulw t3, a7, t1
	ld a7, 136(sp)
	li t1, -94
	addw t2, t2, t3
	sd t4, 552(sp)
	mulw t3, a7, t1
	ld a7, 232(sp)
	addw t1, t2, t3
	ld t6, 312(sp)
	sd t5, 32(sp)
	mulw t2, a7, t4
	ld a7, 248(sp)
	addw t1, t1, t2
	slli t2, t6, 3
	subw t3, t2, t6
	li t6, -70
	mulw t2, a7, t5
	addw t1, t1, t3
	ld a7, 592(sp)
	addw t1, t1, t2
	slli t2, a7, 4
	subw t3, t2, a7
	ld a7, 128(sp)
	slli t2, t3, 2
	subw t4, zero, t2
	li t2, -43
	addw t1, t1, t4
	mulw t3, a7, t2
	ld a7, 120(sp)
	li t2, 105
	addw t1, t1, t3
	mulw t3, a7, t2
	ld a7, 112(sp)
	li t2, -42
	addw t1, t1, t3
	mulw t3, a7, t2
	ld a7, 104(sp)
	li t2, 87
	addw t1, t1, t3
	mulw t3, a7, t2
	li t2, 29
	addw t1, t1, t3
	sd t2, 576(sp)
	ld a7, 264(sp)
	mulw t3, a7, t2
	ld a7, 328(sp)
	addw t1, t1, t3
	ld t5, 0(sp)
	li t3, -110
	mulw t2, a7, t5
	ld a7, 344(sp)
	addw t1, t1, t2
	sd t3, 88(sp)
	slli t2, a7, 5
	subw t4, a7, t2
	li t2, -100
	addw t1, t1, t4
	ld a7, 360(sp)
	mulw t4, a7, t3
	ld a7, 376(sp)
	addw t1, t1, t4
	mulw t3, a7, t2
	li t2, -22
	addw t1, t1, t3
	mulw t3, a2, t2
	ld t2, 568(sp)
	addw t1, t1, t3
	mulw t3, a3, t2
	li t2, -125
	addw t1, t1, t3
	sd t2, 616(sp)
	ld a7, 280(sp)
	mulw t3, a7, t2
	ld a7, 296(sp)
	addw t1, t1, t3
	max t2, t1, zero
	min t1, t2, a7
	ld a7, 432(sp)
	li t2, 77
	mulw t3, t1, t2
	li t2, 26
	addw t1, a5, t3
	mulw a5, a7, t2
	ld a7, 176(sp)
	li t2, 76
	sd t6, 624(sp)
	mulw t3, a7, t2
	ld a7, 168(sp)
	addw a5, a5, t3
	mulw t4, a7, t6
	addw a5, a5, t4
	sd t4, 632(sp)
	ld a7, 416(sp)
	ld t2, 576(sp)
	sd s0, 648(sp)
	mulw t3, a7, t2
	ld a7, 160(sp)
	addw a5, a5, t3
	mulw t2, a7, s0
	ld a7, 152(sp)
	addw a5, a5, t2
	sh1add t3, a7, a7
	slliw t2, t3, 5
	li t3, 52
	addw a5, a5, t2
	sd t3, 72(sp)
	ld a7, 96(sp)
	mulw t2, a7, t3
	ld a7, 144(sp)
	addw a5, a5, t2
	slli t2, a7, 4
	addw t4, t2, a7
	ld a7, 136(sp)
	slli t2, t4, 2
	subw t3, zero, t2
	addw a5, a5, t3
	sh2add t3, a7, a7
	ld a7, 232(sp)
	subw t2, zero, t3
	ld t6, 312(sp)
	addw a5, a5, t2
	slli t2, a7, 4
	addw t3, t2, a7
	ld a7, 248(sp)
	slli t2, t6, 4
	sh1add a5, t3, a5
	addw t3, t2, t6
	slli t2, t3, 1
	subw t4, zero, t2
	li t2, 102
	addw a5, a5, t4
	mulw t3, a7, t2
	li t2, -38
	addw a5, a5, t3
	ld a7, 592(sp)
	sh1add t3, a7, a7
	ld a7, 128(sp)
	sh1add a5, t3, a5
	mulw t3, a7, t2
	ld a7, 120(sp)
	li t2, 27
	addw a5, a5, t3
	mulw t3, a7, t2
	ld a7, 112(sp)
	addw a5, a5, t3
	ld t5, 384(sp)
	mulw t3, a7, t5
	li t5, -23
	addw t2, a5, t3
	ld a7, 104(sp)
	li a5, 116
	mulw t3, a7, a5
	ld a7, 264(sp)
	addw t2, t2, t3
	mulw t3, a7, t0
	ld a7, 328(sp)
	addw t0, t2, t3
	slli t2, a7, 6
	subw t3, a7, t2
	ld a7, 344(sp)
	li t2, -99
	addw t0, t0, t3
	mulw t3, a7, t2
	ld a7, 360(sp)
	addw t0, t0, t3
	slli t3, a7, 6
	addw t2, t3, a7
	addw t0, t0, t2
	sd t2, 56(sp)
	ld a7, 376(sp)
	slli t2, a7, 4
	subw t3, t2, a7
	sh3add t2, t3, t0
	ld t0, 336(sp)
	ld a7, 280(sp)
	mulw t3, a2, t0
	sh1add t0, a3, a3
	addw t2, t2, t3
	slliw t3, t0, 1
	subw t4, zero, t3
	addw t0, t2, t4
	li t2, 94
	mulw t3, a7, t2
	ld a7, 296(sp)
	addw t0, t0, t3
	sd t5, 640(sp)
	max t2, t0, zero
	min t0, t2, a7
	ld a7, 432(sp)
	slliw t2, t0, 7
	subw t3, t2, t0
	ld t0, 352(sp)
	addw t1, t1, t3
	mulw t2, a7, t5
	ld a7, 176(sp)
	addw t3, t0, t2
	ld t2, 304(sp)
	subw t4, a7, t2
	ld a7, 168(sp)
	addw t0, t3, t4
	li t3, 49
	mulw t4, a7, t3
	ld a7, 416(sp)
	addw t2, t0, t4
	ld t0, 400(sp)
	mulw t4, a7, t0
	ld a7, 160(sp)
	addw t2, t2, t4
	sh3add t4, a7, a7
	ld a7, 152(sp)
	sh3add t0, t4, t2
	ld t2, 600(sp)
	slli t5, t2, 1
	mulw t4, a7, a0
	ld a7, 144(sp)
	addw t0, t0, t4
	sh1add t2, a7, a7
	subw t4, zero, t5
	ld a7, 136(sp)
	li t5, 125
	addw t0, t0, t4
	li t4, -117
	sh2add t0, t2, t0
	mulw t2, a7, t5
	ld a7, 232(sp)
	addw t0, t0, t2
	mulw t6, a7, t4
	addw a6, t0, t6
	ld t6, 312(sp)
	slli t0, t6, 6
	addw s0, t0, t6
	subw a7, zero, s0
	li s0, 82
	addw t6, a6, a7
	ld a7, 592(sp)
	mulw t5, a7, t5
	ld a7, 128(sp)
	addw t6, t6, t5
	ld t5, 384(sp)
	mulw a6, a7, t5
	ld a7, 120(sp)
	addw t6, t6, a6
	slli t5, a7, 5
	subw a6, a7, t5
	ld a7, 112(sp)
	addw t5, t6, a6
	ld t6, 424(sp)
	mulw a6, a7, t6
	li t6, 83
	addw t5, t5, a6
	sd t6, 40(sp)
	ld a7, 104(sp)
	mulw a6, a7, t6
	ld a7, 264(sp)
	li t6, 122
	addw t5, t5, a6
	mulw a6, a7, t6
	ld a7, 328(sp)
	li t6, 11
	addw t5, t5, a6
	mulw a6, a7, t6
	ld a7, 344(sp)
	addw t6, t5, a6
	ld t5, 640(sp)
	mulw a6, a7, t5
	ld a7, 360(sp)
	li t5, -47
	addw t6, t6, a6
	mulw a6, a7, t5
	ld a7, 376(sp)
	addw t5, t6, a6
	slli a6, a7, 5
	ld a7, 280(sp)
	subw t6, zero, a6
	mulw a6, a2, t4
	addw t5, t5, t6
	addw t4, t5, a6
	li t5, 95
	mulw t6, a3, t5
	li t5, 118
	addw t4, t4, t6
	mulw t6, a7, t5
	ld a7, 296(sp)
	addw t5, t4, t6
	max t4, t5, zero
	ld t5, 0(sp)
	min t6, t4, a7
	ld a7, 432(sp)
	sd s0, 184(sp)
	mulw a6, t6, t5
	li t6, -104
	addw t4, t1, a6
	sh3add t1, a7, t2
	ld a7, 176(sp)
	mulw t5, a7, s0
	addw t1, t1, t5
	sd t5, 408(sp)
	li t5, 101
	sd t6, 8(sp)
	ld a7, 168(sp)
	mulw t2, a7, t6
	ld a7, 416(sp)
	addw t1, t1, t2
	li t2, -116
	mulw t6, a7, t5
	ld a7, 160(sp)
	addw t1, t1, t6
	mulw a6, a7, t2
	ld a7, 152(sp)
	addw t6, t1, a6
	ld t1, 608(sp)
	subw a6, a7, t1
	ld t1, 16(sp)
	addw t6, t6, a6
	subw a7, zero, t1
	addw a6, t6, a7
	ld a7, 144(sp)
	ld t6, 624(sp)
	mulw a7, a7, t6
	li t6, 75
	addw t1, a6, a7
	sd t6, 656(sp)
	ld a7, 232(sp)
	mulw a6, a7, t6
	ld t6, 312(sp)
	addw t1, t1, a6
	ld a7, 248(sp)
	slli a6, t6, 5
	addw a6, a6, t6
	sh1add t6, a7, a7
	sh1add t1, a6, t1
	slliw a7, t6, 5
	li t6, -101
	subw a6, zero, a7
	ld a7, 592(sp)
	addw t1, t1, a6
	mulw a6, a7, t6
	li t6, -114
	addw t1, t1, a6
	sd t6, 64(sp)
	ld a7, 128(sp)
	mulw a7, a7, t6
	addw a6, t1, a7
	ld a7, 120(sp)
	li t1, 59
	mulw s0, a7, t1
	ld a7, 112(sp)
	addw t6, a6, s0
	sh1add a6, a7, a7
	sh2add t6, a6, t6
	sd a6, 224(sp)
	ld a7, 104(sp)
	sh2add a6, a7, a7
	ld a7, 264(sp)
	addw t6, t6, a6
	ld s0, 648(sp)
	mulw a6, a7, s0
	ld a7, 328(sp)
	addw t6, t6, a6
	mulw a6, a7, a5
	ld a7, 344(sp)
	addw a5, t6, a6
	li t6, -93
	mulw a6, a7, t6
	ld a7, 360(sp)
	addw a5, a5, a6
	slli t6, a7, 4
	subw a6, t6, a7
	ld a7, 376(sp)
	li t6, 79
	addw a5, a5, a6
	sh1add a6, a2, a2
	mulw t6, a7, t6
	ld a7, 280(sp)
	addw a5, a5, t6
	addw t6, a5, a6
	mulw a5, a3, t3
	addw t3, t6, a5
	slli a5, a7, 5
	subw t6, a5, a7
	slli a6, t6, 2
	subw a7, zero, a6
	addw t6, t3, a7
	ld a7, 296(sp)
	max t3, t6, zero
	min t6, t3, a7
	sh1add t3, t6, t6
	subw a7, zero, t3
	li t3, 81
	addw a6, t4, a7
	ld a7, 432(sp)
	mulw t4, a7, t3
	ld a7, 176(sp)
	slli t6, a7, 4
	addw t6, t6, a7
	ld a7, 168(sp)
	sh2add t4, t6, t4
	ld t6, 80(sp)
	mulw a7, a7, t6
	li t6, -74
	addw t4, t4, a7
	sd t6, 48(sp)
	ld a7, 416(sp)
	mulw a7, a7, t6
	li t6, 121
	addw t4, t4, a7
	ld a7, 160(sp)
	mulw t6, a7, t6
	ld a7, 152(sp)
	addw t4, t4, t6
	slli s0, a7, 4
	subw t6, s0, a7
	slli t6, t6, 1
	subw s0, a7, s0
	addw s1, t4, s0
	li t4, 55
	sd s0, 392(sp)
	ld a7, 96(sp)
	mulw s2, a7, t4
	ld a7, 144(sp)
	addw s0, s1, s2
	mulw t5, a7, t5
	addw s0, s0, t5
	li t5, -13
	sd t5, 192(sp)
	ld a7, 136(sp)
	mulw a7, a7, t5
	addw t5, s0, a7
	ld a7, 232(sp)
	slli s0, a7, 5
	subw s1, s0, a7
	slli s0, s1, 1
	subw a7, zero, s0
	addw s0, t5, a7
	addw t5, s0, t0
	sd a7, 368(sp)
	li s0, 38
	li t0, 114
	ld a7, 248(sp)
	sd s0, 24(sp)
	mulw s1, a7, t0
	ld a7, 592(sp)
	addw t5, t5, s1
	mulw a7, a7, s0
	addw s1, t5, a7
	ld a7, 128(sp)
	ld t5, 32(sp)
	mulw a7, a7, t5
	addw t5, s1, a7
	ld a7, 120(sp)
	slli s0, a7, 3
	subw s1, s0, a7
	slli a7, s1, 4
	addw t5, t5, a7
	ld a7, 112(sp)
	mulw s0, a7, t0
	ld a7, 104(sp)
	addw t0, t5, s0
	slli t5, a7, 3
	subw t5, t5, a7
	slli a7, t5, 4
	addw t0, t0, a7
	ld a7, 264(sp)
	sh2add s0, a7, a7
	slliw s1, s0, 1
	subw a7, zero, s1
	addw t0, t0, a7
	ld a7, 328(sp)
	slli s0, a7, 4
	subw a7, zero, s0
	li s0, -50
	addw t0, t0, a7
	sd s0, 320(sp)
	ld a7, 344(sp)
	mulw a7, a7, s0
	addw t0, t0, a7
	ld a7, 360(sp)
	slli s0, a7, 3
	subw s1, s0, a7
	slli s0, s1, 4
	subw a7, zero, s0
	addw t0, t0, a7
	ld a7, 376(sp)
	ld s0, 184(sp)
	mulw t2, a7, t2
	li a7, -54
	addw t0, t0, t2
	mulw t2, a2, a7
	ld a7, 280(sp)
	addw t0, t0, t2
	mulw t2, a3, s0
	addw t0, t0, t2
	sh3add t2, a7, a7
	slliw a7, t2, 3
	subw t2, zero, a7
	addw a7, t0, t2
	max t0, a7, zero
	ld a7, 296(sp)
	min t0, t0, a7
	slliw a7, t0, 5
	addw t2, a6, a7
	ld a7, 432(sp)
	slli a6, a7, 4
	subw t0, a6, a7
	li a6, -77
	sd a6, 208(sp)
	ld a7, 176(sp)
	mulw a7, a7, a6
	addw t0, t0, a7
	ld a7, 168(sp)
	slli a6, a7, 5
	addw s0, a6, a7
	ld a7, 416(sp)
	sh1add a6, s0, t0
	li t0, -90
	mulw s1, a7, t0
	ld a7, 160(sp)
	addw s0, a6, s1
	sh1add s1, a7, a7
	slli a6, a7, 1
	slliw a7, s1, 1
	subw s2, zero, a7
	addw a7, s0, s2
	subw s0, zero, t6
	addw t6, a7, s0
	ld a7, 96(sp)
	slli s0, a7, 3
	subw a7, zero, s0
	addw t6, t6, a7
	ld a7, 144(sp)
	mulw s0, a7, t3
	ld a7, 136(sp)
	addw t3, t6, s0
	sh1add t6, a7, t3
	ld a7, 232(sp)
	ld t3, 88(sp)
	mulw s0, a7, t3
	addw a7, t6, s0
	ld t6, 312(sp)
	ld s0, 648(sp)
	mulw t6, t6, s0
	addw t3, a7, t6
	ld a7, 248(sp)
	mulw t6, a7, t1
	ld a7, 592(sp)
	addw t1, t3, t6
	ld t3, 72(sp)
	mulw t6, a7, t3
	ld a7, 128(sp)
	addw t1, t1, t6
	slli t3, a7, 4
	subw t6, t3, a7
	ld a7, 120(sp)
	addw t1, t1, t6
	mulw t3, a7, t4
	ld a7, 112(sp)
	addw t1, t1, t3
	slli t3, a7, 5
	addw t6, t3, a7
	ld a7, 264(sp)
	subw t3, zero, t6
	addw t4, t1, t3
	li t3, 58
	sh1add t1, t5, t4
	mulw t4, a7, t3
	ld a7, 328(sp)
	addw t3, t1, t4
	ld t1, 560(sp)
	mulw t4, a7, t1
	ld a7, 344(sp)
	li t1, 86
	addw t3, t3, t4
	mulw t4, a7, t1
	ld a7, 360(sp)
	addw t1, t3, t4
	li t3, -79
	mulw t4, a7, t3
	ld a7, 376(sp)
	addw t1, t1, t4
	ld t5, 192(sp)
	sh1add t3, a7, a7
	ld a7, 280(sp)
	slliw t4, t3, 4
	slli t3, a3, 4
	addw t1, t1, t4
	mulw t4, a2, t5
	addw t1, t1, t4
	subw t4, a3, t3
	addw t3, a5, a7
	addw t1, t1, t4
	ld a7, 296(sp)
	sh1add t1, t3, t1
	max a5, t1, zero
	min t1, a5, a7
	mulw a5, t1, s0
	addw t3, t2, a5
	ld t2, 56(sp)
	ld t5, 408(sp)
	ld a7, 432(sp)
	addw a5, t2, t5
	slli t1, a7, 5
	addw t2, t1, a7
	ld a7, 168(sp)
	addw a5, a5, t2
	ld t1, 560(sp)
	mulw t2, a7, t1
	ld a7, 416(sp)
	addw a5, a5, t2
	slli t1, a7, 4
	subw t2, zero, a6
	subw t4, t1, a7
	ld a7, 152(sp)
	sh1add t1, t4, a5
	addw a5, t1, t2
	ld t1, 608(sp)
	ld t2, 600(sp)
	addw t5, t1, a7
	ld a7, 144(sp)
	addw t4, a5, t5
	ld t5, 192(sp)
	sh3add a5, t2, t4
	mulw t1, a7, t5
	li t5, 107
	addw a5, a5, t1
	ld a7, 136(sp)
	li t1, 104
	sh3add t2, a7, a7
	ld a7, 232(sp)
	sh1add a5, t2, a5
	ld t6, 312(sp)
	sh2add t4, a7, a7
	ld a7, 248(sp)
	addw a5, a5, t4
	mulw t4, t6, t1
	li t1, -119
	addw a5, a5, t4
	mulw t4, a7, t1
	ld a7, 592(sp)
	addw t1, a5, t4
	slli t4, a7, 3
	subw a5, a7, t4
	ld a7, 128(sp)
	addw t4, t1, a5
	li t1, 71
	mulw t6, a7, t1
	ld a7, 120(sp)
	addw t4, t4, t6
	ld a6, 224(sp)
	mulw t6, a7, t5
	ld a7, 104(sp)
	addw t5, t4, t6
	ld s0, 184(sp)
	sh3add t4, a6, t5
	mulw t5, a7, s0
	ld a7, 264(sp)
	addw t4, t4, t5
	sh1add t6, a7, a7
	ld a7, 328(sp)
	slliw a6, t6, 5
	ld t6, 8(sp)
	subw t5, zero, a6
	addw t4, t4, t5
	mulw a6, a7, t6
	ld a7, 344(sp)
	addw t5, t4, a6
	ld t4, 552(sp)
	mulw t6, a7, t4
	ld a7, 376(sp)
	li t4, 97
	addw t5, t5, t6
	ld t6, 40(sp)
	mulw a6, a7, t4
	ld a7, 280(sp)
	addw t4, t5, a6
	mulw a6, a2, t6
	mulw t6, a3, a4
	addw t5, t4, a6
	addw t4, t5, t6
	li t5, -84
	mulw t6, a7, t5
	ld a7, 296(sp)
	addw t4, t4, t6
	ld s0, 320(sp)
	max t5, t4, zero
	min t4, t5, a7
	mulw t5, t4, s0
	ld t4, 632(sp)
	addw t3, t3, t5
	ld s0, 392(sp)
	ld a7, 368(sp)
	addw t5, t4, s0
	addw t4, a7, t5
	ld a7, 432(sp)
	li t5, -29
	mulw t6, a7, t5
	ld a7, 176(sp)
	addw t4, t4, t6
	slli t5, a7, 3
	subw t6, t5, a7
	ld a7, 416(sp)
	addw t4, t4, t6
	ld s0, 24(sp)
	mulw t5, a7, s0
	ld a7, 160(sp)
	addw t4, t4, t5
	mulw t5, a7, t0
	ld a7, 96(sp)
	addw t0, t4, t5
	slli t6, a7, 5
	ld a7, 144(sp)
	subw t5, zero, t6
	ld t6, 312(sp)
	addw t4, t0, t5
	li t0, 37
	mulw t5, a7, t0
	addw a6, t4, t5
	sh2add t4, t2, a6
	ld t2, 616(sp)
	ld a7, 248(sp)
	mulw t5, t6, t2
	li t2, -46
	addw t4, t4, t5
	mulw t5, a7, t2
	ld a7, 592(sp)
	addw t2, t4, t5
	ld t6, 624(sp)
	mulw t4, a7, t6
	ld a7, 128(sp)
	addw t2, t2, t4
	li t4, -73
	mulw t5, a7, t0
	ld a7, 120(sp)
	addw t2, t2, t5
	mulw t5, a7, t4
	ld t4, 584(sp)
	addw t2, t2, t5
	ld a7, 104(sp)
	subw t5, zero, t4
	li t4, -87
	addw t2, t2, t5
	mulw t5, a7, t4
	ld a7, 264(sp)
	addw t4, t2, t5
	ld t2, 568(sp)
	mulw t5, a7, t2
	ld a7, 328(sp)
	addw t4, t4, t5
	mulw t2, a7, t1
	ld a7, 344(sp)
	addw t1, t4, t2
	ld a6, 208(sp)
	li t2, 53
	mulw t4, a7, a6
	ld a7, 360(sp)
	addw t1, t1, t4
	mulw t4, a7, t2
	ld a7, 376(sp)
	addw t1, t1, t4
	mulw t2, a7, t0
	ld t0, 544(sp)
	addw t1, t1, t2
	ld t5, 192(sp)
	ld a7, 280(sp)
	mulw t2, a2, t0
	ld t6, 64(sp)
	sh3add a2, a2, a2
	addw t1, t1, t2
	mulw t2, a3, t5
	addw t0, t1, t2
	mulw t2, a7, t6
	ld a7, 296(sp)
	addw t0, t0, t2
	ld t5, 640(sp)
	max t1, t0, zero
	min t0, t1, a7
	ld a7, 432(sp)
	mulw t1, t0, t5
	addw t0, t3, t1
	ld t1, 560(sp)
	mulw t2, a7, t1
	li t1, 42
	addw a5, a5, t2
	ld a7, 176(sp)
	mulw t2, a7, t1
	ld a7, 168(sp)
	li t1, 41
	addw a5, a5, t2
	mulw t2, a7, t1
	li t1, -92
	addw a5, a5, t2
	ld a7, 416(sp)
	ld t6, 424(sp)
	mulw t2, a7, t6
	ld a7, 160(sp)
	addw a5, a5, t2
	mulw t2, a7, t1
	ld a7, 152(sp)
	addw a5, a5, t2
	sh2add t1, a7, a7
	ld a7, 96(sp)
	sh1add a5, t1, a5
	mulw t1, a7, a6
	ld a7, 144(sp)
	addw a5, a5, t1
	ld t6, 656(sp)
	mulw t1, a7, t6
	ld a7, 136(sp)
	addw a5, a5, t1
	sh1add t1, a7, a7
	ld a7, 232(sp)
	slliw t2, t1, 5
	ld t6, 312(sp)
	li t1, -51
	addw a5, a5, t2
	mulw t2, a7, t1
	ld a7, 248(sp)
	li t1, 109
	addw a5, a5, t2
	mulw t2, t6, t1
	li t1, -122
	addw a5, a5, t2
	ld t6, 48(sp)
	mulw t2, a7, t6
	ld a7, 128(sp)
	addw a5, a5, t2
	mulw t2, a7, t1
	ld a7, 120(sp)
	addw a5, a5, t2
	ld t1, 560(sp)
	mulw t2, a7, t1
	ld a7, 112(sp)
	addw a5, a5, t2
	mulw t1, a7, a1
	ld a7, 104(sp)
	addw a1, a5, t1
	li a5, 22
	mulw t1, a7, a5
	ld a7, 264(sp)
	addw a1, a1, t1
	slli a5, a7, 4
	addw t2, a5, a7
	ld a7, 328(sp)
	slli a5, t2, 2
	subw t1, zero, a5
	addw a1, a1, t1
	mulw a5, a7, s0
	ld a7, 344(sp)
	addw a1, a1, a5
	ld t2, 576(sp)
	li a5, 115
	mulw t1, a7, t2
	ld a7, 360(sp)
	addw a1, a1, t1
	mulw t1, a7, a5
	ld a7, 376(sp)
	addw a1, a1, t1
	ld t4, 552(sp)
	mulw t1, a7, t4
	ld a7, 280(sp)
	addw a5, a1, t1
	sh2add a1, a2, a5
	li a5, -49
	mulw a2, a3, a5
	addw a1, a1, a2
	mulw a2, a7, a0
	ld a7, 296(sp)
	addw a1, a1, a2
	max a0, a1, zero
	min a1, a0, a7
	mulw a0, a1, a4
	li a1, 100
	addw a2, t0, a0
	slt s0, zero, a2
	subw a0, a1, s0
	jal putch
	li a0, 97
	bne s0, zero, label994
	li a0, 111
.p2align 2
label994:
	jal putch
	li a0, 116
	bne s0, zero, label996
	li a0, 103
.p2align 2
label996:
	jal putch
	li a0, 10
	jal putch
	ld a0, 216(sp)
	addiw a0, a0, -1
	sd a0, 216(sp)
	bgt a0, zero, label17
label11:
	mv a0, zero
	ld ra, 288(sp)
	ld s2, 272(sp)
	ld s1, 256(sp)
	ld s0, 240(sp)
	addi sp, sp, 664
	ret
