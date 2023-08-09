.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[100] RegSpill[280] CalleeSaved[40]
	addi sp, sp, -424
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	jal getint
	sd a0, 168(sp)
	bgt a0, zero, label4
	j label15
.p2align 2
label14:
	lw t5, 192(sp)
	li a1, 85
	li t2, -106
	li a7, -94
	sd t5, 392(sp)
	mulw a2, t5, a1
	lw a6, 196(sp)
	li a1, 23
	sd a6, 376(sp)
	mulw a3, a6, a1
	lw t6, 200(sp)
	addw a0, a2, a3
	li a2, -82
	sd t6, 368(sp)
	mulw a3, t6, a2
	lw t5, 204(sp)
	addw a1, a0, a3
	li a3, -103
	sd t5, 384(sp)
	mulw a2, t5, a3
	lw t6, 208(sp)
	addw a0, a1, a2
	li a2, -123
	sd t6, 360(sp)
	mulw a3, t6, a2
	lw t3, 212(sp)
	addw a1, a0, a3
	slli a2, t3, 6
	addw a0, a1, a2
	sd t3, 352(sp)
	li t3, -75
	sd a2, 88(sp)
	lw a6, 216(sp)
	slli t4, a6, 4
	subw t1, t4, a6
	sd a6, 304(sp)
	slli a3, t1, 3
	sd t4, 64(sp)
	subw a1, zero, a3
	sd t1, 416(sp)
	addw a2, a0, a1
	li t1, 47
	li a0, 50
	lw t5, 220(sp)
	mulw a3, t5, a0
	sd t5, 344(sp)
	addw a1, a2, a3
	lw a6, 224(sp)
	li a3, -59
	sd a6, 336(sp)
	mulw a4, a6, a3
	lw t6, 228(sp)
	addw a2, a1, a4
	mulw a3, t6, t1
	sd t6, 96(sp)
	addw a1, a2, a3
	lw t5, 232(sp)
	li a2, -111
	sd t5, 128(sp)
	mulw a4, t5, a2
	lw t6, 236(sp)
	addw a3, a1, a4
	li a4, -67
	sd t6, 104(sp)
	mulw a1, t6, a4
	lw t5, 240(sp)
	addw a2, a3, a1
	sd t5, 408(sp)
	mulw a3, t5, t2
	lw t6, 244(sp)
	addw a4, a2, a3
	sd t6, 296(sp)
	mulw a2, t6, t3
	lw t5, 248(sp)
	li t3, -102
	addw a3, a4, a2
	sd t5, 328(sp)
	mulw a4, t5, t3
	lw t6, 252(sp)
	addw a2, a3, a4
	slli a4, t6, 4
	addw a3, a4, t6
	sd t6, 320(sp)
	sh1add a4, a3, a2
	slli a5, a3, 1
	li a3, -39
	sd a5, 400(sp)
	lw t4, 256(sp)
	mulw a5, t4, a3
	sd t4, 312(sp)
	addw a2, a4, a5
	lw t5, 260(sp)
	slli a5, t5, 6
	addw t0, a5, t5
	sd t5, 112(sp)
	addw a4, a2, t0
	lw t6, 264(sp)
	mulw a5, t6, t1
	sd t6, 136(sp)
	addw a2, a4, a5
	lw t5, 268(sp)
	li a5, 113
	sd t5, 144(sp)
	mulw t0, t5, a5
	lw t6, 272(sp)
	addw a4, a2, t0
	li a2, 110
	sd t6, 184(sp)
	mulw t0, t6, a2
	lw t5, 276(sp)
	addw a5, a4, t0
	sd t5, 152(sp)
	mulw t0, t5, t1
	lw t6, 280(sp)
	addw a4, a5, t0
	slli t0, t6, 2
	subw t1, zero, t0
	sd t6, 176(sp)
	addw a5, a4, t1
	lw t5, 284(sp)
	sh2add t1, t5, t5
	slliw t0, t1, 4
	sd t5, 160(sp)
	li t1, 46
	addw a4, a5, t0
	li t5, 127
	lw t6, 288(sp)
	mulw a5, t6, t1
	sd t6, 120(sp)
	addw t0, a4, a5
	max t2, t0, zero
	li t0, 39
	min a4, t2, t5
	li t2, -106
	ld t5, 392(sp)
	mulw a5, a4, t0
	ld a6, 376(sp)
	ld t6, 368(sp)
	slli a4, a6, 6
	mulw t1, t5, t2
	subw t3, a4, a6
	sh3add t4, t6, t6
	ld t5, 384(sp)
	sh1add t2, t3, t1
	ld t6, 360(sp)
	slliw t3, t4, 1
	subw a6, zero, t3
	slli t3, t5, 5
	addw t1, t2, a6
	subw t4, t5, t3
	slli t3, t6, 3
	addw t2, t1, t4
	subw t5, zero, t3
	li t1, 47
	ld t3, 352(sp)
	addw t4, t2, t5
	ld a6, 304(sp)
	mulw t5, t3, t1
	slli t3, a6, 2
	addw t2, t4, t5
	subw t1, zero, t3
	ld t5, 344(sp)
	li t3, 67
	addw t4, t2, t1
	ld a6, 336(sp)
	mulw t2, t5, t3
	ld t6, 96(sp)
	addw t1, t4, t2
	ld t5, 128(sp)
	mulw t3, a6, a7
	li t4, -121
	li a7, 87
	addw t2, t1, t3
	mulw a6, t6, t4
	slli t3, t5, 3
	addw t1, t2, a6
	ld t6, 104(sp)
	subw t4, t3, t5
	li a6, -21
	addw t2, t1, t4
	ld t5, 408(sp)
	mulw t4, t6, a6
	slli t3, t5, 4
	addw t1, t2, t4
	subw t6, t3, t5
	li t3, -43
	slli a6, t6, 2
	ld t6, 296(sp)
	subw t4, zero, a6
	ld t5, 328(sp)
	addw t2, t1, t4
	li t4, 105
	mulw a6, t6, t3
	li t3, -42
	addw t1, t2, a6
	ld t6, 320(sp)
	mulw a6, t5, t4
	ld t4, 312(sp)
	addw t2, t1, a6
	mulw t5, t6, t3
	addw t1, t2, t5
	ld t5, 112(sp)
	mulw t2, t4, a7
	ld t6, 136(sp)
	li a7, -110
	li t4, 29
	addw a6, t1, t2
	li t2, -106
	mulw t1, t5, t4
	ld t5, 144(sp)
	addw t3, a6, t1
	slli t4, t5, 5
	mulw a6, t6, t2
	ld t6, 184(sp)
	addw t1, t3, a6
	subw t3, t5, t4
	ld t5, 152(sp)
	li t4, -100
	addw t2, t1, t3
	mulw t3, t6, a7
	mulw a6, t5, t4
	ld t6, 176(sp)
	li a7, 52
	addw t1, t2, t3
	ld t5, 160(sp)
	li t3, -22
	addw t2, t1, a6
	mulw t4, t6, t3
	ld t6, 120(sp)
	li t3, -75
	addw t1, t2, t4
	mulw t4, t5, t3
	li t5, 127
	li t3, -125
	addw t2, t1, t4
	mulw t4, t6, t3
	li t3, 26
	li t6, 77
	addw a6, t2, t4
	max t1, a6, zero
	min t2, t1, t5
	ld t5, 392(sp)
	ld a6, 376(sp)
	mulw t4, t2, t6
	ld t6, 368(sp)
	mulw t2, t5, t3
	addw t1, a5, t4
	li t3, -70
	li t4, 76
	mulw t5, a6, t4
	li a6, -95
	li t4, 29
	addw a5, t2, t5
	mulw t2, t6, t3
	addw t3, a5, t2
	sd t2, 80(sp)
	ld t5, 384(sp)
	ld t6, 360(sp)
	mulw t2, t5, t4
	addw a5, t3, t2
	ld t3, 352(sp)
	mulw t2, t6, a6
	sh1add t5, t3, t3
	ld a6, 304(sp)
	addw t4, a5, t2
	slliw a5, t5, 5
	ld t5, 344(sp)
	addw t2, t4, a5
	slli t3, t5, 4
	mulw t4, a6, a7
	li a7, 82
	addw a5, t2, t4
	ld a6, 336(sp)
	addw t2, t3, t5
	slli t4, t2, 2
	subw t6, zero, t4
	sh2add t4, a6, a6
	addw t3, a5, t6
	ld t6, 96(sp)
	subw a5, zero, t4
	ld t5, 128(sp)
	slli t4, t6, 4
	addw t2, t3, a5
	addw a6, t4, t6
	slli t3, t5, 4
	sh1add a5, a6, t2
	addw t6, t3, t5
	li t3, 102
	slli a6, t6, 1
	ld t6, 104(sp)
	subw t4, zero, a6
	ld t5, 408(sp)
	addw t2, a5, t4
	sh1add t4, t5, t5
	mulw a6, t6, t3
	ld t6, 296(sp)
	li t3, -38
	addw a5, t2, a6
	ld t5, 328(sp)
	sh1add t2, t4, a5
	mulw a6, t6, t3
	li t4, 27
	ld t6, 320(sp)
	addw a5, t2, a6
	mulw t2, t5, t4
	ld t4, 312(sp)
	addw t3, a5, t2
	mulw t5, t6, a2
	li a5, 116
	addw t2, t3, t5
	mulw t6, t4, a5
	ld t5, 112(sp)
	addw t3, t2, t6
	ld t6, 136(sp)
	mulw t4, t5, t0
	ld t5, 144(sp)
	slli t0, t6, 6
	addw t2, t3, t4
	subw a6, t6, t0
	li t4, -99
	addw t3, t2, a6
	ld t6, 184(sp)
	mulw a6, t5, t4
	slli t2, t6, 6
	addw t0, t3, a6
	addw t3, t2, t6
	addw t2, t0, t3
	sd t3, 72(sp)
	ld t5, 152(sp)
	ld t6, 176(sp)
	slli t4, t5, 4
	subw t0, t4, t5
	ld t5, 160(sp)
	sh3add t3, t0, t2
	mulw t4, t6, a3
	sh1add t6, t5, t5
	addw t0, t3, t4
	li t5, 127
	slliw t2, t6, 1
	li t3, 94
	subw t4, zero, t2
	ld t6, 120(sp)
	addw a3, t0, t4
	mulw t0, t6, t3
	addw t4, a3, t0
	max t2, t4, zero
	min t0, t2, t5
	ld t5, 392(sp)
	slliw t3, t0, 7
	ld a6, 376(sp)
	subw t4, t3, t0
	ld t6, 368(sp)
	subw t2, a6, a4
	li t3, -23
	addw a3, t1, t4
	mulw t0, t5, t3
	ld t5, 384(sp)
	addw t1, a1, t0
	li t0, 49
	addw a1, t1, t2
	mulw t1, t6, t0
	mulw t2, t5, a0
	ld t6, 360(sp)
	addw a4, a1, t1
	sh3add t4, t6, t6
	ld t3, 352(sp)
	li a1, 85
	addw t1, a4, t2
	sh3add a0, t4, t1
	mulw t2, t3, a1
	ld t1, 416(sp)
	addw a4, a0, t2
	slli t3, t1, 1
	ld t5, 344(sp)
	li t1, 125
	subw a1, zero, t3
	sh1add t2, t5, t5
	ld a6, 336(sp)
	addw a0, a4, a1
	ld t6, 96(sp)
	li a4, -117
	sh2add a1, t2, a0
	ld t5, 128(sp)
	mulw a0, a6, t1
	mulw t4, t6, a4
	addw t3, a1, a0
	slli a1, t5, 6
	addw t2, t3, t4
	addw t6, a1, t5
	ld t5, 408(sp)
	subw t4, zero, t6
	ld t6, 296(sp)
	addw t3, t2, t4
	mulw a6, t5, t1
	mulw t4, t6, a2
	ld t5, 328(sp)
	addw t2, t3, a6
	li a2, -123
	ld t6, 320(sp)
	slli t3, t5, 5
	addw t1, t2, t4
	subw t4, t5, t3
	li t5, 83
	mulw t3, t6, a2
	addw t2, t1, t4
	ld t4, 312(sp)
	addw t1, t2, t3
	li t3, 122
	mulw t2, t4, t5
	li t4, 11
	addw a2, t1, t2
	ld t5, 112(sp)
	ld t6, 136(sp)
	mulw t1, t5, t3
	li t3, -23
	addw t2, a2, t1
	ld t5, 144(sp)
	mulw a2, t6, t4
	ld t6, 184(sp)
	addw t1, t2, a2
	li t2, -47
	mulw t4, t5, t3
	ld t5, 152(sp)
	mulw t3, t6, t2
	addw a2, t1, t4
	ld t6, 176(sp)
	slli t4, t5, 5
	addw t1, a2, t3
	subw t2, zero, t4
	ld t5, 160(sp)
	li t3, 95
	mulw t4, t6, a4
	addw a2, t1, t2
	ld t6, 120(sp)
	li t2, 118
	addw t1, a2, t4
	mulw a4, t5, t3
	li t5, 127
	addw a2, t1, a4
	mulw t3, t6, t2
	li t2, -106
	addw t1, a2, t3
	max a4, t1, zero
	min a2, a4, t5
	ld t5, 392(sp)
	ld a6, 376(sp)
	mulw t3, a2, t2
	sh3add a2, t5, a0
	addw t1, a3, t3
	li a0, 101
	li t3, -104
	mulw a3, a6, a7
	li a6, -95
	addw a4, a2, a3
	sd a3, 48(sp)
	ld t6, 368(sp)
	ld t5, 384(sp)
	mulw a3, t6, t3
	mulw t2, t5, a0
	ld t6, 360(sp)
	addw a2, a4, a3
	ld t3, 352(sp)
	li a4, -116
	addw a3, a2, t2
	mulw t4, t6, a4
	ld a2, 88(sp)
	addw t2, a3, t4
	ld t4, 64(sp)
	subw a3, t3, a2
	ld t5, 344(sp)
	li t3, -70
	subw a2, zero, t4
	addw t6, t2, a3
	li t2, 75
	addw a3, t6, a2
	mulw t4, t5, t3
	ld t6, 96(sp)
	addw a2, a3, t4
	ld t5, 128(sp)
	mulw t3, t6, t2
	ld t6, 104(sp)
	slli t2, t5, 5
	addw a3, a2, t3
	addw t3, t2, t5
	ld t5, 408(sp)
	sh1add t2, t6, t6
	sh1add a2, t3, a3
	ld t6, 296(sp)
	slliw t4, t2, 5
	li t2, -101
	subw t3, zero, t4
	mulw t4, t5, t2
	addw a3, a2, t3
	ld t5, 328(sp)
	li t3, -114
	addw a2, a3, t4
	li a3, 59
	mulw t4, t6, t3
	ld t6, 320(sp)
	addw t2, a2, t4
	sh1add t3, t6, t6
	mulw t4, t5, a3
	addw a2, t2, t4
	sd t3, 56(sp)
	sh2add t2, t3, a2
	ld t4, 312(sp)
	ld t5, 112(sp)
	sh2add t6, t4, t4
	li t4, -93
	addw a2, t2, t6
	ld t6, 136(sp)
	mulw t2, t5, a6
	ld t5, 144(sp)
	addw t3, a2, t2
	mulw a6, t6, a5
	ld t6, 184(sp)
	addw t2, t3, a6
	mulw a5, t5, t4
	slli t3, t6, 4
	ld t5, 152(sp)
	addw a2, t2, a5
	subw t4, t3, t6
	li t2, 79
	ld t6, 176(sp)
	addw a5, a2, t4
	sh1add t3, t6, t6
	mulw t4, t5, t2
	ld t5, 160(sp)
	addw a2, a5, t4
	ld t6, 120(sp)
	addw t2, a2, t3
	slli a2, t6, 5
	mulw t4, t5, t0
	li t5, 127
	subw t0, a2, t6
	addw a5, t2, t4
	slli t2, t0, 2
	subw t3, zero, t2
	addw t4, a5, t3
	max t0, t4, zero
	min a5, t0, t5
	ld t5, 392(sp)
	sh1add t3, a5, a5
	ld a6, 376(sp)
	li a5, 81
	subw t4, zero, t3
	ld t6, 368(sp)
	mulw t0, t5, a5
	slli t3, a6, 4
	addw t2, t1, t4
	ld t5, 384(sp)
	addw t4, t3, a6
	li a6, 121
	li t3, -102
	sh2add t1, t4, t0
	mulw t4, t6, t3
	ld t6, 360(sp)
	li t3, -74
	addw t0, t1, t4
	mulw t4, t5, t3
	ld t3, 352(sp)
	mulw t5, t6, a6
	addw t1, t0, t4
	slli t0, t3, 4
	addw t4, t1, t5
	subw t5, t3, t0
	subw t1, t0, t3
	li t0, 55
	addw t3, t4, t5
	sd t5, 40(sp)
	ld a6, 304(sp)
	ld t5, 344(sp)
	mulw t6, a6, t0
	ld a6, 336(sp)
	addw t4, t3, t6
	ld t6, 96(sp)
	mulw t3, t5, a0
	addw a7, t4, t3
	li t3, -13
	mulw a0, a6, t3
	slli t3, t6, 5
	addw t4, a7, a0
	subw a6, t3, t6
	ld t6, 104(sp)
	li t3, 114
	slli a7, a6, 1
	subw a0, zero, a7
	li a7, 38
	addw t5, t4, a0
	mulw t4, t6, t3
	addw a6, t5, a1
	ld t5, 408(sp)
	addw a1, a6, t4
	ld t6, 296(sp)
	mulw a6, t5, a7
	ld t5, 328(sp)
	addw t4, a1, a6
	li a6, -21
	mulw a7, t6, a6
	slli t6, t5, 3
	addw a1, t4, a7
	subw a7, t6, t5
	ld t6, 320(sp)
	slli t4, a7, 4
	addw a6, a1, t4
	ld t4, 312(sp)
	mulw a7, t6, t3
	slli t5, t4, 3
	addw a1, a6, a7
	subw t3, t5, t4
	ld t5, 112(sp)
	slli t6, t3, 4
	sh2add t4, t5, t5
	addw a6, a1, t6
	slliw a7, t4, 1
	ld t6, 136(sp)
	subw a1, zero, a7
	slli t5, t6, 4
	addw t4, a6, a1
	subw a7, zero, t5
	li a1, -50
	ld t5, 144(sp)
	addw a6, t4, a7
	ld t6, 184(sp)
	mulw a7, t5, a1
	slli t5, t6, 3
	addw t4, a6, a7
	subw a6, t5, t6
	ld t5, 152(sp)
	slli s0, a6, 4
	subw t6, zero, s0
	addw a7, t4, t6
	ld t6, 176(sp)
	mulw t4, t5, a4
	ld t5, 160(sp)
	li a4, -54
	addw a6, a7, t4
	mulw a7, t6, a4
	ld t6, 120(sp)
	addw t4, a6, a7
	li a7, 82
	mulw a6, t5, a7
	sh3add t5, t6, t6
	addw a4, t4, a6
	slliw t4, t5, 3
	li t5, 127
	subw a6, zero, t4
	addw a7, a4, a6
	max t6, a7, zero
	li a7, -77
	min a4, t6, t5
	ld t5, 392(sp)
	slliw a6, a4, 5
	slli t6, t5, 4
	addw t4, t2, a6
	subw a4, t6, t5
	ld a6, 376(sp)
	ld t6, 368(sp)
	mulw t5, a6, a7
	addw t2, a4, t5
	li a4, -90
	slli t5, t6, 5
	addw a6, t5, t6
	ld t5, 384(sp)
	sh1add a7, a6, t2
	ld t6, 360(sp)
	mulw t2, t5, a4
	addw a6, a7, t2
	sh1add a7, t6, t6
	slli t2, t6, 1
	slliw s0, a7, 1
	slli a7, t1, 1
	subw t6, zero, s0
	subw s0, zero, a7
	addw t5, a6, t6
	ld a6, 304(sp)
	addw t6, t5, s0
	slli t1, a6, 3
	ld t5, 344(sp)
	subw s0, zero, t1
	ld a6, 336(sp)
	addw a7, t6, s0
	ld t6, 96(sp)
	mulw t1, t5, a5
	ld t5, 128(sp)
	addw s0, a7, t1
	li a7, -110
	sh1add t1, a6, s0
	mulw a6, t6, a7
	ld t6, 104(sp)
	addw a5, t1, a6
	li a6, -95
	mulw a7, t5, a6
	ld t5, 408(sp)
	mulw a6, t6, a3
	addw t1, a5, a7
	ld t6, 296(sp)
	li a7, 52
	addw a5, t1, a6
	slli t1, t6, 4
	mulw a6, t5, a7
	li a7, 82
	addw a3, a5, a6
	ld t5, 328(sp)
	subw a6, t1, t6
	ld t6, 320(sp)
	addw a5, a3, a6
	mulw t1, t5, t0
	slli t0, t6, 5
	addw a3, a5, t1
	addw t1, t0, t6
	li t0, 58
	subw t5, zero, t1
	addw a6, a3, t5
	ld t5, 112(sp)
	sh1add a5, t3, a6
	ld t6, 136(sp)
	li a6, -95
	li t3, 67
	mulw t1, t5, t0
	ld t5, 144(sp)
	li t0, 86
	addw a3, a5, t1
	mulw t1, t6, t3
	ld t6, 184(sp)
	mulw t3, t5, t0
	addw a5, a3, t1
	ld t5, 152(sp)
	li t1, -79
	addw a3, a5, t3
	li t3, -13
	mulw a5, t6, t1
	ld t6, 176(sp)
	sh1add t1, t5, t5
	addw t0, a3, a5
	ld t5, 160(sp)
	slliw a3, t1, 4
	mulw t1, t6, t3
	addw a5, t0, a3
	ld t6, 120(sp)
	slli t0, t5, 4
	addw a3, a5, t1
	ld t3, 72(sp)
	subw t1, t5, t0
	li t5, 127
	addw t0, a2, t6
	addw a5, a3, t1
	sh1add t1, t0, a5
	max a3, t1, zero
	min a2, a3, t5
	ld a3, 48(sp)
	ld t5, 392(sp)
	mulw t0, a2, a6
	ld t6, 368(sp)
	addw a2, t3, a3
	addw a5, t4, t0
	li t3, 67
	subw t4, zero, t2
	slli t0, t5, 5
	addw t1, t0, t5
	ld t5, 384(sp)
	mulw t0, t6, t3
	addw a3, a2, t1
	slli t1, t5, 4
	addw a2, a3, t0
	subw t3, t1, t5
	sh1add t0, t3, a2
	ld t3, 352(sp)
	addw a3, t0, t4
	ld a2, 88(sp)
	li t4, 107
	ld t1, 416(sp)
	addw t2, a2, t3
	ld t5, 344(sp)
	li t3, -13
	addw t0, a3, t2
	ld a6, 336(sp)
	sh3add a2, t1, t0
	ld t6, 96(sp)
	sh3add t0, a6, a6
	mulw t1, t5, t3
	sh2add t2, t6, t6
	ld t5, 128(sp)
	addw a3, a2, t1
	ld t6, 104(sp)
	li t1, 104
	sh1add a2, t0, a3
	mulw t3, t5, t1
	addw a3, a2, t2
	ld t5, 408(sp)
	li t2, -119
	addw a2, a3, t3
	slli t3, t5, 3
	mulw a3, t6, t2
	ld t6, 296(sp)
	addw t1, a2, a3
	li a3, 71
	subw a2, t5, t3
	ld t5, 328(sp)
	addw t2, t1, a2
	mulw t3, t6, a3
	addw t1, t2, t3
	mulw a6, t5, t4
	ld t3, 56(sp)
	addw t6, t1, a6
	ld t4, 312(sp)
	sh3add t2, t3, t6
	ld t5, 112(sp)
	sh1add t3, t5, t5
	mulw t6, t4, a7
	slliw a6, t3, 5
	li a7, 38
	addw t1, t2, t6
	li t3, -104
	subw t4, zero, a6
	ld t6, 136(sp)
	addw t2, t1, t4
	ld t5, 144(sp)
	li t4, -121
	mulw a6, t6, t3
	addw t1, t2, a6
	li a6, 97
	mulw t2, t5, t4
	ld t5, 152(sp)
	addw t3, t1, t2
	ld t6, 176(sp)
	mulw t1, t5, a6
	li t5, 83
	addw t2, t3, t1
	mulw t4, t6, t5
	li t1, 46
	ld t5, 160(sp)
	addw t3, t2, t4
	ld t6, 120(sp)
	li t4, -84
	mulw a6, t5, t1
	li t5, 127
	mulw t1, t6, t4
	addw t2, t3, a6
	addw a6, t2, t1
	ld t2, 80(sp)
	max t3, a6, zero
	min t4, t3, t5
	ld t5, 40(sp)
	addw t3, t2, t5
	mulw t6, t4, a1
	ld t5, 392(sp)
	addw a1, a0, t3
	addw t1, a5, t6
	ld a6, 376(sp)
	li t3, -125
	li a5, -29
	mulw t2, t5, a5
	ld t5, 384(sp)
	slli a5, a6, 3
	addw a0, a1, t2
	ld t6, 360(sp)
	subw t2, a5, a6
	ld a6, 304(sp)
	addw a1, a0, t2
	mulw t2, t5, a7
	mulw a5, t6, a4
	ld t5, 344(sp)
	li a7, -77
	addw a0, a1, t2
	slli t2, a6, 5
	addw a1, a0, a5
	li a0, 37
	subw a5, zero, t2
	addw a4, a1, a5
	mulw a5, t5, a0
	ld t5, 128(sp)
	addw t2, a4, a5
	ld t6, 104(sp)
	li a5, -46
	sh2add a1, t0, t2
	mulw t0, t5, t3
	li t3, -70
	addw a4, a1, t0
	ld t5, 408(sp)
	mulw t0, t6, a5
	ld t6, 296(sp)
	addw a1, a4, t0
	mulw t0, t5, t3
	mulw a5, t6, a0
	ld t5, 328(sp)
	addw a4, a1, t0
	li t0, -73
	addw a1, a4, a5
	mulw t3, t5, t0
	ld a5, 400(sp)
	li t0, -87
	addw a4, a1, t3
	ld t4, 312(sp)
	subw t2, zero, a5
	li t3, -75
	addw a1, a4, t2
	ld t5, 112(sp)
	li t2, 75
	mulw a5, t4, t0
	ld t6, 136(sp)
	addw a4, a1, a5
	mulw a1, t5, t3
	mulw t0, t6, a3
	li t3, -13
	ld t5, 144(sp)
	addw a5, a4, a1
	ld t6, 184(sp)
	addw a1, a5, t0
	li a5, 53
	mulw a4, t5, a7
	ld t5, 152(sp)
	addw a3, a1, a4
	mulw a1, t6, a5
	ld t6, 176(sp)
	addw a4, a3, a1
	mulw a5, t5, a0
	li a3, -103
	ld t5, 160(sp)
	addw a1, a4, a5
	li a5, 42
	mulw a4, t6, a3
	ld t6, 120(sp)
	addw a0, a1, a4
	mulw a3, t5, t3
	li t5, 127
	li t3, -114
	addw a1, a0, a3
	mulw a4, t6, t3
	li t3, -23
	addw a3, a1, a4
	li a4, 41
	max a0, a3, zero
	min a1, a0, t5
	ld t5, 392(sp)
	ld a6, 376(sp)
	mulw a3, a1, t3
	ld t6, 368(sp)
	li t3, 67
	addw a0, t1, a3
	li t1, 47
	mulw a3, t5, t3
	ld t5, 384(sp)
	addw a1, a2, a3
	mulw a2, a6, a5
	mulw a5, t6, a4
	addw a3, a1, a2
	ld t6, 360(sp)
	li a4, -92
	li a2, -123
	addw a1, a3, a5
	ld t3, 352(sp)
	mulw a5, t5, a2
	ld a6, 304(sp)
	addw a3, a1, a5
	ld t5, 344(sp)
	li a5, -51
	mulw a1, t6, a4
	sh2add a4, t3, t3
	addw a2, a3, a1
	li t3, -74
	mulw a3, a6, a7
	sh1add a1, a4, a2
	li a7, 38
	ld a6, 336(sp)
	addw a2, a1, a3
	ld t6, 96(sp)
	sh1add a4, a6, a6
	mulw a3, t5, t2
	ld t5, 128(sp)
	addw a1, a2, a3
	slliw a3, a4, 5
	li a4, 109
	addw a2, a1, a3
	mulw a1, t6, a5
	ld t6, 104(sp)
	addw a3, a2, a1
	mulw a2, t5, a4
	li a4, -122
	addw a1, a3, a2
	mulw a2, t6, t3
	li t3, 67
	addw a3, a1, a2
	ld t6, 296(sp)
	ld t5, 328(sp)
	mulw a1, t6, a4
	ld t6, 320(sp)
	addw a2, a3, a1
	mulw a3, t5, t3
	ld t5, 112(sp)
	addw a1, a2, a3
	mulw a4, t6, t1
	li a3, 22
	li t1, 46
	addw a2, a1, a4
	ld t6, 136(sp)
	mulw a4, t4, a3
	li t4, 29
	slli a3, t5, 4
	addw a1, a2, a4
	addw t0, a3, t5
	ld t5, 144(sp)
	mulw a3, t6, a7
	slli a5, t0, 2
	ld t6, 184(sp)
	subw a4, zero, a5
	addw a2, a1, a4
	mulw a4, t5, t4
	addw a1, a2, a3
	li t4, -121
	li a3, 115
	addw a2, a1, a4
	ld t5, 152(sp)
	mulw a4, t6, a3
	ld t6, 176(sp)
	addw a1, a2, a4
	sh3add a5, t6, t6
	li a4, -49
	mulw a3, t5, t4
	ld t5, 160(sp)
	addw a2, a1, a3
	ld t6, 120(sp)
	li a1, 85
	sh2add a3, a5, a2
	mulw a5, t5, a4
	li t5, 127
	addw a2, a3, a5
	mulw a5, t6, a1
	addw a4, a2, a5
	max a3, a4, zero
	min a1, a3, t5
	mulw a2, a1, t1
	li a1, 100
	addw a3, a0, a2
	slt s0, zero, a3
	subw a0, a1, s0
	jal putch
	li a0, 97
	bne s0, zero, label1012
	li a0, 111
.p2align 2
label1012:
	jal putch
	li a0, 116
	bne s0, zero, label1014
	li a0, 103
.p2align 2
label1014:
	jal putch
	li a0, 10
	jal putch
	ld a0, 168(sp)
	addiw a0, a0, -1
	sd a0, 168(sp)
	ble a0, zero, label15
.p2align 2
label4:
	addi s0, sp, 192
	mv s1, zero
	li a0, 5
	blt zero, a0, label8
	j label14
.p2align 2
label12:
	addi s2, s2, 4
	mv s3, a1
.p2align 2
label9:
	jal getint
	addiw a1, s3, 1
	sw a0, 0(s2)
	li a0, 5
	blt a1, a0, label12
	addiw s1, s1, 1
	addi s0, s0, 20
	bge s1, a0, label14
.p2align 2
label8:
	mv s2, s0
	mv s3, zero
	j label9
label15:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 424
	ret
