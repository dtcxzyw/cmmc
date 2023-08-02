.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	1078530011
	.4byte	1070141403
	.4byte	1086918619
	.4byte	3234402267
	.4byte	3226013659
.bss
.align 8
test_block:
	.zero	256
.align 8
test_dct:
	.zero	256
.align 8
test_idct:
	.zero	256
.text
.p2align 2
my_sin_impl:
	addi sp, sp, -16
	fabs.s f11, f10
pcrel53:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel53)
	fsw f8, 8(sp)
	flw f12, 0(a0)
	fle.s a1, f11, f12
	beq a1, zero, label4
label2:
	ld ra, 0(sp)
	flw f8, 8(sp)
	addi sp, sp, 16
	ret
label4:
	lui a1, 263168
	flw f13, 0(a0)
	fmv.w.x f14, a1
	fdiv.s f11, f10, f14
	fabs.s f12, f11
	fle.s a1, f12, f13
	beq a1, zero, label7
	lui a0, 264192
	fmv.w.x f10, a0
	lui a0, 263168
	fmul.s f14, f11, f10
	fmul.s f13, f14, f11
	fmv.w.x f14, a0
	fmul.s f12, f13, f11
	fmul.s f13, f11, f14
	fsub.s f10, f13, f12
	j label2
label7:
	lui a0, 263168
	fmv.w.x f8, a0
	fdiv.s f10, f11, f8
	jal my_sin_impl
	lui a0, 264192
	fmv.w.x f11, a0
	fmul.s f13, f10, f8
	fmul.s f14, f10, f11
	fmul.s f15, f14, f10
	fmul.s f12, f15, f10
	fsub.s f11, f13, f12
	fmv.w.x f10, a0
	lui a0, 263168
	fmul.s f14, f11, f10
	fmul.s f13, f14, f11
	fmv.w.x f14, a0
	fmul.s f12, f13, f11
	fmul.s f13, f11, f14
	fsub.s f10, f13, f12
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -144
	sd ra, 0(sp)
	sd s11, 8(sp)
	sd s10, 16(sp)
	sd s4, 24(sp)
	sd s3, 32(sp)
	sd s2, 40(sp)
	sd s5, 48(sp)
	sd s0, 56(sp)
	sd s6, 64(sp)
	fsw f18, 72(sp)
	sd s1, 80(sp)
	sd s9, 88(sp)
	sd s7, 96(sp)
	fsw f19, 104(sp)
	sd s8, 112(sp)
	fsw f9, 120(sp)
	fsw f8, 124(sp)
	jal getint
	sd a0, 128(sp)
	mv a1, a0
	jal getint
	sd a0, 136(sp)
pcrel943:
	auipc s6, %pcrel_hi(test_dct)
	li s4, 17
pcrel944:
	auipc a1, %pcrel_hi(test_block)
	li s2, 1
	mv s9, zero
	lui s1, 258048
	lui s5, 256000
	li s3, 5
pcrel945:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s8, a1, %pcrel_lo(pcrel944)
	addi s0, a0, %pcrel_lo(pcrel945)
	mv s7, s8
label55:
	ld a1, 128(sp)
	ble a1, s9, label65
.p2align 2
label58:
	ld a0, 136(sp)
	ble a0, zero, label199
	mv s10, s7
	mv s11, zero
	j label60
.p2align 2
label205:
	addiw s9, s9, 1
	addi s7, s7, 32
	ld a1, 128(sp)
	bgt a1, s9, label58
label65:
	ld a1, 128(sp)
pcrel946:
	auipc s6, %pcrel_hi(test_dct)
	addi s7, s6, %pcrel_lo(pcrel946)
	mv a5, zero
	mv a4, s7
	flw f10, 4(s0)
	fcvt.s.w f18, a1
	ld a0, 136(sp)
	fdiv.s f9, f10, f18
	fcvt.s.w f19, a0
	fdiv.s f8, f10, f19
	fcvt.s.w f1, zero
	bgt a1, zero, label69
label222:
	mv s8, s7
	mv s9, zero
	j label93
.p2align 2
label69:
	mv a3, a4
	mv t0, zero
	ld a0, 136(sp)
	ble a0, zero, label226
.p2align 2
label73:
	fmv.w.x f10, zero
	mv t1, s8
	mv t2, zero
	fcvt.s.w f0, t0
	fsw f10, 0(a3)
	ld a1, 128(sp)
	ble a1, zero, label232
