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
	fsw f9, 8(sp)
	sd s8, 16(sp)
	sd s3, 24(sp)
	sd s7, 32(sp)
	fsw f19, 40(sp)
	sd s5, 48(sp)
	sd s0, 56(sp)
	sd s2, 64(sp)
	sd s10, 72(sp)
	fsw f18, 80(sp)
	sd s6, 88(sp)
	sd s9, 96(sp)
	sd s1, 104(sp)
	fsw f8, 112(sp)
	sd s4, 120(sp)
	sd s11, 128(sp)
	jal getint
	sd a0, 136(sp)
	jal getint
pcrel917:
	auipc s8, %pcrel_hi(test_dct)
	lui s7, 256000
	li s6, 17
	mv s10, zero
	li s3, 1
	lui s2, 258048
	li s5, 5
pcrel918:
	auipc a1, %pcrel_hi(test_block)
	mv s1, a0
	addi s9, a1, %pcrel_lo(pcrel918)
pcrel919:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s0, a0, %pcrel_lo(pcrel919)
	ld a0, 136(sp)
	bgt a0, zero, label139
label57:
	ld a0, 136(sp)
	fcvt.s.w f19, s1
pcrel920:
	auipc s8, %pcrel_hi(test_dct)
	addi s4, s8, %pcrel_lo(pcrel920)
	mv t0, zero
	flw f10, 4(s0)
	fcvt.s.w f18, a0
	fdiv.s f8, f10, f19
	fdiv.s f9, f10, f18
	mv a1, zero
	fcvt.s.w f1, zero
	mv a3, s4
	bgt a0, zero, label166
	j label165
.p2align 2
label139:
	ble s1, zero, label140
	slli a0, s10, 5
	mv s11, zero
	add s4, s9, a0
.p2align 2
label142:
	jal getfloat
	sh2add a0, s11, s4
	addiw s11, s11, 1
	fsw f10, 0(a0)
	bgt s1, s11, label142
	addiw s10, s10, 1
	ld a0, 136(sp)
	bgt a0, s10, label139
	j label57
label165:
	mv s10, zero
	j label79
.p2align 2
label166:
	mv a4, zero
	ble s1, zero, label62
.p2align 2
label63:
	sh2add a0, a4, a3
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f0, a4
	fsw f10, 0(a0)
	ld a0, 136(sp)
	ble a0, zero, label178
.p2align 2
label66:
	fcvt.s.w f10, a5
	slliw a2, a5, 5
	fmv.w.x f13, s2
	add t1, s9, a2
	fadd.s f14, f10, f13
	flw f13, 8(s0)
	fmul.s f12, f9, f14
	fmul.s f11, f12, f1
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a1, f12, f10
	flt.s t2, f10, f11
	or a0, a1, t2
	bne a0, zero, label67
	j label202
.p2align 2
label70:
	fcvt.s.w f10, t2
	fmv.w.x f12, s2
	sh2add t3, t2, t1
	fadd.s f13, f10, f12
	flw f12, 8(s0)
	fmul.s f14, f8, f13
	flw f13, 12(s0)
	fmul.s f11, f14, f0
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a1, f13, f10
	flt.s a2, f10, f11
	flw f11, 0(t3)
	or a0, a1, a2
	fmul.s f4, f11, f2
	bne a0, zero, label73
	j label255
.p2align 2
label887:
	fmv.s f10, f11
	j label833
.p2align 2
label73:
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
	bne a0, zero, label831
	fmv.s f11, f10
.p2align 2
label831:
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label833
	fmv.s f10, f11
.p2align 2
label833:
	jal my_sin_impl
	addiw t2, t2, 1
	sh2add a0, a4, a3
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a0)
	bgt s1, t2, label70
	addiw a5, a5, 1
	ld a0, 136(sp)
	bgt a0, a5, label66
	addiw a4, a4, 1
	bgt s1, a4, label63
	addiw t0, t0, 1
	slliw a1, t0, 5
	fcvt.s.w f1, t0
	add a3, s4, a1
	bgt a0, t0, label166
	j label165
label79:
	ld a0, 136(sp)
	bgt a0, s10, label135
	j label81
.p2align 2
label255:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label831
	fmv.s f11, f10
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f10, f13
	bne a0, zero, label833
	j label887
.p2align 2
label202:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label827
	j label861
.p2align 2
label886:
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
	mv t2, zero
	sh2add a0, a4, a3
	fmv.s f2, f10
	flw f3, 0(a0)
	j label70
