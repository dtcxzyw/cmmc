.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -608
	sd s0, 80(sp)
	addi a3, sp, 224
	sd s5, 136(sp)
	addi s0, sp, 496
	sd s1, 168(sp)
	sd s6, 216(sp)
	sd s3, 144(sp)
	sd s7, 488(sp)
	sd s8, 112(sp)
	sd s9, 104(sp)
	sd s10, 96(sp)
	sd s4, 0(sp)
	sd s2, 8(sp)
	sd s11, 480(sp)
	sd ra, 16(sp)
	sd a3, 120(sp)
	jal getint
	mv t2, a0
	sd a0, 64(sp)
	jal getint
	mv t3, a0
	sd a0, 592(sp)
	jal getint
	mv t4, a0
	sd a0, 584(sp)
	jal getint
	mv t5, a0
	sd a0, 576(sp)
	jal getint
	mv t6, a0
	sd a0, 568(sp)
	jal getint
	sd a0, 88(sp)
	mv a6, a0
	jal getint
	sd a0, 192(sp)
	mv a7, a0
	jal getint
	sd a0, 184(sp)
	mv s1, a0
	jal getint
	sd a0, 160(sp)
	mv s1, a0
	jal getint
	sd a0, 72(sp)
	mv s3, a0
	jal getint
	sd a0, 128(sp)
	mv s5, a0
	jal getint
	sd a0, 176(sp)
	mv s6, a0
	jal getint
	sd a0, 200(sp)
	mv s7, a0
	jal getint
	sd a0, 152(sp)
	mv s8, a0
	jal getint
	sd a0, 208(sp)
	mv s9, a0
	jal getint
	sd a0, 600(sp)
	mv s10, a0
	ld t2, 64(sp)
	sw t2, 496(sp)
	ld t3, 592(sp)
	sw t3, 500(sp)
	ld t4, 584(sp)
	sw t4, 504(sp)
	ld t5, 576(sp)
	sw t5, 508(sp)
	ld t6, 568(sp)
	sw t6, 512(sp)
	ld a6, 88(sp)
	sw a6, 516(sp)
	ld a7, 192(sp)
	sw a7, 520(sp)
	ld s1, 184(sp)
	sw s1, 524(sp)
	ld s1, 160(sp)
	sw s1, 528(sp)
	ld s3, 72(sp)
	sw s3, 532(sp)
	ld s5, 128(sp)
	sw s5, 536(sp)
	ld s6, 176(sp)
	sw s6, 540(sp)
	ld s7, 200(sp)
	sw s7, 544(sp)
	ld s8, 152(sp)
	sw s8, 548(sp)
	ld s9, 208(sp)
	sw s9, 552(sp)
	sw a0, 556(sp)
	mv a0, zero
	li a1, 15
	bge zero, a1, label10
	li a2, 1
	mv a1, a2
	li a3, 16
	bge a2, a3, label91
	sh2add a4, a2, s0
	mv a5, s0
	lw a3, 0(s0)
	lw a4, 0(a4)
	bge a3, a4, label9
	sw a4, 0(s0)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a1, a2, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a4, a1, s0
	lw a3, 0(s0)
	lw a4, 0(a4)
	bge a3, a4, label9
	sw a4, 0(s0)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a4, a1, s0
	lw a3, 0(s0)
	lw a4, 0(a4)
	bge a3, a4, label9
	sw a4, 0(s0)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a4, a1, s0
	lw a3, 0(s0)
	lw a4, 0(a4)
	bge a3, a4, label9
	sw a4, 0(s0)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
label572:
	sh2add a4, a1, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bge a3, a4, label9
	j label570
label91:
	mv a0, a2
	li a1, 15
	bge a2, a1, label10
	addiw a2, a2, 1
	mv a1, a2
	li a3, 16
	bge a2, a3, label91
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bge a3, a4, label9
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a1, a2, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bge a3, a4, label9
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bge a3, a4, label9
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bge a3, a4, label9
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
	j label572
label10:
	lw s4, 496(sp)
	lw s2, 500(sp)
	lw t6, 504(sp)
	lw s11, 508(sp)
	lw t5, 512(sp)
	lw t4, 516(sp)
	lw t3, 520(sp)
	lw t2, 524(sp)
	lw a0, 528(sp)
	lw a1, 532(sp)
	lw a2, 536(sp)
	lw a3, 540(sp)
	lw a4, 544(sp)
	lw a5, 548(sp)
	lw t0, 552(sp)
	lw t1, 556(sp)
	bne s4, zero, label141
	j label11
