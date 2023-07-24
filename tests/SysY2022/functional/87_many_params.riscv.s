.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -608
	sd s0, 464(sp)
	addi a3, sp, 104
	addi s0, sp, 488
	sd s5, 480(sp)
	sd s1, 440(sp)
	sd s6, 416(sp)
	sd s3, 400(sp)
	sd s7, 376(sp)
	sd s8, 360(sp)
	sd s9, 96(sp)
	sd s10, 88(sp)
	sd s4, 552(sp)
	sd s2, 0(sp)
	sd s11, 8(sp)
	sd ra, 16(sp)
	sd a3, 368(sp)
	jal getint
	mv t2, a0
	sd a0, 600(sp)
	jal getint
	mv t3, a0
	sd a0, 584(sp)
	jal getint
	mv t4, a0
	sd a0, 576(sp)
	jal getint
	mv t5, a0
	sd a0, 568(sp)
	jal getint
	mv t6, a0
	sd a0, 560(sp)
	jal getint
	sd a0, 80(sp)
	mv a6, a0
	jal getint
	sd a0, 456(sp)
	mv a7, a0
	jal getint
	sd a0, 72(sp)
	mv s1, a0
	jal getint
	sd a0, 432(sp)
	mv s1, a0
	jal getint
	sd a0, 472(sp)
	mv s3, a0
	jal getint
	sd a0, 392(sp)
	mv s5, a0
	jal getint
	sd a0, 448(sp)
	mv s6, a0
	jal getint
	sd a0, 424(sp)
	mv s7, a0
	jal getint
	sd a0, 408(sp)
	mv s8, a0
	jal getint
	sd a0, 384(sp)
	mv s9, a0
	jal getint
	mv s10, a0
	sd a0, 592(sp)
	ld t2, 600(sp)
	sw t2, 488(sp)
	ld t3, 584(sp)
	sw t3, 492(sp)
	ld t4, 576(sp)
	sw t4, 496(sp)
	ld t5, 568(sp)
	sw t5, 500(sp)
	ld t6, 560(sp)
	sw t6, 504(sp)
	ld a6, 80(sp)
	sw a6, 508(sp)
	ld a7, 456(sp)
	sw a7, 512(sp)
	ld s1, 72(sp)
	sw s1, 516(sp)
	ld s1, 432(sp)
	sw s1, 520(sp)
	ld s3, 472(sp)
	sw s3, 524(sp)
	ld s5, 392(sp)
	sw s5, 528(sp)
	ld s6, 448(sp)
	sw s6, 532(sp)
	ld s7, 424(sp)
	sw s7, 536(sp)
	ld s8, 408(sp)
	sw s8, 540(sp)
	ld s9, 384(sp)
	sw s9, 544(sp)
	sw a0, 548(sp)
	mv a0, zero
	li a1, 15
	bge zero, a1, label10
label4:
	addiw a1, a0, 1
	mv a2, a1
	li a3, 16
	blt a1, a3, label7
	mv a0, a1
	li a1, 15
	blt a0, a1, label4
	j label10
label7:
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	blt a3, a4, label8
	addiw a2, a2, 1
	li a3, 16
	blt a2, a3, label7
	mv a0, a1
	li a1, 15
	blt a0, a1, label4
	j label10
label8:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	li a3, 16
	blt a2, a3, label7
	mv a0, a1
	li a1, 15
	blt a0, a1, label4
label10:
	lw s4, 488(sp)
	lw s2, 492(sp)
	lw t6, 496(sp)
	lw s11, 500(sp)
	lw t5, 504(sp)
	lw t4, 508(sp)
	lw t3, 512(sp)
	lw t2, 516(sp)
	lw a1, 520(sp)
	lw a0, 524(sp)
	lw a2, 528(sp)
	lw a3, 532(sp)
	lw a4, 536(sp)
	lw a5, 540(sp)
	lw t0, 544(sp)
	lw t1, 548(sp)
	beq s4, zero, label11
	sd s4, 64(sp)
	sd s11, 56(sp)
	mv s4, t6
	sd t5, 48(sp)
	mv s11, t5
	sd t4, 40(sp)
	mv s11, t4
	sd t3, 32(sp)
	mv s11, t3
	sd t2, 24(sp)
	mv s11, t2
	ld t2, 600(sp)
	ld t3, 584(sp)
	ld t4, 576(sp)
	ld t5, 568(sp)
	ld t6, 560(sp)
	ld a6, 80(sp)
	ld a7, 456(sp)
	ld s1, 72(sp)
	mv s0, s1
	ld s1, 432(sp)
	ld s3, 472(sp)
	ld s5, 392(sp)
	ld s6, 448(sp)
	ld s7, 424(sp)
	ld s8, 408(sp)
	ld s9, 384(sp)
	ld s10, 592(sp)
	j label16