.p2align 2
label67:
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
	bne a0, zero, label827
	fmv.s f11, f10
	j label827
.p2align 2
label135:
	slliw a1, s10, 5
	add s9, s4, a1
	flw f10, 0(s9)
	jal putfloat
	ble s1, s3, label136
	mv s11, s3
	j label137
.p2align 2
label136:
	li a0, 10
	jal putch
	addiw s10, s10, 1
	ld a0, 136(sp)
	bgt a0, s10, label135
	j label81
.p2align 2
label137:
	li a0, 32
	jal putch
	sh2add a1, s11, s9
	flw f10, 0(a1)
	jal putfloat
	addiw s11, s11, 1
	bgt s1, s11, label137
	j label136
label81:
	li a0, 10
	jal putch
	mv t3, zero
	addiw t0, s1, -20
	addiw t2, s1, -4
pcrel921:
	auipc a1, %pcrel_hi(test_idct)
	ld a0, 136(sp)
	addi s9, a1, %pcrel_lo(pcrel921)
	addiw a5, a0, -20
	addiw t1, a0, -4
	fcvt.s.w f10, zero
	mv a1, zero
	fmv.w.x f12, s2
	mv a3, s9
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	bgt a0, zero, label313
label312:
	mv s2, zero
	j label128
.p2align 2
label313:
	mv a4, zero
	ble s1, zero, label316
.p2align 2
label86:
	sh2add a0, a4, a3
pcrel922:
	auipc s8, %pcrel_hi(test_dct)
	flw f10, %pcrel_lo(pcrel922)(s8)
	fmv.w.x f13, s7
	fcvt.s.w f11, a4
	fmul.s f12, f10, f13
	fmv.w.x f10, s2
	fsw f12, 0(a0)
	ld a0, 136(sp)
	fadd.s f12, f11, f10
	fmul.s f0, f8, f12
	ble a0, s3, label331
	bgt a0, s5, label92
	j label88
.p2align 2
label115:
	ble s1, s3, label116
	fcvt.s.w f12, t4
	flw f13, 8(s0)
	slliw t6, t4, 5
	fmul.s f11, f1, f12
	add t5, s4, t6
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a2, f10, f11
	or a1, a0, a2
	bne a1, zero, label126
	j label118
.p2align 2
label120:
	fcvt.s.w f12, t6
	flw f13, 8(s0)
	sh2add a2, t6, t5
	fmul.s f11, f0, f12
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a1, f12, f10
	flt.s a6, f10, f11
	flw f11, 0(a2)
	or a0, a1, a6
	fmul.s f4, f11, f2
	bne a0, zero, label125
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label839
	fmv.s f11, f10
.p2align 2
label839:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label841
.p2align 2
label840:
	fmv.s f10, f11
.p2align 2
label841:
	jal my_sin_impl
	addiw t6, t6, 1
	sh2add a0, a4, a3
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a0)
	bgt s1, t6, label120
	addiw t4, t4, 1
	ld a0, 136(sp)
	bgt a0, t4, label115
	sh2add a0, a4, a3
	addiw a4, a4, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s1, a4, label86
	addiw t3, t3, 1
	fcvt.s.w f10, t3
	slliw a1, t3, 5
	ld a0, 136(sp)
	fmv.w.x f12, s2
	add a3, s9, a1
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	bgt a0, t3, label313
	j label312
label128:
	ld a0, 136(sp)
	bgt a0, s2, label130
	j label134
.p2align 2
label125:
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
	bne a0, zero, label839
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label841
	j label840
.p2align 2
label118:
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
.p2align 2
label836:
	fmv.s f10, f11
.p2align 2
label837:
	jal my_sin_impl
	mv t6, s3
	sh2add a0, a4, a3
	fmv.s f2, f10
	flw f3, 0(a0)
	j label120
.p2align 2
label126:
	flw f11, 12(s0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f14, a0
	fmul.s f12, f14, f11
	fsub.s f10, f10, f12
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
	j label836
.p2align 2
label89:
	slliw a2, a1, 5
	fmv.w.x f13, s2
	addiw a1, a1, 1
	add a0, s4, a2
	sh2add a2, a4, a3
	flw f11, 0(a0)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a2)
	ld a0, 136(sp)
	bgt a0, a1, label89
	bgt s1, s3, label100
	j label866