label141:
	sd s4, 56(sp)
	sd s11, 48(sp)
	mv s4, t6
	sd t5, 40(sp)
	mv s11, t5
	sd t4, 32(sp)
	mv s11, t4
	sd t3, 24(sp)
	mv s11, t3
	sd t2, 560(sp)
	mv s11, t2
	ld t2, 64(sp)
	ld t3, 592(sp)
	ld t4, 584(sp)
	ld t5, 576(sp)
	ld t6, 568(sp)
	ld a6, 88(sp)
	ld a7, 192(sp)
	ld s1, 184(sp)
	mv s0, s1
	ld s1, 160(sp)
	ld s3, 72(sp)
	ld s5, 128(sp)
	ld s6, 176(sp)
	ld s7, 200(sp)
	ld s8, 152(sp)
	ld s9, 208(sp)
	ld s10, 600(sp)
	j label16
label9:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a4, a1, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bge a3, a4, label9
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bge a3, a4, label9
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bge a3, a4, label9
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bge a3, a4, label9
label570:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a1, s0
	sw a3, 0(a4)
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label91
	sh2add a4, a1, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	bge a3, a4, label9
	j label570
label11:
	sw s2, 224(sp)
	li a0, 8848
	sw a0, 228(sp)
	li a0, 1
	sd zero, 232(sp)
	sd zero, 240(sp)
	sd zero, 248(sp)
	sd zero, 256(sp)
	sd zero, 264(sp)
	sd zero, 272(sp)
	sd zero, 280(sp)
	sd zero, 288(sp)
	sd zero, 296(sp)
	sd zero, 304(sp)
	sd zero, 312(sp)
	sd zero, 320(sp)
	sd zero, 328(sp)
	sd zero, 336(sp)
	sd zero, 344(sp)
	sd zero, 352(sp)
	sd zero, 360(sp)
	sd zero, 368(sp)
	sd zero, 376(sp)
	sd zero, 384(sp)
	sd zero, 392(sp)
	sd zero, 400(sp)
	sd zero, 408(sp)
	sd zero, 416(sp)
	sd zero, 424(sp)
	sd zero, 432(sp)
	sd zero, 440(sp)
	sd zero, 448(sp)
	sd zero, 456(sp)
	sd zero, 464(sp)
	sd zero, 472(sp)
	j label13
label16:
	addw s2, s2, s4
	li s11, 288737297
	mul s4, s2, s11
	srai s11, s4, 58
	srli s4, s4, 63
	add s4, s4, s11
	li s11, 998244353
	mulw s4, s4, s11
	subw s2, s2, s4
	ld s4, 56(sp)
	addiw s4, s4, -1
	bne s4, zero, label444
	j label11
label444:
	sd s4, 56(sp)
	ld s11, 48(sp)
	mv s4, s11
	ld s11, 40(sp)
	sd s11, 48(sp)
	ld s11, 32(sp)
	sd s11, 40(sp)
	ld s11, 24(sp)
	sd s11, 32(sp)
	ld s11, 560(sp)
	sd s11, 24(sp)
	sd a0, 560(sp)
	mv s11, a0
	mv a0, a1
	mv a1, a2
	mv a2, a3
	mv a3, a4
	mv a4, a5
	mv a5, t0
	mv t0, t1
	mv t1, t2
	mv t2, t3
	mv t3, t4
	mv t4, t5
	mv t5, t6
	mv t6, a6
	mv a6, a7
	mv a7, s0
	mv s0, s1
	mv s1, s3
	mv s3, s5
	mv s5, s6
	mv s6, s7
	mv s7, s8
	mv s8, s9
	mv s9, s10
	mv s10, zero
	j label16
label13:
	ld a3, 120(sp)
	sh3add a1, a0, a3
	addiw a0, a0, 4
	lw a2, -4(a1)
	addiw a4, a2, -1
	sw a4, 0(a1)
	lw a3, -8(a1)
	addiw a5, a3, -3
	addiw a4, a3, -2
	sw a4, 4(a1)
	addiw a4, a2, -3
	sw a5, 8(a1)
	addiw a5, a2, -4
	sw a4, 12(a1)
	addiw a2, a2, -6
	addiw a4, a3, -5
	sw a5, 16(a1)
	addiw a3, a3, -6
	sw a4, 20(a1)
	sw a3, 24(a1)
	sw a2, 28(a1)
	li a1, 29
	bge a0, a1, label15
	j label13