label11:
	sw s2, 104(sp)
	li a0, 8848
	sw a0, 108(sp)
	li a0, 1
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	sd zero, 192(sp)
	sd zero, 200(sp)
	sd zero, 208(sp)
	sd zero, 216(sp)
	sd zero, 224(sp)
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
label13:
	ld a3, 368(sp)
	sh3add a1, a0, a3
	addiw a0, a0, 4
	lw a2, -4(a1)
	addi a4, a2, -1
	sw a4, 0(a1)
	lw a3, -8(a1)
	addi a5, a3, -3
	addi a4, a3, -2
	sw a4, 4(a1)
	addi a4, a2, -3
	sw a5, 8(a1)
	addi a5, a2, -4
	sw a4, 12(a1)
	addi a2, a2, -6
	addi a4, a3, -5
	sw a5, 16(a1)
	addi a3, a3, -6
	sw a4, 20(a1)
	sw a3, 24(a1)
	sw a2, 28(a1)
	li a1, 29
	blt a0, a1, label13
	ld a3, 368(sp)
	sh3add a0, a0, a3
	lw a1, -4(a0)
	addi a3, a1, -1
	sw a3, 0(a0)
	lw a2, -8(a0)
	addi a4, a2, -3
	addi a3, a2, -2
	addi a2, a2, -5
	sw a3, 4(a0)
	addi a3, a1, -3
	sw a4, 8(a0)
	addi a1, a1, -4
	sw a3, 12(a0)
	sw a1, 16(a0)
	sw a2, 20(a0)
	lw a1, 104(sp)
	lw a3, 108(sp)
	lw a2, 112(sp)
	addw a0, a1, a3
	lw a3, 116(sp)
	addw a1, a0, a2
	lw a2, 120(sp)
	addw a0, a1, a3
	lw a3, 124(sp)
	addw a1, a0, a2
	lw a2, 128(sp)
	addw a0, a1, a3
	addw a1, a0, a2
	lw a0, 132(sp)
	addw a2, a1, a0
	lw a1, 136(sp)
	addw a0, a2, a1
	lw a2, 140(sp)
	lw a3, 144(sp)
	addw a1, a0, a2
	lw a2, 148(sp)
	addw a0, a1, a3
	lw a3, 152(sp)
	addw a1, a0, a2
	lw a2, 156(sp)
	addw a0, a1, a3
	addw a1, a0, a2
	lw a0, 160(sp)
	addw a2, a1, a0
	lw a1, 164(sp)
	addw a0, a2, a1
	lw a2, 168(sp)
	lw a3, 172(sp)
	addw a1, a0, a2
	lw a2, 176(sp)
	addw a0, a1, a3
	lw a3, 180(sp)
	addw a1, a0, a2
	lw a2, 184(sp)
	addw a0, a1, a3
	lw a4, 188(sp)
	addw a1, a0, a2
	lw a3, 192(sp)
	addw a0, a1, a4
	lw a2, 196(sp)
	addw a1, a0, a3
	addw a0, a1, a2
	lw a1, 200(sp)
	addw a2, a0, a1
	lw a0, 204(sp)
	lw a3, 208(sp)
	addw a1, a2, a0
	lw a2, 212(sp)
	addw a0, a1, a3
	lw a3, 216(sp)
	addw a1, a0, a2
	lw a2, 220(sp)
	addw a0, a1, a3
	lw a3, 224(sp)
	addw a1, a0, a2
	lw a2, 228(sp)
	addw a0, a1, a3
	lw a3, 232(sp)
	addw a1, a0, a2
	lw a2, 236(sp)
	addw a0, a1, a3
	addw a1, a0, a2
	lw a0, 240(sp)
	addw a2, a1, a0
	lw a1, 244(sp)
	addw a0, a2, a1
	lw a2, 248(sp)
	addw a1, a0, a2
	lw a0, 252(sp)
	addw a2, a1, a0
	lw a1, 256(sp)
	addw a0, a2, a1
	lw a2, 260(sp)
	lw a3, 264(sp)
	addw a1, a0, a2
	addw a0, a1, a3
	lw a1, 268(sp)
	addw a2, a0, a1
	lw a0, 272(sp)
	addw a1, a2, a0
	lw a2, 276(sp)
	lw a3, 280(sp)
	addw a0, a1, a2
	lw a2, 284(sp)
	addw a1, a0, a3
	lw a3, 288(sp)
	addw a0, a1, a2
	addw a1, a0, a3
	lw a0, 292(sp)
	addw a2, a1, a0
	lw a1, 296(sp)
	addw a0, a2, a1
	lw a2, 300(sp)
	lw a3, 304(sp)
	addw a1, a0, a2
	addw a0, a1, a3
	lw a1, 308(sp)
	addw a2, a0, a1
	lw a0, 312(sp)
	addw a1, a2, a0
	lw a2, 316(sp)
	addw a0, a1, a2
	lw a1, 320(sp)
	addw a2, a0, a1
	lw a0, 324(sp)
	addw a1, a2, a0
	lw a2, 328(sp)
	lw a3, 332(sp)
	addw a0, a1, a2
	lw a2, 336(sp)
	addw a1, a0, a3
	addw a0, a1, a2
	lw a1, 340(sp)
	addw a2, a0, a1
	lw a0, 344(sp)
	addw a1, a2, a0
	lw a2, 348(sp)
	lw a3, 352(sp)
	addw a0, a1, a2
	lw a2, 356(sp)
	addw a1, a0, a3
	addw a0, a1, a2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 16(sp)
	ld s11, 8(sp)
	ld s2, 0(sp)
	ld s4, 552(sp)
	ld s10, 88(sp)
	ld s9, 96(sp)
	ld s8, 360(sp)
	ld s7, 376(sp)
	ld s3, 400(sp)
	ld s6, 416(sp)
	ld s1, 440(sp)
	ld s5, 480(sp)
	ld s0, 464(sp)
	addi sp, sp, 608
	ret
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
	ld s4, 64(sp)
	addiw s4, s4, -1
	beq s4, zero, label11
	sd s4, 64(sp)
	ld s11, 56(sp)
	mv s4, s11
	ld s11, 48(sp)
	sd s11, 56(sp)
	ld s11, 40(sp)
	sd s11, 48(sp)
	ld s11, 32(sp)
	sd s11, 40(sp)
	ld s11, 24(sp)
	sd s11, 32(sp)
	sd a1, 24(sp)
	mv s11, a1
	mv a1, a0
	mv a0, a2
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