.p2align 2
label92:
	sh2add a0, a4, a3
	flw f11, 0(a0)
	ble t1, s6, label359
	mv a0, s3
.p2align 2
label93:
	slliw a2, a0, 5
	fmv.w.x f10, s2
	addiw a0, a0, 16
	add a1, s4, a2
	flw f13, 0(a1)
	flw f2, 32(a1)
	fmul.s f14, f13, f10
	flw f15, 64(a1)
	fmul.s f13, f2, f10
	fadd.s f12, f11, f14
	fmul.s f14, f15, f10
	fadd.s f11, f12, f13
	flw f13, 96(a1)
	fmul.s f15, f13, f10
	fadd.s f12, f11, f14
	flw f14, 128(a1)
	fmul.s f13, f14, f10
	fadd.s f11, f12, f15
	flw f15, 160(a1)
	fmul.s f14, f15, f10
	fadd.s f12, f11, f13
	flw f13, 192(a1)
	flw f15, 224(a1)
	fmul.s f2, f13, f10
	fmul.s f13, f15, f10
	fadd.s f11, f12, f14
	flw f14, 256(a1)
	fmul.s f15, f14, f10
	fadd.s f12, f11, f2
	fadd.s f11, f12, f13
	flw f13, 288(a1)
	flw f2, 320(a1)
	fmul.s f14, f13, f10
	fmul.s f13, f2, f10
	fadd.s f12, f11, f15
	flw f15, 352(a1)
	fmul.s f2, f15, f10
	fadd.s f11, f12, f14
	flw f14, 384(a1)
	flw f3, 416(a1)
	flw f15, 448(a1)
	fadd.s f12, f11, f13
	fmul.s f13, f14, f10
	fmul.s f14, f15, f10
	fadd.s f11, f12, f2
	fmul.s f2, f3, f10
	fadd.s f12, f11, f13
	flw f13, 480(a1)
	fmul.s f15, f13, f10
	fadd.s f11, f12, f2
	fadd.s f12, f11, f14
	fadd.s f11, f12, f15
	bgt a5, a0, label93
.p2align 2
label96:
	slliw a2, a0, 5
	fmv.w.x f10, s2
	addiw a0, a0, 4
	add a1, s4, a2
	flw f13, 0(a1)
	flw f14, 32(a1)
	fmul.s f2, f13, f10
	fmul.s f15, f14, f10
	fadd.s f12, f11, f2
	flw f2, 64(a1)
	fmul.s f14, f2, f10
	fadd.s f13, f12, f15
	flw f15, 96(a1)
	fmul.s f12, f15, f10
	fadd.s f11, f13, f14
	fadd.s f11, f11, f12
	bgt t1, a0, label96
	fmv.s f10, f11
	mv a1, a0
	j label89
.p2align 2
label100:
	ble s1, s5, label101
	sh2add a0, a4, a3
	flw f11, 0(a0)
	ble t2, s6, label472
	mv a0, s3
.p2align 2
label103:
	sh2add a1, a0, s4
	fmv.w.x f10, s2
	addiw a0, a0, 16
	flw f13, 0(a1)
	flw f2, 4(a1)
	fmul.s f14, f13, f10
	flw f15, 8(a1)
	fmul.s f13, f2, f10
	flw f2, 12(a1)
	fmul.s f3, f2, f10
	fadd.s f12, f11, f14
	fmul.s f14, f15, f10
	fadd.s f11, f12, f13
	flw f13, 16(a1)
	fmul.s f15, f13, f10
	fadd.s f12, f11, f14
	flw f14, 20(a1)
	fmul.s f2, f14, f10
	fadd.s f11, f12, f3
	fadd.s f12, f11, f15
	flw f15, 24(a1)
	fmul.s f14, f15, f10
	fadd.s f13, f12, f2
	flw f2, 28(a1)
	fmul.s f15, f2, f10
	fadd.s f11, f13, f14
	flw f14, 32(a1)
	fmul.s f2, f14, f10
	fadd.s f12, f11, f15
	flw f15, 36(a1)
	fmul.s f3, f15, f10
	fadd.s f13, f12, f2
	flw f2, 40(a1)
	flw f15, 44(a1)
	fmul.s f14, f2, f10
	fadd.s f11, f13, f3
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	flw f14, 48(a1)
	fmul.s f15, f14, f10
	fadd.s f11, f12, f13
	flw f13, 52(a1)
	fmul.s f14, f13, f10
	fadd.s f12, f11, f15
	flw f15, 56(a1)
	fmul.s f2, f15, f10
	fadd.s f11, f12, f14
	flw f14, 60(a1)
	fmul.s f13, f14, f10
	fadd.s f12, f11, f2
	fadd.s f11, f12, f13
	bgt t0, a0, label103
