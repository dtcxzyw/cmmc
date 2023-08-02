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
	li a1, 5
	bge zero, a1, label10
.p2align 2
label6:
	sh2add a0, s0, s0
	addi a1, sp, 96
	mv s2, zero
	sh2add s1, a0, a1
.p2align 2
label7:
	jal getint
	li a1, 5
	sh2add a2, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a2)
	blt s2, a1, label7
	addiw s0, s0, 1
	blt s0, a1, label6
.p2align 2
label10:
	lw t5, 96(sp)
	li a1, 85
	li a7, -94
	sd t5, 384(sp)
	mulw a2, t5, a1
	lw a6, 100(sp)
	li a1, 23
	sd a6, 368(sp)
	mulw a3, a6, a1
	lw t6, 104(sp)
	addw a0, a2, a3
	li a2, -82
	sd t6, 360(sp)
	mulw a3, t6, a2
	lw t5, 108(sp)
	addw a1, a0, a3
	li a3, -103
	sd t5, 376(sp)
	mulw a2, t5, a3
	lw t6, 112(sp)
	addw a0, a1, a2
	li a2, -123
	sd t6, 352(sp)
	mulw a3, t6, a2
	lw t3, 116(sp)
	addw a1, a0, a3
	slli a2, t3, 6
	addw a0, a1, a2
	sd t3, 344(sp)
	li t3, -75
	sd a2, 80(sp)
	lw a6, 120(sp)
	slli t2, a6, 4
	subw t1, t2, a6
	sd a6, 288(sp)
	slli a3, t1, 3
	sd t2, 56(sp)
	subw a2, zero, a3
	li t2, -106
	addw a1, a0, a2
	sd t1, 408(sp)
	li a0, 50
	li t1, 47
	lw t5, 124(sp)
	mulw a3, t5, a0
	sd t5, 336(sp)
	addw a2, a1, a3
	lw a6, 128(sp)
	li a3, -59
	sd a6, 328(sp)
	mulw a4, a6, a3
	lw t6, 132(sp)
	addw a1, a2, a4
	sd t6, 88(sp)
	mulw a2, t6, t1
	lw t5, 136(sp)
	addw a3, a1, a2
	li a1, -111
	sd t5, 216(sp)
	mulw a4, t5, a1
	lw t6, 140(sp)
	addw a2, a3, a4
	li a4, -67
	sd t6, 280(sp)
	mulw a1, t6, a4
	lw t5, 144(sp)
	addw a3, a2, a1
	mulw a4, t5, t2
	sd t5, 400(sp)
	addw a2, a3, a4
	lw t6, 148(sp)
	mulw a4, t6, t3
	sd t6, 320(sp)
	li t3, -102
	addw a3, a2, a4
	lw t5, 152(sp)
	mulw a4, t5, t3
	sd t5, 312(sp)
	addw a2, a3, a4
	lw t6, 156(sp)
	slli a4, t6, 4
	addw a3, a4, t6
	sd t6, 304(sp)
	sh1add a4, a3, a2
	slli a5, a3, 1
	li a3, -39
	sd a5, 392(sp)
	lw t4, 160(sp)
	mulw a5, t4, a3
	sd t4, 296(sp)
	addw a2, a4, a5
	lw t5, 164(sp)
	slli a5, t5, 6
	addw t0, a5, t5
	sd t5, 200(sp)
	addw a4, a2, t0
	lw t6, 168(sp)
	mulw a5, t6, t1
	sd t6, 224(sp)
	addw a2, a4, a5
	lw t5, 172(sp)
	li a4, 113
	sd t5, 232(sp)
	mulw t0, t5, a4
	lw t6, 176(sp)
	addw a5, a2, t0
	li a2, 110
	sd t6, 240(sp)
	mulw t0, t6, a2
	lw t5, 180(sp)
	addw a4, a5, t0
	sd t5, 248(sp)
	mulw t0, t5, t1
	lw t6, 184(sp)
	addw a5, a4, t0
	slli t1, t6, 2
	subw t0, zero, t1
	sd t6, 256(sp)
	addw a4, a5, t0
	lw t5, 188(sp)
	sh2add t1, t5, t5
	slliw t0, t1, 4
	sd t5, 264(sp)
	li t1, 46
	addw a5, a4, t0
	li t5, 127
	lw t6, 192(sp)
	mulw t0, t6, t1
	sd t6, 208(sp)
	addw t2, a5, t0
	li t0, 39
	max a4, t2, zero
	li t2, -106
	min t1, a4, t5
	ld t5, 384(sp)
	ld a6, 368(sp)
	mulw a5, t1, t0
	ld t6, 360(sp)
	slli a4, a6, 6
	mulw t1, t5, t2
	sh3add t4, t6, t6
	subw t3, a4, a6
	ld t5, 376(sp)
	sh1add t2, t3, t1
	ld t6, 352(sp)
	slliw t3, t4, 1
	subw a6, zero, t3
	slli t3, t5, 5
	addw t1, t2, a6
	subw t2, t5, t3
	slli t3, t6, 3
	addw t4, t1, t2
	subw t5, zero, t3
	li t1, 47
	ld t3, 344(sp)
	addw t2, t4, t5
	ld a6, 288(sp)
	mulw t5, t3, t1
	slli t3, a6, 2
	addw t4, t2, t5
	ld t5, 336(sp)
	subw t2, zero, t3
	ld a6, 328(sp)
	li t3, 67
	addw t1, t4, t2
	ld t6, 88(sp)
	mulw t2, t5, t3
	ld t5, 216(sp)
	addw t4, t1, t2
	slli t3, t5, 3
	mulw t1, a6, a7
	li a7, -110
	li a6, -121
	addw t2, t4, t1
	mulw t4, t6, a6
	li a6, -21
	addw t1, t2, t4
	ld t6, 280(sp)
	subw t4, t3, t5
	ld t5, 400(sp)
	addw t2, t1, t4
	slli t3, t5, 4
	mulw t4, t6, a6
	subw t6, t3, t5
	addw t1, t2, t4
	li t3, -43
	slli a6, t6, 2
	ld t6, 320(sp)
	subw t4, zero, a6
	ld t5, 312(sp)
	addw t2, t1, t4
	li t4, 105
	mulw a6, t6, t3
	ld t6, 304(sp)
	li t3, -42
	addw t1, t2, a6
	mulw a6, t5, t4
	ld t4, 296(sp)
	mulw t5, t6, t3
	addw t2, t1, a6
	li a6, 87
	addw t1, t2, t5
	ld t5, 200(sp)
	mulw t2, t4, a6
	ld t6, 224(sp)
	li a6, 29
	addw t3, t1, t2
	li t2, -106
	mulw t1, t5, a6
	ld t5, 232(sp)
	mulw a6, t6, t2
	addw t4, t3, t1
	ld t6, 240(sp)
	slli t3, t5, 5
	addw t1, t4, a6
	subw t4, t5, t3
	mulw t3, t6, a7
	ld t5, 248(sp)
	addw t2, t1, t4
	li a7, 52
	ld t6, 256(sp)
	li t4, -100
	addw t1, t2, t3
	mulw a6, t5, t4
	li t3, -22
	addw t2, t1, a6
	ld t5, 264(sp)
	mulw t4, t6, t3
	ld t6, 208(sp)
	li t3, -75
	addw t1, t2, t4
	mulw t4, t5, t3
	li t5, 127
	li t3, -125
	addw t2, t1, t4
	mulw a6, t6, t3
	li t3, 26
	li t6, 77
	addw t4, t2, a6
	max t1, t4, zero
	min t2, t1, t5
	ld t5, 384(sp)
	ld a6, 368(sp)
	mulw t4, t2, t6
	ld t6, 360(sp)
	mulw t2, t5, t3
	addw t1, a5, t4
	li t3, -70
	li t4, 76
	mulw t5, a6, t4
	li a6, 29
	addw a5, t2, t5
	mulw t2, t6, t3
	addw t3, a5, t2
	sd t2, 72(sp)
	ld t5, 376(sp)
	ld t6, 352(sp)
	mulw a5, t5, a6
	li a6, -95
	addw t2, t3, a5
	mulw t4, t6, a6
	ld t3, 344(sp)
	addw a5, t2, t4
	sh1add t5, t3, t3
	ld a6, 288(sp)
	slliw t4, t5, 5
	ld t5, 336(sp)
	addw t2, a5, t4
	slli t3, t5, 4
	mulw t4, a6, a7
	addw t6, t3, t5
	ld a6, 328(sp)
	li a7, 82
	addw a5, t2, t4
	sh2add t5, a6, a6
	slli t2, t6, 2
	ld t6, 88(sp)
	subw t4, zero, t2
	addw t3, a5, t4
	slli t4, t6, 4
	subw a5, zero, t5
	addw a6, t4, t6
	addw t2, t3, a5
	ld t5, 216(sp)
	sh1add a5, a6, t2
	slli t3, t5, 4
	addw t6, t3, t5
	li t3, 102
	slli t4, t6, 1
	ld t6, 280(sp)
	subw a6, zero, t4
	ld t5, 400(sp)
	addw t2, a5, a6
	sh1add t4, t5, t5
	mulw a6, t6, t3
	ld t6, 320(sp)
	li t3, -38
	addw a5, t2, a6
	ld t5, 312(sp)
	sh1add t2, t4, a5
	mulw a6, t6, t3
	li t4, 27
	ld t6, 304(sp)
	addw a5, t2, a6
	mulw t2, t5, t4
	ld t4, 296(sp)
	addw t3, a5, t2
	mulw t5, t6, a2
	li a5, 116
	addw t2, t3, t5
	mulw t6, t4, a5
	ld t5, 200(sp)
	addw t3, t2, t6
	ld t6, 224(sp)
	mulw t4, t5, t0
	ld t5, 232(sp)
	slli t0, t6, 6
	addw t2, t3, t4
	subw a6, t6, t0
	li t4, -99
	addw t3, t2, a6
	ld t6, 240(sp)
	mulw a6, t5, t4
	slli t2, t6, 6
	addw t0, t3, a6
	addw t3, t2, t6
	addw t2, t0, t3
	sd t3, 64(sp)
	ld t5, 248(sp)
	ld t6, 256(sp)
	slli t4, t5, 4
	subw t0, t4, t5
	ld t5, 264(sp)
	sh3add t3, t0, t2
	mulw t4, t6, a3
	sh1add t6, t5, t5
	addw t0, t3, t4
	li t5, 127
	slliw t2, t6, 1
	li t3, 94
	subw t4, zero, t2
	ld t6, 208(sp)
	addw a3, t0, t4
	mulw t0, t6, t3
	addw t4, a3, t0
	max t2, t4, zero
	min t0, t2, t5
	li t2, -23
	slliw t3, t0, 7
	ld t5, 384(sp)
	subw t4, t3, t0
	ld a6, 368(sp)
	addw a3, t1, t4
	ld t6, 360(sp)
	mulw t0, t5, t2
	ld t5, 376(sp)
	subw t2, a6, a4
	addw t1, a1, t0
	li t0, 49
	addw a1, t1, t2
	mulw t2, t5, a0
	mulw t1, t6, t0
	ld t6, 352(sp)
	addw a4, a1, t1
	ld t3, 344(sp)
	sh3add t4, t6, t6
	li a1, 85
	addw t1, a4, t2
	sh3add a0, t4, t1
	mulw t2, t3, a1
	ld t1, 408(sp)
	addw a4, a0, t2
	slli t3, t1, 1
	ld t5, 336(sp)
	li t1, 125
	subw a1, zero, t3
	sh1add t2, t5, t5
	ld a6, 328(sp)
	addw a0, a4, a1
	ld t6, 88(sp)
	li a4, -117
	sh2add a1, t2, a0
	ld t5, 216(sp)
	mulw a0, a6, t1
	mulw t4, t6, a4
	addw t3, a1, a0
	slli a1, t5, 6
	addw t2, t3, t4
	addw t6, a1, t5
	ld t5, 400(sp)
	subw t4, zero, t6
	ld t6, 320(sp)
	addw t3, t2, t4
	mulw a6, t5, t1
	mulw t4, t6, a2
	ld t5, 312(sp)
	addw t2, t3, a6
	li a2, -123
	ld t6, 304(sp)
	slli t3, t5, 5
	addw t1, t2, t4
	subw t4, t5, t3
	li t5, 83
	mulw t3, t6, a2
	addw t2, t1, t4
	ld t4, 296(sp)
	addw t1, t2, t3
	li t2, 122
	mulw t3, t4, t5
	ld t5, 200(sp)
	addw a2, t1, t3
	ld t6, 224(sp)
	li t3, 11
	mulw t4, t5, t2
	ld t5, 232(sp)
	li t2, -23
	addw t1, a2, t4
	mulw t4, t6, t3
	ld t6, 240(sp)
	li t3, -47
	addw a2, t1, t4
	mulw t4, t5, t2
	ld t5, 248(sp)
	mulw t2, t6, t3
	addw t1, a2, t4
	slli t3, t5, 5
	ld t6, 256(sp)
	li t4, -104
	addw a2, t1, t2
	ld t5, 264(sp)
	subw t2, zero, t3
	mulw t3, t6, a4
	addw t1, a2, t2
	ld t6, 208(sp)
	li t2, 95
	addw a2, t1, t3
	li t1, 118
	mulw t3, t5, t2
	mulw t2, t6, t1
	li t5, 127
	addw a4, a2, t3
	addw t3, a4, t2
	li t2, -106
	max a2, t3, zero
	min a4, a2, t5
	ld t5, 384(sp)
	ld a6, 368(sp)
	sh3add a2, t5, a0
	mulw t3, a4, t2
	li a0, 101
	addw t1, a3, t3
	mulw a3, a6, a7
	li a6, -95
	addw a4, a2, a3
	sd a3, 40(sp)
	ld t6, 360(sp)
	ld t5, 376(sp)
	mulw a3, t6, t4
	ld t6, 352(sp)
	addw a2, a4, a3
	ld t3, 344(sp)
	li a4, -116
	mulw a3, t5, a0
	mulw t4, t6, a4
	addw t2, a2, a3
	ld a2, 80(sp)
	addw a3, t2, t4
	subw t5, t3, a2
	ld t2, 56(sp)
	li t3, -70
	addw t4, a3, t5
	subw t6, zero, t2
	ld t5, 336(sp)
	li t2, 75
	addw a2, t4, t6
	ld t6, 88(sp)
	mulw t4, t5, t3
	ld t5, 216(sp)
	addw a3, a2, t4
	mulw t3, t6, t2
	ld t6, 280(sp)
	slli t2, t5, 5
	addw a2, a3, t3
	addw t4, t2, t5
	sh1add t3, t6, t6
	ld t5, 400(sp)
	sh1add a3, t4, a2
	ld t6, 320(sp)
	slliw t4, t3, 5
	li t3, -101
	subw t2, zero, t4
	li t4, -114
	addw a2, a3, t2
	mulw a3, t5, t3
	ld t5, 312(sp)
	addw t2, a2, a3
	li a3, 59
	mulw a2, t6, t4
	ld t6, 304(sp)
	addw t3, t2, a2
	mulw t4, t5, a3
	sh1add t2, t6, t6
	addw a2, t3, t4
	sh2add t3, t2, a2
	sd t2, 48(sp)
	ld t4, 296(sp)
	ld t5, 200(sp)
	sh2add t6, t4, t4
	li t4, -93
	addw a2, t3, t6
	ld t6, 224(sp)
	mulw t2, t5, a6
	ld t5, 232(sp)
	addw t3, a2, t2
	mulw a6, t6, a5
	ld t6, 240(sp)
	addw t2, t3, a6
	mulw a5, t5, t4
	slli t3, t6, 4
	ld t5, 248(sp)
	addw a2, t2, a5
	subw t4, t3, t6
	li t2, 79
	ld t6, 256(sp)
	addw a5, a2, t4
	sh1add t3, t6, t6
	mulw t4, t5, t2
	ld t5, 264(sp)
	addw a2, a5, t4
	ld t6, 208(sp)
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
	ld t5, 384(sp)
	sh1add t3, a5, a5
	ld a6, 368(sp)
	li a5, 81
	subw t4, zero, t3
	ld t6, 360(sp)
	mulw t0, t5, a5
	slli t3, a6, 4
	addw t2, t1, t4
	ld t5, 376(sp)
	addw t4, t3, a6
	li a6, 121
	li t3, -102
	sh2add t1, t4, t0
	mulw t4, t6, t3
	li t3, -74
	addw t0, t1, t4
	ld t6, 352(sp)
	mulw t4, t5, t3
	ld t3, 344(sp)
	addw t1, t0, t4
	slli t0, t3, 4
	mulw t5, t6, a6
	addw t4, t1, t5
	subw t5, t3, t0
	subw t1, t0, t3
	sd t5, 32(sp)
	li t0, 55
	addw t3, t4, t5
	ld a6, 288(sp)
	ld t5, 336(sp)
	mulw a7, a6, t0
	mulw t6, t5, a0
	ld a6, 328(sp)
	addw t4, t3, a7
	li t3, -13
	addw a7, t4, t6
	mulw a0, a6, t3
	ld t6, 88(sp)
	addw t4, a7, a0
	slli t3, t6, 5
	subw a6, t3, t6
	ld t6, 280(sp)
	li t3, 114
	slli a7, a6, 1
	subw a0, zero, a7
	li a7, 38
	addw t5, t4, a0
	mulw t4, t6, t3
	addw a6, t5, a1
	ld t5, 400(sp)
	addw a1, a6, t4
	ld t6, 320(sp)
	mulw a6, t5, a7
	ld t5, 312(sp)
	addw t4, a1, a6
	li a6, -21
	mulw a7, t6, a6
	slli t6, t5, 3
	addw a1, t4, a7
	subw a7, t6, t5
	ld t6, 304(sp)
	slli t4, a7, 4
	addw a6, a1, t4
	ld t4, 296(sp)
	mulw a7, t6, t3
	slli t5, t4, 3
	addw a1, a6, a7
	subw t3, t5, t4
	ld t5, 200(sp)
	slli a7, t3, 4
	sh2add t6, t5, t5
	addw a6, a1, a7
	slliw a7, t6, 1
	ld t6, 224(sp)
	subw a1, zero, a7
	slli t5, t6, 4
	addw t4, a6, a1
	subw a7, zero, t5
	li a1, -50
	ld t5, 232(sp)
	addw a6, t4, a7
	ld t6, 240(sp)
	mulw a7, t5, a1
	slli t5, t6, 3
	addw t4, a6, a7
	subw a7, t5, t6
	ld t5, 248(sp)
	slli s0, a7, 4
	ld t6, 256(sp)
	subw a6, zero, s0
	addw a7, t4, a6
	mulw t4, t5, a4
	ld t5, 264(sp)
	li a4, -54
	addw a6, a7, t4
	mulw a7, t6, a4
	ld t6, 208(sp)
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
	ld t5, 384(sp)
	slliw a4, a6, 5
	slli t6, t5, 4
	addw t4, t2, a4
	ld a6, 368(sp)
	subw a4, t6, t5
	ld t6, 360(sp)
	mulw t5, a6, a7
	addw t2, a4, t5
	li a4, -90
	slli t5, t6, 5
	addw a6, t5, t6
	ld t5, 376(sp)
	sh1add a7, a6, t2
	ld t6, 352(sp)
	mulw t2, t5, a4
	sh1add t5, t6, t6
	addw a6, a7, t2
	slliw a7, t5, 1
	slli t2, t6, 1
	subw t6, zero, a7
	slli a7, t1, 1
	addw t5, a6, t6
	subw s0, zero, a7
	ld a6, 288(sp)
	addw t6, t5, s0
	slli t1, a6, 3
	ld t5, 336(sp)
	subw s0, zero, t1
	ld a6, 328(sp)
	addw a7, t6, s0
	ld t6, 88(sp)
	mulw t1, t5, a5
	ld t5, 216(sp)
	addw s0, a7, t1
	li a7, -110
	sh1add t1, a6, s0
	mulw a6, t6, a7
	ld t6, 280(sp)
	addw a5, t1, a6
	li a6, -95
	mulw a7, t5, a6
	mulw a6, t6, a3
	ld t5, 400(sp)
	addw t1, a5, a7
	ld t6, 320(sp)
	li a7, 52
	addw a5, t1, a6
	slli t1, t6, 4
	mulw a6, t5, a7
	li a7, 82
	addw a3, a5, a6
	ld t5, 312(sp)
	subw a6, t1, t6
	ld t6, 304(sp)
	addw a5, a3, a6
	mulw t1, t5, t0
	slli t0, t6, 5
	addw a3, a5, t1
	addw t1, t0, t6
	subw t5, zero, t1
	li t1, 58
	addw a6, a3, t5
	ld t5, 200(sp)
	sh1add a5, t3, a6
	ld t6, 224(sp)
	li a6, -95
	li t3, 67
	mulw a3, t5, t1
	ld t5, 232(sp)
	li t1, 86
	addw t0, a5, a3
	mulw a5, t6, t3
	ld t6, 240(sp)
	mulw t3, t5, t1
	addw a3, t0, a5
	ld t5, 248(sp)
	li t0, -79
	addw a5, a3, t3
	mulw t1, t6, t0
	li t3, -13
	sh1add t0, t5, t5
	addw a3, a5, t1
	ld t6, 256(sp)
	slliw t1, t0, 4
	ld t5, 264(sp)
	addw a5, a3, t1
	slli t0, t5, 4
	mulw t1, t6, t3
	ld t6, 208(sp)
	addw a3, a5, t1
	ld t3, 64(sp)
	subw t1, t5, t0
	li t5, 127
	addw t0, a2, t6
	addw a5, a3, t1
	sh1add t1, t0, a5
	max a3, t1, zero
	min a2, a3, t5
	ld a3, 40(sp)
	ld t5, 384(sp)
	mulw t0, a2, a6
	ld t6, 360(sp)
	addw a2, t3, a3
	addw a5, t4, t0
	li t3, 67
	subw t4, zero, t2
	slli t0, t5, 5
	addw t1, t0, t5
	ld t5, 376(sp)
	mulw t0, t6, t3
	addw a3, a2, t1
	slli t1, t5, 4
	addw a2, a3, t0
	subw t3, t1, t5
	sh1add t0, t3, a2
	ld t3, 344(sp)
	addw a3, t0, t4
	ld a2, 80(sp)
	ld t1, 408(sp)
	addw t2, a2, t3
	ld t5, 336(sp)
	li t3, -13
	addw t0, a3, t2
	ld a6, 328(sp)
	sh3add a2, t1, t0
	ld t6, 88(sp)
	sh3add t0, a6, a6
	mulw t1, t5, t3
	sh2add t2, t6, t6
	ld t5, 216(sp)
	addw a3, a2, t1
	ld t6, 280(sp)
	li t1, 104
	sh1add a2, t0, a3
	mulw t3, t5, t1
	addw a3, a2, t2
	ld t5, 400(sp)
	li t2, -119
	addw a2, a3, t3
	slli t3, t5, 3
	mulw a3, t6, t2
	ld t6, 320(sp)
	addw t1, a2, a3
	li a3, 71
	subw a2, t5, t3
	ld t5, 312(sp)
	li t3, 107
	addw t2, t1, a2
	mulw t4, t6, a3
	addw t1, t2, t4
	ld t2, 48(sp)
	mulw t4, t5, t3
	addw t6, t1, t4
	ld t4, 296(sp)
	sh3add t3, t2, t6
	ld t5, 200(sp)
	ld t6, 224(sp)
	mulw t2, t4, a7
	li a7, 38
	sh1add t4, t5, t5
	addw t1, t3, t2
	slliw a6, t4, 5
	ld t5, 232(sp)
	li t4, -104
	subw t2, zero, a6
	li a6, -121
	addw t3, t1, t2
	mulw t1, t6, t4
	mulw t4, t5, a6
	addw t2, t3, t1
	ld t5, 248(sp)
	li t3, 97
	addw t1, t2, t4
	ld t6, 256(sp)
	mulw t4, t5, t3
	li t5, 83
	addw t2, t1, t4
	li t1, 46
	mulw t4, t6, t5
	ld t5, 264(sp)
	addw t3, t2, t4
	ld t6, 208(sp)
	li t4, -84
	mulw a6, t5, t1
	li t5, 127
	mulw t1, t6, t4
	addw t2, t3, a6
	addw a6, t2, t1
	ld t2, 72(sp)
	max t3, a6, zero
	min t4, t3, t5
	ld t5, 32(sp)
	addw t3, t2, t5
	mulw t6, t4, a1
	ld t5, 384(sp)
	addw a1, a0, t3
	addw t1, a5, t6
	ld a6, 368(sp)
	li t3, -125
	li a5, -29
	mulw t2, t5, a5
	ld t5, 376(sp)
	slli a5, a6, 3
	addw a0, a1, t2
	ld t6, 352(sp)
	subw t2, a5, a6
	ld a6, 288(sp)
	addw a1, a0, t2
	mulw t2, t5, a7
	mulw a5, t6, a4
	li a7, -77
	ld t5, 336(sp)
	addw a0, a1, t2
	slli t2, a6, 5
	addw a1, a0, a5
	li a0, 37
	subw a5, zero, t2
	addw a4, a1, a5
	mulw a5, t5, a0
	ld t5, 216(sp)
	addw t2, a4, a5
	ld t6, 280(sp)
	li a5, -46
	sh2add a1, t0, t2
	mulw t0, t5, t3
	li t3, -70
	addw a4, a1, t0
	ld t5, 400(sp)
	mulw t0, t6, a5
	ld t6, 320(sp)
	addw a1, a4, t0
	mulw t0, t5, t3
	mulw a5, t6, a0
	ld t5, 312(sp)
	addw a4, a1, t0
	li t0, -73
	addw a1, a4, a5
	mulw t3, t5, t0
	ld a5, 392(sp)
	li t0, -87
	addw a4, a1, t3
	ld t4, 296(sp)
	subw t2, zero, a5
	li t3, -75
	addw a1, a4, t2
	ld t5, 200(sp)
	li t2, -23
	mulw a5, t4, t0
	ld t6, 224(sp)
	li t4, -114
	addw a4, a1, a5
	mulw a1, t5, t3
	mulw t0, t6, a3
	li t3, -13
	ld t5, 232(sp)
	addw a5, a4, a1
	ld t6, 240(sp)
	addw a1, a5, t0
	li a5, 53
	mulw a4, t5, a7
	ld t5, 248(sp)
	addw a3, a1, a4
	mulw a1, t6, a5
	ld t6, 256(sp)
	addw a4, a3, a1
	mulw a5, t5, a0
	li a3, -103
	ld t5, 264(sp)
	addw a1, a4, a5
	mulw a0, t6, a3
	li a5, 42
	ld t6, 208(sp)
	addw a4, a1, a0
	mulw a1, t5, t3
	li t5, 127
	li t3, 67
	addw a0, a4, a1
	mulw a1, t6, t4
	addw a4, a0, a1
	max a3, a4, zero
	min a1, a3, t5
	ld t5, 384(sp)
	ld a6, 368(sp)
	mulw a4, a1, t2
	ld t6, 360(sp)
	mulw a3, t5, t3
	li t2, 75
	addw a0, t1, a4
	addw a1, a2, a3
	ld t5, 376(sp)
	li t1, 47
	li a4, 41
	mulw a2, a6, a5
	mulw a5, t6, a4
	addw a3, a1, a2
	ld t6, 352(sp)
	li a4, -92
	li a2, -123
	addw a1, a3, a5
	ld t3, 344(sp)
	mulw a5, t5, a2
	ld a6, 288(sp)
	mulw a2, t6, a4
	addw a3, a1, a5
	sh2add a4, t3, t3
	ld t5, 336(sp)
	addw a1, a3, a2
	li t3, -74
	mulw a3, a6, a7
	sh1add a2, a4, a1
	li a7, 38
	ld a6, 328(sp)
	li a4, -51
	addw a1, a2, a3
	sh1add a5, a6, a6
	ld t6, 88(sp)
	mulw a3, t5, t2
	li a6, 29
	addw a2, a1, a3
	ld t5, 216(sp)
	slliw a3, a5, 5
	mulw a5, t6, a4
	addw a1, a2, a3
	ld t6, 280(sp)
	li a3, 109
	addw a2, a1, a5
	mulw a4, t5, a3
	addw a1, a2, a4
	li a4, -122
	mulw a2, t6, t3
	li t3, 67
	addw a3, a1, a2
	ld t6, 320(sp)
	ld t5, 312(sp)
	mulw a1, t6, a4
	ld t6, 304(sp)
	addw a2, a3, a1
	ld t4, 296(sp)
	mulw a3, t5, t3
	ld t5, 200(sp)
	addw a1, a2, a3
	mulw a4, t6, t1
	li a3, 22
	li t1, 46
	addw a2, a1, a4
	ld t6, 224(sp)
	mulw a4, t4, a3
	slli a3, t5, 4
	addw a1, a2, a4
	addw t0, a3, t5
	mulw a3, t6, a7
	ld t5, 232(sp)
	slli a4, t0, 2
	ld t6, 240(sp)
	subw a5, zero, a4
	mulw a4, t5, a6
	addw a2, a1, a5
	li a6, -121
	addw a1, a2, a3
	ld t5, 248(sp)
	li a3, 115
	addw a2, a1, a4
	mulw a4, t6, a3
	ld t6, 256(sp)
	mulw a3, t5, a6
	addw a1, a2, a4
	sh3add a5, t6, t6
	ld t5, 264(sp)
	li a4, -49
	addw a2, a1, a3
	ld t6, 208(sp)
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
