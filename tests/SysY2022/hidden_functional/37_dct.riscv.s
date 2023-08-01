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
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel53)
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
	fmv.w.x f12, a1
	fdiv.s f10, f10, f12
	flw f12, 0(a0)
	fabs.s f11, f10
	fle.s a0, f11, f12
	beq a0, zero, label7
	lui a0, 264192
	fmv.w.x f11, a0
	lui a0, 263168
	fmul.s f13, f10, f11
	fmul.s f12, f13, f10
	fmv.w.x f13, a0
	fmul.s f11, f12, f10
	fmul.s f12, f10, f13
	fsub.s f10, f12, f11
	j label2
label7:
	lui a0, 263168
	fmv.w.x f8, a0
	fdiv.s f10, f10, f8
	jal my_sin_impl
	lui a0, 264192
	fmv.w.x f11, a0
	fmul.s f12, f10, f11
	fmul.s f13, f12, f10
	fmul.s f12, f10, f8
	fmul.s f11, f13, f10
	fsub.s f10, f12, f11
	fmv.w.x f11, a0
	lui a0, 263168
	fmul.s f13, f10, f11
	fmul.s f12, f13, f10
	fmv.w.x f13, a0
	fmul.s f11, f12, f10
	fmul.s f12, f10, f13
	fsub.s f10, f12, f11
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
pcrel918:
	auipc s8, %pcrel_hi(test_dct)
	lui s7, 256000
	li s6, 17
	mv s10, zero
	li s3, 1
	lui s2, 258048
	li s5, 5
	mv s1, a0
pcrel919:
	auipc a0, %pcrel_hi(test_block)
	addi s9, a0, %pcrel_lo(pcrel919)
pcrel920:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s0, a0, %pcrel_lo(pcrel920)
	ld a0, 136(sp)
	bgt a0, zero, label139
label57:
	ld a0, 136(sp)
	fcvt.s.w f19, s1
pcrel921:
	auipc s8, %pcrel_hi(test_dct)
	addi s4, s8, %pcrel_lo(pcrel921)
	mv a5, zero
	flw f10, 4(s0)
	fcvt.s.w f18, a0
	fdiv.s f8, f10, f19
	fdiv.s f9, f10, f18
	mv a0, zero
	fcvt.s.w f15, zero
	mv a2, s4
	ld a0, 136(sp)
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
	mv a3, zero
	ble s1, zero, label62
.p2align 2
label63:
	sh2add a0, a3, a2
	mv a4, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, a3
	fsw f10, 0(a0)
	ld a0, 136(sp)
	ble a0, zero, label178
.p2align 2
label66:
	fcvt.s.w f10, a4
	flw f13, 8(s0)
	slliw a1, a4, 5
	fmv.w.x f11, s2
	fadd.s f12, f10, f11
	fmul.s f10, f9, f12
	flw f12, 12(s0)
	fmul.s f11, f10, f15
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s t0, f10, f11
	or a0, a0, t0
	add t0, s9, a1
	bne a0, zero, label67
	j label202
.p2align 2
label70:
	fcvt.s.w f10, t1
	fmv.w.x f11, s2
	sh2add a1, t1, t0
	fadd.s f12, f10, f11
	fmul.s f10, f8, f12
	flw f12, 8(s0)
	flw f13, 12(s0)
	fmul.s f11, f10, f14
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a0, f13, f10
	flt.s t2, f10, f11
	flw f11, 0(a1)
	or a0, a0, t2
	fmul.s f2, f11, f0
	bne a0, zero, label73
	j label255
.p2align 2
label887:
	fmv.s f10, f11
	j label833