.p2align 2
label106:
	sh2add a1, a0, s4
	fmv.w.x f10, s2
	addiw a0, a0, 4
	flw f13, 0(a1)
	flw f15, 4(a1)
	fmul.s f14, f13, f10
	flw f2, 8(a1)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fmul.s f14, f2, f10
	fadd.s f11, f12, f13
	flw f13, 12(a1)
	fmul.s f15, f13, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f15
	bgt t2, a0, label106
	fmv.s f10, f11
	mv a1, a0
.p2align 2
label109:
	sh2add a2, a1, s4
	fmv.w.x f13, s2
	addiw a1, a1, 1
	flw f11, 0(a2)
	sh2add a0, a4, a3
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a0)
	bgt s1, a1, label109
	mv t4, s3
	ld a0, 136(sp)
	bgt a0, s3, label115
.p2align 2
label114:
	sh2add a0, a4, a3
	addiw a4, a4, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s1, a4, label86
label869:
	addiw t3, t3, 1
	fcvt.s.w f10, t3
	slliw a1, t3, 5
	ld a0, 136(sp)
	fmv.w.x f12, s2
	add a3, s9, a1
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	bgt a0, t3, label313
	j label312
.p2align 2
label116:
	addiw t4, t4, 1
	ld a0, 136(sp)
	bgt a0, t4, label115
	sh2add a0, a4, a3
	addiw a4, a4, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s1, a4, label86
	j label869
.p2align 2
label101:
	sh2add a0, a4, a3
	mv a1, s3
	flw f10, 0(a0)
	sh2add a2, s3, s4
	fmv.w.x f13, s2
	addiw a1, s3, 1
	flw f11, 0(a2)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a0)
	bgt s1, a1, label109
	mv t4, s3
	ld a0, 136(sp)
	bgt a0, s3, label115
	j label114
.p2align 2
label88:
	sh2add a0, a4, a3
	mv a1, s3
	flw f10, 0(a0)
	j label89
.p2align 2
label130:
	slliw a0, s2, 5
	add s0, s9, a0
	flw f10, 0(s0)
	jal putfloat
	ble s1, s3, label133
	mv s4, s3
.p2align 2
label131:
	li a0, 32
	jal putch
	sh2add a1, s4, s0
	flw f10, 0(a1)
	jal putfloat
	addiw s4, s4, 1
	bgt s1, s4, label131
.p2align 2
label133:
	li a0, 10
	jal putch
	addiw s2, s2, 1
	ld a0, 136(sp)
	bgt a0, s2, label130
label134:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	flw f9, 8(sp)
	ld s8, 16(sp)
	ld s3, 24(sp)
	ld s7, 32(sp)
	flw f19, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s2, 64(sp)
	ld s10, 72(sp)
	flw f18, 80(sp)
	ld s6, 88(sp)
	ld s9, 96(sp)
	ld s1, 104(sp)
	flw f8, 112(sp)
	ld s4, 120(sp)
	ld s11, 128(sp)
	addi sp, sp, 144
	ret
label140:
	addiw s10, s10, 1
	ld a0, 136(sp)
	bgt a0, s10, label139
	j label57
label62:
	addiw t0, t0, 1
	slliw a1, t0, 5
	fcvt.s.w f1, t0
	ld a0, 136(sp)
	add a3, s4, a1
	bgt a0, t0, label166
	j label165
.p2align 2
label178:
	addiw a4, a4, 1
	bgt s1, a4, label63
	j label62
.p2align 2
label331:
	bgt s1, s3, label100
	mv t4, s3
	ld a0, 136(sp)
	bgt a0, s3, label115
	j label114
.p2align 2
label866:
	mv t4, s3
	ld a0, 136(sp)
	bgt a0, s3, label115
	j label114
label316:
	addiw t3, t3, 1
	fcvt.s.w f10, t3
	slliw a1, t3, 5
	ld a0, 136(sp)
	fmv.w.x f12, s2
	add a3, s9, a1
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	bgt a0, t3, label313
	j label312
.p2align 2
label472:
	mv a0, s3
	j label106
.p2align 2
label861:
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label829
	j label886
.p2align 2
label359:
	mv a0, s3
	j label96