label15:
	ld a3, 120(sp)
	sh3add a0, a0, a3
	lw a1, -4(a0)
	addiw a3, a1, -1
	sw a3, 0(a0)
	lw a2, -8(a0)
	addiw a4, a2, -3
	addiw a3, a2, -2
	addiw a2, a2, -5
	sw a3, 4(a0)
	addiw a3, a1, -3
	sw a4, 8(a0)
	addiw a1, a1, -4
	sw a3, 12(a0)
	sw a1, 16(a0)
	sw a2, 20(a0)
	lw a1, 224(sp)
	lw a3, 228(sp)
	lw a2, 232(sp)
	addw a0, a1, a3
	lw a3, 236(sp)
	addw a1, a0, a2
	lw a2, 240(sp)
	addw a0, a1, a3
	lw a3, 244(sp)
	addw a1, a0, a2
	lw a2, 248(sp)
	addw a0, a1, a3
	addw a1, a0, a2
	lw a0, 252(sp)
	addw a2, a1, a0
	lw a1, 256(sp)
	addw a0, a2, a1
	lw a2, 260(sp)
	lw a3, 264(sp)
	addw a1, a0, a2
	lw a2, 268(sp)
	addw a0, a1, a3
	lw a3, 272(sp)
	addw a1, a0, a2
	lw a2, 276(sp)
	addw a0, a1, a3
	lw a3, 280(sp)
	addw a1, a0, a2
	lw a4, 284(sp)
	addw a0, a1, a3
	lw a2, 288(sp)
	addw a1, a0, a4
	addw a0, a1, a2
	lw a1, 292(sp)
	addw a2, a0, a1
	lw a0, 296(sp)
	lw a3, 300(sp)
	addw a1, a2, a0
	lw a2, 304(sp)
	addw a0, a1, a3
	lw a4, 308(sp)
	addw a1, a0, a2
	lw a3, 312(sp)
	addw a0, a1, a4
	lw a2, 316(sp)
	addw a1, a0, a3
	lw a3, 320(sp)
	addw a0, a1, a2
	lw a2, 324(sp)
	addw a1, a0, a3
	lw a3, 328(sp)
	addw a0, a1, a2
	addw a1, a0, a3
	lw a0, 332(sp)
	addw a2, a1, a0
	lw a1, 336(sp)
	addw a0, a2, a1
	lw a2, 340(sp)
	lw a3, 344(sp)
	addw a1, a0, a2
	lw a2, 348(sp)
	addw a0, a1, a3
	lw a3, 352(sp)
	addw a1, a0, a2
	lw a2, 356(sp)
	addw a0, a1, a3
	addw a1, a0, a2
	lw a0, 360(sp)
	addw a2, a1, a0
	lw a1, 364(sp)
	addw a0, a2, a1
	lw a2, 368(sp)
	addw a1, a0, a2
	lw a0, 372(sp)
	addw a2, a1, a0
	lw a1, 376(sp)
	addw a0, a2, a1
	lw a2, 380(sp)
	lw a3, 384(sp)
	addw a1, a0, a2
	addw a0, a1, a3
	lw a1, 388(sp)
	addw a2, a0, a1
	lw a0, 392(sp)
	lw a3, 396(sp)
	addw a1, a2, a0
	lw a2, 400(sp)
	addw a0, a1, a3
	lw a3, 404(sp)
	addw a1, a0, a2
	lw a2, 408(sp)
	addw a0, a1, a3
	addw a1, a0, a2
	lw a0, 412(sp)
	addw a2, a1, a0
	lw a1, 416(sp)
	addw a0, a2, a1
	lw a2, 420(sp)
	lw a3, 424(sp)
	addw a1, a0, a2
	addw a0, a1, a3
	lw a1, 428(sp)
	addw a2, a0, a1
	lw a0, 432(sp)
	addw a1, a2, a0
	lw a2, 436(sp)
	addw a0, a1, a2
	lw a1, 440(sp)
	addw a2, a0, a1
	lw a0, 444(sp)
	addw a1, a2, a0
	lw a2, 448(sp)
	lw a3, 452(sp)
	addw a0, a1, a2
	lw a2, 456(sp)
	addw a1, a0, a3
	addw a0, a1, a2
	lw a1, 460(sp)
	addw a2, a0, a1
	lw a0, 464(sp)
	addw a1, a2, a0
	lw a2, 468(sp)
	lw a3, 472(sp)
	addw a0, a1, a2
	lw a2, 476(sp)
	addw a1, a0, a3
	addw a0, a1, a2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 16(sp)
	ld s11, 480(sp)
	ld s2, 8(sp)
	ld s4, 0(sp)
	ld s10, 96(sp)
	ld s9, 104(sp)
	ld s8, 112(sp)
	ld s7, 488(sp)
	ld s3, 144(sp)
	ld s6, 216(sp)
	ld s1, 168(sp)
	ld s5, 136(sp)
	ld s0, 80(sp)
	addi sp, sp, 608
	ret
