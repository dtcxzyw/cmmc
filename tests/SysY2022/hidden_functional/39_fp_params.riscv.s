.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
params_f40:
	addi sp, sp, -376
	sd ra, 256(sp)
	fsw f26, 264(sp)
	fadd.s f26, f10, f11
	sd s1, 272(sp)
	addi s1, sp, 336
	fsw f24, 280(sp)
	fsw f20, 284(sp)
	fsw f18, 288(sp)
	fadd.s f10, f26, f12
	fsw f25, 292(sp)
	fsw f19, 296(sp)
	fsw f21, 300(sp)
	fsw f8, 304(sp)
	fsw f9, 308(sp)
	fsw f22, 312(sp)
	fsw f23, 316(sp)
	sd s0, 320(sp)
	mv s0, a0
	fsw f27, 328(sp)
	fmv.w.x f27, zero
	flw f0, 376(sp)
	flw f31, 384(sp)
	flw f23, 392(sp)
	flw f22, 400(sp)
	flw f5, 408(sp)
	flw f8, 416(sp)
	flw f19, 424(sp)
	flw f30, 432(sp)
	flw f2, 440(sp)
	flw f29, 448(sp)
	flw f25, 456(sp)
	flw f28, 464(sp)
	flw f4, 472(sp)
	flw f9, 480(sp)
	flw f18, 488(sp)
	flw f20, 496(sp)
	flw f3, 504(sp)
	flw f24, 512(sp)
	flw f7, 520(sp)
	flw f6, 528(sp)
	flw f1, 536(sp)
	flw f21, 544(sp)
	flw f26, 624(sp)
	feq.s a0, f26, f27
	bne a0, zero, label1033
	fadd.s f14, f14, f15
	li a0, 10
	fadd.s f10, f10, f13
	fadd.s f12, f14, f16
	fsw f10, 336(sp)
	fadd.s f10, f0, f31
	fadd.s f11, f12, f17
	fsw f11, 340(sp)
	fadd.s f11, f10, f23
	fadd.s f12, f11, f22
	fadd.s f11, f5, f8
	fsw f12, 344(sp)
	fadd.s f10, f11, f19
	fadd.s f12, f2, f29
	fadd.s f13, f10, f30
	fadd.s f11, f12, f25
	fsw f13, 348(sp)
	fadd.s f10, f11, f28
	fadd.s f11, f4, f9
	fsw f10, 352(sp)
	fadd.s f10, f11, f18
	fadd.s f12, f10, f20
	fadd.s f10, f3, f24
	fsw f12, 356(sp)
	fadd.s f11, f10, f7
	fadd.s f12, f11, f6
	fadd.s f11, f1, f21
	fsw f12, 360(sp)
	flw f1, 552(sp)
	flw f3, 560(sp)
	fadd.s f10, f11, f1
	fadd.s f11, f10, f3
	fsw f11, 364(sp)
	flw f1, 576(sp)
	flw f2, 568(sp)
	flw f3, 584(sp)
	fadd.s f11, f2, f1
	flw f1, 592(sp)
	fadd.s f10, f11, f3
	fadd.s f11, f10, f1
	fsw f11, 368(sp)
	flw f1, 608(sp)
	flw f3, 600(sp)
	flw f2, 616(sp)
	fadd.s f11, f3, f1
	fadd.s f10, f11, f2
	fadd.s f11, f10, f26
	fsw f11, 372(sp)
	mv a1, s1
	jal putfarray
	lw a0, 0(s0)
	sh2add a1, a0, s1
	flw f10, 0(a1)
label1031:
	ld ra, 256(sp)
	flw f26, 264(sp)
	ld s1, 272(sp)
	flw f24, 280(sp)
	flw f20, 284(sp)
	flw f18, 288(sp)
	flw f25, 292(sp)
	flw f19, 296(sp)
	flw f21, 300(sp)
	flw f8, 304(sp)
	flw f9, 308(sp)
	flw f22, 312(sp)
	flw f23, 316(sp)
	ld s0, 320(sp)
	flw f27, 328(sp)
	addi sp, sp, 376
	ret
