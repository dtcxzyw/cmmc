.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
params_f40:
.p2align 2
	addi sp, sp, -376
	sd s1, 296(sp)
	addi s1, sp, 256
	fsw f25, 304(sp)
	fsw f24, 372(sp)
	fsw f23, 368(sp)
	fsw f19, 364(sp)
	fsw f20, 360(sp)
	fsw f18, 356(sp)
	fsw f8, 352(sp)
	fsw f21, 308(sp)
	fsw f22, 312(sp)
	fsw f9, 316(sp)
	fsw f27, 320(sp)
	fmv.w.x f27, zero
	sd s0, 328(sp)
	mv s0, a0
	fsw f26, 336(sp)
	sd ra, 344(sp)
	flw f0, 376(sp)
	flw f9, 384(sp)
	flw f21, 392(sp)
	flw f8, 400(sp)
	flw f3, 408(sp)
	flw f18, 416(sp)
	flw f20, 424(sp)
	flw f19, 432(sp)
	flw f4, 440(sp)
	flw f30, 448(sp)
	flw f29, 456(sp)
	flw f31, 464(sp)
	flw f2, 472(sp)
	flw f23, 480(sp)
	flw f22, 488(sp)
	flw f24, 496(sp)
	flw f5, 504(sp)
	flw f7, 512(sp)
	flw f6, 520(sp)
	flw f28, 528(sp)
	flw f1, 536(sp)
	flw f25, 544(sp)
	flw f26, 624(sp)
	feq.s a0, f26, f27
	bne a0, zero, label1033
	fadd.s f11, f10, f11
	li a0, 10
	fadd.s f10, f11, f12
	fadd.s f11, f14, f15
	fadd.s f12, f10, f13
	fsw f12, 256(sp)
	fadd.s f12, f11, f16
	fadd.s f11, f0, f9
	fadd.s f10, f12, f17
	fadd.s f12, f11, f21
	fsw f10, 260(sp)
	fadd.s f10, f12, f8
	fadd.s f12, f3, f18
	fsw f10, 264(sp)
	fadd.s f10, f12, f20
	fadd.s f11, f10, f19
	fadd.s f10, f4, f30
	fsw f11, 268(sp)
	fadd.s f12, f10, f29
	fadd.s f11, f12, f31
	fadd.s f12, f2, f23
	fsw f11, 272(sp)
	fadd.s f10, f12, f22
	fadd.s f11, f10, f24
	fadd.s f10, f5, f7
	fsw f11, 276(sp)
	fadd.s f12, f10, f6
	fadd.s f10, f1, f25
	fadd.s f11, f12, f28
	fsw f11, 280(sp)
	flw f1, 552(sp)
	flw f2, 560(sp)
	fadd.s f11, f10, f1
	fadd.s f10, f11, f2
	fsw f10, 284(sp)
	flw f1, 576(sp)
	flw f3, 568(sp)
	flw f2, 584(sp)
	fadd.s f11, f3, f1
	flw f1, 592(sp)
	fadd.s f10, f11, f2
	fadd.s f11, f10, f1
	fsw f11, 288(sp)
	flw f1, 608(sp)
	flw f3, 600(sp)
	flw f2, 616(sp)
	fadd.s f10, f3, f1
	fadd.s f11, f10, f2
	fadd.s f10, f11, f26
	fsw f10, 292(sp)
	mv a1, s1
	jal putfarray
	lw a0, 0(s0)
	sh2add a1, a0, s1
	flw f10, 0(a1)
label1031:
	ld ra, 344(sp)
	flw f26, 336(sp)
	ld s0, 328(sp)
	flw f27, 320(sp)
	flw f9, 316(sp)
	flw f22, 312(sp)
	flw f21, 308(sp)
	flw f8, 352(sp)
	flw f18, 356(sp)
	flw f20, 360(sp)
	flw f19, 364(sp)
	flw f23, 368(sp)
	flw f24, 372(sp)
	flw f25, 304(sp)
	ld s1, 296(sp)
	addi sp, sp, 376
	ret
label1033:
	fadd.s f26, f10, f11
	fsw f9, 0(sp)
	fsw f21, 8(sp)
	fsw f8, 16(sp)
	fsw f3, 24(sp)
	fsw f18, 32(sp)
	fadd.s f10, f26, f12
	fsw f20, 40(sp)
	fsw f19, 48(sp)
	fsw f4, 56(sp)
	fsw f30, 64(sp)
	fsw f29, 72(sp)
	fsw f31, 80(sp)
	fsw f2, 88(sp)
	fsw f23, 96(sp)
	fsw f22, 104(sp)
	fsw f24, 112(sp)
	fsw f5, 120(sp)
	fsw f7, 128(sp)
	fsw f6, 136(sp)
	fsw f28, 144(sp)
	fsw f1, 152(sp)
	fsw f25, 160(sp)
	flw f1, 552(sp)
	fsw f1, 168(sp)
	flw f2, 560(sp)
	fsw f2, 176(sp)
	flw f3, 568(sp)
	fsw f3, 184(sp)
	flw f1, 576(sp)
	fsw f1, 192(sp)
	flw f2, 584(sp)
	fsw f2, 200(sp)
	flw f1, 592(sp)
	fsw f1, 208(sp)
	flw f3, 600(sp)
	fsw f3, 216(sp)
	flw f1, 608(sp)
	fsw f1, 224(sp)
	flw f2, 616(sp)
	fsw f2, 232(sp)
	flw f26, 624(sp)
	fsw f26, 240(sp)
	fsw f10, 248(sp)
	fmv.s f10, f11
	fmv.s f11, f12
	fmv.s f12, f13
	fmv.s f13, f14
	fmv.s f14, f15
	fmv.s f15, f16
	fmv.s f16, f17
	fmv.s f17, f0
	mv a0, s0
	jal params_f40
	j label1031
