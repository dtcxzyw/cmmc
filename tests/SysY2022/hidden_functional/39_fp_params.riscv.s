.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
params_f40:
.p2align 2
	addi sp, sp, -416
	sd s0, 384(sp)
	mv s0, a0
	fsw f18, 392(sp)
	fsw f23, 396(sp)
	fsw f22, 400(sp)
	fsw f9, 404(sp)
	fsw f8, 296(sp)
	fsw f21, 300(sp)
	fsw f20, 304(sp)
	fsw f19, 308(sp)
	fsw f24, 312(sp)
	fsw f25, 316(sp)
	fsw f26, 320(sp)
	sd s1, 328(sp)
	addi s1, sp, 256
	sd ra, 336(sp)
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
	fsw f25, 344(sp)
	flw f26, 592(sp)
	fsw f26, 348(sp)
	flw f25, 600(sp)
	fsw f25, 352(sp)
	flw f26, 608(sp)
	fsw f26, 408(sp)
	flw f25, 616(sp)
	fsw f25, 356(sp)
	flw f26, 624(sp)
	fsw f26, 360(sp)
	flw f25, 632(sp)
	fsw f25, 364(sp)
	flw f26, 640(sp)
	fsw f26, 368(sp)
	flw f25, 648(sp)
	fsw f25, 372(sp)
	flw f26, 656(sp)
	fsw f26, 376(sp)
	fmv.w.x f26, zero
	flw f25, 664(sp)
	feq.s a0, f25, f26
	fsw f25, 380(sp)
	bne a0, zero, label1085
	fadd.s f11, f10, f11
	li a0, 10
	fadd.s f10, f11, f12
	fadd.s f11, f14, f15
	fadd.s f12, f10, f13
	fadd.s f13, f5, f8
	fsw f12, 256(sp)
	fadd.s f12, f11, f16
	fadd.s f11, f0, f18
	fadd.s f10, f12, f17
	fsw f10, 260(sp)
	fadd.s f10, f11, f23
	fadd.s f12, f10, f22
	fadd.s f10, f13, f31
	fsw f12, 264(sp)
	fadd.s f11, f10, f21
	fadd.s f12, f4, f28
	fsw f11, 268(sp)
	fadd.s f10, f12, f29
	fadd.s f12, f2, f9
	fadd.s f11, f10, f30
	fadd.s f10, f12, f20
	fadd.s f12, f3, f24
	fsw f11, 272(sp)
	fadd.s f11, f10, f19
	fsw f11, 276(sp)
	fadd.s f11, f12, f6
	fadd.s f10, f11, f7
	fsw f10, 280(sp)
	flw f25, 344(sp)
	flw f26, 348(sp)
	fadd.s f10, f1, f25
	flw f25, 352(sp)
	fadd.s f11, f10, f26
	fadd.s f10, f11, f25
	fsw f10, 284(sp)
	flw f25, 356(sp)
	flw f26, 408(sp)
	fadd.s f10, f26, f25
	flw f26, 360(sp)
	flw f25, 364(sp)
	fadd.s f11, f10, f26
	fadd.s f10, f11, f25
	fsw f10, 288(sp)
	flw f25, 372(sp)
	flw f26, 368(sp)
	fadd.s f11, f26, f25
	flw f26, 376(sp)
	flw f25, 380(sp)
	fadd.s f10, f11, f26
	fadd.s f11, f10, f25
	fsw f11, 292(sp)
	mv a1, s1
	jal putfarray
	lw a0, 0(s0)
	sh2add a1, a0, s1
	flw f10, 0(a1)
label1083:
	ld ra, 336(sp)
	ld s1, 328(sp)
	flw f26, 320(sp)
	flw f25, 316(sp)
	flw f24, 312(sp)
	flw f19, 308(sp)
	flw f20, 304(sp)
	flw f21, 300(sp)
	flw f8, 296(sp)
	flw f9, 404(sp)
	flw f22, 400(sp)
	flw f23, 396(sp)
	flw f18, 392(sp)
	ld s0, 384(sp)
	addi sp, sp, 416
	ret
label1085:
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
	flw f25, 344(sp)
	fsw f25, 160(sp)
	flw f26, 348(sp)
	fsw f26, 168(sp)
	flw f25, 352(sp)
	fsw f25, 176(sp)
	flw f26, 408(sp)
	fsw f26, 184(sp)
	flw f25, 356(sp)
	fsw f25, 192(sp)
	flw f26, 360(sp)
	fsw f26, 200(sp)
	flw f25, 364(sp)
	fsw f25, 208(sp)
	flw f26, 368(sp)
	fsw f26, 216(sp)
	flw f25, 372(sp)
	fsw f25, 224(sp)
	flw f26, 376(sp)
	fsw f26, 232(sp)
	flw f25, 380(sp)
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
	j label1083