label1033:
	fsw f31, 0(sp)
	fsw f23, 8(sp)
	fsw f22, 16(sp)
	fsw f5, 24(sp)
	fsw f8, 32(sp)
	fsw f19, 40(sp)
	fsw f30, 48(sp)
	fsw f2, 56(sp)
	fsw f29, 64(sp)
	fsw f25, 72(sp)
	fsw f28, 80(sp)
	fsw f4, 88(sp)
	fsw f9, 96(sp)
	fsw f18, 104(sp)
	fsw f20, 112(sp)
	fsw f3, 120(sp)
	fsw f24, 128(sp)
	fsw f7, 136(sp)
	fsw f6, 144(sp)
	fsw f1, 152(sp)
	fsw f21, 160(sp)
	flw f1, 552(sp)
	fsw f1, 168(sp)
	flw f3, 560(sp)
	fsw f3, 176(sp)
	flw f2, 568(sp)
	fsw f2, 184(sp)
	flw f1, 576(sp)
	fsw f1, 192(sp)
	flw f3, 584(sp)
	fsw f3, 200(sp)
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
.p2align 2
params_f40_i24:
	addi sp, sp, -648
	fmv.s f2, f15
	sd ra, 392(sp)
	sd s2, 400(sp)
	fsw f24, 408(sp)
	sd s6, 416(sp)
	fsw f18, 424(sp)
	fsw f8, 428(sp)
	sd s11, 432(sp)
	fsw f23, 440(sp)
	fsw f20, 444(sp)
	sd s8, 448(sp)
	fsw f19, 456(sp)
	sd s7, 464(sp)
	addi s7, sp, 560
	sd s4, 472(sp)
	fsw f9, 480(sp)
	sd s3, 488(sp)
	sd s5, 496(sp)
	fsw f27, 504(sp)
	fsw f22, 508(sp)
	sd s10, 512(sp)
	fsw f21, 520(sp)
	sd s9, 528(sp)
	fsw f25, 536(sp)
	fsw f26, 540(sp)
	sd s0, 544(sp)
	sd s1, 552(sp)
	fsw f15, 640(sp)
	fsw f17, 636(sp)
	fsw f16, 632(sp)
	ld t0, 648(sp)
	flw f6, 656(sp)
	flw f27, 664(sp)
	flw f30, 672(sp)
	flw f16, 688(sp)
	ld t3, 696(sp)
	flw f15, 704(sp)
	ld t2, 712(sp)
	ld t1, 720(sp)
	flw f4, 728(sp)
	flw f0, 736(sp)
	flw f3, 744(sp)
	flw f18, 752(sp)
	flw f2, 760(sp)
	ld s3, 768(sp)
	ld t4, 784(sp)
	flw f5, 792(sp)
	flw f31, 800(sp)
	flw f9, 808(sp)
	ld t5, 824(sp)
	ld s4, 832(sp)
	flw f19, 840(sp)
	flw f20, 848(sp)
	flw f8, 856(sp)
	ld s5, 864(sp)
	flw f1, 872(sp)
	ld s11, 880(sp)
	ld s6, 888(sp)
	flw f7, 896(sp)
	flw f29, 904(sp)
	flw f24, 912(sp)
	flw f28, 920(sp)
	ld s2, 928(sp)
	ld t6, 936(sp)
	ld s8, 944(sp)
	flw f23, 952(sp)
	flw f22, 960(sp)
	flw f21, 968(sp)
	flw f17, 976(sp)
	flw f25, 992(sp)
	ld s9, 1000(sp)
	flw f26, 1008(sp)
	ld s10, 1016(sp)
	ld s0, 1032(sp)
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
	addw s8, s8, a1
	fsw f8, 560(sp)
	fadd.s f10, f14, f16
	fadd.s f9, f10, f13
	fadd.s f10, f11, f20
	fsw f9, 564(sp)
	fadd.s f18, f10, f30
	fadd.s f10, f6, f24
	fsw f18, 568(sp)
	fadd.s f11, f10, f19
	fadd.s f10, f31, f25
	fadd.s f19, f11, f12
	fadd.s f11, f10, f23
	fsw f19, 572(sp)
	fadd.s f20, f11, f22
	fadd.s f11, f4, f5
	fsw f20, 576(sp)
	fadd.s f12, f11, f21
	fadd.s f11, f29, f2
	fadd.s f10, f12, f3
	fsw f10, 644(sp)
	fsw f10, 580(sp)
	fadd.s f10, f11, f17
	fadd.s f21, f10, f7
	fsw f21, 584(sp)
	flw f2, 640(sp)
	flw f17, 636(sp)
	fadd.s f10, f2, f28
	fadd.s f11, f10, f17
	fadd.s f22, f11, f1
	fadd.s f11, f15, f0
	fsw f22, 588(sp)
	flw f0, 816(sp)
	flw f15, 1024(sp)
	fadd.s f10, f11, f0
	fadd.s f11, f10, f15
	fsw f11, 592(sp)
	flw f16, 632(sp)
	flw f15, 984(sp)
	flw f6, 680(sp)
	fadd.s f11, f15, f16
	flw f15, 776(sp)
	fadd.s f10, f11, f6
	fadd.s f11, f10, f15
	fsw f11, 596(sp)
	sw s1, 600(sp)
	sw s2, 604(sp)
	sw s3, 608(sp)
	sw s4, 612(sp)
	sw s5, 616(sp)
	sw s6, 620(sp)
	sw s8, 624(sp)
	sw s9, 628(sp)
	mv a1, s7
	jal putfarray
	li a0, 8
	addi s7, sp, 600
	mv a1, s7
	jal putarray
	fcvt.s.w f11, s1
	fsub.s f10, f11, f8
	fcvt.s.w f11, s2
	fcvt.w.s a0, f10, rtz
	fsub.s f10, f11, f9
	sw a0, 600(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s3
	fsub.s f11, f10, f18
	sw a0, 604(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s4
	fsub.s f10, f11, f19
	sw a0, 608(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s5
	fsub.s f11, f10, f20
	sw a0, 612(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s6
	sw a0, 616(sp)
	flw f10, 644(sp)
	fsub.s f12, f11, f10
	fcvt.s.w f10, s8
	fsub.s f11, f10, f21
	fcvt.s.w f10, s9
	fcvt.w.s a0, f12, rtz
	sw a0, 620(sp)
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f22
	sw a0, 624(sp)
	fcvt.w.s a0, f11, rtz
	sw a0, 628(sp)
	lw a1, 0(s0)
	sh2add a0, a1, s7
	lw a2, 0(a0)
	fcvt.s.w f10, a2
label727:
	ld ra, 392(sp)
	ld s2, 400(sp)
	flw f24, 408(sp)
	ld s6, 416(sp)
	flw f18, 424(sp)
	flw f8, 428(sp)
	ld s11, 432(sp)
	flw f23, 440(sp)
	flw f20, 444(sp)
	ld s8, 448(sp)
	flw f19, 456(sp)
	ld s7, 464(sp)
	ld s4, 472(sp)
	flw f9, 480(sp)
	ld s3, 488(sp)
	ld s5, 496(sp)
	flw f27, 504(sp)
	flw f22, 508(sp)
	ld s10, 512(sp)
	flw f21, 520(sp)
	ld s9, 528(sp)
	flw f25, 536(sp)
	flw f26, 540(sp)
	ld s0, 544(sp)
	ld s1, 552(sp)
	addi sp, sp, 648
	ret
label729:
	sd t0, 0(sp)
	fsw f6, 8(sp)
	fsw f27, 16(sp)
	fsw f30, 24(sp)
	flw f6, 680(sp)
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
	flw f15, 776(sp)
	fsw f15, 128(sp)
	sd t4, 136(sp)
	fsw f5, 144(sp)
	fsw f31, 152(sp)
	fsw f9, 160(sp)
	flw f0, 816(sp)
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
	sd s8, 296(sp)
	fsw f23, 304(sp)
	fsw f22, 312(sp)
	fsw f21, 320(sp)
	fsw f17, 328(sp)
	flw f15, 984(sp)
	fsw f15, 336(sp)
	fsw f25, 344(sp)
	sd s9, 352(sp)
	fsw f26, 360(sp)
	sd s10, 368(sp)
	flw f15, 1024(sp)
	fsw f15, 376(sp)
	sd s0, 384(sp)
	flw f16, 632(sp)
	flw f17, 636(sp)
	flw f2, 640(sp)
	mv a0, a3
	fmv.s f15, f2
	jal params_f40_i24
	j label727
.p2align 2
params_fa40:
	addi sp, sp, -464
	mv t6, a5
	sd ra, 264(sp)
	sd s2, 272(sp)
	mv s2, a0
	sd s4, 280(sp)
	mv s4, a1
	sd s3, 288(sp)
	mv s3, a2
	sd s1, 296(sp)
	mv s1, a3
	sd s6, 304(sp)
	sd s0, 312(sp)
	mv s0, a4
	sd s5, 320(sp)
	sd s7, 328(sp)
	sd s8, 336(sp)
	sd s9, 344(sp)
	sd s10, 352(sp)
	sd a1, 416(sp)
	sd a2, 408(sp)
	sd a3, 400(sp)
	sd a4, 392(sp)
	sd a5, 360(sp)
	sd a6, 368(sp)
	sd a7, 376(sp)
	ld a0, 472(sp)
	ld a1, 480(sp)
	ld a2, 488(sp)
	ld a3, 496(sp)
	ld a4, 504(sp)
	ld a5, 512(sp)
	ld t0, 520(sp)
	ld t1, 528(sp)
	ld t2, 536(sp)
	ld t3, 544(sp)
	ld t4, 552(sp)
	ld t5, 560(sp)
	ld s5, 568(sp)
	ld s6, 576(sp)
	ld s7, 584(sp)
	ld s8, 592(sp)
	ld s9, 600(sp)
	ld t6, 720(sp)
	lw s10, 0(t6)
	sh2add t6, s10, s2
	sh2add a6, s10, s0
	sd s10, 384(sp)
	flw f10, 0(t6)
	sh2add t6, s10, s4
	flw f11, 0(t6)
	sh2add t6, s10, s3
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, s1
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 424(sp)
	flw f10, 0(a6)
	ld t6, 360(sp)
	sh2add a6, s10, t6
	flw f11, 0(a6)
	ld a6, 368(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a6
	sh2add a6, s10, a0
	flw f11, 0(t6)
	sh2add t6, s10, a7
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 428(sp)
	ld s2, 464(sp)
	sh2add t6, s10, s2
	flw f10, 0(t6)
	sh2add t6, s10, a1
	flw f11, 0(a6)
	sh2add a6, s10, a3
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, a2
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, a4
	fadd.s f10, f10, f11
	fsw f10, 432(sp)
	flw f10, 0(a6)
	sh2add a6, s10, t1
	flw f11, 0(t6)
	sh2add t6, s10, a5
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, t0
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, t2
	fadd.s f10, f10, f11
	fsw f10, 436(sp)
	flw f10, 0(a6)
	sh2add a6, s10, s5
	flw f11, 0(t6)
	sh2add t6, s10, t3
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, t4
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, t5
	fadd.s f10, f10, f11
	fsw f10, 440(sp)
	flw f10, 0(t6)
	sh2add t6, s10, s6
	flw f11, 0(a6)
	sh2add a6, s10, s9
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, s7
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, s8
	fadd.s f10, f10, f11
	fsw f10, 444(sp)
	flw f10, 0(t6)
	flw f11, 0(a6)
	ld t6, 608(sp)
	fadd.s f10, f10, f11
	sh2add a6, s10, t6
	flw f11, 0(a6)
	ld t6, 616(sp)
	fadd.s f10, f10, f11
	sh2add a6, s10, t6
	flw f11, 0(a6)
	fadd.s f10, f10, f11
	fsw f10, 448(sp)
	ld t6, 624(sp)
	sh2add a6, s10, t6
	flw f10, 0(a6)
	ld t6, 632(sp)
	sh2add a6, s10, t6
	flw f11, 0(a6)
	ld t6, 640(sp)
	fadd.s f10, f10, f11
	sh2add a6, s10, t6
	flw f11, 0(a6)
	ld t6, 648(sp)
	fadd.s f10, f10, f11
	sh2add a6, s10, t6
	flw f11, 0(a6)
	fadd.s f10, f10, f11
	fsw f10, 452(sp)
	ld t6, 656(sp)
	sh2add a6, s10, t6
	flw f10, 0(a6)
	ld t6, 664(sp)
	sh2add a6, s10, t6
	flw f11, 0(a6)
	ld t6, 672(sp)
	fadd.s f10, f10, f11
	sh2add a6, s10, t6
	flw f11, 0(a6)
	ld t6, 680(sp)
	fadd.s f10, f10, f11
	sh2add a6, s10, t6
	flw f11, 0(a6)
	fadd.s f10, f10, f11
	fsw f10, 456(sp)
	ld t6, 688(sp)
	sh2add a6, s10, t6
	flw f10, 0(a6)
	ld t6, 696(sp)
	sh2add a6, s10, t6
	flw f11, 0(a6)
	ld t6, 704(sp)
	fadd.s f10, f10, f11
	sh2add a6, s10, t6
	flw f11, 0(a6)
	ld a6, 712(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a6
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 460(sp)
	fmv.w.x f10, zero
	flw f11, 0(t6)
	feq.s t6, f11, f10
	xori a6, t6, 1
	fcvt.s.w f11, a6
	feq.s t6, f11, f10
	xori a6, t6, 1
	fcvt.s.w f11, a6
	feq.s t6, f11, f10
	bne t6, zero, label412
	addi s0, sp, 424
	li a0, 10
	mv a1, s0
	jal putfarray
	ld s10, 384(sp)
	sh2add a0, s10, s0
	flw f10, 0(a0)
label410:
	ld ra, 264(sp)
	ld s2, 272(sp)
	ld s4, 280(sp)
	ld s3, 288(sp)
	ld s1, 296(sp)
	ld s6, 304(sp)
	ld s0, 312(sp)
	ld s5, 320(sp)
	ld s7, 328(sp)
	ld s8, 336(sp)
	ld s9, 344(sp)
	ld s10, 352(sp)
	addi sp, sp, 464
	ret
label412:
	sd a0, 0(sp)
	addi s0, sp, 424
	sd a1, 8(sp)
	sd a2, 16(sp)
	sd a3, 24(sp)
	sd a4, 32(sp)
	sd a5, 40(sp)
	sd t0, 48(sp)
	sd t1, 56(sp)
	sd t2, 64(sp)
	sd t3, 72(sp)
	sd t4, 80(sp)
	sd t5, 88(sp)
	sd s5, 96(sp)
	sd s6, 104(sp)
	sd s7, 112(sp)
	sd s8, 120(sp)
	sd s9, 128(sp)
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
	sd s0, 248(sp)
	ld t6, 720(sp)
	sd t6, 256(sp)
	ld s2, 464(sp)
	ld a7, 376(sp)
	ld a6, 368(sp)
	ld t6, 360(sp)
	ld s0, 392(sp)
	ld s1, 400(sp)
	ld s3, 408(sp)
	ld s4, 416(sp)
	mv a0, s4
	mv a1, s3
	mv a2, s1
	mv a3, s0
	mv a4, t6
	mv a5, a6
	mv a6, a7
	mv a7, s2
	jal params_fa40
	j label410
.p2align 2
params_mix:
	addi sp, sp, -688
	sd ra, 392(sp)
	fsw f19, 400(sp)
	sd s7, 408(sp)
	fsw f20, 416(sp)
	sd s8, 424(sp)
	fsw f18, 432(sp)
	sd s6, 440(sp)
	fsw f9, 448(sp)
	fsw f21, 452(sp)
	sd s9, 456(sp)
	fsw f8, 464(sp)
	sd s1, 472(sp)
	mv s1, a5
	fsw f25, 480(sp)
	sd s3, 488(sp)
	mv s3, a4
	sd s0, 496(sp)
	mv s0, a3
	sd s5, 504(sp)
	mv s5, a2
	sd s2, 512(sp)
	mv s2, a1
	sd s4, 520(sp)
	mv s4, a0
	fsw f22, 528(sp)
	fsw f23, 532(sp)
	fsw f24, 536(sp)
	fsw f26, 540(sp)
	fsw f27, 544(sp)
	sd a1, 680(sp)
	sd a3, 672(sp)
	sd a4, 664(sp)
	sd a5, 656(sp)
	sd a6, 648(sp)
	sd a7, 600(sp)
	ld a0, 688(sp)
	ld a1, 696(sp)
	ld a2, 704(sp)
	ld a3, 712(sp)
	ld a4, 720(sp)
	ld a5, 728(sp)
	ld t0, 736(sp)
	ld t1, 744(sp)
	flw f28, 752(sp)
	flw f29, 760(sp)
	ld t2, 768(sp)
	ld t3, 776(sp)
	ld t4, 784(sp)
	ld t5, 792(sp)
	flw f30, 808(sp)
	flw f31, 816(sp)
	flw f6, 856(sp)
	flw f7, 864(sp)
	flw f4, 904(sp)
	flw f5, 912(sp)
	flw f2, 968(sp)
	flw f3, 976(sp)
	flw f1, 1016(sp)
	flw f0, 1032(sp)
	flw f25, 1056(sp)
	ld a6, 1072(sp)
	lw t6, 0(a6)
	sh2add a6, t6, s5
	sh2add a7, t6, t3
	sd t6, 592(sp)
	flw f8, 0(a6)
	sh2add a6, t6, s3
	fadd.s f9, f10, f8
	fadd.s f18, f9, f11
	fadd.s f8, f18, f12
	fsw f8, 608(sp)
	flw f18, 0(a6)
	sh2add a6, t6, a0
	fadd.s f9, f13, f18
	flw f18, 0(a6)
	sh2add a6, t6, a4
	fadd.s f9, f9, f18
	flw f18, 0(a6)
	sh2add a6, t6, a5
	fadd.s f9, f9, f18
	fsw f9, 612(sp)
	flw f18, 0(a6)
	sh2add a6, t6, t0
	fadd.s f20, f18, f14
	fadd.s f19, f20, f15
	fadd.s f18, f19, f16
	fsw f18, 616(sp)
	flw f19, 0(a6)
	fadd.s f20, f19, f17
	fadd.s f21, f20, f28
	fadd.s f19, f21, f29
	fsw f19, 620(sp)
	flw f20, 0(a7)
	ld a6, 800(sp)
	sh2add a7, t6, a6
	flw f22, 0(a7)
	fadd.s f21, f20, f22
	fadd.s f23, f21, f30
	fadd.s f20, f23, f31
	fsw f20, 624(sp)
	ld a6, 840(sp)
	sh2add a7, t6, a6
	flw f21, 0(a7)
	ld a6, 848(sp)
	sh2add a7, t6, a6
	flw f24, 0(a7)
	fadd.s f23, f21, f24
	fadd.s f22, f23, f6
	fadd.s f23, f4, f5
	fadd.s f21, f22, f7
	fsw f21, 628(sp)
	ld a6, 936(sp)
	sh2add a7, t6, a6
	flw f22, 0(a7)
	fadd.s f24, f23, f22
	fadd.s f22, f24, f2
	fsw f22, 632(sp)
	ld a6, 984(sp)
	sh2add a7, t6, a6
	flw f24, 0(a7)
	ld a6, 1008(sp)
	fadd.s f23, f3, f24
	sh2add a7, t6, a6
	flw f26, 0(a7)
	fadd.s f24, f23, f26
	fadd.s f23, f24, f1
	fsw f23, 636(sp)
	ld a6, 1040(sp)
	sh2add a7, t6, a6
	flw f26, 0(a7)
	ld a6, 1048(sp)
	fadd.s f24, f0, f26
	sh2add a7, t6, a6
	sh2add a6, t6, s4
	sh2add s4, t6, t4
	flw f27, 0(a7)
	addw a7, s2, s0
	fadd.s f26, f24, f27
	fadd.s f24, f26, f25
	fmv.w.x f26, zero
	fsw f24, 640(sp)
	fsw f26, 644(sp)
	lw a6, 0(a6)
	addw s0, a6, a7
	sh2add a6, t6, s1
	sw s0, 552(sp)
	lw s2, 0(a6)
	ld a7, 600(sp)
	ld a6, 648(sp)
	addw a7, a6, a7
	addw s1, s2, a7
	sh2add a7, t6, a1
	sw s1, 556(sp)
	lw s2, 0(a7)
	sh2add a7, t6, a2
	addw a6, a3, s2
	lw s3, 0(a7)
	addw s2, a6, s3
	sh2add a6, t6, t2
	sw s2, 560(sp)
	lw a7, 0(a6)
	addw a6, t1, a7
	lw a7, 0(s4)
	addw s3, a6, a7
	sh2add a6, t6, t5
	sw s3, 564(sp)
	lw a7, 0(a6)
	ld s4, 832(sp)
	addw a6, s4, a7
	ld a7, 824(sp)
	sh2add s5, t6, a7
	lw a7, 0(s5)
	addw s4, a6, a7
	sw s4, 568(sp)
	ld a6, 872(sp)
	sh2add s6, t6, a6
	lw a7, 0(s6)
	ld s5, 888(sp)
	addw a6, s5, a7
	ld a7, 880(sp)
	sh2add s6, t6, a7
	lw a7, 0(s6)
	addw s5, a6, a7
	sw s5, 572(sp)
	ld a7, 920(sp)
	sh2add s6, t6, a7
	lw a6, 0(s6)
	ld a7, 928(sp)
	ld s7, 896(sp)
	addw a7, s7, a7
	addw s6, a6, a7
	sw s6, 576(sp)
	ld a6, 952(sp)
	sh2add s8, t6, a6
	lw a7, 0(s8)
	ld s7, 944(sp)
	addw a6, s7, a7
	ld a7, 960(sp)
	sh2add s8, t6, a7
	lw a7, 0(s8)
	addw s7, a6, a7
	sw s7, 580(sp)
	ld a6, 1000(sp)
	sh2add a7, t6, a6
	lw t6, 0(a7)
	ld a6, 1024(sp)
	ld s8, 992(sp)
	addw a7, s8, a6
	ld a6, 1064(sp)
	addw a7, a6, a7
	addw s8, t6, a7
	sw s8, 584(sp)
	sw zero, 588(sp)
	bne a6, zero, label4
	j label5
label2:
	ld ra, 392(sp)
	flw f19, 400(sp)
	ld s7, 408(sp)
	flw f20, 416(sp)
	ld s8, 424(sp)
	flw f18, 432(sp)
	ld s6, 440(sp)
	flw f9, 448(sp)
	flw f21, 452(sp)
	ld s9, 456(sp)
	flw f8, 464(sp)
	ld s1, 472(sp)
	flw f25, 480(sp)
	ld s3, 488(sp)
	ld s0, 496(sp)
	ld s5, 504(sp)
	ld s2, 512(sp)
	ld s4, 520(sp)
	flw f22, 528(sp)
	flw f23, 532(sp)
	flw f24, 536(sp)
	flw f26, 540(sp)
	flw f27, 544(sp)
	addi sp, sp, 688
	ret
label4:
	addi a2, sp, 608
	li a0, 10
	mv a1, a2
	jal putfarray
	li a0, 10
	addi s9, sp, 552
	mv a1, s9
	jal putarray
	fcvt.s.w f10, s0
	fsub.s f11, f10, f8
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s1
	fsub.s f10, f11, f9
	sw a0, 552(sp)
	fcvt.s.w f11, s2
	fcvt.w.s a0, f10, rtz
	fsub.s f10, f11, f18
	sw a0, 556(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s3
	fsub.s f11, f10, f19
	sw a0, 560(sp)
	fcvt.s.w f10, s4
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f20
	sw a0, 564(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s5
	fsub.s f10, f11, f21
	sw a0, 568(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s6
	fsub.s f11, f10, f22
	sw a0, 572(sp)
	fcvt.s.w f10, s7
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f23
	sw a0, 576(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s8
	fsub.s f10, f11, f24
	sw a0, 580(sp)
	fcvt.w.s a0, f10, rtz
	sw a0, 584(sp)
	ld t6, 592(sp)
	sw zero, 588(sp)
	sh2add a0, t6, s9
	lw a1, 0(a0)
	fcvt.s.w f10, a1
	fmul.s f11, f10, f24
	fcvt.w.s a0, f11, rtz
	j label2
label5:
	fcvt.w.s t6, f25, rtz
	ld a6, 1064(sp)
	addi s9, sp, 552
	sd a0, 0(sp)
	fcvt.s.w f8, a6
	sd a1, 8(sp)
	sd a2, 16(sp)
	addi a2, sp, 608
	sd a3, 24(sp)
	sd a4, 32(sp)
	sd a5, 40(sp)
	sd t0, 48(sp)
	sd t1, 56(sp)
	fsw f28, 64(sp)
	fsw f29, 72(sp)
	sd t2, 80(sp)
	sd t3, 88(sp)
	sd t4, 96(sp)
	sd t5, 104(sp)
	ld a6, 800(sp)
	sd a6, 112(sp)
	fsw f30, 120(sp)
	fsw f31, 128(sp)
	ld a7, 824(sp)
	sd a7, 136(sp)
	ld s4, 832(sp)
	sd s4, 144(sp)
	ld a6, 840(sp)
	sd a6, 152(sp)
	ld a6, 848(sp)
	sd a6, 160(sp)
	fsw f6, 168(sp)
	fsw f7, 176(sp)
	ld a6, 872(sp)
	sd a6, 184(sp)
	ld a7, 880(sp)
	sd a7, 192(sp)
	ld s5, 888(sp)
	sd s5, 200(sp)
	ld s7, 896(sp)
	sd s7, 208(sp)
	fsw f4, 216(sp)
	fsw f5, 224(sp)
	ld a7, 920(sp)
	sd a7, 232(sp)
	ld a7, 928(sp)
	sd a7, 240(sp)
	ld a6, 936(sp)
	sd a6, 248(sp)
	ld s7, 944(sp)
	sd s7, 256(sp)
	ld a6, 952(sp)
	sd a6, 264(sp)
	ld a7, 960(sp)
	sd a7, 272(sp)
	fsw f2, 280(sp)
	fsw f3, 288(sp)
	ld a6, 984(sp)
	sd a6, 296(sp)
	ld s8, 992(sp)
	sd s8, 304(sp)
	ld a6, 1000(sp)
	sd a6, 312(sp)
	ld a6, 1008(sp)
	sd a6, 320(sp)
	fsw f1, 328(sp)
	ld a6, 1024(sp)
	sd a6, 336(sp)
	fsw f0, 344(sp)
	ld a6, 1040(sp)
	sd a6, 352(sp)
	ld a6, 1048(sp)
	sd a6, 360(sp)
	fsw f8, 368(sp)
	sd t6, 376(sp)
	ld a6, 1072(sp)
	sd a6, 384(sp)
	ld a7, 600(sp)
	ld a6, 648(sp)
	ld s1, 656(sp)
	ld s3, 664(sp)
	ld s0, 672(sp)
	ld s2, 680(sp)
	mv a0, s9
	mv a1, s2
	mv a3, s0
	mv a4, s3
	mv a5, s1
	jal params_mix
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -1768
	sd ra, 392(sp)
	fsw f20, 400(sp)
	sd s8, 408(sp)
	fsw f22, 416(sp)
	sd s10, 424(sp)
	fsw f23, 432(sp)
	sd s11, 440(sp)
	fsw f21, 448(sp)
	sd s9, 456(sp)
	fsw f8, 464(sp)
	fsw f27, 468(sp)
	sd s0, 472(sp)
	sd s6, 480(sp)
	fsw f18, 488(sp)
	sd s1, 496(sp)
	fsw f24, 504(sp)
	sd s2, 512(sp)
	fsw f25, 520(sp)
	sd s3, 528(sp)
	fsw f26, 536(sp)
	fsw f9, 540(sp)
	fsw f19, 544(sp)
	sd s7, 552(sp)
	sd s4, 560(sp)
	sd s5, 568(sp)
	jal getint
	li s1, 24
	li s2, 40
	mv s3, zero
	sw a0, 872(sp)
.p2align 2
label1210:
	sh1add a0, s3, s3
	addi s0, sp, 1200
	sh2add a0, a0, s0
	jal getfarray
	addiw s3, s3, 1
	blt s3, s2, label1210
	mv s0, zero
.p2align 2
label1212:
	sh1add a1, s0, s0
	addi s2, sp, 896
	sh2add a0, a1, s2
	jal getarray
	addiw s0, s0, 1
	blt s0, s1, label1212
	lw s6, 872(sp)
	addi s0, sp, 1200
	addi s1, sp, 872
	sh2add a1, s6, s0
	addi a0, s0, 12
	flw f10, 0(a1)
	sh2add a1, s6, a0
	fsw f10, 624(sp)
	addi a0, s0, 24
	flw f25, 0(a1)
	sh2add a2, s6, a0
	addi a1, s0, 36
	flw f12, 0(a2)
	sh2add a0, s6, a1
	addi a1, s0, 48
	fsw f12, 644(sp)
	flw f14, 0(a0)
	sh2add a0, s6, a1
	fsw f14, 648(sp)
	addi a1, s0, 60
	flw f15, 0(a0)
	sh2add a0, s6, a1
	fsw f15, 640(sp)
	addi a1, s0, 72
	flw f24, 0(a0)
	sh2add a0, s6, a1
	flw f16, 0(a0)
	addi a1, s0, 84
	addi a0, s0, 96
	sh2add a2, s6, a1
	fsw f16, 672(sp)
	sh2add a1, s6, a0
	flw f8, 0(a2)
	addi a0, s0, 108
	flw f23, 0(a1)
	sh2add a1, s6, a0
	flw f1, 0(a1)
	addi a0, s0, 120
	sh2add a1, s6, a0
	fsw f1, 1764(sp)
	addi a0, s0, 132
	flw f0, 0(a1)
	sh2add a2, s6, a0
	addi a1, s0, 144
	fsw f0, 1760(sp)
	sh2add a0, s6, a1
	flw f16, 0(a2)
	addi a1, s0, 156
	fsw f16, 1756(sp)
	flw f10, 0(a0)
	sh2add a0, s6, a1
	fsw f10, 608(sp)
	addi a1, s0, 168
	flw f17, 0(a0)
	sh2add a0, s6, a1
	fsw f17, 1752(sp)
	addi a1, s0, 180
	flw f10, 0(a0)
	sh2add a0, s6, a1
	fsw f10, 1740(sp)
	addi a1, s0, 192
	flw f12, 0(a0)
	sh2add a0, s6, a1
	fsw f12, 1748(sp)
	addi a1, s0, 204
	flw f10, 0(a0)
	sh2add a0, s6, a1
	fsw f10, 628(sp)
	addi a1, s0, 216
	flw f27, 0(a0)
	sh2add a0, s6, a1
	flw f11, 0(a0)
	addi a1, s0, 228
	sh2add a0, s6, a1
	fsw f11, 1736(sp)
	addi a1, s0, 240
	flw f10, 0(a0)
	sh2add a0, s6, a1
	fsw f10, 1728(sp)
	addi a1, s0, 252
	flw f12, 0(a0)
	sh2add a0, s6, a1
	fsw f12, 588(sp)
	addi a1, s0, 264
	flw f11, 0(a0)
	sh2add a0, s6, a1
	fsw f11, 584(sp)
	addi a1, s0, 276
	flw f21, 0(a0)
	sh2add a0, s6, a1
	flw f22, 0(a0)
	addi a1, s0, 288
	sh2add a0, s6, a1
	flw f10, 0(a0)
	addi a1, s0, 300
	sh2add a0, s6, a1
	fsw f10, 1724(sp)
	addi a1, s0, 312
	flw f20, 0(a0)
	sh2add a2, s6, a1
	addi a0, s0, 324
	flw f12, 0(a2)
	sh2add a1, s6, a0
	addi a2, s0, 384
	addi a0, s0, 336
	fsw f12, 580(sp)
	flw f11, 0(a1)
	sh2add a1, s6, a0
	fsw f11, 1732(sp)
	addi a0, s0, 348
	flw f0, 0(a1)
	sh2add a1, s6, a0
	fsw f0, 1744(sp)
	addi a0, s0, 360
	flw f10, 0(a1)
	sh2add a1, s6, a0
	fsw f10, 592(sp)
	addi a0, s0, 372
	flw f26, 0(a1)
	sh2add a1, s6, a0
	flw f9, 0(a1)
	sh2add a0, s6, a2
	addi a1, s0, 396
	flw f18, 0(a0)
	sh2add a0, s6, a1
	flw f11, 0(a0)
	addi a1, s0, 408
	sh2add a0, s6, a1
	fsw f11, 660(sp)
	addi a1, s0, 420
	flw f10, 0(a0)
	sh2add a0, s6, a1
	fsw f10, 664(sp)
	addi a1, s0, 432
	flw f19, 0(a0)
	sh2add a0, s6, a1
	flw f10, 0(a0)
	addi a1, s0, 444
	sh2add a0, s6, a1
	fsw f10, 668(sp)
	addi a1, s0, 456
	flw f16, 0(a0)
	sh2add a2, s6, a1
	addi a0, s0, 468
	fsw f16, 576(sp)
	sh2add a1, s6, a0
	flw f10, 0(a2)
	fsw f10, 652(sp)
	flw f11, 0(a1)
	fsw f11, 656(sp)
	fsw f23, 0(sp)
	fsw f1, 8(sp)
	flw f0, 1760(sp)
	fsw f0, 16(sp)
	flw f16, 1756(sp)
	fsw f16, 24(sp)
	flw f10, 608(sp)
	fsw f10, 32(sp)
	fsw f17, 40(sp)
	flw f10, 1740(sp)
	fsw f10, 48(sp)
	flw f12, 1748(sp)
	fsw f12, 56(sp)
	flw f10, 628(sp)
	fsw f10, 64(sp)
	fsw f27, 72(sp)
	flw f11, 1736(sp)
	fsw f11, 80(sp)
	flw f10, 1728(sp)
	fsw f10, 88(sp)
	flw f12, 588(sp)
	fsw f12, 96(sp)
	flw f11, 584(sp)
	fsw f11, 104(sp)
	fsw f21, 112(sp)
	fsw f22, 120(sp)
	flw f10, 1724(sp)
	fsw f10, 128(sp)
	fsw f20, 136(sp)
	flw f12, 580(sp)
	fsw f12, 144(sp)
	flw f11, 1732(sp)
	fsw f11, 152(sp)
	flw f0, 1744(sp)
	fsw f0, 160(sp)
	flw f10, 592(sp)
	fsw f10, 168(sp)
	fsw f26, 176(sp)
	fsw f9, 184(sp)
	fsw f18, 192(sp)
	flw f11, 660(sp)
	fsw f11, 200(sp)
	flw f10, 664(sp)
	fsw f10, 208(sp)
	fsw f19, 216(sp)
	flw f10, 668(sp)
	fsw f10, 224(sp)
	flw f16, 576(sp)
	fsw f16, 232(sp)
	flw f10, 652(sp)
	fsw f10, 240(sp)
	flw f11, 656(sp)
	fsw f11, 248(sp)
	flw f10, 624(sp)
	flw f12, 644(sp)
	flw f16, 672(sp)
	fmv.s f11, f25
	fmv.s f13, f14
	fmv.s f14, f15
	fmv.s f15, f24
	fmv.s f17, f8
	mv a0, s1
	jal params_f40
	fsw f10, 1720(sp)
	addi s2, sp, 896
	addi a2, s2, 276
	sh2add a1, s6, a2
	lw a0, 0(a1)
	addi a1, s2, 24
	sd a0, 856(sp)
	sh2add a0, s6, a1
	lw s4, 0(a0)
	addi a1, s2, 72
	sh2add a0, s6, a1
	lw a2, 0(a0)
	addi a1, s2, 12
	sh2add a0, s6, a1
	addi a1, s2, 48
	sd a2, 864(sp)
	lw s5, 0(a0)
	addi a2, s2, 132
	sh2add a0, s6, a1
	lw s3, 0(a0)
	addi a1, s2, 60
	sh2add a0, s6, a1
	lw a7, 0(a0)
	addi a0, s2, 264
	sh2add a1, s6, a0
	sd a7, 680(sp)
	sh2add a0, s6, s2
	lw a6, 0(a1)
	lw t0, 0(a0)
	addi a1, s2, 228
	sh2add a0, s6, a1
	addi a1, s2, 84
	sd t0, 600(sp)
	lw a4, 0(a0)
	sh2add a0, s6, a1
	addi a1, s2, 120
	sd a4, 880(sp)
	lw a4, 0(a0)
	sh2add a0, s6, a1
	addi a1, s2, 156
	sd a4, 1184(sp)
	lw a4, 0(a0)
	sh2add a0, s6, a1
	addi a1, s2, 96
	sd a4, 1696(sp)
	lw a5, 0(a0)
	sh2add a0, s6, a1
	sd a5, 1704(sp)
	lw t4, 0(a0)
	addi a0, s2, 204
	sh2add a1, s6, a0
	sd t4, 688(sp)
	lw a5, 0(a1)
	addi a1, s2, 216
	sh2add a0, s6, a1
	sd a5, 616(sp)
	lw a4, 0(a0)
	addi a0, s2, 108
	sh2add a1, s6, a0
	sd a4, 696(sp)
	lw t4, 0(a1)
	addi a1, s2, 144
	sh2add a3, s6, a1
	sd t4, 632(sp)
	lw a0, 0(a3)
	sh2add a3, s6, a2
	addi a2, s2, 192
	lw a1, 0(a3)
	sh2add a4, s6, a2
	lw a3, 0(a4)
	addi a2, s2, 36
	sh2add a4, s6, a2
	addi a2, s2, 252
	lw a5, 0(a4)
	sd a5, 704(sp)
	sh2add a5, s6, a2
	lw a4, 0(a5)
	addi a2, s2, 240
	sd a4, 712(sp)
	sh2add a4, s6, a2
	lw a5, 0(a4)
	addi a4, s2, 180
	sd a5, 720(sp)
	sh2add a5, s6, a4
	lw a2, 0(a5)
	addi a4, s2, 168
	sh2add a5, s6, a4
	lw t0, 0(a5)
	sd t0, 728(sp)
	ld a4, 880(sp)
	sd a4, 0(sp)
	flw f10, 608(sp)
	fsw f10, 8(sp)
	fsw f25, 16(sp)
	flw f16, 1756(sp)
	fsw f16, 24(sp)
	flw f10, 652(sp)
	fsw f10, 32(sp)
	flw f16, 672(sp)
	fsw f16, 40(sp)
	ld a4, 1184(sp)
	sd a4, 48(sp)
	fsw f18, 56(sp)
	ld a4, 1696(sp)
	sd a4, 64(sp)
	ld a5, 1704(sp)
	sd a5, 72(sp)
	flw f12, 588(sp)
	fsw f12, 80(sp)
	flw f11, 660(sp)
	fsw f11, 88(sp)
	fsw f22, 96(sp)
	flw f1, 1764(sp)
	fsw f1, 104(sp)
	fsw f20, 112(sp)
	ld t4, 688(sp)
	sd t4, 120(sp)
	flw f11, 656(sp)
	fsw f11, 128(sp)
	ld a5, 616(sp)
	sd a5, 136(sp)
	flw f11, 584(sp)
	fsw f11, 144(sp)
	flw f10, 628(sp)
	fsw f10, 152(sp)
	fsw f24, 160(sp)
	flw f10, 664(sp)
	fsw f10, 168(sp)
	ld a4, 696(sp)
	sd a4, 176(sp)
	ld t4, 632(sp)
	sd t4, 184(sp)
	flw f10, 1740(sp)
	fsw f10, 192(sp)
	flw f0, 1760(sp)
	fsw f0, 200(sp)
	flw f10, 624(sp)
	fsw f10, 208(sp)
	sd a0, 216(sp)
	fsw f9, 224(sp)
	sd a1, 232(sp)
	sd a3, 240(sp)
	flw f11, 1732(sp)
	fsw f11, 248(sp)
	flw f10, 1724(sp)
	fsw f10, 256(sp)
	flw f17, 1752(sp)
	fsw f17, 264(sp)
	flw f10, 592(sp)
	fsw f10, 272(sp)
	ld a5, 704(sp)
	sd a5, 280(sp)
	ld a4, 712(sp)
	sd a4, 288(sp)
	ld a5, 720(sp)
	sd a5, 296(sp)
	flw f11, 1736(sp)
	fsw f11, 304(sp)
	flw f10, 1728(sp)
	fsw f10, 312(sp)
	fsw f21, 320(sp)
	flw f12, 580(sp)
	fsw f12, 328(sp)
	flw f10, 668(sp)
	fsw f10, 336(sp)
	fsw f27, 344(sp)
	sd a2, 352(sp)
	flw f12, 644(sp)
	fsw f12, 360(sp)
	sd t0, 368(sp)
	fsw f19, 376(sp)
	sd s1, 384(sp)
	ld t0, 600(sp)
	ld a0, 856(sp)
	ld a2, 864(sp)
	flw f0, 1744(sp)
	flw f12, 1748(sp)
	flw f15, 640(sp)
	flw f14, 648(sp)
	flw f16, 576(sp)
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
	addi s7, s0, 180
	addi t3, s0, 432
	addi s11, s0, 96
	fmv.s f8, f10
	addi a7, s0, 84
	addi a2, s0, 12
	addi t0, s0, 24
	addi a5, s0, 60
	addi a3, s0, 36
	addi a0, s0, 108
	addi a6, s0, 72
	addi t1, s0, 228
	addi a4, s0, 48
	addi a1, s0, 132
	addi s10, s0, 264
	addi t5, s0, 288
	addi s9, s0, 300
	addi s6, s0, 324
	addi s8, s0, 336
	addi t2, s0, 444
	addi t6, s0, 372
	addi t4, s0, 456
	sd a2, 736(sp)
	sd t0, 1688(sp)
	addi a2, s0, 168
	addi t0, s0, 420
	sd a3, 1680(sp)
	sd a4, 888(sp)
	addi a3, s0, 216
	sd a5, 744(sp)
	addi a4, s0, 384
	sd a6, 848(sp)
	addi a5, s0, 156
	addi a6, s0, 276
	sd a7, 840(sp)
	sd s11, 832(sp)
	addi a7, s0, 120
	addi s11, s0, 144
	sd s11, 824(sp)
	addi s11, s0, 192
	sd s11, 808(sp)
	addi s11, s0, 204
	sd s11, 816(sp)
	addi s11, s0, 240
	sd s11, 800(sp)
	addi s11, s0, 252
	sd s11, 792(sp)
	addi s11, s0, 312
	sd s11, 784(sp)
	addi s11, s0, 348
	sd s11, 776(sp)
	addi s11, s0, 360
	sd s11, 752(sp)
	addi s11, s0, 396
	sd s11, 760(sp)
	addi s11, s0, 408
	sd s11, 768(sp)
	addi s11, s0, 468
	sd s11, 1712(sp)
	ld s11, 832(sp)
	sd s11, 0(sp)
	sd a0, 8(sp)
	sd a7, 16(sp)
	sd a1, 24(sp)
	ld s11, 824(sp)
	sd s11, 32(sp)
	sd a5, 40(sp)
	sd a2, 48(sp)
	sd s7, 56(sp)
	ld s11, 808(sp)
	sd s11, 64(sp)
	ld s11, 816(sp)
	sd s11, 72(sp)
	sd a3, 80(sp)
	sd t1, 88(sp)
	ld s11, 800(sp)
	sd s11, 96(sp)
	ld s11, 792(sp)
	sd s11, 104(sp)
	sd s10, 112(sp)
	sd a6, 120(sp)
	sd t5, 128(sp)
	sd s9, 136(sp)
	ld s11, 784(sp)
	sd s11, 144(sp)
	sd s6, 152(sp)
	sd s8, 160(sp)
	ld s11, 776(sp)
	sd s11, 168(sp)
	ld s11, 752(sp)
	sd s11, 176(sp)
	sd t6, 184(sp)
	sd a4, 192(sp)
	ld s11, 760(sp)
	sd s11, 200(sp)
	ld s11, 768(sp)
	sd s11, 208(sp)
	sd t0, 216(sp)
	sd t3, 224(sp)
	sd t2, 232(sp)
	sd t4, 240(sp)
	ld s11, 1712(sp)
	sd s11, 248(sp)
	sd s1, 256(sp)
	ld a2, 736(sp)
	ld a5, 744(sp)
	ld a7, 840(sp)
	ld a6, 848(sp)
	ld a4, 888(sp)
	ld a3, 1680(sp)
	ld t0, 1688(sp)
	mv a0, s0
	mv a1, a2
	mv a2, t0
	jal params_fa40
	addi a0, s2, 12
	addi a2, s2, 264
	addi a3, s2, 228
	addi t2, s2, 144
	addi t0, s2, 36
	addi t4, s2, 72
	addi t5, s2, 84
	fmv.s f23, f10
	addi t3, s2, 120
	addi t1, s2, 132
	addi a4, s2, 180
	addi a1, s2, 276
	addi a5, s2, 192
	sd t0, 1192(sp)
	ld a6, 848(sp)
	addi t0, s2, 156
	sd a6, 0(sp)
	sd t4, 8(sp)
	sd t5, 16(sp)
	ld t4, 688(sp)
	sd t4, 24(sp)
	ld a7, 840(sp)
	sd a7, 32(sp)
	ld s11, 832(sp)
	sd s11, 40(sp)
	ld s11, 824(sp)
	sd s11, 48(sp)
	ld t4, 632(sp)
	sd t4, 56(sp)
	flw f10, 1740(sp)
	fsw f10, 64(sp)
	flw f12, 1748(sp)
	fsw f12, 72(sp)
	sd t3, 80(sp)
	ld s11, 808(sp)
	sd s11, 88(sp)
	sd t1, 96(sp)
	sd t2, 104(sp)
	ld s11, 816(sp)
	sd s11, 112(sp)
	flw f11, 1736(sp)
	fsw f11, 120(sp)
	flw f10, 1728(sp)
	fsw f10, 128(sp)
	sd t0, 136(sp)
	ld t0, 728(sp)
	sd t0, 144(sp)
	ld s11, 800(sp)
	sd s11, 152(sp)
	ld s11, 792(sp)
	sd s11, 160(sp)
	fsw f21, 168(sp)
	fsw f22, 176(sp)
	sd a4, 184(sp)
	sd a5, 192(sp)
	ld a5, 616(sp)
	sd a5, 200(sp)
	ld a4, 696(sp)
	sd a4, 208(sp)
	flw f10, 1724(sp)
	fsw f10, 216(sp)
	fsw f20, 224(sp)
	sd a3, 232(sp)
	ld a5, 720(sp)
	sd a5, 240(sp)
	ld s11, 784(sp)
	sd s11, 248(sp)
	ld a4, 712(sp)
	sd a4, 256(sp)
	sd a2, 264(sp)
	sd a1, 272(sp)
	flw f11, 1732(sp)
	fsw f11, 280(sp)
	flw f0, 1744(sp)
	fsw f0, 288(sp)
	ld s11, 776(sp)
	sd s11, 296(sp)
	ld t0, 600(sp)
	sd t0, 304(sp)
	sd a0, 312(sp)
	ld s11, 752(sp)
	sd s11, 320(sp)
	fsw f9, 328(sp)
	sd s4, 336(sp)
	fsw f18, 344(sp)
	ld s11, 760(sp)
	sd s11, 352(sp)
	ld s11, 768(sp)
	sd s11, 360(sp)
	fsw f19, 368(sp)
	ld a5, 704(sp)
	sd a5, 376(sp)
	sd s1, 384(sp)
	ld a7, 680(sp)
	ld a2, 736(sp)
	ld a5, 744(sp)
	ld t0, 1192(sp)
	flw f17, 1752(sp)
	flw f16, 1756(sp)
	flw f0, 1760(sp)
	flw f1, 1764(sp)
	flw f10, 624(sp)
	flw f12, 644(sp)
	flw f15, 640(sp)
	flw f14, 648(sp)
	mv a0, s2
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
	flw f10, 1720(sp)
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
	ld ra, 392(sp)
	mv a0, zero
	flw f20, 400(sp)
	ld s8, 408(sp)
	flw f22, 416(sp)
	ld s10, 424(sp)
	flw f23, 432(sp)
	ld s11, 440(sp)
	flw f21, 448(sp)
	ld s9, 456(sp)
	flw f8, 464(sp)
	flw f27, 468(sp)
	ld s0, 472(sp)
	ld s6, 480(sp)
	flw f18, 488(sp)
	ld s1, 496(sp)
	flw f24, 504(sp)
	ld s2, 512(sp)
	flw f25, 520(sp)
	ld s3, 528(sp)
	flw f26, 536(sp)
	flw f9, 540(sp)
	flw f19, 544(sp)
	ld s7, 552(sp)
	ld s4, 560(sp)
	ld s5, 568(sp)
	addi sp, sp, 1768
	ret
