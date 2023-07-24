.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -928
	sd s0, 648(sp)
	addi a1, sp, 272
	sd s5, 656(sp)
	sd s1, 664(sp)
	sd s6, 672(sp)
	sd s2, 680(sp)
	sd s3, 688(sp)
	sd s4, 696(sp)
	sd s7, 704(sp)
	sd s8, 712(sp)
	sd ra, 720(sp)
	sd a1, 392(sp)
	jal getint
	sd a0, 400(sp)
label2:
	ld a0, 400(sp)
	ble a0, zero, label11
	mv s0, zero
	j label4
label6:
	li a2, 20
	mv s2, zero
	ld a1, 392(sp)
	mul a0, s0, a2
	add s1, a1, a0
label7:
	jal getint
	sh2add a1, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a1)
	li a0, 5
	blt s2, a0, label7
	addiw s0, s0, 1
	blt s0, a0, label6
label10:
	lw s3, 272(sp)
	li s5, -106
	sh2add a1, s3, s3
	slliw a2, a1, 4
	sd s3, 448(sp)
	addw a0, a2, a1
	lw s4, 276(sp)
	sh1add t3, s4, s4
	slliw t0, t3, 3
	sd s4, 560(sp)
	subw a1, t0, s4
	sd t3, 440(sp)
	addw a0, a0, a1
	sd t0, 432(sp)
	lw t6, 280(sp)
	sh2add a5, t6, t6
	sh3add t3, a5, t6
	slliw t0, a5, 3
	sd t6, 168(sp)
	slliw a2, t3, 1
	subw a5, t0, a5
	subw a1, zero, a2
	sd t3, 424(sp)
	slli t0, a5, 1
	addw a0, a0, a1
	lw s3, 284(sp)
	slli a1, s3, 3
	subw a2, a1, s3
	sd s3, 640(sp)
	slli a1, a2, 1
	subw a2, a1, s3
	slli a1, a2, 3
	subw a2, s3, a1
	lw s3, 288(sp)
	addw a0, a0, a2
	slli a1, s3, 5
	subw a2, a1, s3
	sd s3, 544(sp)
	slli a1, a2, 2
	lw a6, 292(sp)
	subw a2, s3, a1
	slli t6, a6, 6
	addw a0, a0, a2
	addw a0, a0, t6
	sd a6, 136(sp)
	sd t6, 144(sp)
	lw s3, 296(sp)
	slli t2, s3, 4
	subw t6, t2, s3
	sd s3, 496(sp)
	slli a1, t6, 3
	sd t2, 784(sp)
	subw a2, zero, a1
	sd t6, 152(sp)
	addw a0, a0, a2
	lw s0, 300(sp)
	sh2add t5, s0, s0
	slli t4, s0, 2
	sh2add a1, t5, t5
	sd s0, 264(sp)
	sh1add a0, a1, a0
	sd t4, 896(sp)
	sd t5, 480(sp)
	lw s3, 304(sp)
	slli a1, s3, 4
	subw a2, a1, s3
	sd s3, 160(sp)
	slli a1, a2, 2
	subw a2, s3, a1
	lw s3, 308(sp)
	addw a0, a0, a2
	sh1add t4, s3, s3
	slliw t3, t4, 4
	sd s3, 32(sp)
	subw a1, t3, s3
	sd t4, 528(sp)
	addw a0, a0, a1
	sd t3, 512(sp)
	lw t6, 312(sp)
	slli a1, t6, 3
	subw s4, a1, t6
	sd t6, 760(sp)
	slli a1, s4, 4
	subw a2, t6, a1
	sd s4, 920(sp)
	addw a0, a0, a2
	lw s3, 316(sp)
	slli t6, s3, 4
	addw a2, t6, s3
	sd s3, 464(sp)
	slli a1, a2, 2
	sd t6, 40(sp)
	subw t2, s3, a1
	addw a0, a0, t2
	sd t2, 736(sp)
	lw s3, 320(sp)
	mulw a1, s3, s5
	sd s3, 104(sp)
	addw a0, a0, a1
	sd s5, 632(sp)
	lw s3, 324(sp)
	sh2add t1, s3, s3
	slli t5, s3, 2
	slliw a2, t1, 4
	sd s3, 416(sp)
	subw a3, t1, a2
	addw a1, a0, a3
	lw a0, 328(sp)
	sh1add t2, a0, a0
	lw s3, 332(sp)
	slliw a4, t2, 4
	addw a3, a4, t2
	sd s3, 232(sp)
	slli a2, a3, 1
	slli a3, s3, 4
	subw a4, zero, a2
	addw a2, a3, s3
	addw a1, a1, a4
	slli t3, a2, 1
	sh1add a1, a2, a1
	sd t3, 176(sp)
	lw s3, 336(sp)
	sh2add t6, s3, s3
	slli a7, s3, 2
	slliw a2, t6, 3
	sd s3, 384(sp)
	subw a3, s3, a2
	sd a7, 520(sp)
	addw a1, a1, a3
	sd t6, 88(sp)
	lw s3, 340(sp)
	slli a2, s3, 6
	addw a3, a2, s3
	sd s3, 240(sp)
	addw a2, a1, a3
	lw a1, 344(sp)
	sh1add t6, a1, a1
	slliw a4, t6, 4
	subw t3, a4, a1
	sd t6, 376(sp)
	addw a3, a2, t3
	lw a2, 348(sp)
	lw t6, 352(sp)
	slli a4, a2, 3
	subw t4, a4, a2
	slli t3, t4, 4
	sd t6, 248(sp)
	addw a4, t3, a2
	addw a3, a3, a4
	slli a4, t6, 3
	subw t4, a4, t6
	slli t3, t4, 3
	sd t4, 888(sp)
	subw a4, t3, t6
	lw s3, 356(sp)
	sh1add a3, a4, a3
	slli a7, a4, 1
	sh1add t6, s3, s3
	subw a7, zero, a7
	slliw a6, t6, 4
	sd s3, 408(sp)
	subw a4, a6, s3
	sd t6, 72(sp)
	addw a3, a3, a4
	sd a6, 24(sp)
	lw s3, 360(sp)
	slli t6, s3, 2
	subw a4, zero, t6
	sd s3, 256(sp)
	addw a3, a3, a4
	sd t6, 80(sp)
	lw t6, 364(sp)
	sh2add s3, t6, t6
	slliw s1, s3, 4
	sd t6, 184(sp)
	addw a4, a3, s1
	sd s3, 904(sp)
	lw a3, 368(sp)
	sh1add t6, a3, a3
	slliw s0, t6, 3
	sd t6, 120(sp)
	subw t6, s0, a3
	sd s0, 128(sp)
	sh1add t4, t6, a4
	ld s3, 448(sp)
	li a4, 127
	max t3, t4, zero
	ld s4, 560(sp)
	min t3, t3, a4
	sh2add t6, t3, t3
	slliw t4, t6, 3
	subw s2, t4, t3
	slli t3, s4, 6
	mulw t4, s3, s5
	subw t6, t3, s4
	sh1add a6, t6, t4
	ld t6, 168(sp)
	sh3add s3, t6, t6
	slli t4, t6, 3
	slliw t6, s3, 1
	ld s3, 640(sp)
	subw s0, zero, t6
	addw t6, a6, s0
	slli a6, s3, 5
	subw s0, a6, s3
	subw a6, s3, a6
	addw t6, t6, a6
	sd s0, 192(sp)
	ld s3, 544(sp)
	slli s4, s3, 3
	subw a6, zero, s4
	addw s0, t6, a6
	ld a6, 136(sp)
	sh1add t6, a6, a6
	slliw s3, t6, 4
	slliw t6, t6, 5
	subw s4, s3, a6
	ld s3, 496(sp)
	addw a6, s0, s4
	slli s0, s3, 2
	subw s4, zero, s0
	addw s3, a6, s4
	sd s0, 200(sp)
	ld s0, 264(sp)
	slli a6, s0, 4
	addw s4, a6, s0
	slli a6, s4, 2
	subw s5, a6, s0
	subw a6, zero, a6
	addw s4, s3, s5
	ld s3, 160(sp)
	sh1add s0, s3, s3
	slliw s5, s0, 4
	subw s6, s5, s3
	sd s0, 216(sp)
	slli s5, s6, 1
	ld s3, 32(sp)
	subw s0, zero, s5
	addw s4, s4, s0
	slli s0, s3, 4
	subw s5, s0, s3
	sh3add s6, s5, s3
	subw s5, zero, s6
	addw s3, s4, s5
	ld s4, 920(sp)
	addw s5, s3, s4
	ld s3, 464(sp)
	sh1add s4, s3, s3
	slliw s6, s4, 3
	subw s7, s4, s6
	sd s4, 456(sp)
	addw s5, s5, s7
	sd s6, 96(sp)
	ld s3, 104(sp)
	slli s4, s3, 4
	subw s7, s4, s3
	ld s3, 416(sp)
	slli s6, s7, 2
	subw s8, zero, s6
	addw s4, s5, s8
	subw s5, t5, s3
	slli t5, s5, 2
	subw s5, t5, s3
	slli t5, s5, 2
	subw s5, s3, t5
	addw t5, s4, s5
	slli s4, a0, 3
	subw s3, s4, a0
	slli s5, s3, 4
	sd s3, 912(sp)
	subw s6, s5, s3
	sd s5, 792(sp)
	addw s4, t5, s6
	ld s3, 232(sp)
	sh1add t5, s3, s3
	slliw s3, t5, 3
	subw s5, s3, t5
	sd t5, 224(sp)
	ld s3, 384(sp)
	slli t5, s5, 1
	subw s6, zero, t5
	addw t5, s4, s6
	slli s4, s3, 4
	subw s6, s4, s3
	slli s5, s6, 1
	subw s4, s5, s3
	slli s3, s4, 2
	sd s4, 56(sp)
	subw s5, s3, s4
	sd s3, 64(sp)
	addw t5, t5, s5
	ld s3, 240(sp)
	slli s4, s3, 4
	subw s6, s4, s3
	slli s5, s6, 1
	sd s4, 208(sp)
	subw s4, s5, s3
	addw t5, t5, s4
	sd s4, 880(sp)
	slli s4, a2, 5
	ld s5, 632(sp)
	mulw s3, a1, s5
	addw t5, t5, s3
	subw s3, a2, s4
	addw t5, t5, s3
	ld s3, 408(sp)
	addw t5, t5, a7
	sh2add s4, s3, s3
	sh2add a7, s4, s4
	slliw s3, a7, 2
	sd s4, 488(sp)
	subw a7, zero, s3
	ld s3, 256(sp)
	addw t5, t5, a7
	sh1add s4, s3, s3
	slliw a7, s4, 2
	subw a7, a7, s3
	sd s4, 776(sp)
	ld s3, 904(sp)
	slli s4, a7, 1
	subw a7, zero, s4
	addw t5, t5, a7
	subw a7, s3, s1
	slli s3, a3, 6
	addw t5, t5, a7
	subw a7, s3, a3
	ld s3, 448(sp)
	slli s1, a7, 1
	ld s4, 560(sp)
	subw a7, a3, s1
	addw t5, t5, a7
	max a7, t5, zero
	min t5, a7, a4
	slliw a7, t5, 2
	subw s1, a7, t5
	slli a7, s1, 2
	subw t5, a7, t5
	slli a7, t5, 3
	subw t5, a7, t5
	addw a7, s2, t5
	slli t5, s3, 3
	subw s1, t5, s3
	slli t5, s1, 1
	subw s1, t5, s3
	slli t5, s4, 2
	sd t5, 768(sp)
	sh2add t5, s4, s4
	slliw s2, t5, 2
	subw s3, s2, s4
	slliw s2, s3, 2
	sh1add s1, s1, s2
	subw s2, zero, t0
	addw a5, s1, s2
	sd s2, 0(sp)
	ld s3, 640(sp)
	slli t0, s3, 4
	subw s1, t0, s3
	slli t0, s1, 1
	subw t0, t0, s3
	sd s1, 872(sp)
	addw a5, a5, t0
	ld s3, 544(sp)
	sh1add s1, s3, s3
	slli s2, s3, 1
	slliw t0, s1, 5
	sd s2, 848(sp)
	sd s1, 48(sp)
	subw s1, s3, t0
	ld s3, 496(sp)
	addw t0, a5, s1
	addw a5, t0, t6
	slli t6, s3, 3
	subw s1, t6, s3
	slli t0, s1, 1
	sd t6, 752(sp)
	subw t6, t0, s3
	sd s1, 568(sp)
	sh2add t0, t6, a5
	ld s3, 160(sp)
	addw a5, t0, a6
	sh2add t6, s3, s3
	ld s3, 32(sp)
	subw t0, zero, t6
	ld t6, 760(sp)
	addw a5, a5, t0
	ld s4, 456(sp)
	addw t0, s0, s3
	ld s3, 104(sp)
	sh1add a5, t0, a5
	slli t0, t6, 4
	addw a6, t0, t6
	slli t6, a6, 1
	subw t0, zero, t6
	addw a5, a5, t0
	slliw t0, s4, 4
	addw t6, t0, s4
	slliw t0, t1, 2
	sh1add a5, t6, a5
	sh1add t6, s3, s3
	ld s3, 416(sp)
	sh1add a5, t6, a5
	subw a6, t0, s3
	ld s3, 232(sp)
	slli t1, a6, 1
	subw t6, zero, t1
	sh3add t1, t2, t2
	addw t0, a5, t6
	addw a5, t0, t1
	slli t0, s3, 3
	subw t6, t0, s3
	slli t0, t6, 3
	sd t6, 552(sp)
	subw t1, t0, s3
	ld s4, 56(sp)
	sh1add t0, t1, a5
	ld s3, 240(sp)
	sh2add a5, s4, t0
	sh2add t6, s3, s3
	slliw t0, t6, 3
	subw t1, t0, s3
	sd t6, 8(sp)
	slli t0, a1, 6
	addw a5, a5, t1
	subw t2, a1, t0
	addw t1, a5, t2
	sh1add a5, a2, a2
	slliw t0, a5, 5
	addw t6, t0, a5
	subw t0, a5, t0
	subw t2, zero, t6
	ld t6, 248(sp)
	addw t1, t1, t2
	slli t2, t6, 6
	addw a6, t2, t6
	addw t1, t1, a6
	sd a6, 800(sp)
	ld s3, 408(sp)
	slli t2, s3, 4
	subw t6, t2, s3
	sh3add t1, t6, t1
	sd t6, 112(sp)
	ld s3, 256(sp)
	sh2add t6, s3, s3
	slliw t2, t6, 3
	ld t6, 184(sp)
	subw a6, s3, t2
	sh1add s0, t6, t6
	addw t1, t1, a6
	slliw t6, s0, 1
	subw t2, zero, t6
	sd s0, 856(sp)
	addw t1, t1, t2
	ld t6, 120(sp)
	ld s3, 448(sp)
	slliw t2, t6, 4
	subw a6, t2, a3
	sh1add t6, a6, t1
	max t2, t6, zero
	min t1, t2, a4
	slliw t6, t1, 7
	subw t2, t6, t1
	sh1add t6, s3, s3
	addw t1, a7, t2
	slliw t2, t6, 3
	subw a6, s3, t2
	ld t2, 736(sp)
	ld s4, 560(sp)
	addw t6, t2, a6
	subw t3, s4, t3
	addw t2, t6, t3
	ld t6, 168(sp)
	ld s3, 640(sp)
	subw t3, t4, t6
	slli a6, t3, 3
	subw t6, a6, t3
	slli t3, t3, 1
	addw t4, t2, t6
	sh2add t6, s3, s3
	slli t2, s3, 2
	slliw s0, t6, 2
	sh2add t6, t6, t6
	sd s0, 864(sp)
	sh1add t4, t6, t4
	ld s3, 544(sp)
	ld a6, 136(sp)
	sh3add t6, s3, s3
	sh3add t4, t6, t4
	sh2add t6, a6, a6
	slliw a6, t6, 4
	addw a7, a6, t6
	sd t6, 16(sp)
	addw t4, t4, a7
	ld t6, 152(sp)
	ld s0, 264(sp)
	slli a6, t6, 1
	ld s3, 160(sp)
	sh1add t6, s0, s0
	subw a7, zero, a6
	addw t4, t4, a7
	sh2add t4, t6, t4
	slli t6, s3, 6
	subw a6, t6, s3
	slli t6, a6, 1
	subw a6, t6, s3
	ld s3, 32(sp)
	addw t4, t4, a6
	slli t6, s3, 3
	subw a7, t6, s3
	slli t6, a7, 1
	sd a7, 504(sp)
	subw a7, t6, s3
	sh3add s0, a7, a7
	subw t6, zero, s0
	addw t4, t4, t6
	ld t6, 760(sp)
	slli s0, t6, 6
	addw a7, s0, t6
	subw t6, zero, a7
	sd s0, 808(sp)
	addw t4, t4, t6
	ld s3, 104(sp)
	slli t6, s3, 6
	subw a7, t6, s3
	slli t6, a7, 1
	subw a7, t6, s3
	ld s3, 416(sp)
	addw t6, t4, a7
	slli a7, s3, 3
	subw t4, a7, s3
	slli a7, t4, 3
	subw a7, a7, s3
	ld s3, 232(sp)
	sh1add t6, a7, t6
	slli a7, a0, 5
	subw s0, a0, a7
	addw t6, t6, s0
	slli s0, s3, 5
	subw s1, s0, s3
	sd s0, 472(sp)
	slli a7, s1, 2
	subw a7, s3, a7
	ld s3, 384(sp)
	addw t6, t6, a7
	ld a7, 520(sp)
	subw s0, a7, s3
	slli a7, s0, 3
	subw s1, a7, s0
	slli a7, s1, 2
	subw a7, a7, s3
	ld s3, 240(sp)
	addw t6, t6, a7
	slli a7, s3, 5
	subw s0, a7, s3
	slli a7, s0, 1
	subw s0, a7, s3
	sh1add a7, s0, t6
	ld t6, 376(sp)
	slliw s0, t6, 2
	subw s1, s0, a1
	addw t6, a7, s1
	slliw a7, a5, 3
	subw s0, a2, a7
	addw a7, t6, s0
	ld t6, 248(sp)
	ld s3, 408(sp)
	sh1add s1, t6, t6
	slliw s0, s1, 4
	subw s1, t6, s0
	slli t6, s3, 5
	addw a7, a7, s1
	ld s3, 256(sp)
	subw s0, zero, t6
	addw t6, a7, s0
	slli a7, s3, 3
	subw a7, a7, s3
	slli s0, a7, 1
	subw a7, s0, s3
	slli s1, a7, 3
	sd s0, 536(sp)
	sh3add a7, a7, a7
	sd s1, 824(sp)
	ld s0, 856(sp)
	subw s1, zero, a7
	addw a7, t6, s1
	ld t6, 184(sp)
	slliw s1, s0, 5
	ld s3, 448(sp)
	slli s0, a3, 4
	subw s2, s1, t6
	subw t6, s0, a3
	addw a7, a7, s2
	slli s1, t6, 2
	subw t6, s1, a3
	sh1add a7, t6, a7
	max s0, a7, zero
	min t6, s0, a4
	mulw t6, t6, s5
	addw a7, t1, t6
	sh3add t6, t5, s4
	sh3add t1, s3, a6
	sd t6, 576(sp)
	sh1add t1, t6, t1
	ld t6, 168(sp)
	ld s3, 640(sp)
	subw a6, t3, t6
	subw t2, t2, s3
	slli t3, a6, 3
	subw t5, zero, t3
	slli t3, t2, 4
	addw t1, t1, t5
	addw t5, t3, t2
	slli t2, t5, 1
	subw t3, t2, s3
	ld s3, 544(sp)
	addw t1, t1, t3
	slli t2, s3, 4
	subw t3, t2, s3
	slli t2, t3, 1
	subw t5, t2, s3
	slli t6, t5, 2
	subw t2, zero, t6
	ld t6, 144(sp)
	addw t1, t1, t2
	ld a6, 136(sp)
	ld t2, 784(sp)
	subw t5, a6, t6
	subw t6, zero, t2
	addw t1, t1, t5
	ld t5, 480(sp)
	addw t1, t1, t6
	ld s3, 32(sp)
	slliw t2, t5, 3
	subw t6, t2, t5
	slli t2, t6, 1
	subw t5, zero, t2
	addw t1, t1, t5
	sh2add t5, s3, s3
	slliw t2, t5, 4
	sd t5, 584(sp)
	subw a6, t2, t5
	ld t6, 760(sp)
	addw t1, t1, a6
	ld s4, 456(sp)
	slli t2, t6, 5
	ld s3, 104(sp)
	addw t5, t2, t6
	sh1add t1, t5, t1
	slliw t5, s4, 5
	subw t2, zero, t5
	slli t5, s3, 2
	addw t1, t1, t2
	subw t2, t5, s3
	slli t6, t2, 4
	addw t5, t6, t2
	slli t2, t5, 1
	subw t5, s3, t2
	ld s3, 416(sp)
	addw t1, t1, t5
	sh3add t2, t4, s3
	slliw t4, t2, 1
	subw t5, zero, t4
	slli t4, a0, 4
	addw t1, t1, t5
	subw t2, t4, a0
	sd t4, 816(sp)
	slli t5, t2, 2
	subw t4, t5, a0
	ld t5, 224(sp)
	addw t1, t1, t4
	ld t6, 88(sp)
	sh2add t2, t5, t1
	ld s3, 240(sp)
	addw t1, t2, t6
	sh1add t2, s3, s3
	slliw t5, t2, 5
	subw t4, s3, t5
	addw t2, t1, t4
	sd t5, 608(sp)
	slli t1, a1, 4
	subw t4, t1, a1
	slli t6, t4, 1
	subw t5, t6, a1
	ld t6, 248(sp)
	sh2add t2, t5, t2
	ld s4, 488(sp)
	addw a5, t2, t0
	ld s3, 408(sp)
	slli t0, t6, 4
	subw t2, t0, t6
	slliw t0, s4, 4
	addw a5, a5, t2
	ld s4, 776(sp)
	subw t2, t0, s3
	ld t6, 184(sp)
	addw t0, a5, t2
	addw a5, t0, s4
	slli t0, t6, 3
	subw t5, t0, t6
	slli t0, t5, 3
	subw t2, t0, t5
	sd t5, 832(sp)
	sd t0, 840(sp)
	ld s3, 448(sp)
	addw t0, a5, t2
	ld s4, 560(sp)
	slli a5, a3, 5
	ld t6, 168(sp)
	subw t2, a5, a3
	addw a5, a5, a3
	slli t4, t2, 2
	subw t5, zero, t4
	addw t2, t0, t5
	max t4, t2, zero
	min t0, t4, a4
	sh1add t5, t0, t0
	subw t4, zero, t5
	addw t2, a7, t4
	sh3add t4, s3, s3
	ld s3, 640(sp)
	sh3add t0, t4, t4
	slli t4, s4, 4
	addw t5, t4, s4
	sh1add t4, t6, t6
	sh2add t0, t5, t0
	slliw a6, t4, 4
	addw t5, a6, t4
	slli t6, t5, 1
	subw t4, zero, t6
	addw t0, t0, t4
	sh3add t4, s3, s3
	sh2add t6, t4, s3
	ld s3, 544(sp)
	slliw t4, t6, 1
	ld a6, 136(sp)
	sh3add t3, t3, s3
	subw t5, zero, t4
	slli t4, a6, 4
	addw t0, t0, t5
	subw t5, a6, t4
	addw t0, t0, t3
	addw t0, t0, t5
	subw t3, t4, a6
	sd t5, 744(sp)
	ld s1, 568(sp)
	ld s3, 496(sp)
	slli t4, s1, 3
	ld s0, 264(sp)
	subw t5, t4, s3
	ld t4, 896(sp)
	addw t0, t0, t5
	ld s3, 160(sp)
	subw t5, t4, s0
	slli t6, t5, 4
	addw a6, t6, t5
	slli t4, a6, 1
	subw t5, t4, s0
	slli t4, s3, 3
	addw t0, t0, t5
	subw t5, t4, s3
	slli t4, t5, 1
	subw t5, s3, t4
	ld s3, 32(sp)
	addw t0, t0, t5
	slli t4, s3, 5
	subw t5, t4, s3
	slli t4, t5, 1
	subw t6, zero, t4
	addw t0, t0, t6
	sd t6, 728(sp)
	ld s0, 808(sp)
	ld s3, 464(sp)
	addw t4, t0, s0
	slli t5, s3, 3
	subw t0, t5, s3
	sh3add t5, t0, s3
	ld s3, 104(sp)
	sh1add t4, t5, t4
	sh2add t5, s3, s3
	slliw t6, t5, 2
	sd t5, 624(sp)
	subw t5, t6, s3
	ld s3, 416(sp)
	sh1add t4, t5, t4
	ld s5, 792(sp)
	sh1add t5, s3, s3
	ld s3, 232(sp)
	slliw a6, t5, 3
	subw t6, t5, a6
	addw t5, t4, t6
	ld t6, 552(sp)
	addw t4, t5, s5
	sh3add t5, t6, s3
	ld s3, 384(sp)
	sh1add t4, t5, t4
	ld t6, 8(sp)
	slli t5, s3, 3
	subw a6, t5, s3
	slli t5, a6, 4
	addw t4, t4, t5
	slliw t5, t6, 1
	subw t6, zero, t1
	subw a7, zero, t5
	addw t1, t1, a1
	addw t5, t4, a7
	addw t4, t5, t6
	sh2add t6, a2, a2
	slli t5, a2, 2
	sd t5, 600(sp)
	sh2add t5, t6, t6
	slliw a7, t5, 1
	subw t6, zero, a7
	addw t5, t4, t6
	ld t4, 888(sp)
	slli t6, t4, 4
	subw a7, zero, t6
	ld t6, 112(sp)
	addw t4, t5, a7
	ld s3, 408(sp)
	slli t5, t6, 1
	ld s4, 776(sp)
	subw t6, t5, s3
	slli a7, t6, 2
	subw t5, zero, a7
	addw t4, t4, t5
	sh3add t5, s4, s4
	slliw t6, t5, 1
	slli t5, a3, 3
	subw a7, zero, t6
	ld t6, 184(sp)
	addw t4, t4, a7
	ld s3, 904(sp)
	sd t5, 616(sp)
	sh3add a7, s3, t6
	ld s3, 448(sp)
	sh1add t4, a7, t4
	sh3add a7, a3, a3
	slliw t5, a7, 3
	subw t6, zero, t5
	addw t4, t4, t6
	max a7, t4, zero
	min t5, a7, a4
	slliw t6, t5, 5
	slli t5, s3, 4
	addw t4, t2, t6
	sd t5, 592(sp)
	subw t2, t5, s3
	ld s4, 560(sp)
	ld t5, 768(sp)
	subw a7, t5, s4
	slli t6, a7, 2
	subw t5, t6, s4
	slli t6, t5, 3
	subw a7, t5, t6
	ld t6, 168(sp)
	addw t5, t2, a7
	ld s3, 640(sp)
	slli t2, t2, 1
	slli a7, t6, 5
	addw a7, a7, t6
	sh1add t6, s3, s3
	sh1add t5, a7, t5
	slliw s1, t6, 4
	subw a7, s1, t6
	ld s1, 48(sp)
	slli s0, a7, 1
	subw t6, zero, s0
	addw t5, t5, t6
	slliw t6, s1, 1
	subw a7, zero, t6
	slli t6, t3, 1
	addw t5, t5, a7
	subw a7, zero, t6
	ld t6, 752(sp)
	addw t3, t5, a7
	ld s0, 264(sp)
	subw t5, zero, t6
	ld s3, 160(sp)
	addw t6, t3, t5
	sh3add t3, s0, s0
	slli t5, s0, 3
	sh3add s1, t3, t3
	addw a7, t6, s1
	sh1add t6, s3, a7
	ld a7, 504(sp)
	ld s3, 32(sp)
	slli s0, a7, 3
	subw a7, s0, s3
	slli s1, a7, 1
	subw s0, zero, s1
	addw a7, t6, s0
	ld t6, 760(sp)
	ld s3, 464(sp)
	sh1add s1, t6, t6
	slliw s0, s1, 5
	subw s1, t6, s0
	ld t6, 40(sp)
	addw a7, a7, s1
	subw s0, t6, s3
	slli t6, s0, 2
	subw s0, t6, s3
	ld s3, 104(sp)
	addw t6, a7, s0
	slli a7, s3, 3
	subw s1, a7, s3
	slli s0, s1, 1
	subw s1, s0, s3
	ld s3, 416(sp)
	sh2add t6, s1, t6
	slli s0, s3, 4
	subw s1, s0, s3
	ld s3, 912(sp)
	addw t6, t6, s1
	slli s1, s3, 3
	ld s3, 232(sp)
	subw s0, s1, a0
	addw t6, t6, s0
	ld s0, 472(sp)
	ld s4, 880(sp)
	addw s1, s0, s3
	subw s2, zero, s1
	addw t6, t6, s2
	sh1add a6, a6, t6
	sh1add t6, s4, a6
	slli a6, t1, 2
	subw s0, a6, a1
	addw t1, t6, s0
	li t6, 86
	mulw s0, a2, t6
	ld t6, 248(sp)
	addw a6, t1, s0
	sh2add s1, t6, t6
	slli t1, t6, 2
	slliw s0, s1, 4
	subw s1, t6, s0
	addw t6, a6, s1
	ld a6, 24(sp)
	ld s3, 256(sp)
	addw t6, t6, a6
	ld s0, 536(sp)
	subw s1, s3, s0
	addw a6, t6, s1
	ld t6, 184(sp)
	slli s0, t6, 4
	subw s1, t6, s0
	addw a6, a6, s1
	sh1add t6, a5, a6
	max a6, t6, zero
	min a5, a6, a4
	sh1add a6, a5, a5
	slliw t6, a6, 5
	ld a6, 800(sp)
	subw a5, a5, t6
	ld t6, 576(sp)
	addw t4, t4, a5
	ld s3, 448(sp)
	sh1add a5, t6, a6
	slli t6, s3, 5
	addw a6, t6, s3
	ld t6, 168(sp)
	addw a5, a5, a6
	ld s1, 872(sp)
	slli a6, t6, 4
	ld s2, 848(sp)
	addw s0, a6, t6
	slli a6, s0, 2
	subw s0, a6, t6
	ld t6, 144(sp)
	addw a6, a5, s0
	sh1add a5, s1, a6
	subw a6, zero, s2
	addw a5, a5, a6
	ld a6, 136(sp)
	addw t6, t6, a6
	addw a5, a5, t6
	ld t6, 152(sp)
	ld s0, 264(sp)
	sh3add a5, t6, a5
	ld s3, 160(sp)
	subw t6, t5, s0
	sh3add a6, s3, s3
	slli t5, t6, 1
	subw t6, s0, t5
	ld t5, 584(sp)
	addw a5, a5, t6
	ld s4, 920(sp)
	sh1add t6, a6, a5
	addw a5, t6, t5
	ld t6, 760(sp)
	slli t5, s4, 1
	ld s3, 104(sp)
	subw t5, t5, t6
	slli t6, t0, 4
	sh3add a5, t5, a5
	addw t5, t6, t0
	slli t6, a0, 2
	subw t0, zero, t5
	addw a5, a5, t0
	subw t0, s3, a7
	ld s3, 416(sp)
	addw a5, a5, t0
	sh3add a7, s3, s3
	slliw t5, a7, 3
	subw t5, t5, s3
	addw a5, a5, t5
	subw t5, t6, a0
	sh3add t6, t5, t5
	slliw s0, t6, 2
	subw t5, s0, a0
	addw t6, a5, t5
	ld t5, 224(sp)
	ld s3, 384(sp)
	sh3add a5, t5, t6
	ld t6, 88(sp)
	sh3add t5, t6, s3
	sh1add a5, t5, a5
	ld t5, 608(sp)
	subw t6, zero, t5
	slli t5, a1, 3
	addw a5, a5, t6
	subw s0, t5, a1
	slli t6, s0, 1
	subw t5, t6, a1
	slli s0, t5, 3
	subw t6, zero, s0
	addw t5, a5, t6
	slli t6, a2, 4
	subw a5, t6, a2
	sh3add s0, a5, a2
	slli a5, a5, 1
	subw t6, zero, s0
	addw t5, t5, t6
	ld t6, 72(sp)
	ld s3, 408(sp)
	slliw s0, t6, 5
	addw t6, s0, s3
	ld s3, 256(sp)
	addw t5, t5, t6
	ld t6, 80(sp)
	subw s0, t6, s3
	slli t6, s0, 3
	subw s1, t6, s0
	ld s0, 856(sp)
	slli t6, s1, 2
	slliw s1, s0, 3
	subw t6, t6, s3
	addw t5, t5, t6
	ld t6, 184(sp)
	ld s0, 128(sp)
	subw s2, s1, t6
	ld t6, 120(sp)
	sh1add t5, s2, t5
	subw s1, s0, t6
	slli s2, s1, 2
	subw t6, zero, s2
	ld s2, 0(sp)
	addw s0, t5, t6
	max t5, s0, zero
	min t6, t5, a4
	sh2add t5, t6, t6
	sh2add t6, t5, t5
	slliw t5, t6, 1
	subw t6, zero, t5
	ld t5, 744(sp)
	addw t4, t4, t6
	addw s0, s2, t5
	ld t6, 728(sp)
	ld s3, 448(sp)
	addw t5, t6, s0
	ld s4, 560(sp)
	subw t6, s3, t2
	ld s3, 640(sp)
	addw t2, t5, t6
	ld s0, 864(sp)
	slli t5, s4, 3
	ld s1, 48(sp)
	subw t6, t5, s4
	subw t5, s0, s3
	addw t2, t2, t6
	ld s3, 496(sp)
	sh1add t2, t5, t2
	slliw t5, s1, 4
	subw t6, t5, s1
	slli s0, t6, 1
	subw t5, zero, s0
	ld s0, 264(sp)
	addw t2, t2, t5
	slli t5, s3, 5
	subw t6, zero, t5
	sh2add t5, t3, s0
	addw t2, t2, t6
	ld t6, 760(sp)
	addw t3, t2, t5
	ld s0, 808(sp)
	sh2add t2, a6, t3
	ld s3, 464(sp)
	subw t5, s0, t6
	ld s6, 96(sp)
	slli t3, t5, 1
	subw t5, t6, t3
	subw t3, s6, s3
	addw t2, t2, t5
	slli t5, t3, 1
	subw t6, zero, t5
	ld t5, 624(sp)
	addw t2, t2, t6
	ld s3, 416(sp)
	slliw t3, t5, 3
	subw t6, t3, t5
	sh2add t5, a7, s3
	slli a6, t6, 1
	subw t3, zero, a6
	addw t2, t2, t3
	sh3add t3, a0, a0
	addw t2, t2, t5
	sh3add t5, t3, a0
	ld t3, 176(sp)
	subw t6, zero, t5
	ld s3, 64(sp)
	subw t5, zero, t3
	addw t2, t2, t6
	ld s4, 56(sp)
	addw t2, t2, t5
	ld t6, 8(sp)
	subw t3, s4, s3
	addw t2, t2, t3
	slliw t3, t6, 4
	subw t5, t6, t3
	sh3add t3, a1, a1
	addw t2, t2, t5
	slliw t5, t3, 3
	subw t6, t5, a1
	ld t5, 600(sp)
	addw t2, t2, t6
	subw a6, t5, a2
	slli t6, a6, 2
	subw t3, t6, a2
	ld t6, 248(sp)
	slli t5, t3, 3
	ld s3, 408(sp)
	subw a6, t3, t5
	subw t3, t1, t6
	addw t2, t2, a6
	sh3add t5, t3, t3
	slli t1, t3, 3
	slliw t3, t5, 1
	subw t5, t3, t6
	sh3add t3, s3, s3
	addw t2, t2, t5
	sh2add t5, t3, s3
	ld s3, 256(sp)
	addw t2, t2, t5
	ld s1, 824(sp)
	ld t5, 832(sp)
	subw t3, s3, s1
	ld t6, 184(sp)
	addw t2, t2, t3
	slli t3, t5, 1
	ld t5, 616(sp)
	subw a6, t6, t3
	ld s3, 448(sp)
	addw t2, t2, a6
	subw a6, t5, a3
	sh3add t3, a6, a3
	slliw t6, t3, 1
	subw t5, zero, t6
	addw t3, t2, t5
	max t6, t3, zero
	min t2, t6, a4
	sh1add a6, t2, t2
	slliw t3, a6, 3
	subw t5, t2, t3
	addw t2, t4, t5
	ld t5, 592(sp)
	addw t4, t5, s3
	slli t3, t4, 2
	subw t5, t3, s3
	addw t4, t0, t5
	ld t0, 432(sp)
	ld t3, 440(sp)
	subw t5, t0, t3
	ld t3, 424(sp)
	sh1add t4, t5, t4
	ld s0, 192(sp)
	addw t0, t4, t3
	ld s3, 640(sp)
	slli t3, s0, 2
	ld s1, 48(sp)
	subw t4, s3, t3
	ld s3, 544(sp)
	slliw t3, s1, 3
	addw t0, t0, t4
	subw t6, t3, s3
	slli t4, t6, 2
	ld t6, 16(sp)
	subw t5, zero, t4
	ld s3, 496(sp)
	addw t3, t0, t5
	ld s0, 200(sp)
	sh1add t0, t6, t3
	subw t3, s0, s3
	slli t4, t3, 2
	subw t3, t4, s3
	slli t5, t3, 3
	subw t4, t3, t5
	ld t5, 480(sp)
	addw t0, t0, t4
	ld s0, 216(sp)
	slliw t3, t5, 4
	subw t4, t3, t5
	ld t3, 512(sp)
	addw t0, t0, t4
	slliw t4, s0, 5
	addw t0, t0, t4
	ld t4, 528(sp)
	ld s4, 920(sp)
	addw t5, t3, t4
	ld t6, 760(sp)
	subw t3, zero, t5
	ld s3, 464(sp)
	addw t0, t0, t3
	slli t3, s4, 3
	subw t4, t3, t6
	slli t3, t4, 1
	subw t4, t3, t6
	sh3add t3, s3, s3
	addw t0, t0, t4
	sh2add t4, t3, s3
	ld s3, 416(sp)
	slliw t5, t4, 1
	subw t3, zero, t5
	addw t0, t0, t3
	slli t3, s3, 5
	subw t4, t3, s3
	slli t3, t4, 1
	subw t5, t3, s3
	slli t4, t5, 1
	subw t3, zero, t4
	ld t4, 816(sp)
	addw t0, t0, t3
	addw t6, t4, a0
	slli t5, t6, 2
	subw t3, t5, a0
	ld t5, 224(sp)
	addw a0, t0, t3
	ld s3, 232(sp)
	slliw t0, t5, 4
	subw t3, t0, s3
	ld s3, 384(sp)
	addw a0, a0, t3
	sh1add t3, s3, s3
	slliw t0, t3, 2
	subw t3, t0, s3
	ld s3, 240(sp)
	sh1add a0, t3, a0
	ld s4, 208(sp)
	ld t6, 248(sp)
	addw t4, s4, s3
	ld s3, 408(sp)
	slli t0, t4, 2
	subw t3, zero, t0
	sh2add t0, a1, a1
	addw a0, a0, t3
	slliw t3, t0, 2
	subw a1, t3, a1
	sh1add a0, a1, a0
	subw a1, a5, a2
	addw a0, a0, a1
	subw a1, t1, t6
	ld t6, 112(sp)
	sh2add a2, a1, a1
	addw a0, a0, a2
	sh3add a2, t6, s3
	ld s3, 256(sp)
	subw a1, zero, a2
	ld t0, 840(sp)
	addw a0, a0, a1
	ld t5, 832(sp)
	sh3add a1, s3, s3
	subw a2, t5, t0
	sh2add a0, a1, a0
	sh2add a1, a3, a3
	addw a0, a0, a2
	slliw a2, a1, 4
	addw a3, a2, a1
	addw a1, a0, a3
	max a2, a1, zero
	min a0, a2, a4
	sh1add a1, a0, a0
	slliw a2, a1, 3
	li a1, 100
	subw a0, a2, a0
	sh1add a3, a0, t2
	slt s0, zero, a3
	subw a0, a1, s0
	jal putch
	li a0, 97
	bne s0, zero, label1451
	li a0, 111
label1451:
	jal putch
	li a0, 116
	bne s0, zero, label1453
	li a0, 103
label1453:
	jal putch
	li a0, 10
	jal putch
	ld a0, 400(sp)
	addiw a0, a0, -1
	sd a0, 400(sp)
	j label2
label11:
	mv a0, zero
	ld ra, 720(sp)
	ld s8, 712(sp)
	ld s7, 704(sp)
	ld s4, 696(sp)
	ld s3, 688(sp)
	ld s2, 680(sp)
	ld s6, 672(sp)
	ld s1, 664(sp)
	ld s5, 656(sp)
	ld s0, 648(sp)
	addi sp, sp, 928
	ret
label4:
	li a0, 5
	blt s0, a0, label6
	j label10