params_f40_i24:
.p2align 2
	addi sp, sp, -704
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
	addi s9, sp, 628
	fsw f8, 480(sp)
	sd s3, 472(sp)
	sd s2, 464(sp)
	fsw f24, 580(sp)
	fsw f23, 584(sp)
	sd s11, 592(sp)
	fsw f22, 624(sp)
	sd s10, 616(sp)
	fsw f9, 668(sp)
	sd s1, 392(sp)
	sd s0, 400(sp)
	addi s0, sp, 672
	sd ra, 408(sp)
	fsw f15, 552(sp)
	fsw f17, 508(sp)
	fsw f16, 484(sp)
	ld t0, 704(sp)
	flw f2, 712(sp)
	flw f7, 720(sp)
	flw f3, 728(sp)
	flw f23, 736(sp)
	fsw f23, 520(sp)
	flw f5, 744(sp)
	ld t3, 752(sp)
	flw f24, 760(sp)
	fsw f24, 440(sp)
	ld t2, 768(sp)
	ld t1, 776(sp)
	flw f0, 784(sp)
	flw f23, 792(sp)
	fsw f23, 444(sp)
	flw f1, 800(sp)
	flw f29, 808(sp)
	flw f15, 816(sp)
	ld s3, 824(sp)
	flw f23, 832(sp)
	fsw f23, 500(sp)
	ld t4, 840(sp)
	flw f4, 848(sp)
	flw f6, 856(sp)
	flw f17, 864(sp)
	flw f23, 872(sp)
	fsw f23, 448(sp)
	ld t5, 880(sp)
	ld t6, 888(sp)
	flw f30, 896(sp)
	flw f16, 904(sp)
	flw f8, 912(sp)
	ld s6, 920(sp)
	flw f23, 928(sp)
	fsw f23, 436(sp)
	ld s5, 936(sp)
	ld s7, 944(sp)
	flw f23, 952(sp)
	fsw f23, 420(sp)
	flw f28, 960(sp)
	flw f20, 968(sp)
	flw f23, 976(sp)
	fsw f23, 428(sp)
	ld s2, 984(sp)
	ld s4, 992(sp)
	ld s8, 1000(sp)
	flw f21, 1008(sp)
	flw f19, 1016(sp)
	flw f31, 1024(sp)
	flw f24, 1032(sp)
	fsw f24, 416(sp)
	flw f23, 1040(sp)
	fsw f23, 536(sp)
	flw f22, 1048(sp)
	ld s10, 1056(sp)
	flw f9, 1064(sp)
	ld s11, 1072(sp)
	flw f23, 1080(sp)
	fsw f23, 452(sp)
	ld s1, 1088(sp)
	sd s1, 600(sp)
	sd s0, 608(sp)
	beq a0, zero, label770
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
	fsw f8, 628(sp)
	fadd.s f9, f14, f13
	fadd.s f11, f10, f16
	fsw f9, 632(sp)
	fadd.s f18, f11, f3
	fadd.s f11, f2, f20
	fsw f18, 636(sp)
	fadd.s f10, f11, f30
	fadd.s f20, f10, f12
	fadd.s f10, f6, f22
	fsw f20, 640(sp)
	fadd.s f11, f10, f21
	fadd.s f19, f11, f19
	fadd.s f11, f0, f4
	fsw f19, 644(sp)
	fadd.s f12, f11, f31
	fadd.s f10, f12, f1
	fadd.s f12, f28, f15
	fsw f10, 456(sp)
	fsw f10, 648(sp)
	flw f23, 420(sp)
	fadd.s f11, f12, f24
	fadd.s f10, f11, f23
	fsw f10, 432(sp)
	fsw f10, 652(sp)
	flw f15, 552(sp)
	flw f23, 428(sp)
	flw f17, 508(sp)
	fadd.s f10, f15, f23
	flw f23, 436(sp)
	fadd.s f11, f10, f17
	fadd.s f10, f11, f23
	fsw f10, 424(sp)
	fsw f10, 656(sp)
	flw f23, 444(sp)
	flw f24, 440(sp)
	fadd.s f11, f24, f23
	flw f23, 448(sp)
	fadd.s f10, f11, f23
	flw f23, 452(sp)
	fadd.s f11, f10, f23
	fsw f11, 660(sp)
	flw f16, 484(sp)
	flw f23, 536(sp)
	fadd.s f10, f23, f16
	flw f23, 520(sp)
	fadd.s f11, f10, f23
	flw f23, 500(sp)
	fadd.s f10, f11, f23
	fsw f10, 664(sp)
	sw s1, 672(sp)
	sw s2, 676(sp)
	sw s3, 680(sp)
	sw s5, 684(sp)
	sw s6, 688(sp)
	sw s7, 692(sp)
	sw s8, 696(sp)
	sw s4, 700(sp)
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
	sw a0, 672(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s3
	fsub.s f11, f10, f18
	sw a0, 676(sp)
	fcvt.s.w f10, s5
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f20
	fcvt.s.w f10, s6
	sw a0, 680(sp)
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f19
	sw a0, 684(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s7
	sw a0, 688(sp)
	flw f10, 456(sp)
	fsub.s f12, f11, f10
	fcvt.s.w f11, s8
	fcvt.w.s a0, f12, rtz
	sw a0, 692(sp)
	flw f10, 432(sp)
	fsub.s f12, f11, f10
	fcvt.s.w f11, s4
	fcvt.w.s a0, f12, rtz
	sw a0, 696(sp)
	flw f10, 424(sp)
	fsub.s f12, f11, f10
	fcvt.w.s a0, f12, rtz
	sw a0, 700(sp)
	ld s1, 600(sp)
	lw a0, 0(s1)
	sh2add a1, a0, s0
	lw a2, 0(a1)
	fcvt.s.w f10, a2
label768:
	ld ra, 408(sp)
	ld s0, 400(sp)
	ld s1, 392(sp)
	flw f9, 668(sp)
	ld s10, 616(sp)
	flw f22, 624(sp)
	ld s11, 592(sp)
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
	addi sp, sp, 704
	ret
label770:
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
	ld s1, 600(sp)
	sd s1, 384(sp)
	mv a0, a3
	flw f15, 552(sp)
	flw f16, 484(sp)
	flw f17, 508(sp)
	jal params_f40_i24
	j label768
params_fa40:
.p2align 2
	addi sp, sp, -608
	mv t6, a0
	sd s5, 264(sp)
	mv s5, a1
	sd s0, 272(sp)
	mv s0, a5
	sd s3, 280(sp)
	addi s0, sp, 472
	mv s3, a2
	sd s2, 288(sp)
	mv s2, a3
	sd s1, 296(sp)
	mv s1, a4
	sd s6, 384(sp)
	sd s4, 368(sp)
	sd s7, 352(sp)
	sd s8, 416(sp)
	sd s9, 432(sp)
	sd s10, 424(sp)
	sd ra, 400(sp)
	sd a1, 576(sp)
	sd a2, 568(sp)
	sd a3, 560(sp)
	sd a4, 552(sp)
	sd a5, 544(sp)
	sd a6, 536(sp)
	sd a7, 392(sp)
	ld s4, 608(sp)
	sd s4, 376(sp)
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
	sd a6, 344(sp)
	ld a7, 752(sp)
	sd a7, 336(sp)
	ld a6, 760(sp)
	sd a6, 440(sp)
	ld a7, 768(sp)
	sd a7, 448(sp)
	ld a6, 776(sp)
	sd a6, 456(sp)
	ld a7, 784(sp)
	sd a7, 464(sp)
	ld a6, 792(sp)
	sd a6, 512(sp)
	ld a7, 800(sp)
	sd a7, 520(sp)
	ld a6, 808(sp)
	sd a6, 528(sp)
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
	sd s0, 360(sp)
	lw s10, 0(a7)
	sh2add t6, s10, t6
	sd s10, 408(sp)
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
	fsw f10, 472(sp)
	flw f10, 0(t6)
	ld s0, 544(sp)
	sh2add t6, s10, s0
	flw f11, 0(t6)
	ld a6, 536(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a6
	sh2add a6, s10, a0
	flw f11, 0(t6)
	ld a7, 392(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a7
	flw f11, 0(t6)
	sh2add t6, s10, s4
	fadd.s f10, f10, f11
	fsw f10, 476(sp)
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
	fsw f10, 480(sp)
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
	fsw f10, 484(sp)
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
	fsw f10, 488(sp)
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
	fsw f10, 492(sp)
	flw f10, 0(t6)
	ld a6, 344(sp)
	sh2add t6, s10, a6
	flw f11, 0(t6)
	ld a7, 336(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a7
	flw f11, 0(t6)
	ld a6, 440(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a6
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 496(sp)
	ld a7, 448(sp)
	sh2add t6, s10, a7
	flw f10, 0(t6)
	ld a6, 456(sp)
	sh2add t6, s10, a6
	flw f11, 0(t6)
	ld a7, 464(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a7
	flw f11, 0(t6)
	ld a6, 512(sp)
	fadd.s f10, f10, f11
	sh2add t6, s10, a6
	flw f11, 0(t6)
	fadd.s f10, f10, f11
	fsw f10, 500(sp)
	ld a7, 520(sp)
	sh2add t6, s10, a7
	flw f10, 0(t6)
	ld a6, 528(sp)
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
	fsw f10, 504(sp)
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
	fsw f10, 508(sp)
	fmv.w.x f10, zero
	flw f11, 0(t6)
	feq.s t6, f11, f10
	xori a7, t6, 1
	fcvt.s.w f11, a7
	feq.s a6, f11, f10
	xori t6, a6, 1
	fcvt.s.w f11, t6
	feq.s a6, f11, f10
	bne a6, zero, label436
	ld s0, 360(sp)
	li a0, 10
	mv a1, s0
	jal putfarray
	ld s10, 408(sp)
	sh2add a0, s10, s0
	flw f10, 0(a0)
label434:
	ld ra, 400(sp)
	ld s10, 424(sp)
	ld s9, 432(sp)
	ld s8, 416(sp)
	ld s7, 352(sp)
	ld s4, 368(sp)
	ld s6, 384(sp)
	ld s1, 296(sp)
	ld s2, 288(sp)
	ld s3, 280(sp)
	ld s0, 272(sp)
	ld s5, 264(sp)
	addi sp, sp, 608
	ret
label436:
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
	ld a6, 344(sp)
	sd a6, 128(sp)
	ld a7, 336(sp)
	sd a7, 136(sp)
	ld a6, 440(sp)
	sd a6, 144(sp)
	ld a7, 448(sp)
	sd a7, 152(sp)
	ld a6, 456(sp)
	sd a6, 160(sp)
	ld a7, 464(sp)
	sd a7, 168(sp)
	ld a6, 512(sp)
	sd a6, 176(sp)
	ld a7, 520(sp)
	sd a7, 184(sp)
	ld a6, 528(sp)
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
	ld s0, 360(sp)
	sd s0, 248(sp)
	ld a7, 592(sp)
	sd a7, 256(sp)
	ld s4, 376(sp)
	ld a7, 392(sp)
	ld a6, 536(sp)
	ld s0, 544(sp)
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
	j label434
params_mix:
.p2align 2
	addi sp, sp, -896
	fsw f8, 704(sp)
	sd s9, 696(sp)
	fsw f21, 688(sp)
	sd s8, 680(sp)
	fsw f20, 672(sp)
	sd s7, 664(sp)
	fsw f19, 656(sp)
	sd s10, 648(sp)
	fsw f22, 640(sp)
	sd s4, 632(sp)
	mv s4, a5
	sd s6, 624(sp)
	fsw f18, 616(sp)
	sd s1, 608(sp)
	mv s1, a3
	sd s2, 712(sp)
	mv s1, a7
	mv s2, a2
	fsw f25, 760(sp)
	sd s3, 768(sp)
	mv s3, a1
	sd s5, 808(sp)
	mv s3, a6
	mv s5, a4
	sd s0, 776(sp)
	mv s0, a0
	fsw f9, 784(sp)
	fsw f23, 788(sp)
	sd s11, 792(sp)
	fsw f24, 800(sp)
	fsw f26, 856(sp)
	fsw f27, 860(sp)
	sd ra, 864(sp)
	sd a1, 536(sp)
	sd a3, 552(sp)
	sd a4, 560(sp)
	sd a5, 568(sp)
	sd a6, 576(sp)
	sd a7, 584(sp)
	ld a0, 896(sp)
	ld a1, 904(sp)
	ld a2, 912(sp)
	ld a3, 920(sp)
	ld a4, 928(sp)
	ld a5, 936(sp)
	ld t0, 944(sp)
	ld t1, 952(sp)
	flw f0, 960(sp)
	flw f1, 968(sp)
	ld t2, 976(sp)
	ld t3, 984(sp)
	ld t4, 992(sp)
	ld t5, 1000(sp)
	ld t6, 1008(sp)
	flw f2, 1016(sp)
	flw f3, 1024(sp)
	ld a6, 1032(sp)
	ld s10, 1040(sp)
	ld s1, 1048(sp)
	sd s1, 872(sp)
	ld s3, 1056(sp)
	sd s3, 880(sp)
	flw f4, 1064(sp)
	flw f5, 1072(sp)
	ld s1, 1080(sp)
	sd s1, 888(sp)
	ld s6, 1088(sp)
	sd s6, 392(sp)
	ld s7, 1096(sp)
	sd s7, 400(sp)
	ld s8, 1104(sp)
	sd s8, 408(sp)
	flw f6, 1112(sp)
	flw f7, 1120(sp)
	ld s8, 1128(sp)
	sd s8, 416(sp)
	ld s1, 1136(sp)
	sd s1, 424(sp)
	ld s3, 1144(sp)
	sd s3, 432(sp)
	ld s9, 1152(sp)
	sd s9, 440(sp)
	ld s8, 1160(sp)
	sd s8, 448(sp)
	ld s1, 1168(sp)
	sd s1, 456(sp)
	flw f28, 1176(sp)
	flw f29, 1184(sp)
	ld s3, 1192(sp)
	sd s3, 464(sp)
	ld s1, 1200(sp)
	sd s1, 472(sp)
	ld s9, 1208(sp)
	sd s9, 480(sp)
	ld s1, 1216(sp)
	sd s1, 488(sp)
	flw f30, 1224(sp)
	ld a7, 1232(sp)
	sd a7, 496(sp)
	flw f31, 1240(sp)
	ld s3, 1248(sp)
	sd s3, 504(sp)
	ld s1, 1256(sp)
	sd s1, 512(sp)
	addi s1, sp, 816
	flw f25, 1264(sp)
	ld a7, 1272(sp)
	sd a7, 528(sp)
	addi a7, sp, 720
	ld s3, 1280(sp)
	sd s3, 520(sp)
	sd s1, 600(sp)
	sd a7, 544(sp)
	lw a7, 0(s3)
	sh2add s1, a7, s2
	sh2add s0, a7, s0
	sh2add s7, a7, a6
	sd a7, 592(sp)
	sh2add s2, a7, t6
	flw f8, 0(s1)
	sh2add s1, a7, s5
	fadd.s f9, f10, f8
	sh2add s5, a7, a2
	fadd.s f18, f9, f11
	fadd.s f8, f18, f12
	fsw f8, 720(sp)
	flw f18, 0(s1)
	sh2add s1, a7, a0
	fadd.s f9, f13, f18
	flw f18, 0(s1)
	sh2add s1, a7, a4
	fadd.s f9, f9, f18
	flw f18, 0(s1)
	sh2add s1, a7, a5
	fadd.s f9, f9, f18
	fsw f9, 724(sp)
	flw f18, 0(s1)
	sh2add s1, a7, t0
	fadd.s f20, f18, f14
	fadd.s f19, f20, f15
	fadd.s f18, f19, f16
	fsw f18, 728(sp)
	flw f19, 0(s1)
	sh2add s1, a7, t3
	fadd.s f20, f19, f17
	fadd.s f21, f20, f0
	fadd.s f19, f21, f1
	fsw f19, 732(sp)
	flw f20, 0(s1)
	flw f22, 0(s2)
	fadd.s f21, f20, f22
	fadd.s f23, f21, f2
	fadd.s f20, f23, f3
	fsw f20, 736(sp)
	ld s1, 872(sp)
	sh2add s2, a7, s1
	flw f21, 0(s2)
	ld s3, 880(sp)
	sh2add s1, a7, s3
	flw f24, 0(s1)
	fadd.s f23, f21, f24
	fadd.s f22, f23, f4
	fadd.s f23, f6, f7
	fadd.s f21, f22, f5
	fsw f21, 740(sp)
	ld s3, 432(sp)
	sh2add s1, a7, s3
	flw f22, 0(s1)
	fadd.s f24, f23, f22
	fadd.s f22, f24, f28
	fsw f22, 744(sp)
	ld s3, 464(sp)
	sh2add s1, a7, s3
	flw f24, 0(s1)
	ld s1, 488(sp)
	fadd.s f23, f29, f24
	sh2add s2, a7, s1
	flw f26, 0(s2)
	fadd.s f24, f23, f26
	fadd.s f23, f24, f30
	fsw f23, 748(sp)
	ld s3, 504(sp)
	sh2add s1, a7, s3
	flw f26, 0(s1)
	ld s1, 512(sp)
	fadd.s f24, f31, f26
	sh2add s2, a7, s1
	flw f27, 0(s2)
	fadd.s f26, f24, f27
	fadd.s f24, f26, f25
	fmv.w.x f26, zero
	fsw f24, 752(sp)
	fsw f26, 756(sp)
	lw s0, 0(s0)
	ld s1, 552(sp)
	ld s3, 536(sp)
	addw s2, s3, s1
	sh2add s3, a7, s4
	addw s0, s0, s2
	sw s0, 816(sp)
	lw s2, 0(s3)
	ld s1, 584(sp)
	ld s3, 576(sp)
	addw s4, s3, s1
	addw s2, s2, s4
	sh2add s4, a7, a1
	sw s2, 820(sp)
	lw s3, 0(s4)
	lw s4, 0(s5)
	addw s1, a3, s3
	sh2add s5, a7, t2
	addw s3, s1, s4
	sw s3, 824(sp)
	lw s4, 0(s5)
	sh2add s5, a7, t4
	addw s1, t1, s4
	lw s6, 0(s5)
	sh2add s5, a7, t5
	addw s4, s1, s6
	sw s4, 828(sp)
	lw s6, 0(s5)
	addw s1, s10, s6
	lw s6, 0(s7)
	addw s5, s1, s6
	sw s5, 832(sp)
	ld s1, 888(sp)
	sh2add s8, a7, s1
	lw s6, 0(s8)
	ld s7, 400(sp)
	addw s1, s7, s6
	ld s6, 392(sp)
	sh2add s7, a7, s6
	lw s8, 0(s7)
	addw s6, s1, s8
	sw s6, 836(sp)
	ld s8, 416(sp)
	sh2add s9, a7, s8
	lw s7, 0(s9)
	ld s1, 424(sp)
	ld s8, 408(sp)
	addw s9, s8, s1
	addw s7, s7, s9
	sw s7, 840(sp)
	ld s8, 448(sp)
	sh2add s11, a7, s8
	lw s1, 0(s11)
	ld s9, 440(sp)
	addw s8, s9, s1
	ld s1, 456(sp)
	sh2add s11, a7, s1
	lw s9, 0(s11)
	addw s8, s8, s9
	sw s8, 844(sp)
	ld s9, 480(sp)
	sh2add a7, a7, s9
	lw s11, 0(a7)
	ld a7, 496(sp)
	ld s1, 472(sp)
	addw s9, s1, a7
	ld a7, 528(sp)
	addw s1, a7, s9
	addw s9, s11, s1
	sw s9, 848(sp)
	sw zero, 852(sp)
	bne a7, zero, label4
	j label5
label2:
	ld ra, 864(sp)
	flw f27, 860(sp)
	flw f26, 856(sp)
	flw f24, 800(sp)
	ld s11, 792(sp)
	flw f23, 788(sp)
	flw f9, 784(sp)
	ld s0, 776(sp)
	ld s5, 808(sp)
	ld s3, 768(sp)
	flw f25, 760(sp)
	ld s2, 712(sp)
	ld s1, 608(sp)
	flw f18, 616(sp)
	ld s6, 624(sp)
	ld s4, 632(sp)
	flw f22, 640(sp)
	ld s10, 648(sp)
	flw f19, 656(sp)
	ld s7, 664(sp)
	flw f20, 672(sp)
	ld s8, 680(sp)
	flw f21, 688(sp)
	ld s9, 696(sp)
	flw f8, 704(sp)
	addi sp, sp, 896
	ret
label4:
	ld a7, 544(sp)
	li a0, 10
	mv a1, a7
	jal putfarray
	li a0, 10
	ld s1, 600(sp)
	mv a1, s1
	jal putarray
	fcvt.s.w f10, s0
	fsub.s f11, f10, f8
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s2
	fsub.s f10, f11, f9
	sw a0, 816(sp)
	fcvt.s.w f11, s3
	fcvt.w.s a0, f10, rtz
	fsub.s f10, f11, f18
	sw a0, 820(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s4
	fsub.s f11, f10, f19
	sw a0, 824(sp)
	fcvt.s.w f10, s5
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f20
	sw a0, 828(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s6
	fsub.s f10, f11, f21
	sw a0, 832(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s7
	fsub.s f11, f10, f22
	sw a0, 836(sp)
	fcvt.s.w f10, s8
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f23
	sw a0, 840(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s9
	fsub.s f10, f11, f24
	sw a0, 844(sp)
	fcvt.w.s a0, f10, rtz
	sw a0, 848(sp)
	ld a7, 592(sp)
	sw zero, 852(sp)
	sh2add a0, a7, s1
	lw a1, 0(a0)
	fcvt.s.w f10, a1
	fmul.s f11, f10, f24
	fcvt.w.s a0, f11, rtz
	j label2
label5:
	fcvt.w.s s0, f25, rtz
	ld a7, 528(sp)
	sd a0, 0(sp)
	sd a1, 8(sp)
	fcvt.s.w f8, a7
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
	sd s10, 144(sp)
	ld s1, 872(sp)
	sd s1, 152(sp)
	ld s3, 880(sp)
	sd s3, 160(sp)
	fsw f4, 168(sp)
	fsw f5, 176(sp)
	ld s1, 888(sp)
	sd s1, 184(sp)
	ld s6, 392(sp)
	sd s6, 192(sp)
	ld s7, 400(sp)
	sd s7, 200(sp)
	ld s8, 408(sp)
	sd s8, 208(sp)
	fsw f6, 216(sp)
	fsw f7, 224(sp)
	ld s8, 416(sp)
	sd s8, 232(sp)
	ld s1, 424(sp)
	sd s1, 240(sp)
	ld s3, 432(sp)
	sd s3, 248(sp)
	ld s9, 440(sp)
	sd s9, 256(sp)
	ld s8, 448(sp)
	sd s8, 264(sp)
	ld s1, 456(sp)
	sd s1, 272(sp)
	fsw f28, 280(sp)
	fsw f29, 288(sp)
	ld s3, 464(sp)
	sd s3, 296(sp)
	ld s1, 472(sp)
	sd s1, 304(sp)
	ld s9, 480(sp)
	sd s9, 312(sp)
	ld s1, 488(sp)
	sd s1, 320(sp)
	fsw f30, 328(sp)
	ld a7, 496(sp)
	sd a7, 336(sp)
	fsw f31, 344(sp)
	ld s3, 504(sp)
	sd s3, 352(sp)
	ld s1, 512(sp)
	sd s1, 360(sp)
	fsw f8, 368(sp)
	sd s0, 376(sp)
	ld s3, 520(sp)
	sd s3, 384(sp)
	ld s1, 600(sp)
	ld a7, 544(sp)
	ld s3, 536(sp)
	mv a0, s1
	mv a1, s3
	mv a2, a7
	ld s1, 552(sp)
	mv a3, s1
	ld s1, 584(sp)
	ld s3, 576(sp)
	ld s4, 568(sp)
	ld s5, 560(sp)
	mv a4, s5
	mv a5, s4
	mv a6, s3
	mv a7, s1
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
	sd s3, 1752(sp)
	sd s5, 1744(sp)
	sd s4, 1728(sp)
	sd ra, 1712(sp)
	sd s2, 1776(sp)
	sd s1, 1792(sp)
	sd s0, 1416(sp)
	jal getint
	mv s1, zero
	sw a0, 1784(sp)
.p2align 2
label1273:
	sh1add a0, s1, s1
	ld s0, 1416(sp)
	sh2add a0, a0, s0
	jal getfarray
	li a0, 40
	addiw s1, s1, 1
	blt s1, a0, label1273
	mv s0, zero
.p2align 2
label1275:
	sh1add a1, s0, s0
	ld s1, 1792(sp)
	sh2add a0, a1, s1
	jal getarray
	li a0, 24
	addiw s0, s0, 1
	blt s0, a0, label1275
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
	flw f0, 0(a0)
	sh2add a0, s6, a1
	fsw f0, 1576(sp)
	sh2add a1, s6, a2
	flw f14, 0(a0)
	addi a2, s0, 84
	addi a0, s0, 72
	fsw f14, 1600(sp)
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
	flw f14, 0(a1)
	addi a0, s0, 120
	sh2add a1, s6, a0
	fsw f14, 1408(sp)
	addi a0, s0, 132
	flw f15, 0(a1)
	sh2add a1, s6, a0
	fsw f15, 392(sp)
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
	sh2add a0, s6, a2
	flw f10, 0(a1)
	addi a2, s0, 324
	addi a1, s0, 312
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
	flw f15, 0(a1)
	sh2add a1, s6, a0
	fsw f15, 408(sp)
	addi a0, s0, 360
	flw f10, 0(a1)
	sh2add a1, s6, a0
	fsw f10, 1476(sp)
	addi a0, s0, 372
	flw f26, 0(a1)
	sh2add a1, s6, a0
	flw f18, 0(a1)
	addi a0, s0, 384
	sh2add a1, s6, a0
	flw f9, 0(a1)
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
	fsw f14, 8(sp)
	flw f15, 392(sp)
	fsw f15, 16(sp)
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
	flw f15, 408(sp)
	fsw f15, 160(sp)
	flw f10, 1476(sp)
	fsw f10, 168(sp)
	fsw f26, 176(sp)
	fsw f18, 184(sp)
	fsw f9, 192(sp)
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
	flw f10, 1616(sp)
	flw f12, 1608(sp)
	flw f14, 1600(sp)
	flw f16, 1692(sp)
	fmv.s f11, f25
	fmv.s f13, f0
	fmv.s f15, f24
	fmv.s f17, f8
	ld s2, 1776(sp)
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
	addi a1, s1, 72
	lw s3, 0(a0)
	sh2add a0, s6, a1
	lw a2, 0(a0)
	addi a1, s1, 12
	sh2add a0, s6, a1
	addi a1, s1, 48
	sd a2, 1280(sp)
	lw s5, 0(a0)
	sh2add a0, s6, a1
	lw s4, 0(a0)
	addi a1, s1, 60
	sh2add a0, s6, a1
	lw a7, 0(a0)
	addi a0, s1, 264
	sh2add a1, s6, a0
	sd a7, 1584(sp)
	sh2add a0, s6, s1
	lw a6, 0(a1)
	lw a7, 0(a0)
	addi a0, s1, 228
	sh2add a1, s6, a0
	sd a7, 1640(sp)
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
	sh2add a2, s6, a1
	sd t4, 1504(sp)
	addi a1, s1, 132
	lw a0, 0(a2)
	sh2add a3, s6, a1
	addi a1, s1, 192
	lw a2, 0(a3)
	sh2add a4, s6, a1
	lw a3, 0(a4)
	addi a1, s1, 36
	sh2add a5, s6, a1
	addi a1, s1, 252
	lw a4, 0(a5)
	sd a4, 1480(sp)
	sh2add a4, s6, a1
	lw a5, 0(a4)
	addi a1, s1, 240
	sd a5, 1464(sp)
	sh2add a5, s6, a1
	lw a4, 0(a5)
	addi a5, s1, 180
	sh2add t0, s6, a5
	sd a4, 1448(sp)
	lw a1, 0(t0)
	addi a4, s1, 168
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
	fsw f9, 56(sp)
	ld a5, 456(sp)
	sd a5, 64(sp)
	ld a4, 448(sp)
	sd a4, 72(sp)
	flw f12, 1496(sp)
	fsw f12, 80(sp)
	flw f11, 1560(sp)
	fsw f11, 88(sp)
	fsw f22, 96(sp)
	flw f14, 1408(sp)
	fsw f14, 104(sp)
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
	flw f15, 392(sp)
	fsw f15, 200(sp)
	flw f10, 1616(sp)
	fsw f10, 208(sp)
	sd a0, 216(sp)
	fsw f18, 224(sp)
	sd a2, 232(sp)
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
	sd a1, 352(sp)
	flw f12, 1608(sp)
	fsw f12, 360(sp)
	sd t0, 368(sp)
	fsw f19, 376(sp)
	sd s2, 384(sp)
	ld a0, 1288(sp)
	ld a2, 1280(sp)
	mv a1, s3
	flw f14, 1600(sp)
	fmv.s f10, f14
	ld a7, 1584(sp)
	mv a3, s5
	mv a4, s4
	mv a5, a7
	flw f12, 404(sp)
	fmv.s f11, f23
	fmv.s f13, f8
	flw f15, 408(sp)
	flw f0, 1576(sp)
	fmv.s f14, f0
	ld a7, 1640(sp)
	flw f16, 1672(sp)
	fmv.s f17, f26
	jal params_f40_i24
	addi s8, s0, 180
	addi s10, s0, 276
	addi s11, s0, 96
	addi a0, s0, 108
	fmv.s f8, f10
	addi a2, s0, 12
	addi a6, s0, 72
	addi t0, s0, 24
	addi a3, s0, 36
	addi a5, s0, 60
	addi a4, s0, 48
	addi a1, s0, 384
	addi a7, s0, 84
	addi t3, s0, 420
	addi t6, s0, 288
	addi t5, s0, 300
	addi t4, s0, 456
	addi s9, s0, 324
	addi s6, s0, 336
	addi s7, s0, 156
	addi t1, s0, 264
	addi t2, s0, 228
	sd a2, 1680(sp)
	sd t0, 464(sp)
	addi a2, s0, 132
	sd a3, 472(sp)
	addi t0, s0, 444
	sd a4, 976(sp)
	addi a3, s0, 216
	addi a4, s0, 120
	sd a5, 1432(sp)
	sd a6, 1296(sp)
	addi a5, s0, 432
	addi a6, s0, 372
	sd a7, 1304(sp)
	sd s11, 1312(sp)
	addi a7, s0, 168
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
	ld a5, 1432(sp)
	ld a2, 1680(sp)
	ld a7, 1304(sp)
	ld a6, 1296(sp)
	ld a4, 976(sp)
	ld a3, 472(sp)
	ld t0, 464(sp)
	mv a0, s0
	mv a1, a2
	mv a2, t0
	jal params_fa40
	addi a1, s1, 276
	addi a0, s1, 12
	addi a3, s1, 228
	fmv.s f23, f10
	addi a2, s1, 264
	addi t4, s1, 72
	addi t0, s1, 36
	addi t5, s1, 84
	addi t3, s1, 120
	addi a4, s1, 192
	addi t1, s1, 132
	addi t2, s1, 144
	addi a5, s1, 180
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
	flw f15, 408(sp)
	fsw f15, 288(sp)
	ld s11, 1368(sp)
	sd s11, 296(sp)
	ld a7, 1640(sp)
	sd a7, 304(sp)
	sd a0, 312(sp)
	ld s11, 1696(sp)
	sd s11, 320(sp)
	fsw f18, 328(sp)
	sd s3, 336(sp)
	fsw f9, 344(sp)
	ld s11, 1384(sp)
	sd s11, 352(sp)
	ld s11, 1376(sp)
	sd s11, 360(sp)
	fsw f19, 368(sp)
	ld a4, 1480(sp)
	sd a4, 376(sp)
	sd s2, 384(sp)
	flw f10, 1616(sp)
	ld a2, 1680(sp)
	mv a0, s1
	mv a1, s5
	flw f12, 1608(sp)
	fmv.s f11, f12
	mv a3, s3
	flw f14, 1600(sp)
	flw f0, 1576(sp)
	fmv.s f12, f0
	fmv.s f13, f14
	ld a7, 1584(sp)
	ld a5, 1432(sp)
	ld t0, 480(sp)
	mv a4, a5
	mv a5, t0
	mv a6, s4
	flw f17, 400(sp)
	flw f16, 396(sp)
	flw f15, 392(sp)
	flw f14, 1408(sp)
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
	ld s4, 1728(sp)
	ld s5, 1744(sp)
	ld s3, 1752(sp)
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
