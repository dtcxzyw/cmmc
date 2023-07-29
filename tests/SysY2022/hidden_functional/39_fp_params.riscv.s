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
	bne a0, zero, label1088
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
label1086:
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
	j label1086
params_f40_i24:
.p2align 2
	addi sp, sp, -720
	fmv.s f1, f12
	sd s7, 576(sp)
	fsw f19, 568(sp)
	sd s6, 560(sp)
	fsw f18, 556(sp)
	fsw f20, 548(sp)
	sd s8, 536(sp)
	addi s8, sp, 640
	sd s11, 520(sp)
	fsw f23, 508(sp)
	sd s5, 496(sp)
	fsw f21, 488(sp)
	sd s9, 480(sp)
	fsw f8, 472(sp)
	sd s4, 464(sp)
	sd s3, 584(sp)
	sd s2, 592(sp)
	fsw f24, 600(sp)
	fsw f22, 632(sp)
	sd s10, 624(sp)
	fsw f9, 680(sp)
	sd s1, 392(sp)
	sd s0, 400(sp)
	addi s0, sp, 688
	sd ra, 408(sp)
	fsw f12, 424(sp)
	fsw f15, 544(sp)
	fsw f17, 512(sp)
	fsw f16, 476(sp)
	ld t0, 720(sp)
	flw f1, 728(sp)
	flw f7, 736(sp)
	flw f2, 744(sp)
	flw f23, 752(sp)
	fsw f23, 528(sp)
	flw f5, 760(sp)
	ld t3, 768(sp)
	flw f24, 776(sp)
	fsw f24, 440(sp)
	ld t2, 784(sp)
	ld t1, 792(sp)
	flw f15, 800(sp)
	flw f23, 808(sp)
	fsw f23, 444(sp)
	flw f0, 816(sp)
	flw f28, 824(sp)
	flw f12, 832(sp)
	ld s3, 840(sp)
	flw f23, 848(sp)
	fsw f23, 504(sp)
	ld t4, 856(sp)
	flw f3, 864(sp)
	flw f4, 872(sp)
	flw f17, 880(sp)
	flw f23, 888(sp)
	fsw f23, 448(sp)
	ld t5, 896(sp)
	ld s4, 904(sp)
	flw f29, 912(sp)
	flw f16, 920(sp)
	flw f8, 928(sp)
	ld s5, 936(sp)
	flw f23, 944(sp)
	fsw f23, 436(sp)
	ld s11, 952(sp)
	ld s6, 960(sp)
	flw f23, 968(sp)
	fsw f23, 416(sp)
	flw f6, 976(sp)
	flw f19, 984(sp)
	flw f23, 992(sp)
	fsw f23, 428(sp)
	ld s2, 1000(sp)
	ld t6, 1008(sp)
	ld s7, 1016(sp)
	flw f21, 1024(sp)
	flw f20, 1032(sp)
	flw f31, 1040(sp)
	flw f30, 1048(sp)
	flw f23, 1056(sp)
	fsw f23, 552(sp)
	flw f22, 1064(sp)
	ld s9, 1072(sp)
	flw f9, 1080(sp)
	ld s10, 1088(sp)
	flw f23, 1096(sp)
	fsw f23, 452(sp)
	ld s1, 1104(sp)
	sd s1, 608(sp)
	sd s0, 616(sp)
	beq a0, zero, label773
	fadd.s f7, f8, f7
	addw a1, a1, a3
	addw a0, a0, a6
	fadd.s f10, f10, f17
	fadd.s f12, f6, f12
	addw s1, a7, a1
	addw a1, a4, a5
	addw s2, s2, a1
	fadd.s f9, f7, f9
	addw a1, a2, t3
	addw s3, s3, a1
	addw a1, t2, s4
	addw s4, s11, a1
	addw a1, t1, s5
	fadd.s f8, f9, f14
	addw s5, s10, a1
	fadd.s f14, f10, f5
	addw a1, t4, s6
	fadd.s f10, f11, f28
	addw s6, s9, a1
	addw s9, t6, a0
	addw a1, t0, t5
	li a0, 10
	addw s7, s7, a1
	fsw f8, 640(sp)
	fadd.s f9, f14, f13
	fadd.s f11, f10, f16
	fsw f9, 644(sp)
	fadd.s f18, f11, f2
	fadd.s f11, f1, f19
	fsw f18, 648(sp)
	fadd.s f10, f11, f29
	flw f1, 424(sp)
	fadd.s f19, f10, f1
	fadd.s f10, f4, f22
	fsw f19, 652(sp)
	fadd.s f11, f10, f21
	fadd.s f20, f11, f20
	fadd.s f11, f15, f3
	fsw f20, 656(sp)
	fadd.s f13, f11, f31
	fadd.s f11, f12, f30
	fadd.s f10, f13, f0
	fsw f10, 456(sp)
	fsw f10, 660(sp)
	flw f23, 416(sp)
	fadd.s f10, f11, f23
	fsw f10, 432(sp)
	fsw f10, 664(sp)
	flw f15, 544(sp)
	flw f23, 428(sp)
	flw f17, 512(sp)
	fadd.s f10, f15, f23
	flw f23, 436(sp)
	fadd.s f11, f10, f17
	fadd.s f10, f11, f23
	fsw f10, 420(sp)
	fsw f10, 668(sp)
	flw f23, 444(sp)
	fadd.s f10, f24, f23
	flw f23, 448(sp)
	fadd.s f11, f10, f23
	flw f23, 452(sp)
	fadd.s f10, f11, f23
	fsw f10, 672(sp)
	flw f16, 476(sp)
	flw f23, 552(sp)
	fadd.s f10, f23, f16
	flw f23, 528(sp)
	fadd.s f11, f10, f23
	flw f23, 504(sp)
	fadd.s f10, f11, f23
	fsw f10, 676(sp)
	sw s1, 688(sp)
	sw s2, 692(sp)
	sw s3, 696(sp)
	sw s4, 700(sp)
	sw s5, 704(sp)
	sw s6, 708(sp)
	sw s7, 712(sp)
	sw s9, 716(sp)
	mv a1, s8
	jal putfarray
	li a0, 8
	ld s0, 616(sp)
	mv a1, s0
	jal putarray
	fcvt.s.w f11, s1
	fsub.s f10, f11, f8
	fcvt.s.w f11, s2
	fcvt.w.s a0, f10, rtz
	fsub.s f10, f11, f9
	sw a0, 688(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s3
	fsub.s f11, f10, f18
	sw a0, 692(sp)
	fcvt.s.w f10, s4
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f19
	fcvt.s.w f10, s5
	sw a0, 696(sp)
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f20
	sw a0, 700(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s6
	sw a0, 704(sp)
	flw f10, 456(sp)
	fsub.s f12, f11, f10
	fcvt.s.w f11, s7
	fcvt.w.s a0, f12, rtz
	sw a0, 708(sp)
	flw f10, 432(sp)
	fsub.s f12, f11, f10
	fcvt.s.w f11, s9
	fcvt.w.s a0, f12, rtz
	sw a0, 712(sp)
	flw f10, 420(sp)
	fsub.s f12, f11, f10
	fcvt.w.s a0, f12, rtz
	sw a0, 716(sp)
	ld s1, 608(sp)
	lw a0, 0(s1)
	sh2add a1, a0, s0
	lw a2, 0(a1)
	fcvt.s.w f10, a2
label771:
	ld ra, 408(sp)
	ld s0, 400(sp)
	ld s1, 392(sp)
	flw f9, 680(sp)
	ld s10, 624(sp)
	flw f22, 632(sp)
	flw f24, 600(sp)
	ld s2, 592(sp)
	ld s3, 584(sp)
	ld s4, 464(sp)
	flw f8, 472(sp)
	ld s9, 480(sp)
	flw f21, 488(sp)
	ld s5, 496(sp)
	flw f23, 508(sp)
	ld s11, 520(sp)
	ld s8, 536(sp)
	flw f20, 548(sp)
	flw f18, 556(sp)
	ld s6, 560(sp)
	flw f19, 568(sp)
	ld s7, 576(sp)
	addi sp, sp, 720
	ret
label773:
	sd t0, 0(sp)
	fsw f1, 8(sp)
	fsw f7, 16(sp)
	fsw f2, 24(sp)
	flw f23, 528(sp)
	fsw f23, 32(sp)
	fsw f5, 40(sp)
	sd t3, 48(sp)
	flw f24, 440(sp)
	fsw f24, 56(sp)
	sd t2, 64(sp)
	sd t1, 72(sp)
	fsw f15, 80(sp)
	flw f23, 444(sp)
	fsw f23, 88(sp)
	fsw f0, 96(sp)
	fsw f28, 104(sp)
	fsw f12, 112(sp)
	sd s3, 120(sp)
	flw f23, 504(sp)
	fsw f23, 128(sp)
	sd t4, 136(sp)
	fsw f3, 144(sp)
	fsw f4, 152(sp)
	fsw f17, 160(sp)
	flw f23, 448(sp)
	fsw f23, 168(sp)
	sd t5, 176(sp)
	sd s4, 184(sp)
	fsw f29, 192(sp)
	fsw f16, 200(sp)
	fsw f8, 208(sp)
	sd s5, 216(sp)
	flw f23, 436(sp)
	fsw f23, 224(sp)
	sd s11, 232(sp)
	sd s6, 240(sp)
	flw f23, 416(sp)
	fsw f23, 248(sp)
	fsw f6, 256(sp)
	fsw f19, 264(sp)
	flw f23, 428(sp)
	fsw f23, 272(sp)
	sd s2, 280(sp)
	sd t6, 288(sp)
	sd s7, 296(sp)
	fsw f21, 304(sp)
	fsw f20, 312(sp)
	fsw f31, 320(sp)
	fsw f30, 328(sp)
	flw f23, 552(sp)
	fsw f23, 336(sp)
	fsw f22, 344(sp)
	sd s9, 352(sp)
	fsw f9, 360(sp)
	sd s10, 368(sp)
	flw f23, 452(sp)
	fsw f23, 376(sp)
	ld s1, 608(sp)
	sd s1, 384(sp)
	flw f16, 476(sp)
	flw f17, 512(sp)
	flw f15, 544(sp)
	flw f1, 424(sp)
	mv a0, a3
	fmv.s f12, f1
	jal params_f40_i24
	j label771
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
	bne a6, zero, label439
	ld s0, 360(sp)
	li a0, 10
	mv a1, s0
	jal putfarray
	ld s10, 408(sp)
	sh2add a0, s10, s0
	flw f10, 0(a0)
label437:
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
label439:
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
	j label437
params_mix:
.p2align 2
	addi sp, sp, -912
	mv t4, a0
	mv t6, a5
	fsw f19, 592(sp)
	sd s7, 600(sp)
	fsw f20, 608(sp)
	sd s8, 616(sp)
	fsw f18, 624(sp)
	sd s6, 632(sp)
	fsw f22, 640(sp)
	fsw f9, 644(sp)
	fsw f21, 648(sp)
	sd s9, 656(sp)
	fsw f8, 664(sp)
	sd s1, 672(sp)
	addi s1, sp, 472
	sd s2, 680(sp)
	mv s2, a4
	sd s0, 584(sp)
	mv s0, a3
	sd s4, 576(sp)
	mv s4, a2
	fsw f25, 568(sp)
	sd s3, 560(sp)
	mv s3, a1
	fsw f23, 516(sp)
	fsw f24, 512(sp)
	fsw f26, 468(sp)
	fsw f27, 464(sp)
	sd s5, 456(sp)
	sd ra, 448(sp)
	sd a1, 760(sp)
	sd a3, 752(sp)
	sd a4, 744(sp)
	sd a5, 736(sp)
	sd a6, 728(sp)
	sd a7, 720(sp)
	ld a0, 912(sp)
	ld a1, 920(sp)
	ld a2, 928(sp)
	ld a3, 936(sp)
	ld a4, 944(sp)
	ld a5, 952(sp)
	ld t0, 960(sp)
	ld t1, 968(sp)
	flw f0, 976(sp)
	flw f1, 984(sp)
	ld t2, 992(sp)
	ld t3, 1000(sp)
	ld t6, 1008(sp)
	sd t6, 440(sp)
	ld a6, 1016(sp)
	sd a6, 432(sp)
	ld t6, 1024(sp)
	sd t6, 424(sp)
	flw f2, 1032(sp)
	flw f3, 1040(sp)
	ld a6, 1048(sp)
	sd a6, 416(sp)
	ld t6, 1056(sp)
	sd t6, 408(sp)
	ld a6, 1064(sp)
	sd a6, 400(sp)
	ld t6, 1072(sp)
	sd t6, 688(sp)
	flw f4, 1080(sp)
	flw f5, 1088(sp)
	ld t6, 1096(sp)
	sd t6, 696(sp)
	ld a6, 1104(sp)
	sd a6, 392(sp)
	ld t6, 1112(sp)
	sd t6, 904(sp)
	ld a6, 1120(sp)
	sd a6, 896(sp)
	flw f6, 1128(sp)
	flw f7, 1136(sp)
	ld a6, 1144(sp)
	sd a6, 888(sp)
	ld t6, 1152(sp)
	sd t6, 880(sp)
	ld a6, 1160(sp)
	sd a6, 872(sp)
	ld t6, 1168(sp)
	sd t6, 864(sp)
	ld a7, 1176(sp)
	sd a7, 856(sp)
	ld a6, 1184(sp)
	sd a6, 848(sp)
	flw f28, 1192(sp)
	flw f29, 1200(sp)
	ld a6, 1208(sp)
	sd a6, 840(sp)
	ld t6, 1216(sp)
	sd t6, 832(sp)
	ld a6, 1224(sp)
	sd a6, 824(sp)
	ld t6, 1232(sp)
	sd t6, 816(sp)
	flw f30, 1240(sp)
	ld t5, 1248(sp)
	sd t5, 808(sp)
	flw f31, 1256(sp)
	ld a6, 1264(sp)
	sd a6, 800(sp)
	ld t6, 1272(sp)
	sd t6, 792(sp)
	flw f25, 1280(sp)
	ld t5, 1288(sp)
	sd t5, 776(sp)
	addi t5, sp, 520
	ld t6, 1296(sp)
	sd t6, 784(sp)
	sd s1, 704(sp)
	sd t5, 768(sp)
	lw t5, 0(t6)
	sh2add t6, t5, s4
	sh2add t4, t5, t4
	sh2add a6, t5, t3
	sd t5, 712(sp)
	flw f8, 0(t6)
	sh2add t6, t5, s2
	fadd.s f9, f10, f8
	fadd.s f18, f9, f11
	fadd.s f8, f18, f12
	fsw f8, 520(sp)
	flw f18, 0(t6)
	sh2add t6, t5, a0
	fadd.s f9, f13, f18
	flw f18, 0(t6)
	sh2add t6, t5, a4
	fadd.s f9, f9, f18
	flw f18, 0(t6)
	sh2add t6, t5, a5
	fadd.s f9, f9, f18
	fsw f9, 524(sp)
	flw f18, 0(t6)
	sh2add t6, t5, t0
	fadd.s f20, f18, f14
	fadd.s f19, f20, f15
	fadd.s f18, f19, f16
	fsw f18, 528(sp)
	flw f19, 0(t6)
	fadd.s f20, f19, f17
	fadd.s f21, f20, f0
	fadd.s f19, f21, f1
	fsw f19, 532(sp)
	flw f20, 0(a6)
	ld t6, 424(sp)
	sh2add a6, t5, t6
	flw f22, 0(a6)
	fadd.s f21, f20, f22
	fadd.s f23, f21, f2
	fadd.s f20, f23, f3
	fsw f20, 536(sp)
	ld a6, 400(sp)
	sh2add a7, t5, a6
	flw f21, 0(a7)
	ld t6, 688(sp)
	sh2add a6, t5, t6
	flw f24, 0(a6)
	fadd.s f23, f21, f24
	fadd.s f22, f23, f4
	fadd.s f23, f6, f7
	fadd.s f21, f22, f5
	fsw f21, 540(sp)
	ld a6, 872(sp)
	sh2add t6, t5, a6
	flw f22, 0(t6)
	fadd.s f24, f23, f22
	fadd.s f22, f24, f28
	fsw f22, 544(sp)
	ld a6, 840(sp)
	sh2add t6, t5, a6
	flw f24, 0(t6)
	ld t6, 816(sp)
	fadd.s f23, f29, f24
	sh2add a6, t5, t6
	flw f26, 0(a6)
	fadd.s f24, f23, f26
	fadd.s f23, f24, f30
	fsw f23, 548(sp)
	ld a6, 800(sp)
	sh2add t6, t5, a6
	flw f26, 0(t6)
	ld t6, 792(sp)
	fadd.s f24, f31, f26
	sh2add a6, t5, t6
	addw t6, s3, s0
	flw f27, 0(a6)
	fadd.s f26, f24, f27
	fadd.s f24, f26, f25
	fmv.w.x f26, zero
	fsw f24, 552(sp)
	fsw f26, 556(sp)
	lw t4, 0(t4)
	addw s0, t4, t6
	sw s0, 472(sp)
	ld t6, 736(sp)
	sh2add a6, t5, t6
	lw t4, 0(a6)
	ld a7, 720(sp)
	ld a6, 728(sp)
	addw t6, a6, a7
	sh2add a6, t5, a1
	addw s2, t4, t6
	sw s2, 476(sp)
	lw t6, 0(a6)
	sh2add a6, t5, a2
	addw t4, a3, t6
	lw t6, 0(a6)
	addw s3, t4, t6
	sh2add t6, t5, t2
	sw s3, 480(sp)
	lw a6, 0(t6)
	ld t6, 440(sp)
	addw t4, t1, a6
	sh2add a7, t5, t6
	lw a6, 0(a7)
	addw s4, t4, a6
	sw s4, 484(sp)
	ld a6, 432(sp)
	sh2add t4, t5, a6
	lw a7, 0(t4)
	ld t6, 408(sp)
	ld a6, 416(sp)
	addw t4, t6, a7
	sh2add a7, t5, a6
	lw t6, 0(a7)
	addw s5, t4, t6
	sw s5, 488(sp)
	ld t6, 696(sp)
	sh2add t4, t5, t6
	lw a6, 0(t4)
	ld t6, 904(sp)
	addw t4, t6, a6
	ld a6, 392(sp)
	sh2add t6, t5, a6
	lw a7, 0(t6)
	addw s6, t4, a7
	sw s6, 492(sp)
	ld a6, 888(sp)
	sh2add a7, t5, a6
	lw t4, 0(a7)
	ld t6, 880(sp)
	ld a6, 896(sp)
	addw a7, a6, t6
	addw s7, t4, a7
	sw s7, 496(sp)
	ld a7, 856(sp)
	sh2add t4, t5, a7
	lw a6, 0(t4)
	ld t6, 864(sp)
	addw t4, t6, a6
	ld a6, 848(sp)
	sh2add a7, t5, a6
	lw t6, 0(a7)
	addw s8, t4, t6
	sw s8, 500(sp)
	ld a6, 824(sp)
	sh2add t6, t5, a6
	lw t4, 0(t6)
	ld t5, 808(sp)
	ld t6, 832(sp)
	addw a6, t6, t5
	ld t5, 776(sp)
	addw t6, t5, a6
	addw s9, t4, t6
	sw s9, 504(sp)
	sw zero, 508(sp)
	bne t5, zero, label4
	j label5
label2:
	ld ra, 448(sp)
	ld s5, 456(sp)
	flw f27, 464(sp)
	flw f26, 468(sp)
	flw f24, 512(sp)
	flw f23, 516(sp)
	ld s3, 560(sp)
	flw f25, 568(sp)
	ld s4, 576(sp)
	ld s0, 584(sp)
	ld s2, 680(sp)
	ld s1, 672(sp)
	flw f8, 664(sp)
	ld s9, 656(sp)
	flw f21, 648(sp)
	flw f9, 644(sp)
	flw f22, 640(sp)
	ld s6, 632(sp)
	flw f18, 624(sp)
	ld s8, 616(sp)
	flw f20, 608(sp)
	ld s7, 600(sp)
	flw f19, 592(sp)
	addi sp, sp, 912
	ret
label4:
	ld t5, 768(sp)
	li a0, 10
	mv a1, t5
	jal putfarray
	li a0, 10
	ld s1, 704(sp)
	mv a1, s1
	jal putarray
	fcvt.s.w f10, s0
	fsub.s f11, f10, f8
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s2
	fsub.s f10, f11, f9
	sw a0, 472(sp)
	fcvt.s.w f11, s3
	fcvt.w.s a0, f10, rtz
	fsub.s f10, f11, f18
	sw a0, 476(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s4
	fsub.s f11, f10, f19
	sw a0, 480(sp)
	fcvt.s.w f10, s5
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f20
	sw a0, 484(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s6
	fsub.s f10, f11, f21
	sw a0, 488(sp)
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, s7
	fsub.s f11, f10, f22
	sw a0, 492(sp)
	fcvt.s.w f10, s8
	fcvt.w.s a0, f11, rtz
	fsub.s f11, f10, f23
	sw a0, 496(sp)
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f11, s9
	fsub.s f10, f11, f24
	sw a0, 500(sp)
	fcvt.w.s a0, f10, rtz
	sw a0, 504(sp)
	ld t5, 712(sp)
	sw zero, 508(sp)
	sh2add a0, t5, s1
	lw a1, 0(a0)
	fcvt.s.w f10, a1
	fmul.s f11, f10, f24
	fcvt.w.s a0, f11, rtz
	j label2
label5:
	fcvt.w.s t4, f25, rtz
	ld t5, 776(sp)
	sd a0, 0(sp)
	sd a1, 8(sp)
	fcvt.s.w f8, t5
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
	ld t6, 440(sp)
	sd t6, 96(sp)
	ld a6, 432(sp)
	sd a6, 104(sp)
	ld t6, 424(sp)
	sd t6, 112(sp)
	fsw f2, 120(sp)
	fsw f3, 128(sp)
	ld a6, 416(sp)
	sd a6, 136(sp)
	ld t6, 408(sp)
	sd t6, 144(sp)
	ld a6, 400(sp)
	sd a6, 152(sp)
	ld t6, 688(sp)
	sd t6, 160(sp)
	fsw f4, 168(sp)
	fsw f5, 176(sp)
	ld t6, 696(sp)
	sd t6, 184(sp)
	ld a6, 392(sp)
	sd a6, 192(sp)
	ld t6, 904(sp)
	sd t6, 200(sp)
	ld a6, 896(sp)
	sd a6, 208(sp)
	fsw f6, 216(sp)
	fsw f7, 224(sp)
	ld a6, 888(sp)
	sd a6, 232(sp)
	ld t6, 880(sp)
	sd t6, 240(sp)
	ld a6, 872(sp)
	sd a6, 248(sp)
	ld t6, 864(sp)
	sd t6, 256(sp)
	ld a7, 856(sp)
	sd a7, 264(sp)
	ld a6, 848(sp)
	sd a6, 272(sp)
	fsw f28, 280(sp)
	fsw f29, 288(sp)
	ld a6, 840(sp)
	sd a6, 296(sp)
	ld t6, 832(sp)
	sd t6, 304(sp)
	ld a6, 824(sp)
	sd a6, 312(sp)
	ld t6, 816(sp)
	sd t6, 320(sp)
	fsw f30, 328(sp)
	ld t5, 808(sp)
	sd t5, 336(sp)
	fsw f31, 344(sp)
	ld a6, 800(sp)
	sd a6, 352(sp)
	ld t6, 792(sp)
	sd t6, 360(sp)
	fsw f8, 368(sp)
	sd t4, 376(sp)
	ld t6, 784(sp)
	sd t6, 384(sp)
	ld s1, 704(sp)
	ld a7, 720(sp)
	ld a6, 728(sp)
	ld t6, 736(sp)
	ld s2, 744(sp)
	ld s0, 752(sp)
	ld s3, 760(sp)
	ld t5, 768(sp)
	mv a0, s1
	mv a1, s3
	mv a2, t5
	mv a3, s0
	mv a4, s2
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
label1276:
	sh1add a0, s1, s1
	ld s0, 1416(sp)
	sh2add a0, a0, s0
	jal getfarray
	li a0, 40
	addiw s1, s1, 1
	blt s1, a0, label1276
	mv s0, zero
.p2align 2
label1278:
	sh1add a1, s0, s0
	ld s1, 1792(sp)
	sh2add a0, a1, s1
	jal getarray
	li a0, 24
	addiw s0, s0, 1
	blt s0, a0, label1278
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
	sh2add a0, s6, a2
	flw f16, 0(a1)
	addi a2, s0, 96
	fsw f16, 1692(sp)
	sh2add a1, s6, a2
	flw f8, 0(a0)
	addi a2, s0, 144
	addi a0, s0, 108
	flw f23, 0(a1)
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
	addi a0, s0, 288
	flw f22, 0(a1)
	sh2add a1, s6, a0
	flw f10, 0(a1)
	sh2add a0, s6, a2
	addi a1, s0, 312
	addi a2, s0, 324
	fsw f10, 428(sp)
	flw f20, 0(a0)
	sh2add a0, s6, a1
	sh2add a1, s6, a2
	flw f12, 0(a0)
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
	addi a1, s1, 72
	lw s4, 0(a0)
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
	addi a2, s1, 192
	lw a1, 0(a3)
	sh2add a4, s6, a2
	lw a3, 0(a4)
	addi a2, s1, 36
	sh2add a5, s6, a2
	addi a2, s1, 252
	lw a4, 0(a5)
	sd a4, 1480(sp)
	sh2add a4, s6, a2
	lw a5, 0(a4)
	addi a2, s1, 240
	sd a5, 1464(sp)
	sh2add a5, s6, a2
	lw a4, 0(a5)
	addi a5, s1, 180
	sh2add t0, s6, a5
	sd a4, 1448(sp)
	lw a2, 0(t0)
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
	fsw f18, 224(sp)
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
	addi s8, s0, 180
	addi s10, s0, 276
	addi s11, s0, 96
	addi a0, s0, 108
	fmv.s f8, f10
	addi a2, s0, 12
	addi a3, s0, 36
	addi t0, s0, 24
	addi a5, s0, 60
	addi a6, s0, 72
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
	sd a2, 1432(sp)
	sd t0, 464(sp)
	addi a2, s0, 132
	sd a3, 472(sp)
	addi t0, s0, 444
	sd a4, 976(sp)
	addi a3, s0, 216
	sd a5, 1680(sp)
	addi a4, s0, 120
	addi a5, s0, 432
	sd a6, 1296(sp)
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
	flw f0, 408(sp)
	fsw f0, 288(sp)
	ld s11, 1368(sp)
	sd s11, 296(sp)
	ld t0, 1640(sp)
	sd t0, 304(sp)
	sd a0, 312(sp)
	ld s11, 1696(sp)
	sd s11, 320(sp)
	fsw f18, 328(sp)
	sd s4, 336(sp)
	fsw f9, 344(sp)
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
	ld ra, 1712(sp)
	mv a0, zero
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
