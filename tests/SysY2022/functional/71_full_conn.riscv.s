.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[100] RegSpill[288] CalleeSaved[40]
	addi sp, sp, -432
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	jal getint
	ble a0, zero, label17
	sd a0, 176(sp)
	addi s0, sp, 200
	mv s1, zero
	mv s2, s0
	mv s3, zero
	j label7
.p2align 2
label28:
	addiw s1, s1, 1
	li a0, 5
	bge s1, a0, label12
	addi s0, s0, 20
	mv s3, zero
	mv s2, s0
.p2align 2
label7:
	jal getint
	addiw a1, s3, 1
	sw a0, 0(s2)
	li a0, 5
	bge a1, a0, label28
	addi s2, s2, 4
	mv s3, a1
	j label7
.p2align 2
label12:
	lw t5, 200(sp)
	li a1, 85
	li t1, -123
	li t3, -75
	li a7, -94
	sd t5, 400(sp)
	mulw a0, t5, a1
	lw t6, 204(sp)
	li a1, 23
	sd t6, 384(sp)
	mulw a3, t6, a1
	lw a6, 208(sp)
	addw a2, a0, a3
	li a0, -82
	sd a6, 376(sp)
	mulw a3, a6, a0
	lw t5, 212(sp)
	li a0, -103
	addw a1, a2, a3
	sd t5, 392(sp)
	mulw a2, t5, a0
	lw t6, 216(sp)
	addw a3, a1, a2
	sd t6, 368(sp)
	mulw a1, t6, t1
	lw t4, 220(sp)
	li t1, 47
	addw a2, a3, a1
	slli a3, t4, 6
	sd t4, 360(sp)
	addw a1, a2, a3
	li t4, -102
	sd a3, 96(sp)
	lw a6, 224(sp)
	slli t2, a6, 4
	subw t0, t2, a6
	sd a6, 312(sp)
	slli a4, t0, 3
	sd t2, 72(sp)
	subw a2, zero, a4
	sd t0, 424(sp)
	addw a3, a1, a2
	lw t5, 228(sp)
	li a1, 50
	sd t5, 304(sp)
	mulw a4, t5, a1
	lw a6, 232(sp)
	addw a2, a3, a4
	li a4, -59
	sd a6, 352(sp)
	mulw a5, a6, a4
	lw t6, 236(sp)
	addw a3, a2, a5
	mulw a4, t6, t1
	sd t6, 104(sp)
	li t1, -106
	addw a2, a3, a4
	lw t2, 240(sp)
	li a4, -111
	sd t2, 136(sp)
	mulw a5, t2, a4
	lw t6, 244(sp)
	addw a3, a2, a5
	li a5, -67
	sd t6, 112(sp)
	mulw a2, t6, a5
	lw t5, 248(sp)
	addw a4, a3, a2
	mulw a5, t5, t1
	sd t5, 416(sp)
	addw a3, a4, a5
	lw t6, 252(sp)
	mulw a5, t6, t3
	sd t6, 344(sp)
	addw a4, a3, a5
	lw t5, 256(sp)
	mulw a5, t5, t4
	sd t5, 336(sp)
	addw a3, a4, a5
	lw t6, 260(sp)
	slli a5, t6, 4
	addw a4, a5, t6
	sd t6, 328(sp)
	sh1add a5, a4, a3
	slli t0, a4, 1
	li a3, -39
	sd t0, 408(sp)
	lw t4, 264(sp)
	mulw t0, t4, a3
	sd t4, 320(sp)
	addw a4, a5, t0
	li t4, 110
	lw t5, 268(sp)
	slli t0, t5, 6
	addw t1, t0, t5
	sd t5, 120(sp)
	addw a5, a4, t1
	lw t6, 272(sp)
	li t1, 47
	sd t6, 192(sp)
	mulw t0, t6, t1
	lw t5, 276(sp)
	addw a4, a5, t0
	li t0, 113
	sd t5, 144(sp)
	mulw t1, t5, t0
	lw t6, 280(sp)
	addw a5, a4, t1
	li t1, 47
	mulw t0, t6, t4
	sd t6, 184(sp)
	addw a4, a5, t0
	lw t5, 284(sp)
	mulw t0, t5, t1
	sd t5, 152(sp)
	addw a5, a4, t0
	lw t6, 288(sp)
	slli t1, t6, 2
	subw t0, zero, t1
	sd t6, 160(sp)
	addw a4, a5, t0
	lw t5, 292(sp)
	sh2add t1, t5, t5
	slliw t0, t1, 4
	sd t5, 168(sp)
	li t1, 46
	addw a5, a4, t0
	li t5, 127
	lw t6, 296(sp)
	mulw t2, t6, t1
	sd t6, 128(sp)
	li t1, -106
	addw t0, a5, t2
	max a4, t0, zero
	li t0, 39
	min t2, a4, t5
	ld t5, 400(sp)
	ld t6, 384(sp)
	mulw a5, t2, t0
	ld a6, 376(sp)
	slli a4, t6, 6
	mulw t2, t5, t1
	sh3add t4, a6, a6
	subw t3, a4, t6
	ld t5, 392(sp)
	sh1add t1, t3, t2
	slliw t3, t4, 1
	slli t4, t5, 5
	subw t6, zero, t3
	addw t2, t1, t6
	ld t6, 368(sp)
	subw t1, t5, t4
	slli t4, t6, 3
	addw t3, t2, t1
	subw t5, zero, t4
	li t1, 47
	ld t4, 360(sp)
	addw t2, t3, t5
	ld a6, 312(sp)
	slli t6, a6, 2
	mulw t5, t4, t1
	subw t4, zero, t6
	addw t3, t2, t5
	li t2, 67
	addw t1, t3, t4
	ld t5, 304(sp)
	ld a6, 352(sp)
	ld t6, 104(sp)
	mulw t3, t5, t2
	ld t2, 136(sp)
	addw t4, t1, t3
	mulw t1, a6, a7
	li a7, -110
	li a6, -121
	addw t3, t4, t1
	mulw t5, t6, a6
	slli t4, t2, 3
	li a6, -21
	ld t6, 112(sp)
	addw t1, t3, t5
	subw t5, t4, t2
	addw t3, t1, t5
	mulw t4, t6, a6
	ld t5, 416(sp)
	addw t1, t3, t4
	slli t2, t5, 4
	subw t3, t2, t5
	slli t6, t3, 2
	li t3, -43
	subw t4, zero, t6
	ld t6, 344(sp)
	addw t2, t1, t4
	ld t5, 336(sp)
	li t4, 105
	mulw a6, t6, t3
	ld t6, 328(sp)
	li t3, -42
	addw t1, t2, a6
	mulw a6, t5, t4
	ld t4, 320(sp)
	mulw t5, t6, t3
	addw t2, t1, a6
	li a6, 87
	addw t1, t2, t5
	mulw t3, t4, a6
	ld t5, 120(sp)
	li t4, 29
	addw t2, t1, t3
	ld t6, 192(sp)
	li t1, -106
	mulw a6, t5, t4
	ld t5, 144(sp)
	addw t3, t2, a6
	slli t4, t5, 5
	mulw a6, t6, t1
	ld t6, 184(sp)
	addw t2, t3, a6
	subw t3, t5, t4
	li t4, -100
	addw t1, t2, t3
	ld t5, 152(sp)
	mulw t3, t6, a7
	ld t6, 160(sp)
	addw t2, t1, t3
	li t3, -22
	mulw a6, t5, t4
	ld t5, 168(sp)
	mulw t4, t6, t3
	addw t1, t2, a6
	li t3, -75
	ld t6, 128(sp)
	addw t2, t1, t4
	mulw t4, t5, t3
	li t5, 127
	li t3, -125
	addw t1, t2, t4
	mulw t4, t6, t3
	addw a6, t1, t4
	li t4, 26
	max t2, a6, zero
	li a6, 77
	min t3, t2, t5
	ld t5, 400(sp)
	mulw t6, t3, a6
	mulw t2, t5, t4
	li t3, 76
	addw t1, a5, t6
	ld t6, 384(sp)
	ld a6, 376(sp)
	mulw t4, t6, t3
	li t3, -70
	addw a5, t2, t4
	li t4, 29
	mulw t2, a6, t3
	li a6, -95
	addw t3, a5, t2
	sd t2, 88(sp)
	ld t5, 392(sp)
	ld t6, 368(sp)
	mulw t2, t5, t4
	ld t4, 360(sp)
	addw a5, t3, t2
	sh1add t5, t4, t4
	mulw t2, t6, a6
	li t6, 52
	addw t3, a5, t2
	ld a6, 312(sp)
	slliw a5, t5, 5
	ld t5, 304(sp)
	addw t2, t3, a5
	slli t3, t5, 4
	mulw t4, a6, t6
	ld a6, 352(sp)
	addw t6, t3, t5
	addw a5, t2, t4
	sh2add t5, a6, a6
	slli a7, t6, 2
	ld t6, 104(sp)
	subw t4, zero, a7
	li a7, 82
	addw t2, a5, t4
	slli t4, t6, 4
	subw a5, zero, t5
	addw t5, t4, t6
	addw t3, t2, a5
	ld t2, 136(sp)
	sh1add a5, t5, t3
	ld t6, 112(sp)
	slli t4, t2, 4
	addw t3, t4, t2
	slli t5, t3, 1
	li t3, 102
	subw a6, zero, t5
	ld t5, 416(sp)
	addw t2, a5, a6
	sh1add t4, t5, t5
	mulw a6, t6, t3
	ld t6, 344(sp)
	li t3, -38
	addw a5, t2, a6
	ld t5, 336(sp)
	sh1add t2, t4, a5
	mulw a6, t6, t3
	li t4, 27
	ld t6, 328(sp)
	addw a5, t2, a6
	mulw t3, t5, t4
	li t4, 110
	addw t2, a5, t3
	mulw t5, t6, t4
	li a5, 116
	ld t4, 320(sp)
	addw t3, t2, t5
	ld t5, 120(sp)
	ld t6, 192(sp)
	mulw t2, t4, a5
	mulw t4, t5, t0
	addw a6, t3, t2
	ld t5, 144(sp)
	slli t0, t6, 6
	addw t2, a6, t4
	li t4, -99
	subw a6, t6, t0
	ld t6, 184(sp)
	addw t3, t2, a6
	mulw t2, t5, t4
	slli t4, t6, 6
	addw t0, t3, t2
	addw t2, t4, t6
	addw t3, t0, t2
	sd t2, 80(sp)
	ld t5, 152(sp)
	ld t6, 160(sp)
	slli t4, t5, 4
	subw t0, t4, t5
	ld t5, 168(sp)
	sh3add t2, t0, t3
	mulw t4, t6, a3
	sh1add t3, t5, t5
	ld t6, 128(sp)
	addw t0, t2, t4
	li t5, 127
	slliw t2, t3, 1
	li t3, 94
	subw t4, zero, t2
	addw a3, t0, t4
	mulw t0, t6, t3
	addw t4, a3, t0
	max t2, t4, zero
	min t0, t2, t5
	ld t5, 400(sp)
	slliw t4, t0, 7
	ld t6, 384(sp)
	subw t3, t4, t0
	ld a6, 376(sp)
	subw t2, t6, a4
	li t4, -23
	addw a3, t1, t3
	mulw t0, t5, t4
	ld t5, 392(sp)
	addw t1, a2, t0
	ld t6, 368(sp)
	li a2, 49
	addw t0, t1, t2
	ld t4, 360(sp)
	mulw t1, t5, a1
	mulw t2, a6, a2
	li a1, 85
	addw a4, t0, t2
	sh3add t2, t6, t6
	addw t0, a4, t1
	sh3add a4, t2, t0
	ld t0, 424(sp)
	mulw t2, t4, a1
	ld t5, 304(sp)
	slli t3, t0, 1
	addw t1, a4, t2
	sh1add t0, t5, t5
	subw a1, zero, t3
	ld a6, 352(sp)
	addw a4, t1, a1
	ld t6, 104(sp)
	li t1, 125
	sh2add a1, t0, a4
	ld t2, 136(sp)
	li t0, -117
	mulw a4, a6, t1
	mulw t5, t6, t0
	addw t4, a1, a4
	slli a1, t2, 6
	addw t3, t4, t5
	addw t6, a1, t2
	ld t5, 416(sp)
	subw t4, zero, t6
	ld t6, 344(sp)
	addw a6, t3, t4
	li t4, 110
	mulw t2, t5, t1
	ld t5, 336(sp)
	mulw t1, t6, t4
	addw t3, a6, t2
	slli t4, t5, 5
	ld t6, 328(sp)
	addw t2, t3, t1
	subw a6, t5, t4
	li t1, -123
	li t5, 83
	addw t3, t2, a6
	ld t4, 320(sp)
	mulw a6, t6, t1
	addw t2, t3, a6
	li t3, 122
	mulw t6, t4, t5
	li t4, 11
	addw t1, t2, t6
	ld t5, 120(sp)
	ld t6, 192(sp)
	mulw a6, t5, t3
	ld t5, 144(sp)
	addw t2, t1, a6
	li a6, -47
	mulw t1, t6, t4
	ld t6, 184(sp)
	li t4, -23
	addw t3, t2, t1
	mulw t2, t5, t4
	ld t5, 152(sp)
	addw t1, t3, t2
	slli t4, t5, 5
	mulw t3, t6, a6
	ld t6, 160(sp)
	addw t2, t1, t3
	ld t5, 168(sp)
	subw t1, zero, t4
	addw t3, t2, t1
	mulw t4, t6, t0
	li t2, 95
	ld t6, 128(sp)
	addw t1, t3, t4
	li t3, 118
	mulw t4, t5, t2
	li t5, 127
	addw t0, t1, t4
	mulw t4, t6, t3
	addw t1, t0, t4
	max t2, t1, zero
	li t1, -106
	min t3, t2, t5
	ld t5, 400(sp)
	ld t6, 384(sp)
	mulw t4, t3, t1
	li t3, -104
	sh3add t1, t5, a4
	addw t0, a3, t4
	mulw a3, t6, a7
	li a7, 75
	addw a4, t1, a3
	li t1, 101
	sd a3, 56(sp)
	ld a6, 376(sp)
	ld t5, 392(sp)
	ld t6, 368(sp)
	mulw t2, a6, t3
	ld t4, 360(sp)
	mulw t3, t5, t1
	addw a3, a4, t2
	li a4, -116
	addw t2, a3, t3
	mulw t5, t6, a4
	ld a3, 96(sp)
	addw t3, t2, t5
	ld t2, 72(sp)
	subw t5, t4, a3
	subw t4, zero, t2
	addw t6, t3, t5
	li t3, -70
	addw a3, t6, t4
	ld t5, 304(sp)
	ld t6, 104(sp)
	mulw t2, t5, t3
	addw t4, a3, t2
	ld t2, 136(sp)
	mulw a3, t6, a7
	slli t5, t2, 5
	addw t3, t4, a3
	ld t6, 112(sp)
	addw t4, t5, t2
	sh1add t2, t6, t6
	sh1add a3, t4, t3
	slliw t5, t2, 5
	li t4, -101
	subw a6, zero, t5
	ld t5, 416(sp)
	addw t3, a3, a6
	ld t6, 344(sp)
	mulw a3, t5, t4
	ld t5, 336(sp)
	li t4, -114
	addw t2, t3, a3
	mulw a6, t6, t4
	li a3, 59
	addw t3, t2, a6
	ld t6, 328(sp)
	mulw t4, t5, a3
	sh1add a6, t6, t6
	addw t2, t3, t4
	sh2add t3, a6, t2
	sd a6, 64(sp)
	li a6, -95
	ld t4, 320(sp)
	ld t5, 120(sp)
	sh2add t6, t4, t4
	addw t2, t3, t6
	ld t6, 192(sp)
	mulw t4, t5, a6
	ld t5, 144(sp)
	addw t3, t2, t4
	mulw a6, t6, a5
	li t4, -93
	ld t6, 184(sp)
	addw t2, t3, a6
	slli t3, t6, 4
	mulw a6, t5, t4
	ld t5, 152(sp)
	li t4, 79
	addw a5, t2, a6
	subw a6, t3, t6
	ld t6, 160(sp)
	addw t2, a5, a6
	sh1add t3, t6, t6
	mulw a6, t5, t4
	ld t5, 168(sp)
	addw a5, t2, a6
	ld t6, 128(sp)
	addw t2, a5, t3
	mulw t4, t5, a2
	li t5, 127
	slli a2, t6, 5
	addw a5, t2, t4
	subw t2, a2, t6
	slli t3, t2, 2
	subw t4, zero, t3
	addw t6, a5, t4
	max t2, t6, zero
	min a5, t2, t5
	ld t5, 400(sp)
	sh1add t4, a5, a5
	li a5, 81
	subw t6, zero, t4
	addw t3, t0, t6
	ld t6, 384(sp)
	mulw t0, t5, a5
	ld a6, 376(sp)
	slli t4, t6, 4
	addw t5, t4, t6
	li t4, -102
	sh2add t2, t5, t0
	mulw t6, a6, t4
	ld t5, 392(sp)
	li a6, 121
	li t4, -74
	addw t0, t2, t6
	mulw a7, t5, t4
	ld t6, 368(sp)
	addw t2, t0, a7
	ld t4, 360(sp)
	mulw a7, t6, a6
	slli t0, t4, 4
	addw t5, t2, a7
	subw t6, t4, t0
	subw t2, t0, t4
	li t0, 55
	addw t4, t5, t6
	sd t6, 48(sp)
	ld a6, 312(sp)
	ld t5, 304(sp)
	mulw a7, a6, t0
	ld a6, 352(sp)
	addw t6, t4, a7
	li a7, -13
	mulw t4, t5, t1
	addw s0, t6, t4
	mulw t5, a6, a7
	ld t6, 104(sp)
	addw t4, s0, t5
	slli t1, t6, 5
	subw a6, t1, t6
	li t1, 114
	slli t5, a6, 1
	subw a7, zero, t5
	addw t5, t4, a7
	addw a6, t5, a1
	sd a7, 40(sp)
	li a7, 38
	ld t6, 112(sp)
	ld t5, 416(sp)
	mulw t4, t6, t1
	ld t6, 344(sp)
	addw a1, a6, t4
	mulw a6, t5, a7
	ld t5, 336(sp)
	addw t4, a1, a6
	li a6, -21
	mulw a7, t6, a6
	slli t6, t5, 3
	addw a1, t4, a7
	subw t4, t6, t5
	ld t6, 328(sp)
	slli a7, t4, 4
	ld t4, 320(sp)
	addw a6, a1, a7
	slli t5, t4, 3
	mulw a7, t6, t1
	subw t1, t5, t4
	addw a1, a6, a7
	ld t5, 120(sp)
	slli a7, t1, 4
	sh2add t6, t5, t5
	addw a6, a1, a7
	slliw a1, t6, 1
	ld t6, 192(sp)
	subw a7, zero, a1
	slli t5, t6, 4
	li a1, -50
	addw t4, a6, a7
	subw a7, zero, t5
	ld t5, 144(sp)
	addw a6, t4, a7
	ld t6, 184(sp)
	mulw a7, t5, a1
	slli t5, t6, 3
	addw t4, a6, a7
	subw a7, t5, t6
	ld t5, 152(sp)
	slli s0, a7, 4
	ld t6, 160(sp)
	subw a6, zero, s0
	addw a7, t4, a6
	mulw t4, t5, a4
	ld t5, 168(sp)
	li a4, -54
	addw a6, a7, t4
	mulw a7, t6, a4
	ld t6, 128(sp)
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
	min a6, t6, t5
	ld t5, 400(sp)
	slliw a4, a6, 5
	ld t6, 384(sp)
	slli a6, t5, 4
	addw t4, t3, a4
	subw a4, a6, t5
	ld a6, 376(sp)
	mulw t5, t6, a7
	addw t3, a4, t5
	li a4, -90
	slli t5, a6, 5
	addw t6, t5, a6
	ld t5, 392(sp)
	sh1add a7, t6, t3
	ld t6, 368(sp)
	mulw t3, t5, a4
	sh1add t5, t6, t6
	addw a6, a7, t3
	slliw a7, t5, 1
	slli t3, t6, 1
	subw t6, zero, a7
	slli a7, t2, 1
	addw t5, a6, t6
	subw s0, zero, a7
	ld a6, 312(sp)
	addw t6, t5, s0
	slli a7, a6, 3
	ld t5, 304(sp)
	subw s0, zero, a7
	ld a6, 352(sp)
	addw t2, t6, s0
	mulw t6, t5, a5
	addw a7, t2, t6
	ld t6, 104(sp)
	sh1add t5, a6, a7
	ld t2, 136(sp)
	li a7, -110
	mulw a6, t6, a7
	ld t6, 112(sp)
	addw a5, t5, a6
	li a6, -95
	mulw t5, t2, a6
	mulw t2, t6, a3
	addw a7, a5, t5
	li t6, 52
	addw a5, a7, t2
	ld t5, 416(sp)
	li a7, -13
	mulw a6, t5, t6
	ld t6, 344(sp)
	addw a3, a5, a6
	ld t5, 336(sp)
	slli t2, t6, 4
	subw a6, t2, t6
	ld t6, 328(sp)
	addw a5, a3, a6
	mulw t2, t5, t0
	ld t5, 120(sp)
	slli t0, t6, 5
	addw a3, a5, t2
	addw t2, t0, t6
	ld t6, 192(sp)
	subw a5, zero, t2
	li t2, 58
	addw a6, a3, a5
	mulw a3, t5, t2
	sh1add t0, t1, a6
	ld t5, 144(sp)
	li t2, 67
	li a6, -95
	addw a5, t0, a3
	mulw t1, t6, t2
	li t0, 86
	addw a3, a5, t1
	ld t6, 184(sp)
	mulw t2, t5, t0
	li t1, -79
	addw a5, a3, t2
	ld t5, 152(sp)
	mulw t2, t6, t1
	sh1add t0, t5, t5
	ld t6, 160(sp)
	addw a3, a5, t2
	slliw t1, t0, 4
	ld t5, 168(sp)
	addw a5, a3, t1
	slli t0, t5, 4
	mulw t1, t6, a7
	ld t6, 128(sp)
	addw a3, a5, t1
	ld t2, 80(sp)
	subw t1, t5, t0
	li t5, 127
	addw t0, a2, t6
	addw a5, a3, t1
	sh1add t1, t0, a5
	max a3, t1, zero
	min a2, a3, t5
	ld a3, 56(sp)
	ld t5, 400(sp)
	mulw t0, a2, a6
	ld a6, 376(sp)
	addw a2, t2, a3
	addw a5, t4, t0
	li t2, 67
	slli t0, t5, 5
	addw t1, t0, t5
	ld t5, 392(sp)
	mulw t0, a6, t2
	addw a3, a2, t1
	subw t2, zero, t3
	ld t4, 360(sp)
	slli t1, t5, 4
	addw a2, a3, t0
	subw a3, t1, t5
	sh1add t0, a3, a2
	ld a3, 96(sp)
	addw t1, t0, t2
	addw t3, a3, t4
	ld t0, 424(sp)
	addw t2, t1, t3
	ld t5, 304(sp)
	sh3add a2, t0, t2
	ld a6, 352(sp)
	ld t6, 104(sp)
	sh3add t0, a6, a6
	mulw a3, t5, a7
	ld t2, 136(sp)
	sh2add t3, t6, t6
	li a7, 82
	addw t1, a2, a3
	ld t6, 112(sp)
	sh1add a3, t0, t1
	ld t5, 416(sp)
	li t1, 104
	addw a2, a3, t3
	mulw t4, t2, t1
	li t3, -119
	addw a3, a2, t4
	li t4, 107
	mulw a2, t6, t3
	ld t6, 344(sp)
	slli t3, t5, 3
	addw t1, a3, a2
	li a3, 71
	subw a2, t5, t3
	ld t5, 336(sp)
	mulw t3, t6, a3
	addw t2, t1, a2
	ld a6, 64(sp)
	addw t1, t2, t3
	mulw t6, t5, t4
	ld t4, 320(sp)
	addw t3, t1, t6
	ld t5, 120(sp)
	sh3add t2, a6, t3
	sh1add t3, t5, t5
	mulw t6, t4, a7
	slliw a6, t3, 5
	addw t1, t2, t6
	li t3, -104
	subw t4, zero, a6
	ld t6, 192(sp)
	li a6, -121
	addw t2, t1, t4
	ld t5, 144(sp)
	mulw t4, t6, t3
	addw t1, t2, t4
	mulw t3, t5, a6
	li t4, 97
	ld t5, 152(sp)
	addw t2, t1, t3
	ld t6, 160(sp)
	mulw t1, t5, t4
	li t5, 83
	addw t3, t2, t1
	mulw t4, t6, t5
	li t1, 46
	ld t5, 168(sp)
	addw t2, t3, t4
	ld t6, 128(sp)
	li t4, -84
	mulw a6, t5, t1
	li t5, 127
	mulw t1, t6, t4
	addw t3, t2, a6
	addw a6, t3, t1
	max t2, a6, zero
	min t4, t2, t5
	ld t2, 88(sp)
	ld t6, 48(sp)
	mulw t3, t4, a1
	ld a7, 40(sp)
	addw a1, t2, t6
	addw t1, a5, t3
	ld t5, 400(sp)
	li t2, -29
	addw a5, a7, a1
	ld t6, 384(sp)
	li a7, 38
	mulw t3, t5, t2
	ld t5, 392(sp)
	slli t2, t6, 3
	addw a1, a5, t3
	subw t3, t2, t6
	ld t6, 368(sp)
	addw a5, a1, t3
	ld a6, 312(sp)
	mulw t3, t5, a7
	li a7, -77
	addw a1, a5, t3
	mulw t2, t6, a4
	ld t5, 304(sp)
	slli t3, a6, 5
	addw a5, a1, t2
	li a1, 37
	subw t2, zero, t3
	mulw t3, t5, a1
	addw a4, a5, t2
	ld t2, 136(sp)
	addw t4, a4, t3
	ld t6, 112(sp)
	li t3, -125
	sh2add a5, t0, t4
	ld t5, 416(sp)
	li t0, -46
	mulw t4, t2, t3
	li t3, -70
	mulw t2, t6, t0
	addw a4, a5, t4
	ld t6, 344(sp)
	addw a5, a4, t2
	li t2, -73
	mulw a4, t5, t3
	ld t5, 336(sp)
	addw t0, a5, a4
	mulw t3, t6, a1
	addw a4, t0, t3
	mulw t4, t5, t2
	ld t0, 408(sp)
	li t2, -87
	addw a5, a4, t4
	subw t3, zero, t0
	ld t4, 320(sp)
	addw a4, a5, t3
	ld t5, 120(sp)
	li t3, -75
	ld t6, 192(sp)
	mulw t0, t4, t2
	li t4, -114
	addw a5, a4, t0
	mulw t2, t6, a3
	mulw a4, t5, t3
	ld t5, 144(sp)
	addw t0, a5, a4
	ld t6, 184(sp)
	li a5, 53
	addw a4, t0, t2
	mulw t0, t5, a7
	mulw t2, t6, a5
	li a7, -13
	ld t5, 152(sp)
	addw a3, a4, t0
	ld t6, 160(sp)
	addw a4, a3, t2
	li t2, 67
	mulw t0, t5, a1
	mulw a5, t6, a0
	ld t5, 168(sp)
	addw a3, a4, t0
	ld t6, 128(sp)
	addw a1, a3, a5
	mulw a3, t5, a7
	li a7, -77
	li t5, 127
	addw a0, a1, a3
	mulw a1, t6, t4
	li t4, -23
	addw a4, a0, a1
	max a3, a4, zero
	min a1, a3, t5
	li a3, 42
	ld t5, 400(sp)
	mulw a4, a1, t4
	ld t6, 384(sp)
	addw a0, t1, a4
	ld a6, 376(sp)
	li t1, -123
	mulw a4, t5, t2
	mulw a5, t6, a3
	ld t5, 392(sp)
	addw a1, a2, a4
	ld t6, 368(sp)
	li a4, 41
	addw a2, a1, a5
	mulw a3, a6, a4
	ld t4, 360(sp)
	li a4, -92
	addw a1, a2, a3
	ld a6, 312(sp)
	mulw a3, t5, t1
	li t1, 47
	addw a2, a1, a3
	ld t5, 304(sp)
	mulw a1, t6, a4
	sh2add a4, t4, t4
	addw a3, a2, a1
	li t4, -74
	sh1add a1, a4, a3
	mulw a3, a6, a7
	ld a6, 352(sp)
	li a7, 75
	addw a2, a1, a3
	sh1add a5, a6, a6
	ld t6, 104(sp)
	mulw a3, t5, a7
	li a6, -121
	slliw a4, a5, 5
	ld t2, 136(sp)
	li a7, 38
	addw a1, a2, a3
	li a3, -51
	addw a2, a1, a4
	mulw a5, t6, a3
	li a4, 109
	ld t6, 112(sp)
	addw a1, a2, a5
	mulw a2, t2, a4
	li t2, 67
	li a4, -122
	addw a3, a1, a2
	mulw a1, t6, t4
	ld t6, 344(sp)
	addw a2, a3, a1
	ld t5, 336(sp)
	mulw a3, t6, a4
	ld t6, 328(sp)
	li a4, 22
	addw a1, a2, a3
	ld t4, 320(sp)
	mulw a3, t5, t2
	ld t5, 120(sp)
	addw a2, a1, a3
	mulw a1, t6, t1
	mulw a5, t4, a4
	ld t6, 192(sp)
	li t1, 46
	addw a3, a2, a1
	li t4, 29
	slli a2, t5, 4
	addw a1, a3, a5
	addw t0, a2, t5
	ld t5, 144(sp)
	slli a5, t0, 2
	subw a4, zero, a5
	addw a3, a1, a4
	mulw a4, t5, t4
	mulw a1, t6, a7
	ld t6, 184(sp)
	addw a2, a3, a1
	ld t5, 152(sp)
	li a3, 115
	addw a1, a2, a4
	mulw a4, t6, a3
	ld t6, 160(sp)
	addw a2, a1, a4
	sh3add a3, t6, t6
	mulw a4, t5, a6
	ld t5, 168(sp)
	addw a1, a2, a4
	ld t6, 128(sp)
	li a4, -49
	sh2add a2, a3, a1
	mulw a5, t5, a4
	li a1, 85
	li t5, 127
	addw a3, a2, a5
	mulw a4, t6, a1
	addw a5, a3, a4
	max a2, a5, zero
	min a1, a2, t5
	mulw a3, a1, t1
	addw a2, a0, a3
	ble a2, zero, label15
	li a0, 99
	jal putch
	li a0, 97
	jal putch
	li a0, 116
	jal putch
	li a0, 10
	jal putch
	ld a0, 176(sp)
	addiw a0, a0, -1
	ble a0, zero, label17
.p2align 2
label615:
	sd a0, 176(sp)
	addi s0, sp, 200
	mv s1, zero
	mv s3, zero
	mv s2, s0
	j label7
.p2align 2
label15:
	li a0, 100
	jal putch
	li a0, 111
	jal putch
	li a0, 103
	jal putch
	li a0, 10
	jal putch
	ld a0, 176(sp)
	addiw a0, a0, -1
	bgt a0, zero, label615
label17:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 432
	ret