params_f40_i24:
.p2align 2
	addi sp, sp, -656
	fmv.s f2, f15
	sd s2, 544(sp)
	fsw f24, 432(sp)
	sd s6, 480(sp)
	fsw f18, 440(sp)
	fsw f8, 436(sp)
	sd s11, 496(sp)
	fsw f23, 424(sp)
	fsw f20, 444(sp)
	sd s8, 392(sp)
	addi s8, sp, 504
	fsw f19, 400(sp)
	sd s7, 408(sp)
	sd s4, 648(sp)
	fsw f9, 640(sp)
	sd s3, 632(sp)
	sd s5, 624(sp)
	fsw f27, 620(sp)
	fsw f22, 616(sp)
	sd s10, 608(sp)
	fsw f21, 600(sp)
	sd s9, 592(sp)
	fsw f25, 588(sp)
	fsw f26, 584(sp)
	sd s0, 576(sp)
	addi s0, sp, 448
	sd s1, 568(sp)
	sd ra, 560(sp)
	fsw f15, 552(sp)
	fsw f17, 488(sp)
	fsw f16, 428(sp)
	ld t0, 656(sp)
	flw f6, 664(sp)
	flw f27, 672(sp)
	flw f30, 680(sp)
	flw f16, 696(sp)
	ld t3, 704(sp)
	flw f15, 712(sp)
	ld t2, 720(sp)
	ld t1, 728(sp)
	flw f4, 736(sp)
	flw f0, 744(sp)
	flw f3, 752(sp)
	flw f18, 760(sp)
	flw f2, 768(sp)
	ld s3, 776(sp)
	ld t4, 792(sp)
	flw f5, 800(sp)
	flw f31, 808(sp)
	flw f9, 816(sp)
	ld t5, 832(sp)
	ld s4, 840(sp)
	flw f19, 848(sp)
	flw f20, 856(sp)
	flw f8, 864(sp)
	ld s5, 872(sp)
	flw f1, 880(sp)
	ld s11, 888(sp)
	ld s6, 896(sp)
	flw f7, 904(sp)
	flw f29, 912(sp)
	flw f24, 920(sp)
	flw f28, 928(sp)
	ld s2, 936(sp)
	ld t6, 944(sp)
	ld s7, 952(sp)
	flw f23, 960(sp)
	flw f22, 968(sp)
	flw f21, 976(sp)
	flw f17, 984(sp)
	flw f25, 1000(sp)
	ld s9, 1008(sp)
	flw f26, 1016(sp)
	ld s10, 1024(sp)
	sd s0, 416(sp)
	beq a0, zero, label729
	fadd.s f27, f8, f27
	addw a1, a1, a3
	addw a0, a0, a6
	fadd.s f11, f11, f18
	addw s1, a7, a1
	addw a1, a4, a5
	addw s2, s2, a1
	fadd.s f26, f27, f26
	addw a1, a2, t3
	addw s3, s3, a1
	addw a1, t2, s4
	addw s4, s11, a1
	addw a1, t1, s5
	fadd.s f8, f26, f14
	addw s5, s10, a1
	fadd.s f14, f10, f9
	addw a1, t4, s6
	addw s6, s9, a1
	addw s9, t6, a0
	addw a1, t0, t5
	li a0, 10
	addw s7, s7, a1
	fsw f8, 504(sp)
	fadd.s f10, f14, f16
	fadd.s f9, f10, f13
	fadd.s f10, f11, f20
	fsw f9, 508(sp)
	fadd.s f18, f10, f30
	fadd.s f10, f6, f24
	fsw f18, 512(sp)
	fadd.s f11, f10, f19
	fadd.s f10, f31, f25
	fadd.s f19, f11, f12
	fadd.s f11, f10, f23
	fsw f19, 516(sp)
	fadd.s f20, f11, f22
	fadd.s f11, f4, f5
	fsw f20, 520(sp)
	fadd.s f12, f11, f21
	fadd.s f11, f29, f2
	fadd.s f10, f12, f3
	fsw f10, 556(sp)
	fsw f10, 524(sp)
	fadd.s f10, f11, f17
	fadd.s f21, f10, f7
	fsw f21, 528(sp)
	flw f2, 552(sp)
	flw f17, 488(sp)
	fadd.s f10, f2, f28
	fadd.s f11, f10, f17
	fadd.s f22, f11, f1
	fadd.s f11, f15, f0
	fsw f22, 532(sp)
	flw f0, 824(sp)
	flw f15, 1032(sp)
	fadd.s f10, f11, f0
	fadd.s f11, f10, f15
	fsw f11, 536(sp)
	flw f16, 428(sp)
	flw f15, 992(sp)
	flw f6, 688(sp)
	fadd.s f11, f15, f16
	flw f15, 784(sp)
	fadd.s f10, f11, f6
	fadd.s f11, f10, f15
	fsw f11, 540(sp)
	sw s1, 448(sp)
	sw s2, 452(sp)
	sw s3, 456(sp)
	sw s4, 460(sp)
	sw s5, 464(sp)
	sw s6, 468(sp)
	sw s7, 472(sp)
	sw s9, 476(sp)
	mv a1, s8
	jal putfarray
	li a0, 8
	ld s0, 416(sp)
	mv a1, s0
	jal putarray
	fcvt.s.w f11, s1
	fsub.s f10, f11, f8
	fcvt.s.w f11, s2
	fcvt.w.s a0, f10, rtz
	fsub.s f10, f11, f9
	sw a0, 448(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s3
	fsub.s f11, f10, f18
	sw a0, 452(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s4
	fsub.s f10, f11, f19
	sw a0, 456(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s5
	fsub.s f11, f10, f20
	sw a0, 460(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s6
	sw a0, 464(sp)
	flw f10, 556(sp)
	fsub.s f12, f11, f10
	fcvt.s.w f10, s7
	fsub.s f11, f10, f21
	fcvt.s.w f10, s9
	fcvt.w.s a0, f12, rtz
	sw a0, 468(sp)
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f22
	sw a0, 472(sp)
	fcvt.w.s a0, f11, rtz
	sw a0, 476(sp)
	ld t0, 1040(sp)
	lw a0, 0(t0)
	sh2add a1, a0, s0
	lw a2, 0(a1)
	fcvt.s.w f10, a2
label727:
	ld ra, 560(sp)
	ld s1, 568(sp)
	ld s0, 576(sp)
	flw f26, 584(sp)
	flw f25, 588(sp)
	ld s9, 592(sp)
	flw f21, 600(sp)
	ld s10, 608(sp)
	flw f22, 616(sp)
	flw f27, 620(sp)
	ld s5, 624(sp)
	ld s3, 632(sp)
	flw f9, 640(sp)
	ld s4, 648(sp)
	ld s7, 408(sp)
	flw f19, 400(sp)
	ld s8, 392(sp)
	flw f20, 444(sp)
	flw f23, 424(sp)
	ld s11, 496(sp)
	flw f8, 436(sp)
	flw f18, 440(sp)
	ld s6, 480(sp)
	flw f24, 432(sp)
	ld s2, 544(sp)
	addi sp, sp, 656
	ret
label729:
	sd t0, 0(sp)
	fsw f6, 8(sp)
	fsw f27, 16(sp)
	fsw f30, 24(sp)
	flw f6, 688(sp)
	fsw f6, 32(sp)
	fsw f16, 40(sp)
	sd t3, 48(sp)
	fsw f15, 56(sp)
	sd t2, 64(sp)
	sd t1, 72(sp)
	fsw f4, 80(sp)
	fsw f0, 88(sp)
	fsw f3, 96(sp)
	fsw f18, 104(sp)
	fsw f2, 112(sp)
	sd s3, 120(sp)
	flw f15, 784(sp)
	fsw f15, 128(sp)
	sd t4, 136(sp)
	fsw f5, 144(sp)
	fsw f31, 152(sp)
	fsw f9, 160(sp)
	flw f0, 824(sp)
	fsw f0, 168(sp)
	sd t5, 176(sp)
	sd s4, 184(sp)
	fsw f19, 192(sp)
	fsw f20, 200(sp)
	fsw f8, 208(sp)
	sd s5, 216(sp)
	fsw f1, 224(sp)
	sd s11, 232(sp)
	sd s6, 240(sp)
	fsw f7, 248(sp)
	fsw f29, 256(sp)
	fsw f24, 264(sp)
	fsw f28, 272(sp)
	sd s2, 280(sp)
	sd t6, 288(sp)
	sd s7, 296(sp)
	fsw f23, 304(sp)
	fsw f22, 312(sp)
	fsw f21, 320(sp)
	fsw f17, 328(sp)
	flw f15, 992(sp)
	fsw f15, 336(sp)
	fsw f25, 344(sp)
	sd s9, 352(sp)
	fsw f26, 360(sp)
	sd s10, 368(sp)
	flw f15, 1032(sp)
	fsw f15, 376(sp)
	ld t0, 1040(sp)
	sd t0, 384(sp)
	flw f16, 428(sp)
	flw f17, 488(sp)
	flw f2, 552(sp)
	mv a0, a3
	fmv.s f15, f2
	jal params_f40_i24
	j label727
params_fa40:
.p2align 2
	addi sp, sp, -464
	mv t6, a5
	sd s2, 392(sp)
	mv s2, a0
	sd s4, 408(sp)
	mv s4, a1
	sd s3, 424(sp)
	mv s3, a2
	sd s1, 264(sp)
	mv s1, a3
	sd s6, 312(sp)
	sd s0, 320(sp)
	mv s0, a4
	sd s5, 328(sp)
	addi s0, sp, 272
	sd s7, 336(sp)
	sd s8, 344(sp)
	sd s9, 352(sp)
	sd ra, 456(sp)
	sd a1, 448(sp)
	sd a2, 440(sp)
	sd a3, 400(sp)
	sd a4, 416(sp)
	sd a5, 432(sp)
	sd a6, 360(sp)
	sd a7, 368(sp)
	ld a1, 472(sp)
	ld a2, 480(sp)
	ld a3, 488(sp)
	ld a4, 496(sp)
	ld a5, 504(sp)
	ld t0, 512(sp)
	ld t1, 520(sp)
	ld t2, 528(sp)
	ld t3, 536(sp)
	ld t4, 544(sp)
	ld t5, 552(sp)
	ld s5, 560(sp)
	ld s6, 568(sp)
	ld s7, 576(sp)
	ld s8, 584(sp)
	ld a0, 720(sp)
	sd s0, 376(sp)
	lw s9, 0(a0)
	sh2add t6, s9, s2
	sd s9, 384(sp)
	flw f10, 0(t6)
	sh2add t6, s9, s4
	flw f11, 0(t6)
	sh2add t6, s9, s3
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s9, s1
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 272(sp)
	ld s0, 416(sp)
	sh2add a6, s9, s0
	flw f10, 0(a6)
	ld t6, 432(sp)
	sh2add a6, s9, t6
	flw f11, 0(a6)
	ld a6, 360(sp)
	fadd.s f10, f10, f11
	sh2add t6, s9, a6
	sh2add a6, s9, a1
	flw f11, 0(t6)
	sh2add t6, s9, a7
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 276(sp)
	ld s2, 464(sp)
	sh2add t6, s9, s2
	flw f10, 0(t6)
	sh2add t6, s9, a2
	flw f11, 0(a6)
	sh2add a6, s9, a5
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s9, a3
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s9, a4
	fadd.s f10, f10, f11
	fsw f10, 280(sp)
	flw f10, 0(t6)
	sh2add t6, s9, t0
	flw f11, 0(a6)
	sh2add a6, s9, t3
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s9, t1
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s9, t2
	fadd.s f10, f10, f11
	fsw f10, 284(sp)
	flw f10, 0(t6)
	sh2add t6, s9, t4
	flw f11, 0(a6)
	sh2add a6, s9, s6
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s9, t5
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s9, s5
	fadd.s f10, f10, f11
	fsw f10, 288(sp)
	flw f10, 0(t6)
	sh2add t6, s9, s7
	flw f11, 0(a6)
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s9, s8
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 292(sp)
	ld t6, 592(sp)
	sh2add a6, s9, t6
	flw f10, 0(a6)
	ld t6, 600(sp)
	sh2add a6, s9, t6
	flw f11, 0(a6)
	ld t6, 608(sp)
	fadd.s f10, f10, f11
	sh2add a6, s9, t6
	flw f11, 0(a6)
	ld t6, 616(sp)
	fadd.s f10, f10, f11
	sh2add a6, s9, t6
	flw f11, 0(a6)
	fadd.s f10, f10, f11
	fsw f10, 296(sp)
	ld t6, 624(sp)
	sh2add a6, s9, t6
	flw f10, 0(a6)
	ld t6, 632(sp)
	sh2add a6, s9, t6
	flw f11, 0(a6)
	ld t6, 640(sp)
	fadd.s f10, f10, f11
	sh2add a6, s9, t6
	flw f11, 0(a6)
	ld t6, 648(sp)
	fadd.s f10, f10, f11
	sh2add a6, s9, t6
	flw f11, 0(a6)
	fadd.s f10, f10, f11
	fsw f10, 300(sp)
	ld t6, 656(sp)
	sh2add a6, s9, t6
	flw f10, 0(a6)
	ld t6, 664(sp)
	sh2add a6, s9, t6
	flw f11, 0(a6)
	ld t6, 672(sp)
	fadd.s f10, f10, f11
	sh2add a6, s9, t6
	flw f11, 0(a6)
	ld t6, 680(sp)
	fadd.s f10, f10, f11
	sh2add a6, s9, t6
	flw f11, 0(a6)
	fadd.s f10, f10, f11
	fsw f10, 304(sp)
	ld t6, 688(sp)
	sh2add a6, s9, t6
	flw f10, 0(a6)
	ld t6, 696(sp)
	sh2add a6, s9, t6
	flw f11, 0(a6)
	ld t6, 704(sp)
	fadd.s f10, f10, f11
	sh2add a6, s9, t6
	flw f11, 0(a6)
	ld a6, 712(sp)
	fadd.s f10, f10, f11
	sh2add t6, s9, a6
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 308(sp)
	fmv.w.x f10, zero
	flw f11, 0(t6)
	feq.s t6, f11, f10
	xori a7, t6, 1
	fcvt.s.w f11, a7
	feq.s a6, f11, f10
	xori t6, a6, 1
	fcvt.s.w f11, t6
	feq.s a6, f11, f10
	bne a6, zero, label413
	ld s0, 376(sp)
	li a0, 10
	mv a1, s0
	jal putfarray
	ld s9, 384(sp)
	sh2add a0, s9, s0
	flw f10, 0(a0)
label411:
	ld ra, 456(sp)
	ld s9, 352(sp)
	ld s8, 344(sp)
	ld s7, 336(sp)
	ld s5, 328(sp)
	ld s0, 320(sp)
	ld s6, 312(sp)
	ld s1, 264(sp)
	ld s3, 424(sp)
	ld s4, 408(sp)
	ld s2, 392(sp)
	addi sp, sp, 464
	ret
label413:
	sd a1, 0(sp)
	sd a2, 8(sp)
	sd a3, 16(sp)
	sd a4, 24(sp)
	sd a5, 32(sp)
	sd t0, 40(sp)
	sd t1, 48(sp)
	sd t2, 56(sp)
	sd t3, 64(sp)
	sd t4, 72(sp)
	sd t5, 80(sp)
	sd s5, 88(sp)
	sd s6, 96(sp)
	sd s7, 104(sp)
	sd s8, 112(sp)
	ld t6, 592(sp)
	sd t6, 120(sp)
	ld t6, 600(sp)
	sd t6, 128(sp)
	ld t6, 608(sp)
	sd t6, 136(sp)
	ld t6, 616(sp)
	sd t6, 144(sp)
	ld t6, 624(sp)
	sd t6, 152(sp)
	ld t6, 632(sp)
	sd t6, 160(sp)
	ld t6, 640(sp)
	sd t6, 168(sp)
	ld t6, 648(sp)
	sd t6, 176(sp)
	ld t6, 656(sp)
	sd t6, 184(sp)
	ld t6, 664(sp)
	sd t6, 192(sp)
	ld t6, 672(sp)
	sd t6, 200(sp)
	ld t6, 680(sp)
	sd t6, 208(sp)
	ld t6, 688(sp)
	sd t6, 216(sp)
	ld t6, 696(sp)
	sd t6, 224(sp)
	ld t6, 704(sp)
	sd t6, 232(sp)
	ld a6, 712(sp)
	sd a6, 240(sp)
	ld s0, 376(sp)
	sd s0, 248(sp)
	sd a0, 256(sp)
	ld s2, 464(sp)
	ld a7, 368(sp)
	ld a6, 360(sp)
	ld t6, 432(sp)
	ld s0, 416(sp)
	ld s1, 400(sp)
	ld s3, 440(sp)
	ld s4, 448(sp)
	mv a0, s4
	mv a1, s3
	mv a2, s1
	mv a3, s0
	mv a4, t6
	mv a5, a6
	mv a6, a7
	mv a7, s2
	jal params_fa40
	j label411
params_mix:
.p2align 2
	addi sp, sp, -704
	mv t5, a0
	mv t6, a5
	addi t4, sp, 552
	fsw f19, 472(sp)
	sd s7, 448(sp)
	fsw f20, 432(sp)
	sd s8, 480(sp)
	fsw f18, 456(sp)
	sd s6, 392(sp)
	fsw f22, 400(sp)
	fsw f9, 404(sp)
	fsw f21, 408(sp)
	sd s9, 416(sp)
	fsw f8, 696(sp)
	sd s1, 688(sp)
	addi s1, sp, 496
	fsw f25, 680(sp)
	sd s3, 672(sp)
	mv s3, a4
	sd s0, 664(sp)
	mv s0, a3
	sd s4, 656(sp)
	mv s4, a2
	sd s2, 648(sp)
	mv s2, a1
	fsw f23, 644(sp)
	fsw f24, 640(sp)
	fsw f26, 636(sp)
	fsw f27, 632(sp)
	sd s5, 624(sp)
	sd ra, 616(sp)
	sd a1, 600(sp)
	sd a3, 592(sp)
	sd a4, 544(sp)
	sd a5, 536(sp)
	sd a6, 488(sp)
	sd a7, 464(sp)
	ld a0, 704(sp)
	ld a1, 712(sp)
	ld a2, 720(sp)
	ld a3, 728(sp)
	ld a4, 736(sp)
	ld a5, 744(sp)
	ld t0, 752(sp)
	ld t1, 760(sp)
	flw f30, 768(sp)
	flw f31, 776(sp)
	ld t2, 784(sp)
	ld t3, 792(sp)
	flw f28, 824(sp)
	flw f29, 832(sp)
	flw f6, 872(sp)
	flw f7, 880(sp)
	flw f4, 920(sp)
	flw f5, 928(sp)
	flw f2, 984(sp)
	flw f3, 992(sp)
	flw f1, 1032(sp)
	flw f0, 1048(sp)
	flw f25, 1072(sp)
	sd s1, 424(sp)
	sd t4, 608(sp)
	ld t6, 1088(sp)
	lw t4, 0(t6)
	sh2add t6, t4, s4
	sh2add t5, t4, t5
	sh2add a6, t4, t3
	sd t4, 440(sp)
	flw f8, 0(t6)
	sh2add t6, t4, s3
	fadd.s f9, f10, f8
	fadd.s f18, f9, f11
	fadd.s f8, f18, f12
	fsw f8, 552(sp)
	flw f18, 0(t6)
	sh2add t6, t4, a0
	fadd.s f9, f13, f18
	flw f18, 0(t6)
	sh2add t6, t4, a4
	fadd.s f9, f9, f18
	flw f18, 0(t6)
	sh2add t6, t4, a5
	fadd.s f9, f9, f18
	fsw f9, 556(sp)
	flw f18, 0(t6)
	sh2add t6, t4, t0
	fadd.s f20, f18, f14
	fadd.s f19, f20, f15
	fadd.s f18, f19, f16
	fsw f18, 560(sp)
	flw f19, 0(t6)
	fadd.s f20, f19, f17
	fadd.s f21, f20, f30
	fadd.s f19, f21, f31
	fsw f19, 564(sp)
	flw f20, 0(a6)
	ld t6, 816(sp)
	sh2add a6, t4, t6
	flw f22, 0(a6)
	fadd.s f21, f20, f22
	fadd.s f23, f21, f28
	fadd.s f20, f23, f29
	fsw f20, 568(sp)
	ld t6, 856(sp)
	sh2add a6, t4, t6
	flw f21, 0(a6)
	ld t6, 864(sp)
	sh2add a6, t4, t6
	flw f24, 0(a6)
	fadd.s f23, f21, f24
	fadd.s f22, f23, f6
	fadd.s f23, f4, f5
	fadd.s f21, f22, f7
	fsw f21, 572(sp)
	ld t6, 952(sp)
	sh2add a6, t4, t6
	flw f22, 0(a6)
	fadd.s f24, f23, f22
	fadd.s f22, f24, f2
	fsw f22, 576(sp)
	ld t6, 1000(sp)
	sh2add a6, t4, t6
	flw f24, 0(a6)
	ld t6, 1024(sp)
	fadd.s f23, f3, f24
	sh2add a6, t4, t6
	flw f26, 0(a6)
	fadd.s f24, f23, f26
	fadd.s f23, f24, f1
	fsw f23, 580(sp)
	ld t6, 1056(sp)
	sh2add a6, t4, t6
	flw f26, 0(a6)
	ld t6, 1064(sp)
	fadd.s f24, f0, f26
	sh2add a6, t4, t6
	addw t6, s2, s0
	flw f27, 0(a6)
	fadd.s f26, f24, f27
	fadd.s f24, f26, f25
	fmv.w.x f26, zero
	fsw f24, 584(sp)
	fsw f26, 588(sp)
	lw t5, 0(t5)
	addw s0, t5, t6
	sw s0, 496(sp)
	ld t6, 536(sp)
	sh2add a6, t4, t6
	lw t5, 0(a6)
	ld a6, 488(sp)
	addw t6, a6, a7
	addw s2, t5, t6
	sh2add t6, t4, a1
	sw s2, 500(sp)
	lw a6, 0(t6)
	sh2add t6, t4, a2
	addw t5, a3, a6
	lw a6, 0(t6)
	sh2add t6, t4, t2
	addw s3, t5, a6
	sw s3, 504(sp)
	lw a6, 0(t6)
	ld t6, 800(sp)
	addw t5, t1, a6
	sh2add a6, t4, t6
	lw a7, 0(a6)
	addw s4, t5, a7
	sw s4, 508(sp)
	ld t5, 808(sp)
	sh2add a7, t4, t5
	lw t6, 0(a7)
	ld a6, 848(sp)
	addw t5, a6, t6
	ld t6, 840(sp)
	sh2add a6, t4, t6
	lw a7, 0(a6)
	addw s5, t5, a7
	sw s5, 512(sp)
	ld t5, 888(sp)
	sh2add a7, t4, t5
	lw t6, 0(a7)
	ld a6, 904(sp)
	addw t5, a6, t6
	ld t6, 896(sp)
	sh2add a6, t4, t6
	lw a7, 0(a6)
	addw s6, t5, a7
	sw s6, 516(sp)
	ld t6, 936(sp)
	sh2add a6, t4, t6
	lw t5, 0(a6)
	ld t6, 944(sp)
	ld a6, 912(sp)
	addw a7, a6, t6
	addw s7, t5, a7
	sw s7, 520(sp)
	ld t5, 968(sp)
	sh2add a7, t4, t5
	lw t6, 0(a7)
	ld a6, 960(sp)
	addw t5, a6, t6
	ld t6, 976(sp)
	sh2add a7, t4, t6
	lw a6, 0(a7)
	addw s8, t5, a6
	sw s8, 524(sp)
	ld t5, 1016(sp)
	sh2add t6, t4, t5
	lw t4, 0(t6)
	ld t5, 1040(sp)
	ld a6, 1008(sp)
	addw t6, a6, t5
	ld t5, 1080(sp)
	addw a6, t5, t6
	addw s9, t4, a6
	sw s9, 528(sp)
	sw zero, 532(sp)
	bne t5, zero, label4
	j label5
label2:
	ld ra, 616(sp)
	ld s5, 624(sp)
	flw f27, 632(sp)
	flw f26, 636(sp)
	flw f24, 640(sp)
	flw f23, 644(sp)
	ld s2, 648(sp)
	ld s4, 656(sp)
	ld s0, 664(sp)
	ld s3, 672(sp)
	flw f25, 680(sp)
	ld s1, 688(sp)
	flw f8, 696(sp)
	ld s9, 416(sp)
	flw f21, 408(sp)
	flw f9, 404(sp)
	flw f22, 400(sp)
	ld s6, 392(sp)
	flw f18, 456(sp)
	ld s8, 480(sp)
	flw f20, 432(sp)
	ld s7, 448(sp)
	flw f19, 472(sp)
	addi sp, sp, 704
	ret
label4:
	ld t4, 608(sp)
	li a0, 10
	mv a1, t4
	jal putfarray
	li a0, 10
	ld s1, 424(sp)
	mv a1, s1
	jal putarray
	fcvt.s.w f10, s0
	fsub.s f11, f10, f8
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s2
	fsub.s f10, f11, f9
	sw a0, 496(sp)
	fcvt.s.w f11, s3
	fcvt.w.s a0, f10, rtz
	fsub.s f10, f11, f18
	sw a0, 500(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s4
	fsub.s f11, f10, f19
	sw a0, 504(sp)
	fcvt.s.w f10, s5
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f20
	sw a0, 508(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s6
	fsub.s f10, f11, f21
	sw a0, 512(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s7
	fsub.s f11, f10, f22
	sw a0, 516(sp)
	fcvt.s.w f10, s8
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f23
	sw a0, 520(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s9
	fsub.s f10, f11, f24
	sw a0, 524(sp)
	fcvt.w.s a0, f10, rtz
	sw a0, 528(sp)
	ld t4, 440(sp)
	sw zero, 532(sp)
	sh2add a0, t4, s1
	lw a1, 0(a0)
	fcvt.s.w f10, a1
	fmul.s f11, f10, f24
	fcvt.w.s a0, f11, rtz
	j label2
label5:
	fcvt.w.s t4, f25, rtz
	ld t5, 1080(sp)
	sd a0, 0(sp)
	sd a1, 8(sp)
	fcvt.s.w f8, t5
	sd a2, 16(sp)
	sd a3, 24(sp)
	sd a4, 32(sp)
	sd a5, 40(sp)
	sd t0, 48(sp)
	sd t1, 56(sp)
	fsw f30, 64(sp)
	fsw f31, 72(sp)
	sd t2, 80(sp)
	sd t3, 88(sp)
	ld t6, 800(sp)
	sd t6, 96(sp)
	ld t5, 808(sp)
	sd t5, 104(sp)
	ld t6, 816(sp)
	sd t6, 112(sp)
	fsw f28, 120(sp)
	fsw f29, 128(sp)
	ld t6, 840(sp)
	sd t6, 136(sp)
	ld a6, 848(sp)
	sd a6, 144(sp)
	ld t6, 856(sp)
	sd t6, 152(sp)
	ld t6, 864(sp)
	sd t6, 160(sp)
	fsw f6, 168(sp)
	fsw f7, 176(sp)
	ld t5, 888(sp)
	sd t5, 184(sp)
	ld t6, 896(sp)
	sd t6, 192(sp)
	ld a6, 904(sp)
	sd a6, 200(sp)
	ld a6, 912(sp)
	sd a6, 208(sp)
	fsw f4, 216(sp)
	fsw f5, 224(sp)
	ld t6, 936(sp)
	sd t6, 232(sp)
	ld t6, 944(sp)
	sd t6, 240(sp)
	ld t6, 952(sp)
	sd t6, 248(sp)
	ld a6, 960(sp)
	sd a6, 256(sp)
	ld t5, 968(sp)
	sd t5, 264(sp)
	ld t6, 976(sp)
	sd t6, 272(sp)
	fsw f2, 280(sp)
	fsw f3, 288(sp)
	ld t6, 1000(sp)
	sd t6, 296(sp)
	ld a6, 1008(sp)
	sd a6, 304(sp)
	ld t5, 1016(sp)
	sd t5, 312(sp)
	ld t6, 1024(sp)
	sd t6, 320(sp)
	fsw f1, 328(sp)
	ld t5, 1040(sp)
	sd t5, 336(sp)
	fsw f0, 344(sp)
	ld t6, 1056(sp)
	sd t6, 352(sp)
	ld t6, 1064(sp)
	sd t6, 360(sp)
	fsw f8, 368(sp)
	sd t4, 376(sp)
	ld t6, 1088(sp)
	sd t6, 384(sp)
	ld s1, 424(sp)
	ld a7, 464(sp)
	ld a6, 488(sp)
	ld t6, 536(sp)
	ld s3, 544(sp)
	ld s0, 592(sp)
	ld s2, 600(sp)
	ld t4, 608(sp)
	mv a0, s1
	mv a1, s2
	mv a2, t4
	mv a3, s0
	mv a4, s3
	mv a5, t6
	jal params_mix
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -1800
	fsw f26, 1456(sp)
	fsw f20, 1472(sp)
	sd s8, 1488(sp)
	fsw f22, 1512(sp)
	sd s10, 1528(sp)
	fsw f23, 1536(sp)
	sd s11, 1544(sp)
	fsw f21, 1564(sp)
	sd s9, 1568(sp)
	fsw f8, 1596(sp)
	fsw f25, 1604(sp)
	fsw f27, 1612(sp)
	sd s0, 1624(sp)
	addi s0, sp, 488
	sd s6, 1736(sp)
	fsw f18, 1720(sp)
	sd s1, 1704(sp)
	addi s1, sp, 984
	fsw f24, 1688(sp)
	sd s2, 1664(sp)
	addi s2, sp, 1784
	fsw f9, 1440(sp)
	fsw f19, 1768(sp)
	sd s7, 1760(sp)
	sd s4, 1752(sp)
	sd s5, 1744(sp)
	sd s3, 1728(sp)
	sd ra, 1712(sp)
	sd s2, 1776(sp)
	sd s1, 1792(sp)
	sd s0, 1416(sp)
	jal getint
	mv s1, zero
	sw a0, 1784(sp)
.p2align 2
label1211:
	sh1add a0, s1, s1
	ld s0, 1416(sp)
	sh2add a0, a0, s0
	jal getfarray
	li a0, 40
	addiw s1, s1, 1
	blt s1, a0, label1211
	mv s0, zero
.p2align 2
label1213:
	sh1add a1, s0, s0
	ld s1, 1792(sp)
	sh2add a0, a1, s1
	jal getarray
	li a0, 24
	addiw s0, s0, 1
	blt s0, a0, label1213
	lw s6, 1784(sp)
	ld s0, 1416(sp)
	sh2add a1, s6, s0
	addi a0, s0, 12
	flw f10, 0(a1)
	sh2add a1, s6, a0
	fsw f10, 1616(sp)
	addi a0, s0, 24
	flw f25, 0(a1)
	sh2add a2, s6, a0
	addi a1, s0, 36
	flw f12, 0(a2)
	sh2add a0, s6, a1
	addi a2, s0, 60
	addi a1, s0, 48
	fsw f12, 1608(sp)
	flw f14, 0(a0)
	sh2add a0, s6, a1
	fsw f14, 1576(sp)
	sh2add a1, s6, a2
	flw f15, 0(a0)
	addi a2, s0, 84
	addi a0, s0, 72
	fsw f15, 1600(sp)
	flw f24, 0(a1)
	sh2add a1, s6, a0
	flw f16, 0(a1)
	sh2add a0, s6, a2
	addi a2, s0, 96
	fsw f16, 1692(sp)
	sh2add a1, s6, a2
	flw f8, 0(a0)
	addi a2, s0, 144
	flw f23, 0(a1)
	addi a0, s0, 108
	sh2add a1, s6, a0
	flw f1, 0(a1)
	addi a0, s0, 120
	sh2add a1, s6, a0
	fsw f1, 1408(sp)
	addi a0, s0, 132
	flw f0, 0(a1)
	sh2add a1, s6, a0
	fsw f0, 392(sp)
	sh2add a0, s6, a2
	flw f16, 0(a1)
	addi a2, s0, 192
	addi a1, s0, 156
	fsw f16, 396(sp)
	flw f10, 0(a0)
	sh2add a0, s6, a1
	fsw f10, 1444(sp)
	addi a1, s0, 168
	flw f17, 0(a0)
	sh2add a0, s6, a1
	fsw f17, 400(sp)
	addi a1, s0, 180
	flw f10, 0(a0)
	sh2add a0, s6, a1
	fsw f10, 412(sp)
	sh2add a1, s6, a2
	flw f12, 0(a0)
	addi a2, s0, 300
	addi a0, s0, 204
	fsw f12, 404(sp)
	flw f10, 0(a1)
	sh2add a1, s6, a0
	fsw f10, 1424(sp)
	addi a0, s0, 216
	flw f27, 0(a1)
	sh2add a1, s6, a0
	flw f11, 0(a1)
	addi a0, s0, 228
	sh2add a1, s6, a0
	fsw f11, 416(sp)
	addi a0, s0, 240
	flw f10, 0(a1)
	sh2add a1, s6, a0
	fsw f10, 424(sp)
	addi a0, s0, 252
	flw f12, 0(a1)
	sh2add a1, s6, a0
	fsw f12, 1496(sp)
	addi a0, s0, 264
	flw f11, 0(a1)
	sh2add a1, s6, a0
	fsw f11, 1460(sp)
	addi a0, s0, 276
	flw f21, 0(a1)
	sh2add a1, s6, a0
	flw f22, 0(a1)
	addi a0, s0, 288
	sh2add a1, s6, a0
	flw f10, 0(a1)
	sh2add a0, s6, a2
	addi a1, s0, 312
	addi a2, s0, 324
	fsw f10, 428(sp)
	flw f20, 0(a0)
	sh2add a0, s6, a1
	flw f12, 0(a0)
	sh2add a1, s6, a2
	addi a0, s0, 336
	fsw f12, 1392(sp)
	flw f11, 0(a1)
	sh2add a1, s6, a0
	fsw f11, 420(sp)
	addi a0, s0, 348
	flw f0, 0(a1)
	sh2add a1, s6, a0
	fsw f0, 408(sp)
	addi a0, s0, 360
	flw f10, 0(a1)
	sh2add a1, s6, a0
	fsw f10, 1476(sp)
	addi a0, s0, 372
	flw f26, 0(a1)
	sh2add a1, s6, a0
	flw f9, 0(a1)
	addi a0, s0, 384
	sh2add a1, s6, a0
	flw f18, 0(a1)
	addi a0, s0, 396
	sh2add a1, s6, a0
	flw f11, 0(a1)
	addi a0, s0, 408
	sh2add a1, s6, a0
	fsw f11, 1560(sp)
	addi a0, s0, 420
	flw f10, 0(a1)
	sh2add a1, s6, a0
	fsw f10, 1648(sp)
	addi a0, s0, 432
	flw f19, 0(a1)
	sh2add a1, s6, a0
	flw f10, 0(a1)
	addi a0, s0, 444
	sh2add a1, s6, a0
	fsw f10, 1516(sp)
	addi a0, s0, 456
	flw f16, 0(a1)
	sh2add a1, s6, a0
	fsw f16, 1672(sp)
	addi a0, s0, 468
	flw f10, 0(a1)
	sh2add a1, s6, a0
	fsw f10, 1592(sp)
	flw f11, 0(a1)
	fsw f11, 1632(sp)
	fsw f23, 0(sp)
	fsw f1, 8(sp)
	flw f0, 392(sp)
	fsw f0, 16(sp)
	flw f16, 396(sp)
	fsw f16, 24(sp)
	flw f10, 1444(sp)
	fsw f10, 32(sp)
	fsw f17, 40(sp)
	flw f10, 412(sp)
	fsw f10, 48(sp)
	flw f12, 404(sp)
	fsw f12, 56(sp)
	flw f10, 1424(sp)
	fsw f10, 64(sp)
	fsw f27, 72(sp)
	flw f11, 416(sp)
	fsw f11, 80(sp)
	flw f10, 424(sp)
	fsw f10, 88(sp)
	flw f12, 1496(sp)
	fsw f12, 96(sp)
	flw f11, 1460(sp)
	fsw f11, 104(sp)
	fsw f21, 112(sp)
	fsw f22, 120(sp)
	flw f10, 428(sp)
	fsw f10, 128(sp)
	fsw f20, 136(sp)
	flw f12, 1392(sp)
	fsw f12, 144(sp)
	flw f11, 420(sp)
	fsw f11, 152(sp)
	flw f0, 408(sp)
	fsw f0, 160(sp)
	flw f10, 1476(sp)
	fsw f10, 168(sp)
	fsw f26, 176(sp)
	fsw f9, 184(sp)
	fsw f18, 192(sp)
	flw f11, 1560(sp)
	fsw f11, 200(sp)
	flw f10, 1648(sp)
	fsw f10, 208(sp)
	fsw f19, 216(sp)
	flw f10, 1516(sp)
	fsw f10, 224(sp)
	flw f16, 1672(sp)
	fsw f16, 232(sp)
	flw f10, 1592(sp)
	fsw f10, 240(sp)
	flw f11, 1632(sp)
	fsw f11, 248(sp)
	ld s2, 1776(sp)
	flw f10, 1616(sp)
	flw f12, 1608(sp)
	flw f16, 1692(sp)
	fmv.s f11, f25
	fmv.s f13, f14
	fmv.s f14, f15
	fmv.s f15, f24
	fmv.s f17, f8
	mv a0, s2
	jal params_f40
	fsw f10, 432(sp)
	ld s1, 1792(sp)
	addi a2, s1, 276
	sh2add a1, s6, a2
	lw a0, 0(a1)
	addi a1, s1, 24
	sd a0, 1288(sp)
	sh2add a0, s6, a1
	lw s4, 0(a0)
	addi a1, s1, 72
	sh2add a0, s6, a1
	lw a2, 0(a0)
	addi a1, s1, 12
	sh2add a0, s6, a1
	addi a1, s1, 48
	sd a2, 1280(sp)
	lw s5, 0(a0)
	addi a2, s1, 132
	sh2add a0, s6, a1
	lw s3, 0(a0)
	addi a1, s1, 60
	sh2add a0, s6, a1
	lw a7, 0(a0)
	addi a0, s1, 264
	sh2add a1, s6, a0
	sd a7, 1584(sp)
	sh2add a0, s6, s1
	lw a6, 0(a1)
	lw t0, 0(a0)
	addi a0, s1, 228
	sh2add a1, s6, a0
	sd t0, 1640(sp)
	addi a0, s1, 84
	lw a4, 0(a1)
	sh2add a1, s6, a0
	sd a4, 1272(sp)
	lw a4, 0(a1)
	addi a1, s1, 120
	sh2add a0, s6, a1
	sd a4, 968(sp)
	addi a1, s1, 156
	lw a5, 0(a0)
	sh2add a0, s6, a1
	addi a1, s1, 96
	sd a5, 456(sp)
	lw a4, 0(a0)
	sh2add a0, s6, a1
	sd a4, 448(sp)
	lw t4, 0(a0)
	addi a0, s1, 204
	sh2add a1, s6, a0
	sd t4, 1552(sp)
	lw a5, 0(a1)
	addi a1, s1, 216
	sh2add a0, s6, a1
	sd a5, 1656(sp)
	lw a4, 0(a0)
	addi a0, s1, 108
	sh2add a1, s6, a0
	sd a4, 1520(sp)
	lw t4, 0(a1)
	addi a1, s1, 144
	sh2add a3, s6, a1
	sd t4, 1504(sp)
	lw a0, 0(a3)
	sh2add a3, s6, a2
	lw a1, 0(a3)
	addi a2, s1, 192
	sh2add a4, s6, a2
	lw a3, 0(a4)
	addi a2, s1, 36
	sh2add a5, s6, a2
	lw a4, 0(a5)
	addi a2, s1, 252
	sd a4, 1480(sp)
	sh2add a4, s6, a2
	addi a2, s1, 240
	lw a5, 0(a4)
	sd a5, 1464(sp)
	sh2add a5, s6, a2
	lw a4, 0(a5)
	addi a5, s1, 180
	sh2add t0, s6, a5
	sd a4, 1448(sp)
	addi a4, s1, 168
	lw a2, 0(t0)
	sh2add a5, s6, a4
	lw t0, 0(a5)
	sd t0, 1400(sp)
	ld a4, 1272(sp)
	sd a4, 0(sp)
	flw f10, 1444(sp)
	fsw f10, 8(sp)
	fsw f25, 16(sp)
	flw f16, 396(sp)
	fsw f16, 24(sp)
	flw f10, 1592(sp)
	fsw f10, 32(sp)
	flw f16, 1692(sp)
	fsw f16, 40(sp)
	ld a4, 968(sp)
	sd a4, 48(sp)
	fsw f18, 56(sp)
	ld a5, 456(sp)
	sd a5, 64(sp)
	ld a4, 448(sp)
	sd a4, 72(sp)
	flw f12, 1496(sp)
	fsw f12, 80(sp)
	flw f11, 1560(sp)
	fsw f11, 88(sp)
	fsw f22, 96(sp)
	flw f1, 1408(sp)
	fsw f1, 104(sp)
	fsw f20, 112(sp)
	ld t4, 1552(sp)
	sd t4, 120(sp)
	flw f11, 1632(sp)
	fsw f11, 128(sp)
	ld a5, 1656(sp)
	sd a5, 136(sp)
	flw f11, 1460(sp)
	fsw f11, 144(sp)
	flw f10, 1424(sp)
	fsw f10, 152(sp)
	fsw f24, 160(sp)
	flw f10, 1648(sp)
	fsw f10, 168(sp)
	ld a4, 1520(sp)
	sd a4, 176(sp)
	ld t4, 1504(sp)
	sd t4, 184(sp)
	flw f10, 412(sp)
	fsw f10, 192(sp)
	flw f0, 392(sp)
	fsw f0, 200(sp)
	flw f10, 1616(sp)
	fsw f10, 208(sp)
	sd a0, 216(sp)
	fsw f9, 224(sp)
	sd a1, 232(sp)
	sd a3, 240(sp)
	flw f11, 420(sp)
	fsw f11, 248(sp)
	flw f10, 428(sp)
	fsw f10, 256(sp)
	flw f17, 400(sp)
	fsw f17, 264(sp)
	flw f10, 1476(sp)
	fsw f10, 272(sp)
	ld a4, 1480(sp)
	sd a4, 280(sp)
	ld a5, 1464(sp)
	sd a5, 288(sp)
	ld a4, 1448(sp)
	sd a4, 296(sp)
	flw f11, 416(sp)
	fsw f11, 304(sp)
	flw f10, 424(sp)
	fsw f10, 312(sp)
	fsw f21, 320(sp)
	flw f12, 1392(sp)
	fsw f12, 328(sp)
	flw f10, 1516(sp)
	fsw f10, 336(sp)
	fsw f27, 344(sp)
	sd a2, 352(sp)
	flw f12, 1608(sp)
	fsw f12, 360(sp)
	sd t0, 368(sp)
	fsw f19, 376(sp)
	sd s2, 384(sp)
	ld t0, 1640(sp)
	ld a0, 1288(sp)
	ld a2, 1280(sp)
	flw f0, 408(sp)
	flw f12, 404(sp)
	flw f15, 1600(sp)
	flw f14, 1576(sp)
	flw f16, 1672(sp)
	mv a1, s4
	fmv.s f10, f15
	mv a3, s5
	mv a4, s3
	mv a5, a7
	fmv.s f11, f23
	fmv.s f13, f8
	fmv.s f15, f0
	mv a7, t0
	fmv.s f17, f26
	jal params_f40_i24
	addi a2, s0, 12
	addi s7, s0, 156
	addi t6, s0, 288
	addi a0, s0, 108
	addi t3, s0, 420
	addi a1, s0, 384
	addi t1, s0, 264
	fmv.s f8, f10
	addi s9, s0, 324
	addi a3, s0, 36
	addi a6, s0, 72
	addi s11, s0, 96
	addi t0, s0, 24
	addi a4, s0, 48
	addi s8, s0, 180
	addi t2, s0, 228
	addi s10, s0, 276
	addi a5, s0, 60
	addi t4, s0, 456
	addi s6, s0, 336
	addi a7, s0, 84
	addi t5, s0, 300
	sd a2, 1432(sp)
	addi a2, s0, 132
	sd t0, 464(sp)
	sd a3, 472(sp)
	addi t0, s0, 444
	sd a4, 976(sp)
	addi a3, s0, 216
	addi a4, s0, 120
	sd a5, 1680(sp)
	sd a6, 1296(sp)
	addi a5, s0, 432
	sd a7, 1304(sp)
	addi a6, s0, 372
	addi a7, s0, 168
	sd s11, 1312(sp)
	addi s11, s0, 144
	sd s11, 1320(sp)
	addi s11, s0, 192
	sd s11, 1336(sp)
	addi s11, s0, 204
	sd s11, 1328(sp)
	addi s11, s0, 240
	sd s11, 1344(sp)
	addi s11, s0, 252
	sd s11, 1352(sp)
	addi s11, s0, 312
	sd s11, 1360(sp)
	addi s11, s0, 348
	sd s11, 1368(sp)
	addi s11, s0, 360
	sd s11, 1696(sp)
	addi s11, s0, 396
	sd s11, 1384(sp)
	addi s11, s0, 408
	sd s11, 1376(sp)
	addi s11, s0, 468
	sd s11, 440(sp)
	ld s11, 1312(sp)
	sd s11, 0(sp)
	sd a0, 8(sp)
	sd a4, 16(sp)
	sd a2, 24(sp)
	ld s11, 1320(sp)
	sd s11, 32(sp)
	sd s7, 40(sp)
	sd a7, 48(sp)
	sd s8, 56(sp)
	ld s11, 1336(sp)
	sd s11, 64(sp)
	ld s11, 1328(sp)
	sd s11, 72(sp)
	sd a3, 80(sp)
	sd t2, 88(sp)
	ld s11, 1344(sp)
	sd s11, 96(sp)
	ld s11, 1352(sp)
	sd s11, 104(sp)
	sd t1, 112(sp)
	sd s10, 120(sp)
	sd t6, 128(sp)
	sd t5, 136(sp)
	ld s11, 1360(sp)
	sd s11, 144(sp)
	sd s9, 152(sp)
	sd s6, 160(sp)
	ld s11, 1368(sp)
	sd s11, 168(sp)
	ld s11, 1696(sp)
	sd s11, 176(sp)
	sd a6, 184(sp)
	sd a1, 192(sp)
	ld s11, 1384(sp)
	sd s11, 200(sp)
	ld s11, 1376(sp)
	sd s11, 208(sp)
	sd t3, 216(sp)
	sd a5, 224(sp)
	sd t0, 232(sp)
	sd t4, 240(sp)
	ld s11, 440(sp)
	sd s11, 248(sp)
	sd s2, 256(sp)
	ld a2, 1432(sp)
	ld a5, 1680(sp)
	ld a7, 1304(sp)
	ld a6, 1296(sp)
	ld a4, 976(sp)
	ld a3, 472(sp)
	ld t0, 464(sp)
	mv a0, s0
	mv a1, a2
	mv a2, t0
	jal params_fa40
	addi a0, s1, 12
	addi a2, s1, 264
	addi t0, s1, 36
	addi a3, s1, 228
	fmv.s f23, f10
	addi t3, s1, 120
	addi t5, s1, 84
	addi a4, s1, 192
	addi t2, s1, 144
	addi t4, s1, 72
	addi t1, s1, 132
	addi a5, s1, 180
	addi a1, s1, 276
	sd t0, 480(sp)
	ld a6, 1296(sp)
	addi t0, s1, 156
	sd a6, 0(sp)
	sd t4, 8(sp)
	sd t5, 16(sp)
	ld t4, 1552(sp)
	sd t4, 24(sp)
	ld a7, 1304(sp)
	sd a7, 32(sp)
	ld s11, 1312(sp)
	sd s11, 40(sp)
	ld s11, 1320(sp)
	sd s11, 48(sp)
	ld t4, 1504(sp)
	sd t4, 56(sp)
	flw f10, 412(sp)
	fsw f10, 64(sp)
	flw f12, 404(sp)
	fsw f12, 72(sp)
	sd t3, 80(sp)
	ld s11, 1336(sp)
	sd s11, 88(sp)
	sd t1, 96(sp)
	sd t2, 104(sp)
	ld s11, 1328(sp)
	sd s11, 112(sp)
	flw f11, 416(sp)
	fsw f11, 120(sp)
	flw f10, 424(sp)
	fsw f10, 128(sp)
	sd t0, 136(sp)
	ld t0, 1400(sp)
	sd t0, 144(sp)
	ld s11, 1344(sp)
	sd s11, 152(sp)
	ld s11, 1352(sp)
	sd s11, 160(sp)
	fsw f21, 168(sp)
	fsw f22, 176(sp)
	sd a5, 184(sp)
	sd a4, 192(sp)
	ld a5, 1656(sp)
	sd a5, 200(sp)
	ld a4, 1520(sp)
	sd a4, 208(sp)
	flw f10, 428(sp)
	fsw f10, 216(sp)
	fsw f20, 224(sp)
	sd a3, 232(sp)
	ld a4, 1448(sp)
	sd a4, 240(sp)
	ld s11, 1360(sp)
	sd s11, 248(sp)
	ld a5, 1464(sp)
	sd a5, 256(sp)
	sd a2, 264(sp)
	sd a1, 272(sp)
	flw f11, 420(sp)
	fsw f11, 280(sp)
	flw f0, 408(sp)
	fsw f0, 288(sp)
	ld s11, 1368(sp)
	sd s11, 296(sp)
	ld t0, 1640(sp)
	sd t0, 304(sp)
	sd a0, 312(sp)
	ld s11, 1696(sp)
	sd s11, 320(sp)
	fsw f9, 328(sp)
	sd s4, 336(sp)
	fsw f18, 344(sp)
	ld s11, 1384(sp)
	sd s11, 352(sp)
	ld s11, 1376(sp)
	sd s11, 360(sp)
	fsw f19, 368(sp)
	ld a4, 1480(sp)
	sd a4, 376(sp)
	sd s2, 384(sp)
	ld a7, 1584(sp)
	ld a2, 1432(sp)
	ld a5, 1680(sp)
	ld t0, 480(sp)
	flw f17, 400(sp)
	flw f16, 396(sp)
	flw f0, 392(sp)
	flw f1, 1408(sp)
	flw f10, 1616(sp)
	flw f12, 1608(sp)
	flw f15, 1600(sp)
	flw f14, 1576(sp)
	mv a0, s1
	mv a1, s5
	fmv.s f11, f12
	mv a3, s4
	fmv.s f12, f14
	fmv.s f13, f15
	mv a4, a5
	mv a5, t0
	mv a6, s3
	fmv.s f14, f1
	fmv.s f15, f0
	jal params_mix
	flw f10, 432(sp)
	mv s0, a0
	jal putfloat
	li a0, 10
	jal putch
	fmv.s f10, f8
	jal putfloat
	li a0, 10
	jal putch
	fmv.s f10, f23
	jal putfloat
	li a0, 10
	jal putch
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 1712(sp)
	ld s3, 1728(sp)
	ld s5, 1744(sp)
	ld s4, 1752(sp)
	ld s7, 1760(sp)
	flw f19, 1768(sp)
	flw f9, 1440(sp)
	ld s2, 1664(sp)
	flw f24, 1688(sp)
	ld s1, 1704(sp)
	flw f18, 1720(sp)
	ld s6, 1736(sp)
	ld s0, 1624(sp)
	flw f27, 1612(sp)
	flw f25, 1604(sp)
	flw f8, 1596(sp)
	ld s9, 1568(sp)
	flw f21, 1564(sp)
	ld s11, 1544(sp)
	flw f23, 1536(sp)
	ld s10, 1528(sp)
	flw f22, 1512(sp)
	ld s8, 1488(sp)
	flw f20, 1472(sp)
	flw f26, 1456(sp)
	addi sp, sp, 1800
	ret