.p2align 2
label73:
	flw f11, 12(s0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label831
	fmv.s f11, f10
.p2align 2
label831:
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label833
	fmv.s f10, f11
.p2align 2
label833:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s1, t1, label70
	addiw a4, a4, 1
	ld a0, 136(sp)
	bgt a0, a4, label66
	addiw a3, a3, 1
	bgt s1, a3, label63
	addiw a5, a5, 1
	slliw a0, a5, 5
	fcvt.s.w f15, a5
	add a2, s4, a0
	ld a0, 136(sp)
	bgt a0, a5, label166
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
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
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
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label829
	fmv.s f10, f11
.p2align 2
label829:
	jal my_sin_impl
	mv t1, zero
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label70
.p2align 2
label67:
	flw f11, 12(s0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
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
	mv t2, zero
	addiw a5, s1, -20
	addiw t1, s1, -4
pcrel922:
	auipc a1, %pcrel_hi(test_idct)
	ld a0, 136(sp)
	addi s9, a1, %pcrel_lo(pcrel922)
	addiw a4, a0, -20
	addiw t0, a0, -4
	fcvt.s.w f10, zero
	mv a1, zero
	fmv.w.x f12, s2
	mv a2, s9
	fadd.s f11, f10, f12
	fmul.s f15, f9, f11
	bgt a0, zero, label313
label312:
	mv s2, zero
	j label128
.p2align 2
label313:
	mv a3, zero
	ble s1, zero, label316
.p2align 2
label86:
	sh2add a0, a3, a2
pcrel923:
	auipc s8, %pcrel_hi(test_dct)
	flw f10, %pcrel_lo(pcrel923)(s8)
	fmv.w.x f12, s7
	fmul.s f11, f10, f12
	fcvt.s.w f10, a3
	fsw f11, 0(a0)
	ld a0, 136(sp)
	fmv.w.x f11, s2
	fadd.s f12, f10, f11
	fmul.s f14, f8, f12
	ble a0, s3, label331
	bgt a0, s5, label92
	j label88
.p2align 2
label115:
	ble s1, s3, label116
	fcvt.s.w f10, t3
	flw f12, 8(s0)
	slliw t5, t3, 5
	fmul.s f11, f15, f10
	flw f13, 12(s0)
	add t4, s4, t5
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a0, f13, f10
	flt.s a1, f10, f11
	or a0, a0, a1
	bne a0, zero, label126
	j label118
.p2align 2
label120:
	fcvt.s.w f10, t5
	flw f12, 8(s0)
	sh2add a1, t5, t4
	flw f13, 12(s0)
	fmul.s f11, f14, f10
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a0, f13, f10
	flt.s t6, f10, f11
	flw f11, 0(a1)
	or a0, a0, t6
	fmul.s f2, f11, f0
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
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label841
.p2align 2
label840:
	fmv.s f10, f11
.p2align 2
label841:
	jal my_sin_impl
	addiw t5, t5, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s1, t5, label120
	addiw t3, t3, 1
	ld a0, 136(sp)
	bgt a0, t3, label115
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s1, a3, label86
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	slliw a1, t2, 5
	ld a0, 136(sp)
	fmv.w.x f12, s2
	add a2, s9, a1
	fadd.s f11, f10, f12
	fmul.s f15, f9, f11
	bgt a0, t2, label313
	j label312
label128:
	ld a0, 136(sp)
	ble a0, s2, label134
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
.p2align 2
label125:
	flw f11, 12(s0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label839
	fmv.s f11, f10
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
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
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label837
.p2align 2
label836:
	fmv.s f10, f11
.p2align 2
label837:
	jal my_sin_impl
	mv t5, s3
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label120
.p2align 2
label126:
	flw f11, 12(s0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label835
	fmv.s f11, f10
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label837
	j label836
.p2align 2
label89:
	slliw a1, a0, 5
	fmv.w.x f13, s2
	add t3, s4, a1
	addiw a1, a0, 1
	flw f11, 0(t3)
	sh2add t3, a3, a2
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(t3)
	ld a0, 136(sp)
	ble a0, a1, label352
	mv a0, a1
	j label89
.p2align 2
label92:
	sh2add a1, a3, a2
	flw f11, 0(a1)
	ble t0, s6, label359
	mv a0, s3
.p2align 2
label93:
	slliw t3, a0, 5
	fmv.w.x f10, s2
	addiw a0, a0, 16
	add a1, s4, t3
	flw f12, 0(a1)
	flw f0, 32(a1)
	fmul.s f13, f12, f10
	fmul.s f12, f0, f10
	fadd.s f11, f11, f13
	flw f13, 64(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 96(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 128(a1)
	flw f0, 160(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 192(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 224(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 256(a1)
	fmul.s f0, f12, f10
	fadd.s f11, f11, f13
	flw f13, 288(a1)
	fmul.s f12, f13, f10
	flw f13, 320(a1)
	fadd.s f11, f11, f0
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 352(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 384(a1)
	flw f0, 416(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 448(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 480(a1)
	fmul.s f10, f12, f10
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	bgt a4, a0, label93
.p2align 2
label96:
	slliw t3, a0, 5
	fmv.w.x f10, s2
	addiw a0, a0, 4
	add a1, s4, t3
	flw f12, 0(a1)
	fmul.s f13, f12, f10
	flw f12, 32(a1)
	flw f0, 64(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	fmul.s f12, f0, f10
	fadd.s f11, f11, f13
	flw f13, 96(a1)
	fmul.s f10, f13, f10
	fadd.s f11, f11, f12
	fadd.s f11, f11, f10
	bgt t0, a0, label96
	fmv.s f10, f11
	j label89
.p2align 2
label116:
	addiw t3, t3, 1
	ld a0, 136(sp)
	bgt a0, t3, label115
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s1, a3, label86
	j label869
.p2align 2
label352:
	ble s1, s3, label866
.p2align 2
label100:
	ble s1, s5, label101
	sh2add a0, a3, a2
	flw f11, 0(a0)
	ble t1, s6, label472
	mv a0, s3
.p2align 2
label103:
	sh2add a1, a0, s4
	fmv.w.x f10, s2
	addiw a0, a0, 16
	flw f12, 0(a1)
	flw f0, 4(a1)
	fmul.s f13, f12, f10
	fmul.s f12, f0, f10
	fadd.s f11, f11, f13
	flw f13, 8(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 12(a1)
	fmul.s f0, f13, f10
	fadd.s f11, f11, f12
	flw f12, 16(a1)
	fmul.s f13, f12, f10
	flw f12, 20(a1)
	fadd.s f11, f11, f0
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 24(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 28(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 32(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 36(a1)
	flw f0, 40(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	fmul.s f12, f0, f10
	fadd.s f11, f11, f13
	flw f13, 44(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 48(a1)
	fmul.s f0, f13, f10
	fadd.s f11, f11, f12
	flw f12, 52(a1)
	fmul.s f13, f12, f10
	flw f12, 56(a1)
	fadd.s f11, f11, f0
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 60(a1)
	fmul.s f10, f12, f10
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	bgt a5, a0, label103
.p2align 2
label106:
	sh2add a1, a0, s4
	fmv.w.x f10, s2
	addiw a0, a0, 4
	flw f12, 0(a1)
	flw f0, 4(a1)
	fmul.s f13, f12, f10
	fmul.s f12, f0, f10
	fadd.s f11, f11, f13
	flw f13, 8(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 12(a1)
	fmul.s f10, f13, f10
	fadd.s f11, f11, f12
	fadd.s f11, f11, f10
	bgt t1, a0, label106
	fmv.s f10, f11
	mv a1, a0
.p2align 2
label109:
	sh2add t3, a1, s4
	fmv.w.x f13, s2
	addiw a1, a1, 1
	flw f11, 0(t3)
	sh2add a0, a3, a2
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a0)
	bgt s1, a1, label109
	mv t3, s3
	ld a0, 136(sp)
	bgt a0, s3, label115
.p2align 2
label114:
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s1, a3, label86
label869:
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	slliw a1, t2, 5
	ld a0, 136(sp)
	fmv.w.x f12, s2
	add a2, s9, a1
	fadd.s f11, f10, f12
	fmul.s f15, f9, f11
	bgt a0, t2, label313
	j label312
.p2align 2
label88:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	mv a0, s3
	j label89
.p2align 2
label101:
	sh2add a0, a3, a2
	mv a1, s3
	flw f10, 0(a0)
	sh2add t3, s3, s4
	fmv.w.x f13, s2
	addiw a1, s3, 1
	flw f11, 0(t3)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a0)
	bgt s1, a1, label109
	mv t3, s3
	ld a0, 136(sp)
	bgt a0, s3, label115
	j label114
label140:
	addiw s10, s10, 1
	ld a0, 136(sp)
	bgt a0, s10, label139
	j label57
label62:
	addiw a5, a5, 1
	slliw a0, a5, 5
	fcvt.s.w f15, a5
	add a2, s4, a0
	ld a0, 136(sp)
	bgt a0, a5, label166
	j label165
.p2align 2
label178:
	addiw a3, a3, 1
	bgt s1, a3, label63
	j label62
.p2align 2
label331:
	bgt s1, s3, label100
	mv t3, s3
	ld a0, 136(sp)
	bgt a0, s3, label115
	j label114
.p2align 2
label866:
	mv t3, s3
	ld a0, 136(sp)
	bgt a0, s3, label115
	j label114
label316:
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	slliw a1, t2, 5
	ld a0, 136(sp)
	fmv.w.x f12, s2
	add a2, s9, a1
	fadd.s f11, f10, f12
	fmul.s f15, f9, f11
	bgt a0, t2, label313
	j label312
.p2align 2
label359:
	mv a0, s3
	j label96
.p2align 2
label861:
	fmv.s f11, f10
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label829
	j label886
.p2align 2
label472:
	mv a0, s3
	j label106
