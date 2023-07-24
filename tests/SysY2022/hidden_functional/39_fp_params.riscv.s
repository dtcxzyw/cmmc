.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
params_f40:
.p2align 2
	addi sp, sp, -416
	fsw f18, 392(sp)
	fsw f23, 396(sp)
	fsw f22, 400(sp)
	fsw f9, 404(sp)
	fsw f8, 256(sp)
	fsw f21, 260(sp)
	fsw f20, 264(sp)
	fsw f19, 268(sp)
	fsw f24, 272(sp)
	fsw f25, 276(sp)
	fsw f26, 280(sp)
	sd s0, 288(sp)
	mv s0, a0
	sd s1, 296(sp)
	addi s1, sp, 348
	sd ra, 304(sp)
	flw f0, 416(sp)
	flw f18, 424(sp)
	flw f23, 432(sp)
	flw f22, 440(sp)
	flw f5, 448(sp)
	flw f8, 456(sp)
	flw f31, 464(sp)
	flw f21, 472(sp)
	flw f4, 480(sp)
	flw f28, 488(sp)
	flw f29, 496(sp)
	flw f30, 504(sp)
	flw f2, 512(sp)
	flw f9, 520(sp)
	flw f20, 528(sp)
	flw f19, 536(sp)
	flw f3, 544(sp)
	flw f24, 552(sp)
	flw f6, 560(sp)
	flw f7, 568(sp)
	flw f1, 576(sp)
	flw f25, 584(sp)
	fsw f25, 312(sp)
	flw f26, 592(sp)
	fsw f26, 316(sp)
	flw f25, 600(sp)
	fsw f25, 408(sp)
	flw f26, 608(sp)
	fsw f26, 320(sp)
	flw f25, 616(sp)
	fsw f25, 324(sp)
	flw f26, 624(sp)
	fsw f26, 328(sp)
	flw f25, 632(sp)
	fsw f25, 332(sp)
	flw f26, 640(sp)
	fsw f26, 336(sp)
	flw f25, 648(sp)
	fsw f25, 340(sp)
	flw f26, 656(sp)
	fsw f26, 344(sp)
	fmv.w.x f26, zero
	flw f25, 664(sp)
	feq.s a0, f25, f26
	fsw f25, 388(sp)
	bne a0, zero, label1088
	fadd.s f11, f10, f11
	li a0, 10
	fadd.s f10, f11, f12
	fadd.s f11, f14, f15
	fadd.s f12, f10, f13
	fadd.s f13, f5, f8
	fsw f12, 348(sp)
	fadd.s f12, f11, f16
	fadd.s f11, f0, f18
	fadd.s f10, f12, f17
	fsw f10, 352(sp)
	fadd.s f10, f11, f23
	fadd.s f12, f10, f22
	fadd.s f10, f13, f31
	fsw f12, 356(sp)
	fadd.s f11, f10, f21
	fadd.s f12, f4, f28
	fsw f11, 360(sp)
	fadd.s f10, f12, f29
	fadd.s f12, f2, f9
	fadd.s f11, f10, f30
	fadd.s f10, f12, f20
	fadd.s f12, f3, f24
	fsw f11, 364(sp)
	fadd.s f11, f10, f19
	fsw f11, 368(sp)
	fadd.s f11, f12, f6
	fadd.s f10, f11, f7
	fsw f10, 372(sp)
	flw f25, 312(sp)
	flw f26, 316(sp)
	fadd.s f10, f1, f25
	flw f25, 408(sp)
	fadd.s f11, f10, f26
	fadd.s f10, f11, f25
	fsw f10, 376(sp)
	flw f25, 324(sp)
	flw f26, 320(sp)
	fadd.s f10, f26, f25
	flw f26, 328(sp)
	flw f25, 332(sp)
	fadd.s f11, f10, f26
	fadd.s f10, f11, f25
	fsw f10, 380(sp)
	flw f25, 340(sp)
	flw f26, 336(sp)
	fadd.s f11, f26, f25
	flw f26, 344(sp)
	flw f25, 388(sp)
	fadd.s f10, f11, f26
	fadd.s f11, f10, f25
	fsw f11, 384(sp)
	mv a1, s1
	jal putfarray
	lw a0, 0(s0)
	sh2add a1, a0, s1
	flw f10, 0(a1)
label1086:
	ld ra, 304(sp)
	ld s1, 296(sp)
	ld s0, 288(sp)
	flw f26, 280(sp)
	flw f25, 276(sp)
	flw f24, 272(sp)
	flw f19, 268(sp)
	flw f20, 264(sp)
	flw f21, 260(sp)
	flw f8, 256(sp)
	flw f9, 404(sp)
	flw f22, 400(sp)
	flw f23, 396(sp)
	flw f18, 392(sp)
	addi sp, sp, 416
	ret
label1088:
	fadd.s f25, f10, f11
	fsw f18, 0(sp)
	fsw f23, 8(sp)
	fsw f22, 16(sp)
	fsw f5, 24(sp)
	fsw f8, 32(sp)
	fadd.s f10, f25, f12
	fsw f31, 40(sp)
	fsw f21, 48(sp)
	fsw f4, 56(sp)
	fsw f28, 64(sp)
	fsw f29, 72(sp)
	fsw f30, 80(sp)
	fsw f2, 88(sp)
	fsw f9, 96(sp)
	fsw f20, 104(sp)
	fsw f19, 112(sp)
	fsw f3, 120(sp)
	fsw f24, 128(sp)
	fsw f6, 136(sp)
	fsw f7, 144(sp)
	fsw f1, 152(sp)
	flw f25, 312(sp)
	fsw f25, 160(sp)
	flw f26, 316(sp)
	fsw f26, 168(sp)
	flw f25, 408(sp)
	fsw f25, 176(sp)
	flw f26, 320(sp)
	fsw f26, 184(sp)
	flw f25, 324(sp)
	fsw f25, 192(sp)
	flw f26, 328(sp)
	fsw f26, 200(sp)
	flw f25, 332(sp)
	fsw f25, 208(sp)
	flw f26, 336(sp)
	fsw f26, 216(sp)
	flw f25, 340(sp)
	fsw f25, 224(sp)
	flw f26, 344(sp)
	fsw f26, 232(sp)
	flw f25, 388(sp)
	fsw f25, 240(sp)
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
	j label1086