.p2align 2
label77:
	fcvt.s.w f10, t2
	fmv.w.x f14, s1
	fadd.s f12, f10, f14
	flw f14, 8(s0)
	fmul.s f13, f9, f12
	flw f12, 12(s0)
	fmul.s f11, f13, f1
	fadd.s f10, f11, f14
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a1, f10, f11
	or a2, a0, a1
	bne a2, zero, label89
	j label78
.p2align 2
label326:
	addiw t2, t2, 1
	addi t1, t1, 32
	ld a1, 128(sp)
	bgt a1, t2, label77
	addiw t0, t0, 1
	addi a3, a3, 4
	ld a0, 136(sp)
	bgt a0, t0, label73
	addiw a5, a5, 1
	addi a4, a4, 32
	fcvt.s.w f1, a5
	bgt a1, a5, label69
	j label222
label93:
	ld a1, 128(sp)
	bgt a1, s9, label96
	j label103
.p2align 2
label78:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label823
	fmv.s f11, f10
.p2align 2
label823:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label825
.p2align 2
label824:
	fmv.s f10, f11
.p2align 2
label825:
	jal my_sin_impl
	mv t3, t1
	mv t4, zero
	fmv.s f2, f10
	flw f3, 0(a3)
.p2align 2
label80:
	fcvt.s.w f10, t4
	fmv.w.x f14, s1
	fadd.s f13, f10, f14
	flw f14, 8(s0)
	fmul.s f12, f8, f13
	fmul.s f11, f12, f0
	flw f12, 12(s0)
	fadd.s f10, f11, f14
	flw f11, 16(s0)
	flt.s a1, f12, f10
	flt.s a2, f10, f11
	flw f12, 0(t3)
	or a0, a1, a2
	fmul.s f4, f12, f2
	bne a0, zero, label84
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label827
	j label858
.p2align 2
label887:
	fmv.s f10, f11
	j label829
.p2align 2
label827:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label829
	fmv.s f10, f11
.p2align 2
label829:
	jal my_sin_impl
	addiw t4, t4, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 136(sp)
	ble a0, t4, label326
	addi t3, t3, 4
	j label80
