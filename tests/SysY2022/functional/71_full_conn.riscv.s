.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -704
	addi a1, sp, 496
	sd s0, 288(sp)
	sd s1, 304(sp)
	sd s2, 320(sp)
	sd ra, 336(sp)
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
	li a2, 20
	mv s2, zero
	ld a1, 200(sp)
	mul a0, s0, a2
	add s1, a1, a0
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
	lw t6, 496(sp)
	li a0, 85
	li a2, 23
	li t1, -103
	li a5, 50
	li t5, 110
	li t3, 126
	mulw a1, t6, a0
	sd t6, 624(sp)
	lw a6, 500(sp)
	mulw a3, a6, a2
	sd a6, 160(sp)
	li a2, -82
	addw a1, a1, a3
	li a6, -123
	lw t6, 504(sp)
	mulw a3, t6, a2
	sd t6, 152(sp)
	addw a1, a1, a3
	lw t6, 508(sp)
	li a3, -120
	mulw a2, t6, t1
	sd t6, 608(sp)
	addw a1, a1, a2
	sd t1, 632(sp)
	lw t6, 512(sp)
	mulw a2, t6, a6
	sd t6, 144(sp)
	addw a1, a1, a2
	sd a6, 616(sp)
	lw t6, 516(sp)
	slli a6, t6, 6
	addw a1, a1, a6
	sd t6, 408(sp)
	sd a6, 696(sp)
	li a6, -102
	lw a2, 520(sp)
	lw t6, 524(sp)
	mulw a4, a2, a3
	sd t6, 424(sp)
	mulw a3, t6, a5
	addw a1, a1, a4
	sd a5, 264(sp)
	addw a1, a1, a3
	lw t4, 528(sp)
	li a3, -59
	sd t4, 440(sp)
	mulw a4, t4, a3
	lw t6, 532(sp)
	li t4, -106
	addw a3, a1, a4
	li a1, 47
	sd t6, 456(sp)
	mulw a5, t6, a1
	addw a4, a3, a5
	li a5, -111
	lw a3, 536(sp)
	lw t6, 540(sp)
	mulw t0, a3, a5
	sd t6, 472(sp)
	li a5, -67
	addw a4, a4, t0
	mulw t1, t6, a5
	addw a4, a4, t1
	sd t1, 432(sp)
	lw t6, 544(sp)
	mulw a5, t6, t4
	sd t6, 672(sp)
	addw a4, a4, a5
	sd t4, 184(sp)
	li t4, -75
	lw t6, 548(sp)
	mulw a5, t6, t4
	sd t6, 136(sp)
	addw a4, a4, a5
	sd t4, 656(sp)
	lw t6, 552(sp)
	mulw a5, t6, a6
	sd t6, 280(sp)
	addw a4, a4, a5
	sd a6, 64(sp)
	li a5, 34
	lw t6, 556(sp)
	mulw t0, t6, a5
	sd t6, 296(sp)
	addw a4, a4, t0
	lw t6, 560(sp)
	li t0, -39
	sd t6, 488(sp)
	mulw t1, t6, t0
	sd t0, 384(sp)
	addw a4, a4, t1
	lw t6, 564(sp)
	slli t0, t6, 6
	addw t1, t0, t6
	sd t6, 272(sp)
	addw a4, a4, t1
	lw t6, 568(sp)
	mulw t0, t6, a1
	sd t6, 312(sp)
	addw a4, a4, t0
	lw t6, 572(sp)
	li t0, 113
	sd t6, 328(sp)
	mulw t1, t6, t0
	lw t6, 576(sp)
	addw a4, a4, t1
	mulw t0, t6, t5
	sd t6, 344(sp)
	addw a4, a4, t0
	sd t5, 464(sp)
	lw t6, 580(sp)
	mulw t0, t6, a1
	sd t6, 360(sp)
	addw a4, a4, t0
	lw t6, 584(sp)
	slli t0, t6, 2
	subw t1, zero, t0
	sd t6, 376(sp)
	li t0, 80
	addw a4, a4, t1
	lw t6, 588(sp)
	mulw t1, t6, t0
	sd t6, 392(sp)
	addw t0, a4, t1
	lw t6, 592(sp)
	li a4, 46
	sd t6, 176(sp)
	mulw t2, t6, a4
	li t6, 127
	addw t1, t0, t2
	sd t6, 168(sp)
	max t0, t1, zero
	min t2, t0, t6
	ld t6, 624(sp)
	li t0, 39
	ld t4, 184(sp)
	mulw t1, t2, t0
	ld a6, 160(sp)
	mulw t2, t6, t4
	ld t6, 152(sp)
	mulw t4, a6, t3
	li t3, -18
	addw t2, t2, t4
	mulw t4, t6, t3
	ld t6, 608(sp)
	addw t2, t2, t4
	slli t3, t6, 5
	subw t4, t6, t3
	ld t6, 144(sp)
	addw t2, t2, t4
	slli t3, t6, 3
	ld t6, 408(sp)
	subw t4, zero, t3
	addw t2, t2, t4
	slli t4, a2, 2
	mulw t3, t6, a1
	subw t5, zero, t4
	addw t2, t2, t3
	addw t3, t2, t5
	li t2, 67
	sd t2, 648(sp)
	ld t6, 424(sp)
	mulw t4, t6, t2
	li t2, -94
	addw t3, t3, t4
	ld t4, 440(sp)
	mulw t5, t4, t2
	addw t2, t3, t5
	li t3, -121
	sd t3, 640(sp)
	ld t6, 456(sp)
	mulw t4, t6, t3
	slli t3, a3, 3
	addw t2, t2, t4
	subw t5, t3, a3
	li t4, -21
	li t3, -60
	addw t2, t2, t5
	sd t4, 8(sp)
	ld t6, 472(sp)
	mulw t5, t6, t4
	ld t6, 672(sp)
	addw t2, t2, t5
	mulw t4, t6, t3
	ld t6, 136(sp)
	li t3, -43
	addw t2, t2, t4
	mulw t4, t6, t3
	ld t6, 280(sp)
	li t3, 105
	addw t2, t2, t4
	mulw t4, t6, t3
	ld t6, 296(sp)
	li t3, -42
	addw t2, t2, t4
	mulw t4, t6, t3
	ld t6, 488(sp)
	li t3, 87
	addw t2, t2, t4
	mulw t4, t6, t3
	li t3, 29
	addw t2, t2, t4
	sd t3, 664(sp)
	ld t6, 272(sp)
	mulw t4, t6, t3
	ld t6, 312(sp)
	addw t2, t2, t4
	ld t4, 184(sp)
	mulw t3, t6, t4
	li t4, -110
	addw t2, t2, t3
	ld t6, 328(sp)
	sd t4, 72(sp)
	slli t3, t6, 5
	subw t5, t6, t3
	li t3, -100
	addw t2, t2, t5
	ld t6, 344(sp)
	mulw t5, t6, t4
	ld t6, 360(sp)
	addw t2, t2, t5
	mulw t4, t6, t3
	li t3, -22
	addw t2, t2, t4
	ld t6, 376(sp)
	mulw t4, t6, t3
	ld t6, 392(sp)
	addw t2, t2, t4
	ld t4, 656(sp)
	mulw t3, t6, t4
	li t4, -125
	addw t2, t2, t3
	sd t4, 128(sp)
	ld t6, 176(sp)
	mulw t3, t6, t4
	ld t6, 168(sp)
	addw t5, t2, t3
	max t2, t5, zero
	min t3, t2, t6
	ld t6, 624(sp)
	li t2, 77
	mulw t4, t3, t2
	li t3, 26
	addw t1, t1, t4
	mulw t2, t6, t3
	li t3, 76
	mulw t4, a6, t3
	li a6, -70
	addw t2, t2, t4
	sd a6, 120(sp)
	ld t6, 152(sp)
	mulw t3, t6, a6
	li a6, -95
	addw t2, t2, t3
	sd t3, 104(sp)
	ld t6, 608(sp)
	ld t3, 664(sp)
	sd a6, 80(sp)
	mulw t4, t6, t3
	li t3, 96
	addw t2, t2, t4
	ld t6, 144(sp)
	sd t3, 688(sp)
	mulw t4, t6, a6
	ld t6, 408(sp)
	addw t2, t2, t4
	li t4, 52
	sd t4, 24(sp)
	mulw t5, t6, t3
	li t3, -68
	addw t2, t2, t5
	sd t3, 680(sp)
	mulw t5, a2, t4
	ld t6, 424(sp)
	addw t2, t2, t5
	ld t4, 440(sp)
	mulw t5, t6, t3
	ld t6, 456(sp)
	sh2add t3, t4, t4
	addw t2, t2, t5
	li t4, -34
	subw t5, zero, t3
	sd t4, 112(sp)
	mulw t3, t6, a5
	addw t2, t2, t5
	ld t6, 472(sp)
	addw a5, t2, t3
	li t2, 102
	mulw t3, a3, t4
	addw a5, a5, t3
	mulw t3, t6, t2
	ld t6, 672(sp)
	li t2, 6
	addw a5, a5, t3
	mulw t3, t6, t2
	ld t6, 136(sp)
	li t2, -38
	addw a5, a5, t3
	mulw t3, t6, t2
	li t2, 27
	addw a5, a5, t3
	ld t6, 280(sp)
	mulw t3, t6, t2
	ld t6, 296(sp)
	addw a5, a5, t3
	ld t5, 464(sp)
	li t3, 116
	sd t3, 352(sp)
	mulw t2, t6, t5
	li t5, -23
	addw a5, a5, t2
	ld t6, 488(sp)
	mulw t2, t6, t3
	li t3, 120
	addw a5, a5, t2
	ld t6, 272(sp)
	mulw t0, t6, t0
	ld t6, 312(sp)
	addw a5, a5, t0
	slli t0, t6, 6
	subw t2, t6, t0
	ld t6, 328(sp)
	li t0, -99
	addw a5, a5, t2
	mulw t2, t6, t0
	ld t6, 344(sp)
	addw a5, a5, t2
	slli t0, t6, 6
	addw t2, t0, t6
	addw a5, a5, t2
	sd t2, 32(sp)
	li t2, -6
	sd t3, 600(sp)
	ld t6, 360(sp)
	mulw t0, t6, t3
	ld t6, 376(sp)
	addw a5, a5, t0
	ld t0, 384(sp)
	sd t2, 232(sp)
	mulw t3, t6, t0
	ld t6, 392(sp)
	li t0, 94
	addw a5, a5, t3
	mulw t3, t6, t2
	ld t6, 176(sp)
	addw a5, a5, t3
	mulw t2, t6, t0
	ld t6, 168(sp)
	addw a5, a5, t2
	sd t5, 96(sp)
	max t0, a5, zero
	min a5, t0, t6
	ld t6, 624(sp)
	slliw t3, a5, 7
	subw t2, t3, a5
	addw t0, t1, t2
	ld t1, 432(sp)
	mulw t2, t6, t5
	ld a6, 160(sp)
	li t5, 125
	addw a5, t1, t2
	ld t6, 152(sp)
	slli t1, a6, 6
	subw t2, a6, t1
	li t1, 49
	addw a5, a5, t2
	mulw t3, t6, t1
	ld t6, 608(sp)
	addw t2, a5, t3
	ld a5, 264(sp)
	mulw t3, t6, a5
	li a5, 72
	addw t2, t2, t3
	ld t6, 144(sp)
	mulw t3, t6, a5
	ld t6, 408(sp)
	addw a5, t2, t3
	li t2, -30
	mulw t4, a2, t2
	sd t2, 256(sp)
	mulw t3, t6, a0
	ld t6, 424(sp)
	addw a5, a5, t3
	li t3, 12
	addw a5, a5, t4
	ld t4, 440(sp)
	mulw t2, t6, t3
	ld t6, 456(sp)
	addw a5, a5, t2
	mulw t2, t4, t5
	li t4, -117
	addw a5, a5, t2
	mulw a7, t6, t4
	addw a6, a5, a7
	slli a5, a3, 6
	addw t6, a5, a3
	subw a7, zero, t6
	ld t6, 672(sp)
	addw a6, a6, a7
	mulw t5, t6, t5
	ld t6, 136(sp)
	addw a6, a6, t5
	ld t5, 464(sp)
	mulw a7, t6, t5
	ld t6, 280(sp)
	addw a6, a6, a7
	slli t5, t6, 5
	subw a7, t6, t5
	ld t6, 296(sp)
	addw t5, a6, a7
	ld a6, 616(sp)
	mulw a7, t6, a6
	li a6, 83
	addw t5, t5, a7
	sd a6, 16(sp)
	ld t6, 488(sp)
	mulw a7, t6, a6
	ld t6, 272(sp)
	li a6, 122
	addw t5, t5, a7
	mulw a7, t6, a6
	ld t6, 312(sp)
	li a6, 11
	addw t5, t5, a7
	mulw a7, t6, a6
	ld t6, 328(sp)
	addw a6, t5, a7
	ld t5, 96(sp)
	mulw a7, t6, t5
	ld t6, 344(sp)
	li t5, -47
	addw a6, a6, a7
	mulw a7, t6, t5
	ld t6, 360(sp)
	addw t5, a6, a7
	slli a6, t6, 5
	ld t6, 376(sp)
	subw a7, zero, a6
	addw t5, t5, a7
	mulw a6, t6, t4
	ld t6, 392(sp)
	addw t4, t5, a6
	li t5, 95
	mulw a6, t6, t5
	li t5, 118
	addw t4, t4, a6
	ld t6, 176(sp)
	mulw a6, t6, t5
	ld t6, 168(sp)
	addw t5, t4, a6
	max t4, t5, zero
	min t5, t4, t6
	ld t4, 184(sp)
	ld t6, 624(sp)
	mulw a6, t5, t4
	addw t5, t0, a6
	sh3add t0, t6, t2
	li t2, 82
	sd t2, 192(sp)
	ld a6, 160(sp)
	mulw t4, a6, t2
	addw t0, t0, t4
	li t2, -104
	sd t4, 248(sp)
	li t4, 101
	sd t2, 0(sp)
	ld t6, 152(sp)
	mulw a6, t6, t2
	li t2, -116
	addw t0, t0, a6
	ld t6, 608(sp)
	mulw a6, t6, t4
	ld t6, 144(sp)
	addw t0, t0, a6
	mulw a6, t6, t2
	ld t6, 408(sp)
	addw t0, t0, a6
	ld a6, 696(sp)
	subw a7, t6, a6
	slli t6, a2, 4
	addw t0, t0, a7
	subw a6, zero, t6
	ld t6, 424(sp)
	addw t0, t0, a6
	ld a6, 120(sp)
	mulw a7, t6, a6
	li a6, 75
	addw t0, t0, a7
	sd a6, 88(sp)
	ld t6, 456(sp)
	mulw a7, t6, a6
	li a6, 66
	addw t0, t0, a7
	mulw t6, a3, a6
	sd a6, 416(sp)
	addw t0, t0, t6
	li a6, -96
	sd a6, 224(sp)
	ld t6, 472(sp)
	mulw a7, t6, a6
	ld t6, 672(sp)
	li a6, -101
	addw t0, t0, a7
	mulw a7, t6, a6
	li a6, -114
	addw t0, t0, a7
	sd a6, 56(sp)
	ld t6, 136(sp)
	mulw t6, t6, a6
	addw a7, t0, t6
	ld t6, 280(sp)
	li t0, 59
	mulw s0, t6, t0
	ld t6, 296(sp)
	addw a6, a7, s0
	li s0, 10
	mulw a7, t6, t3
	ld t6, 488(sp)
	addw t3, a6, a7
	sh2add a6, t6, t6
	ld t6, 272(sp)
	addw t3, t3, a6
	ld a6, 80(sp)
	mulw t6, t6, a6
	addw a7, t3, t6
	ld t6, 312(sp)
	ld t3, 352(sp)
	mulw t6, t6, t3
	li t3, -93
	addw a6, a7, t6
	ld t6, 328(sp)
	mulw a7, t6, t3
	ld t6, 344(sp)
	addw t3, a6, a7
	slli a6, t6, 4
	subw a7, a6, t6
	ld t6, 360(sp)
	li a6, 79
	addw t3, t3, a7
	mulw a7, t6, a6
	ld t6, 376(sp)
	addw t3, t3, a7
	sh1add a6, t6, t6
	li a7, 68
	ld t6, 392(sp)
	addw t3, t3, a6
	mulw a6, t6, t1
	ld t6, 176(sp)
	addw t1, t3, a6
	li t3, -124
	mulw a6, t6, t3
	ld t6, 168(sp)
	addw t3, t1, a6
	max t1, t3, zero
	min t3, t1, t6
	sh1add t1, t3, t3
	subw t6, zero, t1
	li t1, 81
	addw t5, t5, t6
	ld t6, 624(sp)
	ld a6, 160(sp)
	mulw t3, t6, t1
	mulw t6, a6, a7
	addw t3, t3, t6
	ld t6, 152(sp)
	ld a6, 64(sp)
	mulw a7, t6, a6
	li a6, -74
	addw t3, t3, a7
	sd a6, 48(sp)
	ld t6, 608(sp)
	mulw a7, t6, a6
	ld t6, 144(sp)
	li a6, 121
	addw t3, t3, a7
	mulw a7, t6, a6
	ld t6, 408(sp)
	addw t3, t3, a7
	slli a7, t6, 4
	subw a6, t6, a7
	addw t6, t3, a6
	li t3, 55
	sd a6, 480(sp)
	mulw a7, a2, t3
	addw a6, t6, a7
	ld t6, 424(sp)
	mulw t4, t6, t4
	addw a7, a6, t4
	li a6, -13
	sd a6, 208(sp)
	ld t4, 440(sp)
	mulw t6, t4, a6
	li a6, -62
	addw t4, a7, t6
	ld t6, 456(sp)
	mulw a7, t6, a6
	li a6, 38
	addw t6, t4, a7
	addw t4, t6, a5
	sd a7, 448(sp)
	li a5, 114
	ld t6, 472(sp)
	sd a6, 40(sp)
	mulw a7, t6, a5
	ld t6, 672(sp)
	addw t4, t4, a7
	mulw t6, t6, a6
	addw a7, t4, t6
	ld t6, 136(sp)
	ld t4, 8(sp)
	mulw t6, t6, t4
	li t4, 112
	addw a6, a7, t6
	ld t6, 280(sp)
	mulw a7, t6, t4
	ld t6, 296(sp)
	addw a6, a6, a7
	mulw a7, t6, a5
	ld t6, 488(sp)
	addw a5, a6, a7
	mulw a6, t6, t4
	ld t6, 272(sp)
	li t4, -10
	addw a5, a5, a6
	mulw a6, t6, t4
	ld t6, 312(sp)
	addw a5, a5, a6
	slli t4, t6, 4
	subw a6, zero, t4
	li t4, -50
	addw a5, a5, a6
	sd t4, 400(sp)
	ld t6, 328(sp)
	mulw a6, t6, t4
	ld t6, 344(sp)
	li t4, -112
	addw a5, a5, a6
	mulw a6, t6, t4
	ld t6, 360(sp)
	addw a5, a5, a6
	mulw t4, t6, t2
	ld t6, 376(sp)
	li t2, -54
	addw a5, a5, t4
	mulw t4, t6, t2
	ld t6, 392(sp)
	addw a5, a5, t4
	ld t2, 192(sp)
	mulw t4, t6, t2
	ld t6, 176(sp)
	li t2, -72
	addw a5, a5, t4
	mulw t4, t6, t2
	ld t6, 168(sp)
	addw t2, a5, t4
	max a5, t2, zero
	min t2, a5, t6
	ld t6, 624(sp)
	slliw t4, t2, 5
	addw a5, t5, t4
	slli t4, t6, 4
	subw t2, t4, t6
	li t4, -77
	sd t4, 240(sp)
	ld a6, 160(sp)
	ld t6, 152(sp)
	mulw t5, a6, t4
	li t4, -90
	addw t2, t2, t5
	ld a6, 416(sp)
	sd t4, 368(sp)
	mulw t5, t6, a6
	ld t6, 608(sp)
	addw t2, t2, t5
	mulw a6, t6, t4
	ld t6, 144(sp)
	addw t5, t2, a6
	ld t2, 232(sp)
	mulw a6, t6, t2
	ld t6, 408(sp)
	addw t4, t5, a6
	ld t2, 256(sp)
	mulw t5, t6, t2
	slli t6, a2, 3
	addw t4, t4, t5
	subw t5, zero, t6
	ld t6, 424(sp)
	addw t2, t4, t5
	ld t4, 440(sp)
	mulw t1, t6, t1
	ld t6, 456(sp)
	addw t2, t2, t1
	sh1add t1, t4, t2
	ld t4, 72(sp)
	ld a6, 80(sp)
	mulw t2, t6, t4
	ld t6, 472(sp)
	addw t1, t1, t2
	mulw t2, a3, a6
	addw t1, t1, t2
	mulw t2, t6, t0
	ld t6, 672(sp)
	addw t0, t1, t2
	ld t4, 24(sp)
	mulw t1, t6, t4
	ld t6, 136(sp)
	addw t0, t0, t1
	slli t1, t6, 4
	subw t2, t1, t6
	ld t6, 280(sp)
	addw t0, t0, t2
	mulw t1, t6, t3
	ld t6, 296(sp)
	addw t0, t0, t1
	slli t1, t6, 5
	addw t3, t1, t6
	ld t6, 488(sp)
	li t1, 14
	subw t2, zero, t3
	addw t0, t0, t2
	mulw t2, t6, t1
	ld t6, 272(sp)
	li t1, 58
	addw t0, t0, t2
	mulw t2, t6, t1
	li t1, 86
	addw t0, t0, t2
	ld t6, 312(sp)
	ld t2, 648(sp)
	mulw t3, t6, t2
	ld t6, 328(sp)
	addw t0, t0, t3
	mulw t2, t6, t1
	ld t6, 344(sp)
	li t1, -79
	addw t0, t0, t2
	mulw t2, t6, t1
	ld t6, 360(sp)
	li t1, 48
	addw t0, t0, t2
	mulw t2, t6, t1
	ld t6, 376(sp)
	addw t0, t0, t2
	ld a6, 208(sp)
	mulw t1, t6, a6
	ld t6, 392(sp)
	addw t0, t0, t1
	slli t1, t6, 4
	subw t2, t6, t1
	ld t6, 176(sp)
	addw t0, t0, t2
	ld a6, 416(sp)
	mulw t2, t6, a6
	ld t6, 168(sp)
	addw t1, t0, t2
	ld a6, 80(sp)
	max t0, t1, zero
	ld t2, 32(sp)
	min t1, t0, t6
	ld t4, 248(sp)
	ld t6, 624(sp)
	mulw t3, t1, a6
	slli t1, t6, 5
	addw t0, a5, t3
	addw a5, t2, t4
	addw t2, t1, t6
	li t1, 30
	addw a5, a5, t2
	ld t6, 152(sp)
	ld t2, 648(sp)
	mulw t3, t6, t2
	ld t6, 608(sp)
	addw a5, a5, t3
	mulw t2, t6, t1
	ld t6, 144(sp)
	addw a5, a5, t2
	slli t2, t6, 1
	ld t6, 408(sp)
	subw t1, zero, t2
	ld a6, 696(sp)
	addw a5, a5, t1
	ld t3, 600(sp)
	addw t1, a6, t6
	ld t6, 424(sp)
	addw a5, a5, t1
	ld a6, 208(sp)
	mulw t1, a2, t3
	ld t4, 440(sp)
	li t3, 107
	addw a5, a5, t1
	mulw t2, t6, a6
	li t1, 18
	ld t6, 456(sp)
	addw a5, a5, t2
	mulw t2, t4, t1
	li t1, 104
	addw a5, a5, t2
	sh2add t2, t6, t6
	ld t6, 472(sp)
	addw a5, a5, t2
	mulw t2, a3, t1
	li t1, -119
	addw a5, a5, t2
	mulw t2, t6, t1
	ld t6, 672(sp)
	addw t1, a5, t2
	slli t2, t6, 3
	subw a5, t6, t2
	ld t6, 136(sp)
	addw t2, t1, a5
	li t1, 71
	mulw t4, t6, t1
	ld t6, 280(sp)
	addw t2, t2, t4
	mulw t4, t6, t3
	ld t6, 296(sp)
	li t3, 24
	addw t2, t2, t4
	mulw t4, t6, t3
	ld t6, 488(sp)
	addw t3, t2, t4
	ld t2, 192(sp)
	mulw t4, t6, t2
	ld t6, 272(sp)
	addw t3, t3, t4
	ld a6, 224(sp)
	mulw t2, t6, a6
	ld t6, 312(sp)
	addw t3, t3, t2
	ld t2, 0(sp)
	mulw t5, t6, t2
	ld t6, 328(sp)
	addw t4, t3, t5
	ld t3, 640(sp)
	mulw t5, t6, t3
	ld t6, 360(sp)
	li t3, 97
	addw t2, t4, t5
	mulw t4, t6, t3
	ld t6, 376(sp)
	addw t2, t2, t4
	ld a6, 16(sp)
	mulw t3, t6, a6
	ld t6, 392(sp)
	addw t2, t2, t3
	li t3, -84
	mulw t4, t6, a4
	ld t6, 176(sp)
	addw t2, t2, t4
	mulw t4, t6, t3
	ld t6, 168(sp)
	addw t2, t2, t4
	ld t4, 400(sp)
	max t3, t2, zero
	min t2, t3, t6
	ld t3, 104(sp)
	ld a6, 480(sp)
	mulw t5, t2, t4
	ld a7, 448(sp)
	addw t4, t3, a6
	addw t2, t0, t5
	ld t6, 624(sp)
	li t3, -29
	addw t0, a7, t4
	ld a6, 160(sp)
	mulw t4, t6, t3
	ld t6, 608(sp)
	slli t3, a6, 3
	addw t0, t0, t4
	subw t4, t3, a6
	ld a6, 40(sp)
	addw t0, t0, t4
	mulw t3, t6, a6
	ld t6, 144(sp)
	addw t0, t0, t3
	ld t4, 368(sp)
	slli t3, a2, 5
	mulw t5, t6, t4
	ld t6, 424(sp)
	subw t4, zero, t3
	addw t0, t0, t5
	li t3, 37
	addw t0, t0, t4
	mulw t4, t6, t3
	addw t5, t0, t4
	ld t4, 440(sp)
	li t0, 36
	mulw t6, t4, t0
	ld t4, 128(sp)
	addw t5, t5, t6
	mulw t6, a3, t4
	li t4, -46
	addw t5, t5, t6
	ld t6, 472(sp)
	mulw a6, t6, t4
	ld t6, 672(sp)
	addw t4, t5, a6
	ld a6, 120(sp)
	mulw t5, t6, a6
	ld t6, 136(sp)
	addw t4, t4, t5
	li t5, -73
	mulw a6, t6, t3
	ld t6, 280(sp)
	addw t4, t4, a6
	mulw a6, t6, t5
	ld t6, 296(sp)
	addw t5, t4, a6
	ld t4, 112(sp)
	mulw a6, t6, t4
	ld t6, 488(sp)
	li t4, -87
	addw t5, t5, a6
	mulw a6, t6, t4
	ld t6, 272(sp)
	addw t5, t5, a6
	ld t4, 656(sp)
	mulw a6, t6, t4
	ld t6, 312(sp)
	addw t5, t5, a6
	mulw t4, t6, t1
	ld t6, 328(sp)
	addw t1, t5, t4
	ld t4, 240(sp)
	mulw t5, t6, t4
	ld t6, 344(sp)
	li t4, 53
	addw t1, t1, t5
	mulw t5, t6, t4
	ld t6, 360(sp)
	addw t1, t1, t5
	mulw t4, t6, t3
	ld t6, 376(sp)
	addw t3, t1, t4
	ld t1, 632(sp)
	mulw t4, t6, t1
	ld t6, 392(sp)
	addw t3, t3, t4
	ld a6, 208(sp)
	mulw t4, t6, a6
	ld t6, 176(sp)
	addw t1, t3, t4
	ld a6, 56(sp)
	mulw t4, t6, a6
	ld t6, 168(sp)
	addw t1, t1, t4
	ld t5, 96(sp)
	max t3, t1, zero
	min t1, t3, t6
	ld t6, 624(sp)
	mulw t3, t1, t5
	addw t1, t2, t3
	ld t2, 648(sp)
	ld a6, 160(sp)
	mulw t3, t6, t2
	ld t6, 152(sp)
	li t2, 42
	addw a5, a5, t3
	mulw t3, a6, t2
	li t2, 41
	addw a5, a5, t3
	mulw t3, t6, t2
	li t2, -92
	addw a5, a5, t3
	ld t6, 608(sp)
	ld a6, 616(sp)
	mulw t3, t6, a6
	ld t6, 144(sp)
	addw a5, a5, t3
	mulw t3, t6, t2
	ld t6, 408(sp)
	addw a5, a5, t3
	ld t4, 240(sp)
	mulw t2, t6, s0
	ld t6, 424(sp)
	addw a5, a5, t2
	ld a6, 88(sp)
	mulw t2, a2, t4
	ld t4, 440(sp)
	addw a2, a5, t2
	ld t3, 688(sp)
	mulw a5, t6, a6
	ld t6, 456(sp)
	addw a2, a2, a5
	mulw t2, t4, t3
	li a5, -51
	addw a2, a2, t2
	mulw t2, t6, a5
	li a5, 109
	addw a2, a2, t2
	ld t6, 472(sp)
	mulw a3, a3, a5
	ld a6, 48(sp)
	addw a2, a2, a3
	li a3, -122
	mulw a5, t6, a6
	ld t6, 136(sp)
	addw a2, a2, a5
	mulw a5, t6, a3
	ld t6, 280(sp)
	addw a2, a2, a5
	ld t2, 648(sp)
	mulw a3, t6, t2
	ld t6, 296(sp)
	addw a2, a2, a3
	mulw a3, t6, a1
	ld t6, 488(sp)
	addw a1, a2, a3
	li a2, 22
	mulw a3, t6, a2
	ld t6, 272(sp)
	addw a1, a1, a3
	ld t3, 680(sp)
	mulw a2, t6, t3
	ld t6, 312(sp)
	addw a1, a1, a2
	ld a6, 40(sp)
	mulw a2, t6, a6
	ld t6, 328(sp)
	addw a1, a1, a2
	ld t3, 664(sp)
	li a2, 115
	mulw a3, t6, t3
	ld t6, 344(sp)
	addw a1, a1, a3
	mulw a3, t6, a2
	ld t6, 360(sp)
	addw a1, a1, a3
	ld t3, 640(sp)
	mulw a2, t6, t3
	ld t6, 376(sp)
	addw a1, a1, a2
	li a2, -49
	mulw a3, t6, t0
	ld t6, 392(sp)
	addw a1, a1, a3
	mulw a3, t6, a2
	ld t6, 176(sp)
	addw a1, a1, a3
	mulw a2, t6, a0
	ld t6, 168(sp)
	addw a1, a1, a2
	max a0, a1, zero
	min a1, a0, t6
	mulw a0, a1, a4
	li a1, 100
	addw a2, t1, a0
	slt s1, zero, a2
	subw a0, a1, s1
	jal putch
	li a0, 97
	bne s1, zero, label904
	li a0, 111
.p2align 2
label904:
	jal putch
	li a0, 116
	bne s1, zero, label906
	li a0, 103
.p2align 2
label906:
	jal putch
	mv a0, s0
	jal putch
	ld a0, 216(sp)
	addiw a0, a0, -1
	sd a0, 216(sp)
	bgt a0, zero, label17
label11:
	mv a0, zero
	ld ra, 336(sp)
	ld s2, 320(sp)
	ld s1, 304(sp)
	ld s0, 288(sp)
	addi sp, sp, 704
	ret
