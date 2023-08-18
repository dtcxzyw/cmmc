.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[100] RegSpill[296] CalleeSaved[40]
	addi sp, sp, -440
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	jal getint
	ble a0, zero, label17
	sd a0, 296(sp)
	addi s0, sp, 128
	mv s1, zero
	mv s2, s0
	mv s3, zero
	j label7
.p2align 2
label10:
	addi s2, s2, 4
	mv s3, a1
.p2align 2
label7:
	jal getint
	addiw a1, s3, 1
	sw a0, 0(s2)
	li a0, 5
	blt a1, a0, label10
	addiw s1, s1, 1
	bge s1, a0, label13
	addi s0, s0, 20
	mv s3, zero
	mv s2, s0
	j label7
.p2align 2
label13:
	ld a1, 128(sp)
	li a0, 85
	li a4, 23
	li t3, -75
	li t4, -39
	li t5, 110
	srai a6, a1, 32
	sext.w t6, a1
	mulw a5, a6, a4
	sd t6, 232(sp)
	mulw a3, t6, a0
	sd a6, 280(sp)
	addw a2, a3, a5
	ld a1, 136(sp)
	li a3, -82
	srai t6, a1, 32
	sext.w a7, a1
	mulw a4, a7, a3
	sd a7, 288(sp)
	addw a5, a2, a4
	sd t6, 240(sp)
	li a2, -103
	ld a3, 144(sp)
	mulw a1, t6, a2
	sext.w a6, a3
	srai t6, a3, 32
	addw a4, a5, a1
	li a1, -123
	sd a6, 264(sp)
	mulw t0, a6, a1
	sd t6, 248(sp)
	addw a5, a4, t0
	slli t0, t6, 6
	addw a3, a5, t0
	sd t0, 104(sp)
	ld a4, 152(sp)
	srai t6, a4, 32
	sext.w a7, a4
	slli a6, a7, 4
	subw t1, a6, a7
	sd a7, 272(sp)
	slli t2, t1, 3
	sd a6, 80(sp)
	subw a5, zero, t2
	sd t1, 432(sp)
	addw t0, a3, a5
	sd t6, 112(sp)
	li a3, 50
	ld a4, 160(sp)
	mulw t1, t6, a3
	srai a6, a4, 32
	sext.w a7, a4
	addw a5, t0, t1
	li t0, -59
	sd a7, 304(sp)
	mulw t1, a7, t0
	sd a6, 120(sp)
	addw t2, a5, t1
	ld a5, 168(sp)
	li t1, 47
	sext.w t6, a5
	mulw a4, a6, t1
	srai a6, a5, 32
	li t1, -111
	addw t0, t2, a4
	sd t6, 256(sp)
	mulw t2, t6, t1
	sd a6, 312(sp)
	addw a4, t0, t2
	li t0, -67
	mulw t1, a6, t0
	addw t0, a4, t1
	sd t1, 48(sp)
	li t1, -106
	ld a5, 176(sp)
	srai a6, a5, 32
	sext.w t6, a5
	mulw t2, t6, t1
	sd t6, 416(sp)
	mulw t1, a6, t3
	addw a4, t0, t2
	sd a6, 336(sp)
	addw t0, a4, t1
	li a6, -102
	ld a5, 184(sp)
	srai a7, a5, 32
	sext.w t6, a5
	slli a5, a7, 4
	mulw t1, t6, a6
	sd t6, 328(sp)
	addw a4, t0, t1
	sd a7, 376(sp)
	addw t1, a5, a7
	sh1add t0, t1, a4
	slli t3, t1, 1
	sd t3, 424(sp)
	ld a5, 192(sp)
	srai t6, a5, 32
	sext.w a6, a5
	mulw a4, a6, t4
	sd a6, 368(sp)
	addw t1, t0, a4
	sd t6, 360(sp)
	slli t0, t6, 6
	ld a4, 200(sp)
	addw t2, t0, t6
	sext.w a6, a4
	srai t6, a4, 32
	addw a5, t1, t2
	li t1, 47
	sd a6, 320(sp)
	mulw t2, a6, t1
	sd t6, 352(sp)
	li t1, 113
	addw t0, a5, t2
	ld a4, 208(sp)
	mulw t2, t6, t1
	sext.w a6, a4
	srai t6, a4, 32
	addw a5, t0, t2
	mulw t1, a6, t5
	sd a6, 344(sp)
	addw t0, a5, t1
	sd t6, 392(sp)
	li t1, 47
	ld a4, 216(sp)
	mulw t2, t6, t1
	sext.w a6, a4
	srai t6, a4, 32
	addw a5, t0, t2
	slli t1, a6, 2
	subw t2, zero, t1
	sd a6, 384(sp)
	addw t0, a5, t2
	sd t6, 400(sp)
	sh2add a5, t6, t6
	lw a6, 224(sp)
	li t6, 127
	slliw t1, a5, 4
	addw a4, t0, t1
	sd a6, 408(sp)
	li t1, 46
	mulw a5, a6, t1
	li t1, -106
	addw t0, a4, a5
	max t2, t0, zero
	li t0, 39
	min a4, t2, t6
	ld t6, 232(sp)
	ld a6, 280(sp)
	mulw a5, a4, t0
	ld a7, 288(sp)
	mulw t2, t6, t1
	slli a4, a6, 6
	sh3add t5, a7, a7
	ld t6, 240(sp)
	subw t1, a4, a6
	ld a6, 264(sp)
	sh1add t3, t1, t2
	slliw t2, t5, 1
	subw t4, zero, t2
	slli t2, t6, 5
	addw t1, t3, t4
	subw t5, t6, t2
	slli t4, a6, 3
	ld t6, 248(sp)
	addw t3, t1, t5
	ld a7, 272(sp)
	li t1, 47
	subw t5, zero, t4
	addw t2, t3, t5
	slli t5, a7, 2
	mulw t3, t6, t1
	ld t6, 112(sp)
	addw t4, t2, t3
	ld a7, 304(sp)
	li t3, 67
	subw t2, zero, t5
	ld a6, 120(sp)
	mulw t5, t6, t3
	addw t1, t4, t2
	ld t6, 256(sp)
	li t4, -94
	addw t2, t1, t5
	li t5, -121
	mulw t1, a7, t4
	slli t4, t6, 3
	addw t3, t2, t1
	mulw t2, a6, t5
	ld a6, 312(sp)
	addw t1, t3, t2
	subw t3, t4, t6
	li t6, -21
	addw t2, t1, t3
	mulw t4, a6, t6
	ld t6, 416(sp)
	addw t1, t2, t4
	slli t3, t6, 4
	subw t4, t3, t6
	li t3, 105
	slli a6, t4, 2
	li t4, -43
	subw t5, zero, a6
	ld a6, 336(sp)
	addw t2, t1, t5
	ld t6, 328(sp)
	ld a7, 376(sp)
	mulw t5, a6, t4
	ld a6, 368(sp)
	li t4, -42
	addw t1, t2, t5
	mulw t5, t6, t3
	ld t6, 360(sp)
	li t3, 87
	addw t2, t1, t5
	mulw t5, a7, t4
	li t4, 29
	addw t1, t2, t5
	mulw t5, a6, t3
	ld a6, 320(sp)
	addw t2, t1, t5
	li t1, -106
	mulw t5, t6, t4
	ld t6, 352(sp)
	addw t3, t2, t5
	slli t4, t6, 5
	mulw t5, a6, t1
	ld a6, 344(sp)
	addw t2, t3, t5
	li t5, -100
	subw t3, t6, t4
	li t4, -22
	li t6, -110
	addw t1, t2, t3
	mulw t2, a6, t6
	ld t6, 392(sp)
	addw t3, t1, t2
	ld a6, 384(sp)
	mulw t1, t6, t5
	ld t6, 400(sp)
	mulw t5, a6, t4
	addw t2, t3, t1
	li t4, -125
	ld a6, 408(sp)
	li t3, -75
	addw t1, t2, t5
	mulw t5, t6, t3
	li t6, 127
	addw t2, t1, t5
	mulw t5, a6, t4
	addw t3, t2, t5
	li t5, 77
	max t1, t3, zero
	li t3, 26
	min t2, t1, t6
	ld t6, 232(sp)
	ld a6, 280(sp)
	mulw t4, t2, t5
	ld a7, 288(sp)
	mulw t2, t6, t3
	addw t1, a5, t4
	li t4, 76
	mulw t3, a6, t4
	li t4, 29
	li a6, -70
	addw a5, t2, t3
	mulw t3, a7, a6
	li a7, -95
	addw t2, a5, t3
	sd t3, 96(sp)
	ld t6, 240(sp)
	ld a6, 264(sp)
	mulw t3, t6, t4
	ld t6, 248(sp)
	addw a5, t2, t3
	sh1add t4, t6, t6
	mulw t3, a6, a7
	li a6, 52
	addw t2, a5, t3
	ld a7, 272(sp)
	slliw a5, t4, 5
	ld t6, 112(sp)
	addw t3, t2, a5
	slli t2, t6, 4
	mulw t4, a7, a6
	addw t5, t2, t6
	ld a7, 304(sp)
	addw a5, t3, t4
	slli t4, t5, 2
	subw a6, zero, t4
	sh2add t4, a7, a7
	addw t3, a5, a6
	ld a6, 120(sp)
	subw a5, zero, t4
	ld t6, 256(sp)
	slli t4, a6, 4
	addw t2, t3, a5
	addw t5, t4, a6
	slli t3, t6, 4
	sh1add a5, t5, t2
	ld a6, 312(sp)
	addw t5, t3, t6
	ld t6, 416(sp)
	li t3, 102
	slli t4, t5, 1
	subw a7, zero, t4
	mulw t4, a6, t3
	addw t2, a5, a7
	ld a6, 336(sp)
	sh1add t3, t6, t6
	addw a5, t2, t4
	ld t6, 328(sp)
	li t4, -38
	sh1add t2, t3, a5
	ld a7, 376(sp)
	mulw t5, a6, t4
	li t3, 27
	ld a6, 368(sp)
	addw a5, t2, t5
	mulw t4, t6, t3
	li t5, 110
	ld t6, 360(sp)
	addw t2, a5, t4
	li a5, 116
	mulw t4, a7, t5
	addw t3, t2, t4
	mulw t5, t6, t0
	mulw t2, a6, a5
	ld a6, 320(sp)
	addw t4, t3, t2
	ld t6, 352(sp)
	slli t0, a6, 6
	addw t2, t4, t5
	li t4, -99
	subw t5, a6, t0
	ld a6, 344(sp)
	addw t3, t2, t5
	slli t2, a6, 6
	mulw t5, t6, t4
	addw t0, t3, t5
	addw t3, t2, a6
	addw t2, t0, t3
	sd t3, 88(sp)
	ld t6, 392(sp)
	ld a6, 384(sp)
	slli t4, t6, 4
	subw t0, t4, t6
	ld t6, 400(sp)
	li t4, -39
	sh3add t3, t0, t2
	mulw t2, a6, t4
	sh1add a6, t6, t6
	addw t0, t3, t2
	li t6, 127
	slliw t5, a6, 1
	li t3, 94
	subw t4, zero, t5
	ld a6, 408(sp)
	addw t2, t0, t4
	mulw t5, a6, t3
	addw t4, t2, t5
	li t5, -23
	max t0, t4, zero
	min t2, t0, t6
	ld t6, 232(sp)
	slliw t4, t2, 7
	subw t3, t4, t2
	addw t0, t1, t3
	mulw t2, t6, t5
	ld t1, 48(sp)
	ld a6, 280(sp)
	addw t3, t1, t2
	ld a7, 288(sp)
	subw t4, a6, a4
	li t2, 49
	addw t1, t3, t4
	ld t6, 240(sp)
	mulw t3, a7, t2
	ld a6, 264(sp)
	addw a4, t1, t3
	mulw t4, t6, a3
	ld t6, 248(sp)
	sh3add a3, a6, a6
	addw t1, a4, t4
	sh3add a4, a3, t1
	mulw t3, t6, a0
	ld t1, 432(sp)
	addw a3, a4, t3
	slli t5, t1, 1
	ld t6, 112(sp)
	li t3, 125
	subw a4, zero, t5
	sh1add t1, t6, t6
	ld a7, 304(sp)
	addw t4, a3, a4
	ld a6, 120(sp)
	sh2add a4, t1, t4
	ld t6, 256(sp)
	li t1, -117
	mulw a3, a7, t3
	mulw a7, a6, t1
	addw t5, a4, a3
	slli a4, t6, 6
	addw t4, t5, a7
	addw a6, a4, t6
	ld t6, 416(sp)
	subw t5, zero, a6
	ld a6, 336(sp)
	addw a7, t4, t5
	mulw t5, t6, t3
	ld t6, 328(sp)
	addw t4, a7, t5
	li t5, 110
	mulw a7, a6, t5
	slli t5, t6, 5
	addw t3, t4, a7
	subw a6, t6, t5
	ld a7, 376(sp)
	li t5, 83
	addw t4, t3, a6
	ld a6, 368(sp)
	mulw t6, a7, a1
	li a7, 122
	addw t3, t4, t6
	mulw t6, a6, t5
	li t5, 11
	addw t4, t3, t6
	ld t6, 360(sp)
	mulw a6, t6, a7
	addw t3, t4, a6
	ld a6, 320(sp)
	ld t6, 352(sp)
	mulw a7, a6, t5
	li t5, -23
	addw t4, t3, a7
	mulw a6, t6, t5
	li a7, -47
	addw t3, t4, a6
	ld a6, 344(sp)
	ld t6, 392(sp)
	mulw t5, a6, a7
	ld a6, 384(sp)
	slli a7, t6, 5
	addw t4, t3, t5
	ld t6, 400(sp)
	subw t3, zero, a7
	mulw a7, a6, t1
	addw t5, t4, t3
	ld a6, 408(sp)
	li t4, 95
	addw t3, t5, a7
	li t5, 118
	mulw a7, t6, t4
	li t6, 127
	addw t1, t3, a7
	mulw t3, a6, t5
	addw a7, t1, t3
	li t1, -106
	max t4, a7, zero
	li a7, 82
	min t3, t4, t6
	ld t6, 232(sp)
	ld a6, 280(sp)
	mulw t5, t3, t1
	li t3, 101
	sh3add t1, t6, a3
	addw t4, t0, t5
	li t5, -104
	mulw t0, a6, a7
	addw a3, t1, t0
	sd t0, 64(sp)
	ld a7, 288(sp)
	ld t6, 240(sp)
	ld a6, 264(sp)
	mulw t1, a7, t5
	mulw t5, t6, t3
	addw t0, a3, t1
	ld t6, 248(sp)
	li t1, -116
	addw a3, t0, t5
	mulw a7, a6, t1
	ld t0, 104(sp)
	addw t5, a3, a7
	ld a6, 80(sp)
	subw a3, t6, t0
	subw t0, zero, a6
	addw a7, t5, a3
	ld t6, 112(sp)
	li a6, -70
	addw a3, a7, t0
	li a7, 75
	mulw t0, t6, a6
	ld a6, 120(sp)
	addw t5, a3, t0
	ld t6, 256(sp)
	mulw a3, a6, a7
	ld a6, 312(sp)
	slli a7, t6, 5
	addw t0, t5, a3
	addw t5, a7, t6
	sh1add a3, t5, t0
	sh1add t5, a6, a6
	slliw t6, t5, 5
	li t5, -101
	subw a7, zero, t6
	ld t6, 416(sp)
	addw t0, a3, a7
	ld a6, 336(sp)
	mulw a7, t6, t5
	li t6, -114
	addw a3, t0, a7
	li t0, 59
	mulw a7, a6, t6
	ld t6, 328(sp)
	addw t5, a3, a7
	ld a7, 376(sp)
	mulw a6, t6, t0
	addw a3, t5, a6
	sh1add t5, a7, a7
	sh2add a7, t5, a3
	sd t5, 72(sp)
	ld a6, 368(sp)
	ld t6, 360(sp)
	sh2add t5, a6, a6
	ld a6, 320(sp)
	addw a3, a7, t5
	li a7, -95
	mulw t5, t6, a7
	ld t6, 352(sp)
	li a7, -93
	addw s0, a3, t5
	mulw a3, a6, a5
	ld a6, 344(sp)
	mulw a5, t6, a7
	addw t5, s0, a3
	slli t6, a6, 4
	addw a3, t5, a5
	subw a7, t6, a6
	li t5, 79
	addw a5, a3, a7
	ld t6, 392(sp)
	ld a6, 384(sp)
	mulw a7, t6, t5
	ld t6, 400(sp)
	addw a3, a5, a7
	sh1add a7, a6, a6
	ld a6, 408(sp)
	addw t5, a3, a7
	mulw a3, t6, t2
	li t6, 127
	addw a5, t5, a3
	slli a3, a6, 5
	subw t2, a3, a6
	slli t5, t2, 2
	subw a7, zero, t5
	addw a6, a5, a7
	max t2, a6, zero
	min a5, t2, t6
	ld t6, 232(sp)
	sh1add a6, a5, a5
	li a5, 81
	subw a7, zero, a6
	ld a6, 280(sp)
	addw t5, t4, a7
	mulw t2, t6, a5
	ld a7, 288(sp)
	slli t6, a6, 4
	addw s0, t6, a6
	ld t6, 240(sp)
	li a6, -102
	sh2add t4, s0, t2
	mulw s0, a7, a6
	li a7, -74
	addw t2, t4, s0
	mulw a6, t6, a7
	li t6, 121
	addw t4, t2, a6
	ld a6, 264(sp)
	mulw t2, a6, t6
	ld t6, 248(sp)
	addw a7, t4, t2
	slli t2, t6, 4
	subw s0, t6, t2
	subw t4, t2, t6
	addw a6, a7, s0
	li t2, 55
	sd s0, 56(sp)
	ld a7, 272(sp)
	ld t6, 112(sp)
	mulw s0, a7, t2
	ld a7, 304(sp)
	addw s1, a6, s0
	mulw a6, t6, t3
	li t3, -13
	addw s0, s1, a6
	ld a6, 120(sp)
	mulw s1, a7, t3
	slli t3, a6, 5
	addw t6, s0, s1
	subw s0, t3, a6
	li t3, 114
	slli a7, s0, 1
	subw a6, zero, a7
	addw s0, t6, a6
	addw a7, s0, a4
	sd a6, 40(sp)
	li s0, 38
	ld a6, 312(sp)
	ld t6, 416(sp)
	mulw s1, a6, t3
	ld a6, 336(sp)
	addw a4, a7, s1
	mulw s1, t6, s0
	li t6, -21
	addw a7, a4, s1
	mulw s0, a6, t6
	ld t6, 328(sp)
	addw a4, a7, s0
	slli a6, t6, 3
	subw a7, a6, t6
	slli s1, a7, 4
	ld a7, 376(sp)
	addw t6, a4, s1
	ld a6, 368(sp)
	slli s1, t4, 1
	mulw s0, a7, t3
	addw a4, t6, s0
	slli t6, a6, 3
	subw t3, t6, a6
	ld t6, 360(sp)
	slli s0, t3, 4
	addw a7, a4, s0
	sh2add a4, t6, t6
	slliw a6, a4, 1
	subw t6, zero, a6
	ld a6, 320(sp)
	addw a4, a7, t6
	slli t6, a6, 4
	li a6, -50
	subw s0, zero, t6
	ld t6, 352(sp)
	addw a7, a4, s0
	mulw s0, t6, a6
	ld a6, 344(sp)
	addw a4, a7, s0
	slli t6, a6, 3
	subw a7, t6, a6
	ld t6, 392(sp)
	slli s0, a7, 4
	subw a6, zero, s0
	addw a7, a4, a6
	mulw a6, t6, t1
	li t6, -54
	addw a4, a7, a6
	ld a6, 384(sp)
	mulw a7, a6, t6
	ld t6, 400(sp)
	addw t1, a4, a7
	ld a6, 408(sp)
	li a7, 82
	mulw s0, t6, a7
	sh3add t6, a6, a6
	addw a4, t1, s0
	slliw a7, t6, 3
	li t6, 127
	subw t1, zero, a7
	addw s0, a4, t1
	max a6, s0, zero
	li s0, -77
	min a4, a6, t6
	ld t6, 232(sp)
	slliw a7, a4, 5
	ld a6, 280(sp)
	addw t1, t5, a7
	slli a7, t6, 4
	subw a4, a7, t6
	ld a7, 288(sp)
	mulw t6, a6, s0
	addw t5, a4, t6
	li a4, -90
	slli t6, a7, 5
	addw a6, t6, a7
	ld t6, 240(sp)
	sh1add s0, a6, t5
	ld a6, 264(sp)
	mulw t5, t6, a4
	sh1add t6, a6, a6
	addw a7, s0, t5
	slliw s0, t6, 1
	slli t5, a6, 1
	subw a6, zero, s0
	subw s0, zero, s1
	addw t6, a7, a6
	ld a7, 272(sp)
	addw a6, t6, s0
	slli t6, a7, 3
	subw s0, zero, t6
	ld t6, 112(sp)
	addw t4, a6, s0
	ld a7, 304(sp)
	mulw a6, t6, a5
	li t6, -110
	addw s0, t4, a6
	ld a6, 120(sp)
	sh1add t4, a7, s0
	mulw a7, a6, t6
	ld t6, 256(sp)
	addw a5, t4, a7
	ld a6, 312(sp)
	li a7, -95
	mulw t4, t6, a7
	ld t6, 416(sp)
	mulw a7, a6, t0
	addw s0, a5, t4
	li a6, 52
	addw t4, s0, a7
	mulw t0, t6, a6
	ld a6, 336(sp)
	addw a5, t4, t0
	ld t6, 328(sp)
	slli a7, a6, 4
	subw t4, a7, a6
	ld a7, 376(sp)
	addw t0, a5, t4
	mulw t4, t6, t2
	slli t2, a7, 5
	addw a5, t0, t4
	li t4, 58
	addw t0, t2, a7
	li a7, -95
	subw t6, zero, t0
	addw a6, a5, t6
	ld t6, 360(sp)
	sh1add t2, t3, a6
	li t3, 67
	ld a6, 320(sp)
	mulw a5, t6, t4
	ld t6, 352(sp)
	li t4, 86
	addw t0, t2, a5
	mulw t2, a6, t3
	ld a6, 344(sp)
	mulw t3, t6, t4
	addw a5, t0, t2
	ld t6, 392(sp)
	li t2, -79
	addw t0, a5, t3
	mulw t4, a6, t2
	sh1add t3, t6, t6
	ld a6, 384(sp)
	addw a5, t0, t4
	slliw t2, t3, 4
	ld t6, 400(sp)
	li t3, -13
	addw t0, a5, t2
	mulw t4, a6, t3
	slli t2, t6, 4
	addw a5, t0, t4
	ld a6, 408(sp)
	subw t4, t6, t2
	addw t3, a3, a6
	li t6, 127
	addw t0, a5, t4
	sh1add t2, t3, t0
	ld t3, 88(sp)
	max a5, t2, zero
	ld t0, 64(sp)
	min a3, a5, t6
	ld t6, 232(sp)
	mulw t4, a3, a7
	ld a7, 288(sp)
	addw a3, t3, t0
	addw t2, t1, t4
	li t3, 67
	slli t1, t6, 5
	addw t0, t1, t6
	ld t6, 240(sp)
	mulw t1, a7, t3
	addw a5, a3, t0
	subw t3, zero, t5
	slli t0, t6, 4
	addw a3, a5, t1
	subw t4, t0, t6
	ld t6, 248(sp)
	sh1add t1, t4, a3
	ld t0, 104(sp)
	addw a5, t1, t3
	ld t1, 432(sp)
	addw t3, t0, t6
	ld t6, 112(sp)
	addw t4, a5, t3
	ld a7, 304(sp)
	li t3, -13
	sh3add a3, t1, t4
	ld a6, 120(sp)
	sh3add t0, a7, a7
	mulw t1, t6, t3
	li a7, 107
	ld t6, 256(sp)
	sh2add t3, a6, a6
	addw a5, a3, t1
	ld a6, 312(sp)
	li t1, 104
	sh1add a3, t0, a5
	mulw t4, t6, t1
	addw a5, a3, t3
	ld t6, 416(sp)
	li t3, -119
	addw a3, a5, t4
	slli t4, t6, 3
	mulw a5, a6, t3
	ld a6, 336(sp)
	addw t1, a3, a5
	li a5, 71
	subw a3, t6, t4
	ld t6, 328(sp)
	addw t3, t1, a3
	mulw t4, a6, a5
	ld t5, 72(sp)
	addw t1, t3, t4
	mulw a6, t6, a7
	li a7, 82
	addw t4, t1, a6
	ld a6, 368(sp)
	sh3add t3, t5, t4
	ld t6, 360(sp)
	sh1add t5, t6, t6
	mulw t4, a6, a7
	ld a6, 320(sp)
	addw t1, t3, t4
	ld t6, 352(sp)
	slliw t4, t5, 5
	li t5, -104
	subw a7, zero, t4
	addw t3, t1, a7
	li a7, 97
	mulw t1, a6, t5
	li t5, -121
	addw t4, t3, t1
	mulw t3, t6, t5
	li t5, 83
	addw t1, t4, t3
	ld t6, 392(sp)
	ld a6, 384(sp)
	mulw t4, t6, a7
	ld t6, 400(sp)
	mulw a7, a6, t5
	addw t3, t1, t4
	li t5, -84
	ld a6, 408(sp)
	li t1, 46
	addw t4, t3, a7
	mulw a7, t6, t1
	li t6, 127
	addw t3, t4, a7
	mulw t4, a6, t5
	li a6, -50
	addw a7, t3, t4
	ld t3, 96(sp)
	max t1, a7, zero
	ld s0, 56(sp)
	min t4, t1, t6
	mulw t5, t4, a6
	ld a6, 40(sp)
	addw t1, t2, t5
	ld t6, 232(sp)
	addw t2, t3, s0
	li s0, 38
	li t3, -29
	addw t4, a6, t2
	mulw a7, t6, t3
	ld a6, 280(sp)
	addw t2, t4, a7
	slli t5, a6, 3
	ld t6, 240(sp)
	subw t4, t5, a6
	ld a6, 264(sp)
	addw t3, t2, t4
	ld a7, 272(sp)
	mulw t2, t6, s0
	slli t5, a7, 5
	li s0, -77
	mulw t6, a6, a4
	addw t4, t3, t2
	li a4, 37
	addw t2, t4, t6
	ld t6, 112(sp)
	subw t4, zero, t5
	addw t3, t2, t4
	mulw t4, t6, a4
	ld t6, 256(sp)
	addw t5, t3, t4
	ld a6, 312(sp)
	li t4, -125
	sh2add t2, t0, t5
	li t5, -46
	mulw t0, t6, t4
	ld t6, 416(sp)
	addw t3, t2, t0
	mulw t2, a6, t5
	li a6, -70
	addw t0, t3, t2
	mulw t4, t6, a6
	ld a6, 336(sp)
	addw t2, t0, t4
	ld t6, 328(sp)
	li t4, -73
	mulw t3, a6, a4
	mulw a6, t6, t4
	addw t0, t2, t3
	li t4, -87
	addw t2, t0, a6
	ld t3, 424(sp)
	ld a6, 368(sp)
	subw t5, zero, t3
	ld t6, 360(sp)
	li t3, -75
	addw t0, t2, t5
	mulw t5, a6, t4
	ld a6, 320(sp)
	addw t2, t0, t5
	li t5, -23
	mulw t0, t6, t3
	ld t6, 352(sp)
	addw t4, t2, t0
	mulw t3, a6, a5
	li t2, 53
	ld a6, 344(sp)
	addw t0, t4, t3
	mulw t3, t6, s0
	ld t6, 392(sp)
	addw a5, t0, t3
	mulw t4, a6, t2
	ld a6, 384(sp)
	addw t0, a5, t4
	mulw t3, t6, a4
	li t4, 29
	ld t6, 400(sp)
	addw a5, t0, t3
	mulw t2, a6, a2
	li t3, -13
	ld a6, 408(sp)
	addw a4, a5, t2
	mulw a5, t6, t3
	li t3, 67
	li t6, -114
	addw a2, a4, a5
	mulw a4, a6, t6
	li t6, 127
	addw t0, a2, a4
	max a5, t0, zero
	min a4, a5, t6
	li a5, 42
	ld t6, 232(sp)
	mulw t0, a4, t5
	ld a6, 280(sp)
	li t5, -121
	addw a2, t1, t0
	ld a7, 288(sp)
	mulw t0, t6, t3
	mulw t1, a6, a5
	ld t6, 240(sp)
	addw a4, a3, t0
	ld a6, 264(sp)
	li t0, 41
	addw a3, a4, t1
	mulw a5, a7, t0
	li t1, 47
	mulw t0, t6, a1
	addw a4, a3, a5
	ld t6, 248(sp)
	li a5, -92
	addw a3, a4, t0
	mulw a1, a6, a5
	ld a7, 272(sp)
	li t0, -51
	sh2add a5, t6, t6
	addw a4, a3, a1
	ld t6, 112(sp)
	sh1add a1, a5, a4
	mulw a4, a7, s0
	li s0, 38
	li a7, 75
	addw a3, a1, a4
	mulw a4, t6, a7
	ld a7, 304(sp)
	addw a1, a3, a4
	ld a6, 120(sp)
	sh1add a5, a7, a7
	ld t6, 256(sp)
	li a7, -74
	slliw a3, a5, 5
	li a5, 109
	addw a4, a1, a3
	mulw a1, a6, t0
	ld a6, 312(sp)
	addw a3, a4, a1
	mulw a4, t6, a5
	li a5, -122
	addw a1, a3, a4
	mulw a3, a6, a7
	ld a6, 336(sp)
	addw a4, a1, a3
	ld t6, 328(sp)
	ld a7, 376(sp)
	mulw a1, a6, a5
	ld a6, 368(sp)
	addw a3, a4, a1
	mulw a5, a7, t1
	mulw a4, t6, t3
	ld t6, 360(sp)
	addw a1, a3, a4
	li a4, 22
	addw a3, a1, a5
	mulw a5, a6, a4
	ld a6, 320(sp)
	slli a4, t6, 4
	addw a1, a3, a5
	addw t1, a4, t6
	ld t6, 352(sp)
	slli t0, t1, 2
	mulw a4, a6, s0
	li t1, 46
	subw a5, zero, t0
	ld a6, 344(sp)
	addw a3, a1, a5
	mulw a5, t6, t4
	addw a1, a3, a4
	ld t6, 392(sp)
	li a4, 115
	addw a3, a1, a5
	mulw a5, a6, a4
	ld a6, 384(sp)
	mulw a4, t6, t5
	addw a1, a3, a5
	ld t6, 400(sp)
	sh3add a5, a6, a6
	addw a3, a1, a4
	ld a6, 408(sp)
	li a4, -49
	sh2add a1, a5, a3
	mulw a5, t6, a4
	mulw t0, a6, a0
	li t6, 127
	addw a3, a1, a5
	addw a4, a3, t0
	max a1, a4, zero
	min a0, a1, t6
	mulw a3, a0, t1
	addw a1, a2, a3
	ble a1, zero, label16
	li a0, 99
	jal putch
	li a0, 97
	jal putch
	li a0, 116
	jal putch
	li a0, 10
	jal putch
	ld a0, 296(sp)
	addiw a0, a0, -1
	ble a0, zero, label17
.p2align 2
label616:
	sd a0, 296(sp)
	addi s0, sp, 128
	mv s1, zero
	mv s3, zero
	mv s2, s0
	j label7
.p2align 2
label16:
	li a0, 100
	jal putch
	li a0, 111
	jal putch
	li a0, 103
	jal putch
	li a0, 10
	jal putch
	ld a0, 296(sp)
	addiw a0, a0, -1
	bgt a0, zero, label616
label17:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 440
	ret