.p2align 2
label84:
	flw f11, 12(s0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f14, f13, f11
	fsub.s f10, f10, f14
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label827
	fmv.s f11, f10
	j label827
.p2align 2
label89:
	flw f11, 12(s0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f14, f12, f11
	fsub.s f10, f10, f14
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label823
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label825
	j label824
.p2align 2
label60:
	jal getfloat
	addiw a1, s11, 1
	fsw f10, 0(s10)
	ld a0, 136(sp)
	ble a0, a1, label205
	addi s10, s10, 4
	mv s11, a1
	j label60
.p2align 2
label96:
	flw f10, 0(s8)
	jal putfloat
	ld a0, 136(sp)
	bgt a0, s2, label97
.p2align 2
label102:
	li a0, 10
	jal putch
	addi s8, s8, 32
	addiw s9, s9, 1
	ld a1, 128(sp)
	bgt a1, s9, label96
label103:
	li a0, 10
	jal putch
	mv t4, zero
pcrel947:
	auipc a2, %pcrel_hi(test_idct)
	ld a1, 128(sp)
	addi t3, a2, %pcrel_lo(pcrel947)
	addiw a4, a1, -20
	addiw t0, a1, -4
	mv t2, t3
	ld a0, 136(sp)
	addiw a5, a0, -20
	addiw t1, a0, -4
	fcvt.s.w f10, zero
	fmv.w.x f11, s1
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, zero, label107
label375:
	mv s0, t3
	mv s1, zero
	j label179
.p2align 2
label107:
	mv a3, t2
	mv t5, zero
	ld a0, 136(sp)
	ble a0, zero, label111
.p2align 2
label112:
	auipc s6, %pcrel_hi(test_dct)
	flw f11, %pcrel_lo(label112)(s6)
	fmv.w.x f12, s5
	fcvt.s.w f10, t5
	fmul.s f13, f11, f12
	fmv.w.x f12, s1
	fadd.s f11, f10, f12
	fsw f13, 0(a3)
	ld a1, 128(sp)
	fmul.s f0, f8, f11
	ble a1, s2, label394
	bgt a1, s3, label114
	j label398
.p2align 2
label141:
	ld a0, 136(sp)
	ble a0, s2, label534
	fcvt.s.w f12, a6
	flw f13, 8(s0)
	fmul.s f11, f1, f12
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a2, f10, f11
	or a1, a0, a2
	bne a1, zero, label143
	j label552
.p2align 2
label629:
	addiw a6, a6, 1
	addi t6, t6, 32
	ld a1, 128(sp)
	bgt a1, a6, label141
	flw f11, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	addi a3, a3, 4
	ld a0, 136(sp)
	bgt a0, t5, label112
	addiw t4, t4, 1
	addi t2, t2, 32
	fcvt.s.w f10, t4
	fmv.w.x f11, s1
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, t4, label107
	j label375
label179:
	ld a1, 128(sp)
	ble a1, s1, label182
.p2align 2
label183:
	flw f10, 0(s0)
	jal putfloat
	ld a0, 136(sp)
	ble a0, s2, label184
	addi s3, s0, 4
	mv s4, s2
	j label186
.p2align 2
label894:
	fmv.s f10, f11
	j label833
.p2align 2
label143:
	flw f11, 12(s0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f14, a0
	fmul.s f13, f14, f11
	fsub.s f10, f10, f13
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label831
	fmv.s f11, f10
.p2align 2
label831:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label833
	fmv.s f10, f11
.p2align 2
label833:
	jal my_sin_impl
	mv s8, s2
	addi a7, t6, 4
	flw f3, 0(a3)
	fmv.s f2, f10
.p2align 2
label146:
	fcvt.s.w f12, s8
	flw f14, 8(s0)
	flw f13, 12(s0)
	fmul.s f11, f0, f12
	flw f12, 16(s0)
	fadd.s f10, f11, f14
	flw f11, 0(a7)
	fmul.s f4, f11, f2
	flt.s a2, f10, f12
	flt.s a0, f13, f10
	or a1, a0, a2
	bne a1, zero, label150
	j label598
.p2align 2
label895:
	fmv.s f10, f11
	j label837
.p2align 2
label150:
	flw f11, 12(s0)
	fdiv.s f14, f10, f11
	fcvt.w.s a0, f14, rtz
	fcvt.s.w f12, a0
	fmul.s f13, f12, f11
	fsub.s f10, f10, f13
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label835
	fmv.s f11, f10
.p2align 2
label835:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label837
	fmv.s f10, f11
.p2align 2
label837:
	jal my_sin_impl
	addiw s8, s8, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 136(sp)
	ble a0, s8, label629
	addi a7, a7, 4
	j label146
.p2align 2
label598:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label835
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label837
	j label895
.p2align 2
label552:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label831
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label833
	j label894
.p2align 2
label186:
	li a0, 32
	jal putch
	flw f10, 0(s3)
	jal putfloat
	ld a0, 136(sp)
	addiw s4, s4, 1
	ble a0, s4, label184
	addi s3, s3, 4
	j label186
.p2align 2
label97:
	addi s10, s8, 4
	mv s11, s2
.p2align 2
label98:
	li a0, 32
	jal putch
	flw f10, 0(s10)
	jal putfloat
	ld a0, 136(sp)
	addiw s11, s11, 1
	ble a0, s11, label102
	addi s10, s10, 4
	j label98
.p2align 2
label114:
	flw f11, 0(a3)
	ble t0, s4, label115
	addi a0, s7, 32
	mv a1, s2
.p2align 2
label123:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f15, 32(a0)
	fmul.s f14, f13, f10
	fmul.s f2, f15, f10
	fadd.s f12, f11, f14
	flw f14, 64(a0)
	flw f15, 96(a0)
	fmul.s f3, f14, f10
	fmul.s f14, f15, f10
	fadd.s f13, f12, f2
	flw f2, 128(a0)
	flw f15, 160(a0)
	fadd.s f11, f13, f3
	fmul.s f13, f2, f10
	fadd.s f12, f11, f14
	fmul.s f14, f15, f10
	fadd.s f11, f12, f13
	flw f13, 192(a0)
	flw f2, 224(a0)
	fmul.s f15, f13, f10
	fmul.s f13, f2, f10
	fadd.s f12, f11, f14
	flw f14, 256(a0)
	flw f2, 288(a0)
	fadd.s f11, f12, f15
	fmul.s f15, f14, f10
	fmul.s f14, f2, f10
	fadd.s f12, f11, f13
	fadd.s f11, f12, f15
	flw f15, 320(a0)
	flw f2, 352(a0)
	fmul.s f3, f15, f10
	fmul.s f15, f2, f10
	fadd.s f13, f11, f14
	flw f14, 384(a0)
	flw f2, 416(a0)
	fadd.s f12, f13, f3
	fmul.s f13, f14, f10
	flw f14, 448(a0)
	fadd.s f11, f12, f15
	fmul.s f15, f2, f10
	fadd.s f12, f11, f13
	fmul.s f13, f14, f10
	fadd.s f11, f12, f15
	flw f15, 480(a0)
	fmul.s f14, f15, f10
	fadd.s f12, f11, f13
	fadd.s f11, f12, f14
	ble a4, a1, label127
	addi a0, a0, 512
	j label123
.p2align 2
label127:
	slliw a2, a1, 5
	add a0, s7, a2
.p2align 2
label116:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f2, 32(a0)
	fmul.s f14, f13, f10
	flw f15, 64(a0)
	fmul.s f13, f2, f10
	fadd.s f12, f11, f14
	fmul.s f14, f15, f10
	fadd.s f11, f12, f13
	flw f13, 96(a0)
	fmul.s f15, f13, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f15
	ble t0, a1, label426
	addi a0, a0, 128
	j label116
.p2align 2
label426:
	slliw a2, a1, 5
	fmv.s f10, f11
	add a0, s7, a2
	mv a2, a1
	flw f11, 0(a0)
	fmv.w.x f13, s1
	addiw a2, a1, 1
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a3)
	ld a1, 128(sp)
	bgt a1, a2, label134
	j label881
.p2align 2
label130:
	flw f11, 0(a0)
	fmv.w.x f13, s1
	addiw a2, a2, 1
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a3)
	ld a1, 128(sp)
	ble a1, a2, label515
.p2align 2
label134:
	addi a0, a0, 32
	j label130
.p2align 2
label515:
	ld a0, 136(sp)
	ble a0, s2, label867
.p2align 2
label155:
	ld a0, 136(sp)
	ble a0, s3, label156
	flw f11, 0(a3)
	ble t1, s4, label158
	addi a0, s7, 4
	mv a1, s2
.p2align 2
label166:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f2, 4(a0)
	fmul.s f14, f13, f10
	fmul.s f15, f2, f10
	fadd.s f12, f11, f14
	flw f14, 8(a0)
	fmul.s f2, f14, f10
	fadd.s f13, f12, f15
	flw f15, 12(a0)
	flw f14, 16(a0)
	fmul.s f3, f15, f10
	fadd.s f11, f13, f2
	fmul.s f2, f14, f10
	fadd.s f12, f11, f3
	flw f3, 20(a0)
	fmul.s f15, f3, f10
	fadd.s f13, f12, f2
	flw f2, 24(a0)
	flw f3, 28(a0)
	fmul.s f14, f2, f10
	fadd.s f11, f13, f15
	flw f15, 32(a0)
	fmul.s f13, f3, f10
	flw f2, 36(a0)
	flw f3, 40(a0)
	fadd.s f12, f11, f14
	fmul.s f14, f15, f10
	flw f15, 44(a0)
	fadd.s f11, f12, f13
	fmul.s f13, f2, f10
	flw f2, 48(a0)
	fadd.s f12, f11, f14
	fmul.s f14, f3, f10
	fadd.s f11, f12, f13
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fmul.s f14, f2, f10
	fadd.s f11, f12, f13
	flw f13, 52(a0)
	flw f15, 56(a0)
	fmul.s f2, f13, f10
	flw f13, 60(a0)
	fadd.s f12, f11, f14
	fmul.s f14, f15, f10
	fmul.s f15, f13, f10
	fadd.s f11, f12, f2
	fadd.s f12, f11, f14
	fadd.s f11, f12, f15
	ble a5, a1, label740
	addi a0, a0, 64
	j label166
label140:
	flw f11, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	addi a3, a3, 4
	ld a0, 136(sp)
	bgt a0, t5, label112
	j label868
.p2align 2
label156:
	flw f10, 0(a3)
	addi a2, s7, 4
	mv a1, s2
	flw f11, 0(a2)
	fmv.w.x f12, s1
	addiw a1, s2, 1
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	fsw f10, 0(a3)
	ld a0, 136(sp)
	bgt a0, a1, label176
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label141
	j label140
.p2align 2
label163:
	sh2add a2, a1, s7
	fmv.s f10, f11
	flw f11, 0(a2)
	fmv.w.x f12, s1
	addiw a1, a1, 1
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	fsw f10, 0(a3)
	ld a0, 136(sp)
	bgt a0, a1, label176
	j label873
.p2align 2
label172:
	flw f11, 0(a2)
	fmv.w.x f12, s1
	addiw a1, a1, 1
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	fsw f10, 0(a3)
	ld a0, 136(sp)
	ble a0, a1, label753
.p2align 2
label176:
	addi a2, a2, 4
	j label172
.p2align 2
label158:
	addi a0, s7, 4
	mv a1, s2
.p2align 2
label159:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f14, 4(a0)
	fmul.s f15, f13, f10
	flw f2, 8(a0)
	fmul.s f13, f14, f10
	fmul.s f14, f2, f10
	fadd.s f12, f11, f15
	flw f15, 12(a0)
	fadd.s f11, f12, f13
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	ble t1, a1, label163
	addi a0, a0, 16
	j label159
.p2align 2
label115:
	addi a0, s7, 32
	mv a1, s2
	j label116
.p2align 2
label184:
	li a0, 10
	jal putch
	addi s0, s0, 32
	addiw s1, s1, 1
	ld a1, 128(sp)
	bgt a1, s1, label183
	j label182
label868:
	addiw t4, t4, 1
	addi t2, t2, 32
	fcvt.s.w f10, t4
	ld a1, 128(sp)
	fmv.w.x f11, s1
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, t4, label107
	j label375
.p2align 2
label534:
	addiw a6, a6, 1
	addi t6, t6, 32
	ld a1, 128(sp)
	bgt a1, a6, label141
	flw f11, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	addi a3, a3, 4
	ld a0, 136(sp)
	bgt a0, t5, label112
	j label868
.p2align 2
label398:
	flw f10, 0(a3)
	addi a0, s7, 32
	mv a2, s2
	flw f11, 0(a0)
	fmv.w.x f13, s1
	addiw a2, s2, 1
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a3)
	ld a1, 128(sp)
	bgt a1, a2, label134
	ld a0, 136(sp)
	bgt a0, s2, label155