params_f40_i24:
.p2align 2
	addi sp, sp, -712
	fsw f19, 576(sp)
	sd s7, 568(sp)
	sd s8, 560(sp)
	fsw f20, 556(sp)
	sd s4, 544(sp)
	sd s5, 528(sp)
	sd s6, 512(sp)
	fsw f18, 504(sp)
	fsw f21, 496(sp)
	sd s9, 488(sp)
	addi s9, sp, 632
	fsw f8, 480(sp)
	sd s3, 472(sp)
	sd s2, 464(sp)
	fsw f24, 580(sp)
	fsw f23, 584(sp)
	sd s11, 624(sp)
	fsw f22, 600(sp)
	sd s10, 672(sp)
	fsw f9, 616(sp)
	sd s1, 392(sp)
	sd s0, 400(sp)
	addi s0, sp, 680
	sd ra, 408(sp)
	fsw f15, 552(sp)
	fsw f16, 484(sp)
	ld t0, 712(sp)
	fsw f17, 508(sp)
	flw f2, 720(sp)
	flw f7, 728(sp)
	flw f3, 736(sp)
	flw f23, 744(sp)
	fsw f23, 520(sp)
	flw f5, 752(sp)
	ld t3, 760(sp)
	flw f24, 768(sp)
	fsw f24, 440(sp)
	ld t2, 776(sp)
	ld t1, 784(sp)
	flw f0, 792(sp)
	flw f23, 800(sp)
	fsw f23, 444(sp)
	flw f1, 808(sp)
	flw f29, 816(sp)
	flw f15, 824(sp)
	ld s3, 832(sp)
	flw f23, 840(sp)
	fsw f23, 500(sp)
	ld t4, 848(sp)
	flw f4, 856(sp)
	flw f6, 864(sp)
	flw f17, 872(sp)
	flw f23, 880(sp)
	fsw f23, 448(sp)
	ld t5, 888(sp)
	ld t6, 896(sp)
	flw f30, 904(sp)
	flw f16, 912(sp)
	flw f8, 920(sp)
	ld s6, 928(sp)
	flw f23, 936(sp)
	fsw f23, 436(sp)
	ld s5, 944(sp)
	ld s7, 952(sp)
	flw f23, 960(sp)
	fsw f23, 420(sp)
	flw f28, 968(sp)
	flw f20, 976(sp)
	flw f23, 984(sp)
	fsw f23, 428(sp)
	ld s2, 992(sp)
	ld s4, 1000(sp)
	ld s8, 1008(sp)
	flw f21, 1016(sp)
	flw f19, 1024(sp)
	flw f31, 1032(sp)
	flw f24, 1040(sp)
	fsw f24, 416(sp)
	flw f23, 1048(sp)
	fsw f23, 536(sp)
	flw f22, 1056(sp)
	ld s10, 1064(sp)
	flw f9, 1072(sp)
	ld s11, 1080(sp)
	flw f23, 1088(sp)
	fsw f23, 452(sp)
	ld s1, 1096(sp)
	sd s1, 592(sp)
	sd s0, 608(sp)
	beq a0, zero, label774
	fadd.s f7, f8, f7
	addw a1, a1, a3
	addw a0, a0, a6
	fadd.s f10, f10, f17
	addw s1, a7, a1
	addw s4, s4, a0
	addw a1, a4, a5
	li a0, 10
	addw s2, s2, a1
	fadd.s f9, f7, f9
	addw a1, a2, t3
	addw s3, s3, a1
	addw a1, t2, t6
	addw s5, s5, a1
	addw a1, t1, s6
	fadd.s f8, f9, f14
	addw s6, s11, a1
	fadd.s f14, f10, f5
	addw a1, t4, s7
	fadd.s f10, f11, f29
	addw s7, s10, a1
	addw a1, t0, t5
	addw s8, s8, a1
	fsw f8, 632(sp)
	fadd.s f9, f14, f13
	fadd.s f11, f10, f16
	fsw f9, 636(sp)
	fadd.s f18, f11, f3
	fadd.s f11, f2, f20
	fsw f18, 640(sp)
	fadd.s f10, f11, f30
	fadd.s f20, f10, f12
	fadd.s f10, f6, f22
	fsw f20, 644(sp)
	fadd.s f11, f10, f21
	fadd.s f19, f11, f19
	fadd.s f11, f0, f4
	fsw f19, 648(sp)
	fadd.s f12, f11, f31
	fadd.s f10, f12, f1
	fadd.s f12, f28, f15
	fsw f10, 456(sp)
	fsw f10, 652(sp)
	flw f23, 420(sp)
	fadd.s f11, f12, f24
	fadd.s f10, f11, f23
	fsw f10, 432(sp)
	fsw f10, 656(sp)
	flw f15, 552(sp)
	flw f23, 428(sp)
	flw f17, 508(sp)
	fadd.s f10, f15, f23
	flw f23, 436(sp)
	fadd.s f11, f10, f17
	fadd.s f10, f11, f23
	fsw f10, 424(sp)
	fsw f10, 660(sp)
	flw f23, 444(sp)
	flw f24, 440(sp)
	fadd.s f11, f24, f23
	flw f23, 448(sp)
	fadd.s f10, f11, f23
	flw f23, 452(sp)
	fadd.s f11, f10, f23
	fsw f11, 664(sp)
	flw f16, 484(sp)
	flw f23, 536(sp)
	fadd.s f10, f23, f16
	flw f23, 520(sp)
	fadd.s f11, f10, f23
	flw f23, 500(sp)
	fadd.s f10, f11, f23
	fsw f10, 668(sp)
	sw s1, 680(sp)
	sw s2, 684(sp)
	sw s3, 688(sp)
	sw s5, 692(sp)
	sw s6, 696(sp)
	sw s7, 700(sp)
	sw s8, 704(sp)
	sw s4, 708(sp)
	mv a1, s9
	jal putfarray
	li a0, 8
	ld s0, 608(sp)
	mv a1, s0
	jal putarray
	fcvt.s.w f10, s1
	fsub.s f11, f10, f8
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s2
	fsub.s f10, f11, f9
	sw a0, 680(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s3
	fsub.s f11, f10, f18
	sw a0, 684(sp)
	fcvt.s.w f10, s5
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f20
	fcvt.s.w f10, s6
	sw a0, 688(sp)
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f19
	sw a0, 692(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s7
	sw a0, 696(sp)
	flw f10, 456(sp)
	fsub.s f12, f11, f10
	fcvt.s.w f11, s8
	fcvt.w.s a0, f12, rtz
	sw a0, 700(sp)
	flw f10, 432(sp)
	fsub.s f12, f11, f10
	fcvt.s.w f11, s4
	fcvt.w.s a0, f12, rtz
	sw a0, 704(sp)
	flw f10, 424(sp)
	fsub.s f12, f11, f10
	fcvt.w.s a0, f12, rtz
	sw a0, 708(sp)
	ld s1, 592(sp)
	lw a0, 0(s1)
	sh2add a1, a0, s0
	lw a2, 0(a1)
	fcvt.s.w f10, a2
label772:
	ld ra, 408(sp)
	ld s0, 400(sp)
	ld s1, 392(sp)
	flw f9, 616(sp)
	ld s10, 672(sp)
	flw f22, 600(sp)
	ld s11, 624(sp)
	flw f23, 584(sp)
	flw f24, 580(sp)
	ld s2, 464(sp)
	ld s3, 472(sp)
	flw f8, 480(sp)
	ld s9, 488(sp)
	flw f21, 496(sp)
	flw f18, 504(sp)
	ld s6, 512(sp)
	ld s5, 528(sp)
	ld s4, 544(sp)
	flw f20, 556(sp)
	ld s8, 560(sp)
	ld s7, 568(sp)
	flw f19, 576(sp)
	addi sp, sp, 712
	ret
label774:
	sd t0, 0(sp)
	fsw f2, 8(sp)
	fsw f7, 16(sp)
	fsw f3, 24(sp)
	flw f23, 520(sp)
	fsw f23, 32(sp)
	fsw f5, 40(sp)
	sd t3, 48(sp)
	flw f24, 440(sp)
	fsw f24, 56(sp)
	sd t2, 64(sp)
	sd t1, 72(sp)
	fsw f0, 80(sp)
	flw f23, 444(sp)
	fsw f23, 88(sp)
	fsw f1, 96(sp)
	fsw f29, 104(sp)
	fsw f15, 112(sp)
	sd s3, 120(sp)
	flw f23, 500(sp)
	fsw f23, 128(sp)
	sd t4, 136(sp)
	fsw f4, 144(sp)
	fsw f6, 152(sp)
	fsw f17, 160(sp)
	flw f23, 448(sp)
	fsw f23, 168(sp)
	sd t5, 176(sp)
	sd t6, 184(sp)
	fsw f30, 192(sp)
	fsw f16, 200(sp)
	fsw f8, 208(sp)
	sd s6, 216(sp)
	flw f23, 436(sp)
	fsw f23, 224(sp)
	sd s5, 232(sp)
	sd s7, 240(sp)
	flw f23, 420(sp)
	fsw f23, 248(sp)
	fsw f28, 256(sp)
	fsw f20, 264(sp)
	flw f23, 428(sp)
	fsw f23, 272(sp)
	sd s2, 280(sp)
	sd s4, 288(sp)
	sd s8, 296(sp)
	fsw f21, 304(sp)
	fsw f19, 312(sp)
	fsw f31, 320(sp)
	flw f24, 416(sp)
	fsw f24, 328(sp)
	flw f23, 536(sp)
	fsw f23, 336(sp)
	fsw f22, 344(sp)
	sd s10, 352(sp)
	fsw f9, 360(sp)
	sd s11, 368(sp)
	flw f23, 452(sp)
	fsw f23, 376(sp)
	ld s1, 592(sp)
	sd s1, 384(sp)
	mv a0, a3
	flw f15, 552(sp)
	flw f16, 484(sp)
	flw f17, 508(sp)
	jal params_f40_i24
	j label772
params_fa40:
.p2align 2
	addi sp, sp, -608
	mv t6, a0
	sd s5, 264(sp)
	mv s5, a1
	sd s0, 272(sp)
	mv s0, a5
	sd s3, 280(sp)
	addi s0, sp, 488
	mv s3, a2
	sd s2, 368(sp)
	mv s2, a3
	sd s1, 352(sp)
	mv s1, a4
	sd s6, 336(sp)
	sd s4, 432(sp)
	sd s7, 408(sp)
	sd s8, 392(sp)
	sd s9, 416(sp)
	sd s10, 440(sp)
	sd ra, 448(sp)
	sd a1, 576(sp)
	sd a2, 568(sp)
	sd a3, 560(sp)
	sd a4, 552(sp)
	sd a5, 376(sp)
	sd a6, 360(sp)
	sd a7, 344(sp)
	ld s4, 608(sp)
	sd s4, 424(sp)
	ld a0, 616(sp)
	ld a1, 624(sp)
	ld a2, 632(sp)
	ld a3, 640(sp)
	ld a4, 648(sp)
	ld a5, 656(sp)
	ld t0, 664(sp)
	ld t1, 672(sp)
	ld t2, 680(sp)
	ld t3, 688(sp)
	ld t4, 696(sp)
	ld t5, 704(sp)
	ld s6, 712(sp)
	ld s7, 720(sp)
	ld s8, 728(sp)
	ld s9, 736(sp)
	ld a6, 744(sp)
	sd a6, 456(sp)
	ld a7, 752(sp)
	sd a7, 464(sp)
	ld a6, 760(sp)
	sd a6, 472(sp)
	ld a7, 768(sp)
	sd a7, 480(sp)
	ld a6, 776(sp)
	sd a6, 528(sp)
	ld a7, 784(sp)
	sd a7, 536(sp)
	ld a6, 792(sp)
	sd a6, 544(sp)
	ld a7, 800(sp)
	sd a7, 288(sp)
	ld a6, 808(sp)
	sd a6, 296(sp)
	ld a7, 816(sp)
	sd a7, 304(sp)
	ld a6, 824(sp)
	sd a6, 312(sp)
	ld a7, 832(sp)
	sd a7, 320(sp)
	ld a6, 840(sp)
	sd a6, 328(sp)
	ld a7, 848(sp)
	sd a7, 600(sp)
	ld a6, 856(sp)
	sd a6, 584(sp)
	ld a7, 864(sp)
	sd a7, 592(sp)
	sd s0, 400(sp)
	lw s10, 0(a7)
	sh2add t6, s10, t6
	sd s10, 384(sp)
	flw f10, 0(t6)
	sh2add t6, s10, s5
	flw f11, 0(t6)
	sh2add t6, s10, s3
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, s2
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, s1
	fadd.s f10, f10, f11
	fsw f10, 488(sp)
	flw f10, 0(t6)
	ld s0, 376(sp)
	sh2add t6, s10, s0
	flw f11, 0(t6)
	ld a6, 360(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a6
	sh2add a6, s10, a0
	flw f11, 0(t6)
	ld a7, 344(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a7
	flw f11, 0(t6)
	sh2add t6, s10, s4
	fadd.s f10, f10, f11
	fsw f10, 492(sp)
	flw f10, 0(t6)
	sh2add t6, s10, a1
	flw f11, 0(a6)
	sh2add a6, s10, a4
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, a2
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, a3
	fadd.s f10, f10, f11
	fsw f10, 496(sp)
	flw f10, 0(t6)
	sh2add t6, s10, a5
	flw f11, 0(a6)
	sh2add a6, s10, t1
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, t0
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, t2
	fadd.s f10, f10, f11
	fsw f10, 500(sp)
	flw f10, 0(a6)
	sh2add a6, s10, s6
	flw f11, 0(t6)
	sh2add t6, s10, t3
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, t4
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, t5
	fadd.s f10, f10, f11
	fsw f10, 504(sp)
	flw f10, 0(t6)
	sh2add t6, s10, s7
	flw f11, 0(a6)
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, s8
	fadd.s f10, f10, f11
	flw f11, 0(t6)
	sh2add t6, s10, s9
	fadd.s f10, f10, f11
	fsw f10, 508(sp)
	flw f10, 0(t6)
	ld a6, 456(sp)
	sh2add t6, s10, a6
	flw f11, 0(t6)
	ld a7, 464(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a7
	flw f11, 0(t6)
	ld a6, 472(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a6
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 512(sp)
	ld a7, 480(sp)
	sh2add t6, s10, a7
	flw f10, 0(t6)
	ld a6, 528(sp)
	sh2add t6, s10, a6
	flw f11, 0(t6)
	ld a7, 536(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a7
	flw f11, 0(t6)
	ld a6, 544(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a6
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 516(sp)
	ld a7, 288(sp)
	sh2add t6, s10, a7
	flw f10, 0(t6)
	ld a6, 296(sp)
	sh2add t6, s10, a6
	flw f11, 0(t6)
	ld a7, 304(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a7
	flw f11, 0(t6)
	ld a6, 312(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a6
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 520(sp)
	ld a7, 320(sp)
	sh2add t6, s10, a7
	flw f10, 0(t6)
	ld a6, 328(sp)
	sh2add t6, s10, a6
	flw f11, 0(t6)
	ld a7, 600(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a7
	flw f11, 0(t6)
	ld a6, 584(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a6
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 524(sp)
	fmv.w.x f10, zero
	flw f11, 0(t6)
	feq.s t6, f11, f10
	xori a7, t6, 1
	fcvt.s.w f11, a7
	feq.s a6, f11, f10
	xori t6, a6, 1
	fcvt.s.w f11, t6
	feq.s a6, f11, f10
	beq a6, zero, label441
	j label442
label439:
	ld ra, 448(sp)
	ld s10, 440(sp)
	ld s9, 416(sp)
	ld s8, 392(sp)
	ld s7, 408(sp)
	ld s4, 432(sp)
	ld s6, 336(sp)
	ld s1, 352(sp)
	ld s2, 368(sp)
	ld s3, 280(sp)
	ld s0, 272(sp)
	ld s5, 264(sp)
	addi sp, sp, 608
	ret
label441:
	ld s0, 400(sp)
	li a0, 10
	mv a1, s0
	jal putfarray
	ld s10, 384(sp)
	sh2add a0, s10, s0
	flw f10, 0(a0)
	j label439
label442:
	sd a0, 0(sp)
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
	sd s6, 96(sp)
	sd s7, 104(sp)
	sd s8, 112(sp)
	sd s9, 120(sp)
	ld a6, 456(sp)
	sd a6, 128(sp)
	ld a7, 464(sp)
	sd a7, 136(sp)
	ld a6, 472(sp)
	sd a6, 144(sp)
	ld a7, 480(sp)
	sd a7, 152(sp)
	ld a6, 528(sp)
	sd a6, 160(sp)
	ld a7, 536(sp)
	sd a7, 168(sp)
	ld a6, 544(sp)
	sd a6, 176(sp)
	ld a7, 288(sp)
	sd a7, 184(sp)
	ld a6, 296(sp)
	sd a6, 192(sp)
	ld a7, 304(sp)
	sd a7, 200(sp)
	ld a6, 312(sp)
	sd a6, 208(sp)
	ld a7, 320(sp)
	sd a7, 216(sp)
	ld a6, 328(sp)
	sd a6, 224(sp)
	ld a7, 600(sp)
	sd a7, 232(sp)
	ld a6, 584(sp)
	sd a6, 240(sp)
	ld s0, 400(sp)
	sd s0, 248(sp)
	ld a7, 592(sp)
	sd a7, 256(sp)
	ld s4, 424(sp)
	ld a7, 344(sp)
	ld a6, 360(sp)
	ld s0, 376(sp)
	ld s1, 552(sp)
	ld s2, 560(sp)
	ld s3, 568(sp)
	ld s5, 576(sp)
	mv a0, s5
	mv a1, s3
	mv a2, s2
	mv a3, s1
	mv a4, s0
	mv a5, a6
	mv a6, a7
	mv a7, s4
	jal params_fa40
	j label439
params_mix:
.p2align 2
	addi sp, sp, -800
	sd s10, 672(sp)
	fsw f8, 656(sp)
	sd s8, 640(sp)
	sd s3, 624(sp)
	sd s2, 608(sp)
	sd s1, 592(sp)
	sd s6, 576(sp)
	mv s6, a5
	fsw f18, 560(sp)
	sd s7, 544(sp)
	mv s7, a4
	fsw f19, 528(sp)
	sd s4, 512(sp)
	mv s4, a3
	sd s11, 496(sp)
	mv s4, a7
	mv s11, a2
	addi s4, sp, 704
	sd s0, 488(sp)
	sd s5, 688(sp)
	mv s5, a1
	sd s9, 392(sp)
	mv s5, a6
	mv s9, a0
	fsw f9, 400(sp)
	sd ra, 408(sp)
	sd a1, 632(sp)
	sd a3, 616(sp)
	sd a4, 600(sp)
	sd a5, 584(sp)
	sd a6, 568(sp)
	sd a7, 552(sp)
	ld a0, 800(sp)
	ld a1, 808(sp)
	ld a2, 816(sp)
	ld a3, 824(sp)
	ld a4, 832(sp)
	ld a5, 840(sp)
	ld t0, 848(sp)
	ld t1, 856(sp)
	flw f0, 864(sp)
	flw f1, 872(sp)
	ld t2, 880(sp)
	ld t3, 888(sp)
	ld t4, 896(sp)
	ld t5, 904(sp)
	ld t6, 912(sp)
	flw f2, 920(sp)
	flw f3, 928(sp)
	ld a6, 936(sp)
	ld a7, 944(sp)
	ld s0, 952(sp)
	ld s1, 960(sp)
	flw f4, 968(sp)
	flw f5, 976(sp)
	ld s2, 984(sp)
	ld s3, 992(sp)
	ld s8, 1000(sp)
	ld s6, 1008(sp)
	sd s6, 744(sp)
	flw f6, 1016(sp)
	flw f7, 1024(sp)
	ld s6, 1032(sp)
	sd s6, 416(sp)
	ld s5, 1040(sp)
	sd s5, 696(sp)
	ld s6, 1048(sp)
	sd s6, 424(sp)
	ld s5, 1056(sp)
	sd s5, 432(sp)
	ld s7, 1064(sp)
	sd s7, 440(sp)
	ld s6, 1072(sp)
	sd s6, 448(sp)
	flw f28, 1080(sp)
	flw f29, 1088(sp)
	ld s5, 1096(sp)
	sd s5, 456(sp)
	ld s7, 1104(sp)
	sd s7, 464(sp)
	ld s6, 1112(sp)
	sd s6, 472(sp)
	ld s5, 1120(sp)
	sd s5, 480(sp)
	flw f30, 1128(sp)
	ld s5, 1136(sp)
	sd s5, 792(sp)
	flw f31, 1144(sp)
	ld s6, 1152(sp)
	sd s6, 680(sp)
	addi s6, sp, 752
	ld s5, 1160(sp)
	sd s5, 664(sp)
	flw f8, 1168(sp)
	ld s5, 1176(sp)
	sd s5, 648(sp)
	ld s7, 1184(sp)
	sd s7, 520(sp)
	sd s4, 504(sp)
	sd s6, 536(sp)
	lw s10, 0(s7)
	sh2add s5, s10, t6
	sh2add s4, s10, s11
	flw f18, 0(s4)
	fadd.s f19, f10, f18
	fadd.s f9, f19, f11
	fadd.s f18, f9, f12
	fsw f18, 752(sp)
	ld s7, 600(sp)
	sh2add s4, s10, s7
	flw f18, 0(s4)
	sh2add s4, s10, a0
	fadd.s f9, f13, f18
	flw f18, 0(s4)
	sh2add s4, s10, a4
	fadd.s f9, f9, f18
	flw f18, 0(s4)
	sh2add s4, s10, a5
	fadd.s f9, f9, f18
	fsw f9, 756(sp)
	flw f19, 0(s4)
	sh2add s4, s10, t0
	fadd.s f9, f19, f14
	fadd.s f18, f9, f15
	fadd.s f19, f18, f16
	fsw f19, 760(sp)
	flw f9, 0(s4)
	sh2add s4, s10, t3
	fadd.s f18, f9, f17
	fadd.s f19, f18, f0
	fadd.s f9, f19, f1
	fsw f9, 764(sp)
	flw f9, 0(s4)
	sh2add s4, s10, s1
	flw f18, 0(s5)
	sh2add s5, s10, s0
	fadd.s f9, f9, f18
	fadd.s f19, f9, f2
	fadd.s f18, f19, f3
	fsw f18, 768(sp)
	flw f9, 0(s5)
	flw f18, 0(s4)
	fadd.s f19, f9, f18
	fadd.s f9, f19, f4
	fadd.s f19, f6, f7
	fadd.s f18, f9, f5
	fsw f18, 772(sp)
	ld s6, 424(sp)
	sh2add s4, s10, s6
	flw f9, 0(s4)
	fadd.s f18, f19, f9
	fadd.s f9, f18, f28
	fsw f9, 776(sp)
	ld s5, 456(sp)
	sh2add s4, s10, s5
	flw f18, 0(s4)
	ld s5, 480(sp)
	fadd.s f9, f29, f18
	sh2add s4, s10, s5
	flw f19, 0(s4)
	fadd.s f18, f9, f19
	fadd.s f9, f18, f30
	fsw f9, 780(sp)
	ld s6, 680(sp)
	sh2add s4, s10, s6
	flw f18, 0(s4)
	ld s5, 664(sp)
	fadd.s f9, f31, f18
	sh2add s4, s10, s5
	flw f18, 0(s4)
	sh2add s4, s10, s9
	fadd.s f9, f9, f18
	fadd.s f19, f9, f8
	fmv.w.x f9, zero
	fsw f19, 784(sp)
	fsw f9, 788(sp)
	lw s6, 0(s4)
	ld s4, 616(sp)
	ld s5, 632(sp)
	addw s7, s5, s4
	addw s4, s6, s7
	sw s4, 704(sp)
	ld s6, 584(sp)
	sh2add s5, s10, s6
	lw s7, 0(s5)
	ld s4, 552(sp)
	ld s5, 568(sp)
	addw s6, s5, s4
	sh2add s5, s10, a1
	addw s4, s7, s6
	sw s4, 708(sp)
	lw s6, 0(s5)
	sh2add s5, s10, a2
	addw s4, a3, s6
	lw s6, 0(s5)
	sh2add s5, s10, t2
	addw s4, s4, s6
	sw s4, 712(sp)
	lw s6, 0(s5)
	sh2add s5, s10, t4
	addw s4, t1, s6
	lw s6, 0(s5)
	sh2add s5, s10, t5
	addw s4, s4, s6
	sw s4, 716(sp)
	lw s6, 0(s5)
	sh2add s5, s10, a6
	addw s4, a7, s6
	lw s6, 0(s5)
	sh2add s5, s10, s2
	addw s4, s4, s6
	sh2add s6, s10, s3
	sw s4, 720(sp)
	lw s7, 0(s5)
	lw s5, 0(s6)
	addw s4, s8, s7
	addw s4, s4, s5
	sw s4, 724(sp)
	ld s6, 416(sp)
	sh2add s7, s10, s6
	lw s4, 0(s7)
	ld s5, 696(sp)
	ld s6, 744(sp)
	addw s7, s6, s5
	addw s4, s4, s7
	sw s4, 728(sp)
	ld s7, 440(sp)
	sh2add s4, s10, s7
	lw s6, 0(s4)
	ld s5, 432(sp)
	addw s4, s5, s6
	ld s6, 448(sp)
	sh2add s5, s10, s6
	lw s7, 0(s5)
	addw s4, s4, s7
	sw s4, 732(sp)
	ld s6, 472(sp)
	sh2add s7, s10, s6
	lw s4, 0(s7)
	ld s5, 792(sp)
	ld s7, 464(sp)
	addw s6, s7, s5
	ld s5, 648(sp)
	addw s7, s5, s6
	addw s4, s4, s7
	sw s4, 736(sp)
	sw zero, 740(sp)
	beq s5, zero, label8
	ld s6, 536(sp)
	li a0, 10
	mv a1, s6
	jal putfarray
	li a0, 10
	ld s4, 504(sp)
	mv a1, s4
	jal putarray
	mv a0, zero
label3:
	ld s4, 504(sp)
	sh2add a1, a0, s4
	lw a2, 0(a1)
	ld s6, 536(sp)
	fcvt.s.w f10, a2
	sh2add a2, a0, s6
	addiw a0, a0, 4
	flw f11, 0(a2)
	fsub.s f10, f10, f11
	fcvt.w.s a3, f10, rtz
	sw a3, 0(a1)
	lw a4, 4(a1)
	flw f12, 4(a2)
	fcvt.s.w f10, a4
	fsub.s f11, f10, f12
	fcvt.w.s a4, f11, rtz
	sw a4, 4(a1)
	lw a3, 8(a1)
	flw f11, 8(a2)
	fcvt.s.w f10, a3
	fsub.s f12, f10, f11
	fcvt.w.s a3, f12, rtz
	sw a3, 8(a1)
	lw a4, 12(a1)
	flw f11, 12(a2)
	fcvt.s.w f10, a4
	fsub.s f12, f10, f11
	fcvt.w.s a2, f12, rtz
	sw a2, 12(a1)
	li a1, 8
	blt a0, a1, label3
	sh2add a1, a0, s4
	lw a2, 0(a1)
	sh2add a0, a0, s6
	fcvt.s.w f10, a2
	flw f11, 0(a0)
	fsub.s f10, f10, f11
	fcvt.w.s a2, f10, rtz
	sw a2, 0(a1)
	lw a3, 4(a1)
	flw f12, 4(a0)
	fcvt.s.w f10, a3
	fsub.s f11, f10, f12
	fcvt.w.s a0, f11, rtz
	sw a0, 4(a1)
	ld s7, 520(sp)
	lw a0, 0(s7)
	sh2add a1, a0, s4
	lw a2, 0(a1)
	flw f11, 784(sp)
	fcvt.s.w f10, a2
	fmul.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
label6:
	ld ra, 408(sp)
	flw f9, 400(sp)
	ld s9, 392(sp)
	ld s5, 688(sp)
	ld s0, 488(sp)
	ld s11, 496(sp)
	ld s4, 512(sp)
	flw f19, 528(sp)
	ld s7, 544(sp)
	flw f18, 560(sp)
	ld s6, 576(sp)
	ld s1, 592(sp)
	ld s2, 608(sp)
	ld s3, 624(sp)
	ld s8, 640(sp)
	flw f8, 656(sp)
	ld s10, 672(sp)
	addi sp, sp, 800
	ret
label8:
	fcvt.w.s s4, f8, rtz
	ld s5, 648(sp)
	sd a0, 0(sp)
	sd a1, 8(sp)
	fcvt.s.w f8, s5
	sd a2, 16(sp)
	sd a3, 24(sp)
	sd a4, 32(sp)
	sd a5, 40(sp)
	sd t0, 48(sp)
	sd t1, 56(sp)
	fsw f0, 64(sp)
	fsw f1, 72(sp)
	sd t2, 80(sp)
	sd t3, 88(sp)
	sd t4, 96(sp)
	sd t5, 104(sp)
	sd t6, 112(sp)
	fsw f2, 120(sp)
	fsw f3, 128(sp)
	sd a6, 136(sp)
	sd a7, 144(sp)
	sd s0, 152(sp)
	sd s1, 160(sp)
	fsw f4, 168(sp)
	fsw f5, 176(sp)
	sd s2, 184(sp)
	sd s3, 192(sp)
	sd s8, 200(sp)
	ld s6, 744(sp)
	sd s6, 208(sp)
	fsw f6, 216(sp)
	fsw f7, 224(sp)
	ld s6, 416(sp)
	sd s6, 232(sp)
	ld s5, 696(sp)
	sd s5, 240(sp)
	ld s6, 424(sp)
	sd s6, 248(sp)
	ld s5, 432(sp)
	sd s5, 256(sp)
	ld s7, 440(sp)
	sd s7, 264(sp)
	ld s6, 448(sp)
	sd s6, 272(sp)
	fsw f28, 280(sp)
	fsw f29, 288(sp)
	ld s5, 456(sp)
	sd s5, 296(sp)
	ld s7, 464(sp)
	sd s7, 304(sp)
	ld s6, 472(sp)
	sd s6, 312(sp)
	ld s5, 480(sp)
	sd s5, 320(sp)
	fsw f30, 328(sp)
	ld s5, 792(sp)
	sd s5, 336(sp)
	fsw f31, 344(sp)
	ld s6, 680(sp)
	sd s6, 352(sp)
	ld s5, 664(sp)
	sd s5, 360(sp)
	fsw f8, 368(sp)
	sd s4, 376(sp)
	ld s7, 520(sp)
	sd s7, 384(sp)
	ld s4, 504(sp)
	ld s6, 536(sp)
	ld s5, 632(sp)
	mv a0, s4
	mv a1, s5
	mv a2, s6
	ld s4, 616(sp)
	mv a3, s4
	ld s4, 552(sp)
	ld s5, 568(sp)
	ld s6, 584(sp)
	ld s7, 600(sp)
	mv a4, s7
	mv a5, s6
	mv a6, s5
	mv a7, s4
	jal params_mix
	j label6
.globl main
main:
.p2align 2
	addi sp, sp, -1816
	fsw f26, 712(sp)
	fsw f20, 732(sp)
	sd s8, 752(sp)
	fsw f22, 776(sp)
	sd s10, 1272(sp)
	fsw f23, 1296(sp)
	sd s11, 1600(sp)
	fsw f21, 1624(sp)
	sd s9, 1632(sp)
	fsw f8, 1640(sp)
	fsw f25, 1644(sp)
	fsw f27, 1648(sp)
	sd s0, 1656(sp)
	addi s0, sp, 784
	sd s6, 1768(sp)
	fsw f18, 1760(sp)
	sd s1, 1752(sp)
	addi s1, sp, 1304
	fsw f24, 1744(sp)
	sd s2, 1736(sp)
	addi s2, sp, 1800
	fsw f9, 1728(sp)
	fsw f19, 1712(sp)
	sd s7, 1696(sp)
	sd s3, 696(sp)
	sd s5, 616(sp)
	sd s4, 680(sp)
	sd ra, 632(sp)
	sd s2, 1776(sp)
	sd s1, 1784(sp)
	sd s0, 1792(sp)
	jal getint
	mv s1, zero
	sw a0, 1800(sp)
label1275:
.p2align 2
	li a1, 12
	ld s0, 1792(sp)
	mul a0, s1, a1
	add a0, s0, a0
	jal getfarray
	li a0, 40
	addiw s1, s1, 1
	blt s1, a0, label1275
	mv s0, zero
label1277:
.p2align 2
	li a0, 12
	ld s1, 1784(sp)
	mul a1, s0, a0
	add a0, s1, a1
	jal getarray
	li a0, 24
	addiw s0, s0, 1
	blt s0, a0, label1277
	lw s6, 1800(sp)
	ld s0, 1792(sp)
	sh2add a1, s6, s0
	addi a0, s0, 12
	addi a2, s0, 60
	flw f10, 0(a1)
	sh2add a1, s6, a0
	fsw f10, 408(sp)
	addi a0, s0, 24
	flw f25, 0(a1)
	sh2add a1, s6, a0
	addi a0, s0, 36
	flw f12, 0(a1)
	sh2add a1, s6, a0
	fsw f12, 404(sp)
	addi a0, s0, 48
	flw f0, 0(a1)
	sh2add a1, s6, a0
	fsw f0, 396(sp)
	sh2add a0, s6, a2
	flw f14, 0(a1)
	addi a2, s0, 96
	addi a1, s0, 72
	fsw f14, 400(sp)
	flw f24, 0(a0)
	sh2add a0, s6, a1
	flw f16, 0(a0)
	addi a1, s0, 84
	sh2add a0, s6, a1
	fsw f16, 664(sp)
	sh2add a1, s6, a2
	flw f8, 0(a0)
	flw f23, 0(a1)
	addi a0, s0, 108
	addi a1, s0, 120
	sh2add a2, s6, a0
	sh2add a0, s6, a1
	flw f14, 0(a2)
	addi a1, s0, 132
	fsw f14, 412(sp)
	flw f15, 0(a0)
	sh2add a0, s6, a1
	fsw f15, 416(sp)
	addi a1, s0, 144
	flw f16, 0(a0)
	sh2add a2, s6, a1
	addi a0, s0, 156
	fsw f16, 420(sp)
	sh2add a1, s6, a0
	flw f10, 0(a2)
	addi a0, s0, 168
	fsw f10, 728(sp)
	flw f17, 0(a1)
	sh2add a1, s6, a0
	fsw f17, 424(sp)
	addi a0, s0, 180
	flw f10, 0(a1)
	sh2add a1, s6, a0
	fsw f10, 436(sp)
	addi a0, s0, 192
	flw f12, 0(a1)
	sh2add a2, s6, a0
	addi a1, s0, 204
	fsw f12, 428(sp)
	sh2add a0, s6, a1
	flw f10, 0(a2)
	addi a1, s0, 216
	fsw f10, 608(sp)
	flw f27, 0(a0)
	sh2add a0, s6, a1
	flw f11, 0(a0)
	addi a1, s0, 228
	sh2add a0, s6, a1
	fsw f11, 440(sp)
	addi a1, s0, 240
	flw f10, 0(a0)
	sh2add a0, s6, a1
	fsw f10, 448(sp)
	addi a1, s0, 252
	flw f12, 0(a0)
	sh2add a0, s6, a1
	fsw f12, 760(sp)
	addi a1, s0, 264
	flw f11, 0(a0)
	sh2add a0, s6, a1
	fsw f11, 1664(sp)
	addi a1, s0, 276
	flw f21, 0(a0)
	sh2add a0, s6, a1
	flw f22, 0(a0)
	addi a1, s0, 288
	sh2add a0, s6, a1
	addi a1, s0, 300
	flw f10, 0(a0)
	sh2add a0, s6, a1
	fsw f10, 452(sp)
	addi a1, s0, 312
	flw f20, 0(a0)
	sh2add a0, s6, a1
	addi a1, s0, 324
	flw f12, 0(a0)
	sh2add a0, s6, a1
	fsw f12, 1680(sp)
	addi a1, s0, 336
	flw f11, 0(a0)
	sh2add a0, s6, a1
	fsw f11, 444(sp)
	addi a1, s0, 348
	flw f15, 0(a0)
	sh2add a0, s6, a1
	fsw f15, 432(sp)
	addi a1, s0, 360
	flw f10, 0(a0)
	sh2add a2, s6, a1
	addi a0, s0, 372
	fsw f10, 736(sp)
	sh2add a1, s6, a0
	flw f26, 0(a2)
	addi a0, s0, 384
	flw f9, 0(a1)
	addi a2, s0, 396
	sh2add a1, s6, a0
	flw f18, 0(a1)
	sh2add a0, s6, a2
	addi a1, s0, 408
	flw f11, 0(a0)
	sh2add a0, s6, a1
	fsw f11, 1300(sp)
	addi a1, s0, 420
	flw f10, 0(a0)
	sh2add a0, s6, a1
	fsw f10, 1280(sp)
	addi a1, s0, 432
	flw f19, 0(a0)
	sh2add a0, s6, a1
	flw f10, 0(a0)
	addi a1, s0, 444
	sh2add a0, s6, a1
	fsw f10, 780(sp)
	addi a1, s0, 456
	flw f16, 0(a0)
	sh2add a0, s6, a1
	fsw f16, 648(sp)
	addi a1, s0, 468
	flw f10, 0(a0)
	sh2add a0, s6, a1
	fsw f10, 392(sp)
	flw f11, 0(a0)
	fsw f11, 1608(sp)
	fsw f23, 0(sp)
	fsw f14, 8(sp)
	flw f15, 416(sp)
	fsw f15, 16(sp)
	flw f16, 420(sp)
	fsw f16, 24(sp)
	flw f10, 728(sp)
	fsw f10, 32(sp)
	fsw f17, 40(sp)
	flw f10, 436(sp)
	fsw f10, 48(sp)
	flw f12, 428(sp)
	fsw f12, 56(sp)
	flw f10, 608(sp)
	fsw f10, 64(sp)
	fsw f27, 72(sp)
	flw f11, 440(sp)
	fsw f11, 80(sp)
	flw f10, 448(sp)
	fsw f10, 88(sp)
	flw f12, 760(sp)
	fsw f12, 96(sp)
	flw f11, 1664(sp)
	fsw f11, 104(sp)
	fsw f21, 112(sp)
	fsw f22, 120(sp)
	flw f10, 452(sp)
	fsw f10, 128(sp)
	fsw f20, 136(sp)
	flw f12, 1680(sp)
	fsw f12, 144(sp)
	flw f11, 444(sp)
	fsw f11, 152(sp)
	flw f15, 432(sp)
	fsw f15, 160(sp)
	flw f10, 736(sp)
	fsw f10, 168(sp)
	fsw f26, 176(sp)
	fsw f9, 184(sp)
	fsw f18, 192(sp)
	flw f11, 1300(sp)
	fsw f11, 200(sp)
	flw f10, 1280(sp)
	fsw f10, 208(sp)
	fsw f19, 216(sp)
	flw f10, 780(sp)
	fsw f10, 224(sp)
	flw f16, 648(sp)
	fsw f16, 232(sp)
	flw f10, 392(sp)
	fsw f10, 240(sp)
	flw f11, 1608(sp)
	fsw f11, 248(sp)
	flw f10, 408(sp)
	flw f12, 404(sp)
	flw f14, 400(sp)
	flw f16, 664(sp)
	fmv.s f11, f25
	fmv.s f13, f0
	fmv.s f15, f24
	fmv.s f17, f8
	ld s2, 1776(sp)
	mv a0, s2
	jal params_f40
	fsw f10, 456(sp)
	ld s1, 1784(sp)
	addi a2, s1, 276
	sh2add a1, s6, a2
	lw a0, 0(a1)
	addi a1, s1, 24
	sd a0, 544(sp)
	sh2add a0, s6, a1
	lw s3, 0(a0)
	addi a1, s1, 72
	sh2add a0, s6, a1
	lw a2, 0(a0)
	addi a1, s1, 12
	sh2add a0, s6, a1
	addi a1, s1, 48
	sd a2, 536(sp)
	lw s5, 0(a0)
	sh2add a0, s6, a1
	lw s4, 0(a0)
	addi a0, s1, 60
	sh2add a1, s6, a0
	lw a7, 0(a1)
	addi a1, s1, 264
	sh2add a0, s6, a1
	sd a7, 1808(sp)
	lw a6, 0(a0)
	sh2add a0, s6, s1
	lw a7, 0(a0)
	addi a0, s1, 228
	sh2add a1, s6, a0
	sd a7, 1616(sp)
	addi a0, s1, 84
	lw a4, 0(a1)
	sh2add a1, s6, a0
	sd a4, 528(sp)
	lw a4, 0(a1)
	addi a1, s1, 120
	sh2add a0, s6, a1
	sd a4, 512(sp)
	addi a1, s1, 156
	lw a5, 0(a0)
	sh2add a0, s6, a1
	addi a1, s1, 96
	sd a5, 480(sp)
	lw a4, 0(a0)
	sh2add a0, s6, a1
	sd a4, 472(sp)
	lw t4, 0(a0)
	addi a0, s1, 204
	sh2add a1, s6, a0
	sd t4, 1592(sp)
	lw a5, 0(a1)
	addi a1, s1, 216
	sh2add a0, s6, a1
	sd a5, 1288(sp)
	addi a1, s1, 108
	lw a4, 0(a0)
	sh2add a0, s6, a1
	addi a1, s1, 144
	sd a4, 1264(sp)
	sh2add a2, s6, a1
	lw t4, 0(a0)
	addi a1, s1, 132
	sh2add a3, s6, a1
	addi a1, s1, 192
	sd t4, 768(sp)
	sh2add a4, s6, a1
	lw a0, 0(a2)
	addi a1, s1, 36
	lw a2, 0(a3)
	sh2add a5, s6, a1
	lw a3, 0(a4)
	addi a1, s1, 252
	lw a4, 0(a5)
	sd a4, 744(sp)
	sh2add a4, s6, a1
	lw a5, 0(a4)
	addi a1, s1, 240
	sd a5, 1672(sp)
	sh2add a5, s6, a1
	lw a4, 0(a5)
	addi a5, s1, 180
	sh2add t0, s6, a5
	sd a4, 720(sp)
	addi a4, s1, 168
	lw a1, 0(t0)
	sh2add a5, s6, a4
	lw t0, 0(a5)
	sd t0, 1688(sp)
	ld a4, 528(sp)
	sd a4, 0(sp)
	flw f10, 728(sp)
	fsw f10, 8(sp)
	fsw f25, 16(sp)
	flw f16, 420(sp)
	fsw f16, 24(sp)
	flw f10, 392(sp)
	fsw f10, 32(sp)
	flw f16, 664(sp)
	fsw f16, 40(sp)
	ld a4, 512(sp)
	sd a4, 48(sp)
	fsw f18, 56(sp)
	ld a5, 480(sp)
	sd a5, 64(sp)
	ld a4, 472(sp)
	sd a4, 72(sp)
	flw f12, 760(sp)
	fsw f12, 80(sp)
	flw f11, 1300(sp)
	fsw f11, 88(sp)
	fsw f22, 96(sp)
	flw f14, 412(sp)
	fsw f14, 104(sp)
	fsw f20, 112(sp)
	ld t4, 1592(sp)
	sd t4, 120(sp)
	flw f11, 1608(sp)
	fsw f11, 128(sp)
	ld a5, 1288(sp)
	sd a5, 136(sp)
	flw f11, 1664(sp)
	fsw f11, 144(sp)
	flw f10, 608(sp)
	fsw f10, 152(sp)
	fsw f24, 160(sp)
	flw f10, 1280(sp)
	fsw f10, 168(sp)
	ld a4, 1264(sp)
	sd a4, 176(sp)
	ld t4, 768(sp)
	sd t4, 184(sp)
	flw f10, 436(sp)
	fsw f10, 192(sp)
	flw f15, 416(sp)
	fsw f15, 200(sp)
	flw f10, 408(sp)
	fsw f10, 208(sp)
	sd a0, 216(sp)
	fsw f9, 224(sp)
	sd a2, 232(sp)
	sd a3, 240(sp)
	flw f11, 444(sp)
	fsw f11, 248(sp)
	flw f10, 452(sp)
	fsw f10, 256(sp)
	flw f17, 424(sp)
	fsw f17, 264(sp)
	flw f10, 736(sp)
	fsw f10, 272(sp)
	ld a4, 744(sp)
	sd a4, 280(sp)
	ld a5, 1672(sp)
	sd a5, 288(sp)
	ld a4, 720(sp)
	sd a4, 296(sp)
	flw f11, 440(sp)
	fsw f11, 304(sp)
	flw f10, 448(sp)
	fsw f10, 312(sp)
	fsw f21, 320(sp)
	flw f12, 1680(sp)
	fsw f12, 328(sp)
	flw f10, 780(sp)
	fsw f10, 336(sp)
	fsw f27, 344(sp)
	sd a1, 352(sp)
	flw f12, 404(sp)
	fsw f12, 360(sp)
	sd t0, 368(sp)
	fsw f19, 376(sp)
	sd s2, 384(sp)
	ld a0, 544(sp)
	ld a2, 536(sp)
	mv a1, s3
	flw f14, 400(sp)
	fmv.s f10, f14
	ld a7, 1808(sp)
	mv a3, s5
	mv a4, s4
	mv a5, a7
	flw f12, 428(sp)
	fmv.s f11, f23
	fmv.s f13, f8
	flw f15, 432(sp)
	flw f0, 396(sp)
	fmv.s f14, f0
	ld a7, 1616(sp)
	flw f16, 648(sp)
	fmv.s f17, f26
	jal params_f40_i24
	addi a1, s0, 132
	addi a0, s0, 108
	addi s11, s0, 96
	addi a2, s0, 12
	addi t0, s0, 24
	addi a7, s0, 84
	fmv.s f8, f10
	addi a5, s0, 60
	addi a6, s0, 72
	addi s7, s0, 180
	addi a4, s0, 48
	addi t1, s0, 264
	addi a3, s0, 36
	addi s8, s0, 228
	addi s10, s0, 276
	addi t5, s0, 300
	addi s6, s0, 336
	addi t6, s0, 372
	addi t3, s0, 432
	addi t2, s0, 444
	addi t4, s0, 456
	addi s9, s0, 324
	sd a2, 656(sp)
	addi a2, s0, 216
	sd t0, 488(sp)
	sd a3, 496(sp)
	addi t0, s0, 420
	sd a4, 520(sp)
	addi a3, s0, 120
	addi a4, s0, 168
	sd a5, 600(sp)
	sd a6, 552(sp)
	addi a5, s0, 156
	sd a7, 560(sp)
	addi a6, s0, 288
	sd s11, 568(sp)
	addi a7, s0, 384
	addi s11, s0, 144
	sd s11, 576(sp)
	addi s11, s0, 192
	sd s11, 592(sp)
	addi s11, s0, 204
	sd s11, 584(sp)
	addi s11, s0, 240
	sd s11, 1720(sp)
	addi s11, s0, 252
	sd s11, 1704(sp)
	addi s11, s0, 312
	sd s11, 704(sp)
	addi s11, s0, 348
	sd s11, 624(sp)
	addi s11, s0, 360
	sd s11, 672(sp)
	addi s11, s0, 396
	sd s11, 640(sp)
	addi s11, s0, 408
	sd s11, 688(sp)
	addi s11, s0, 468
	sd s11, 464(sp)
	ld s11, 568(sp)
	sd s11, 0(sp)
	sd a0, 8(sp)
	sd a3, 16(sp)
	sd a1, 24(sp)
	ld s11, 576(sp)
	sd s11, 32(sp)
	sd a5, 40(sp)
	sd a4, 48(sp)
	sd s7, 56(sp)
	ld s11, 592(sp)
	sd s11, 64(sp)
	ld s11, 584(sp)
	sd s11, 72(sp)
	sd a2, 80(sp)
	sd s8, 88(sp)
	ld s11, 1720(sp)
	sd s11, 96(sp)
	ld s11, 1704(sp)
	sd s11, 104(sp)
	sd t1, 112(sp)
	sd s10, 120(sp)
	sd a6, 128(sp)
	sd t5, 136(sp)
	ld s11, 704(sp)
	sd s11, 144(sp)
	sd s9, 152(sp)
	sd s6, 160(sp)
	ld s11, 624(sp)
	sd s11, 168(sp)
	ld s11, 672(sp)
	sd s11, 176(sp)
	sd t6, 184(sp)
	sd a7, 192(sp)
	ld s11, 640(sp)
	sd s11, 200(sp)
	ld s11, 688(sp)
	sd s11, 208(sp)
	sd t0, 216(sp)
	sd t3, 224(sp)
	sd t2, 232(sp)
	sd t4, 240(sp)
	ld s11, 464(sp)
	sd s11, 248(sp)
	sd s2, 256(sp)
	ld a5, 600(sp)
	ld a2, 656(sp)
	ld a7, 560(sp)
	ld a6, 552(sp)
	ld a4, 520(sp)
	ld a3, 496(sp)
	ld t0, 488(sp)
	mv a0, s0
	mv a1, a2
	mv a2, t0
	jal params_fa40
	addi a3, s1, 228
	addi t3, s1, 120
	addi a0, s1, 12
	addi a1, s1, 264
	addi t1, s1, 132
	addi t0, s1, 36
	addi t4, s1, 72
	addi t5, s1, 84
	addi t2, s1, 144
	fmv.s f23, f10
	addi a5, s1, 180
	addi a4, s1, 192
	addi a2, s1, 276
	sd t0, 504(sp)
	ld a6, 552(sp)
	addi t0, s1, 156
	sd a6, 0(sp)
	sd t4, 8(sp)
	sd t5, 16(sp)
	ld t4, 1592(sp)
	sd t4, 24(sp)
	ld a7, 560(sp)
	sd a7, 32(sp)
	ld s11, 568(sp)
	sd s11, 40(sp)
	ld s11, 576(sp)
	sd s11, 48(sp)
	ld t4, 768(sp)
	sd t4, 56(sp)
	flw f10, 436(sp)
	fsw f10, 64(sp)
	flw f12, 428(sp)
	fsw f12, 72(sp)
	sd t3, 80(sp)
	ld s11, 592(sp)
	sd s11, 88(sp)
	sd t1, 96(sp)
	sd t2, 104(sp)
	ld s11, 584(sp)
	sd s11, 112(sp)
	flw f11, 440(sp)
	fsw f11, 120(sp)
	flw f10, 448(sp)
	fsw f10, 128(sp)
	sd t0, 136(sp)
	ld t0, 1688(sp)
	sd t0, 144(sp)
	ld s11, 1720(sp)
	sd s11, 152(sp)
	ld s11, 1704(sp)
	sd s11, 160(sp)
	fsw f21, 168(sp)
	fsw f22, 176(sp)
	sd a5, 184(sp)
	sd a4, 192(sp)
	ld a5, 1288(sp)
	sd a5, 200(sp)
	ld a4, 1264(sp)
	sd a4, 208(sp)
	flw f10, 452(sp)
	fsw f10, 216(sp)
	fsw f20, 224(sp)
	sd a3, 232(sp)
	ld a4, 720(sp)
	sd a4, 240(sp)
	ld s11, 704(sp)
	sd s11, 248(sp)
	ld a5, 1672(sp)
	sd a5, 256(sp)
	sd a1, 264(sp)
	sd a2, 272(sp)
	flw f11, 444(sp)
	fsw f11, 280(sp)
	flw f15, 432(sp)
	fsw f15, 288(sp)
	ld s11, 624(sp)
	sd s11, 296(sp)
	ld a7, 1616(sp)
	sd a7, 304(sp)
	sd a0, 312(sp)
	ld s11, 672(sp)
	sd s11, 320(sp)
	fsw f9, 328(sp)
	sd s3, 336(sp)
	fsw f18, 344(sp)
	ld s11, 640(sp)
	sd s11, 352(sp)
	ld s11, 688(sp)
	sd s11, 360(sp)
	fsw f19, 368(sp)
	ld a4, 744(sp)
	sd a4, 376(sp)
	sd s2, 384(sp)
	flw f10, 408(sp)
	ld a2, 656(sp)
	mv a0, s1
	mv a1, s5
	flw f12, 404(sp)
	fmv.s f11, f12
	mv a3, s3
	flw f14, 400(sp)
	flw f0, 396(sp)
	fmv.s f12, f0
	fmv.s f13, f14
	ld a7, 1808(sp)
	ld a5, 600(sp)
	ld t0, 504(sp)
	mv a4, a5
	mv a5, t0
	mv a6, s4
	flw f17, 424(sp)
	flw f16, 420(sp)
	flw f15, 416(sp)
	flw f14, 412(sp)
	jal params_mix
	flw f10, 456(sp)
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
	ld ra, 632(sp)
	ld s4, 680(sp)
	ld s5, 616(sp)
	ld s3, 696(sp)
	ld s7, 1696(sp)
	flw f19, 1712(sp)
	flw f9, 1728(sp)
	ld s2, 1736(sp)
	flw f24, 1744(sp)
	ld s1, 1752(sp)
	flw f18, 1760(sp)
	ld s6, 1768(sp)
	ld s0, 1656(sp)
	flw f27, 1648(sp)
	flw f25, 1644(sp)
	flw f8, 1640(sp)
	ld s9, 1632(sp)
	flw f21, 1624(sp)
	ld s11, 1600(sp)
	flw f23, 1296(sp)
	ld s10, 1272(sp)
	flw f22, 776(sp)
	ld s8, 752(sp)
	flw f20, 732(sp)
	flw f26, 712(sp)
	addi sp, sp, 1816
	ret