.p2align 2
label867:
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label141
	j label140
.p2align 2
label753:
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label141
	flw f11, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	addi a3, a3, 4
	ld a0, 136(sp)
	bgt a0, t5, label112
	j label868
.p2align 2
label873:
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label141
	flw f11, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	addi a3, a3, 4
	ld a0, 136(sp)
	bgt a0, t5, label112
	j label868
.p2align 2
label881:
	ld a0, 136(sp)
	bgt a0, s2, label155
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label141
	j label140
label111:
	addiw t4, t4, 1
	addi t2, t2, 32
	fcvt.s.w f10, t4
	ld a1, 128(sp)
	fmv.w.x f11, s1
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, t4, label107
	j label375
label182:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s10, 16(sp)
	ld s4, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s6, 64(sp)
	flw f18, 72(sp)
	ld s1, 80(sp)
	ld s9, 88(sp)
	ld s7, 96(sp)
	flw f19, 104(sp)
	ld s8, 112(sp)
	flw f9, 120(sp)
	flw f8, 124(sp)
	addi sp, sp, 144
	ret
.p2align 2
label394:
	ld a0, 136(sp)
	bgt a0, s2, label155
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label141
	j label140
.p2align 2
label232:
	addiw t0, t0, 1
	addi a3, a3, 4
	ld a0, 136(sp)
	bgt a0, t0, label73
	addiw a5, a5, 1
	addi a4, a4, 32
	fcvt.s.w f1, a5
	ld a1, 128(sp)
	bgt a1, a5, label69
	j label222
label226:
	addiw a5, a5, 1
	addi a4, a4, 32
	fcvt.s.w f1, a5
	ld a1, 128(sp)
	bgt a1, a5, label69
	j label222
.p2align 2
label740:
	sh2add a0, a1, s7
	j label159
label199:
	addiw s9, s9, 1
	addi s7, s7, 32
	j label55
.p2align 2
label858:
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label829
	j label887
