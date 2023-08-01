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
	addi sp, sp, -128
	sd ra, 0(sp)
	sd s11, 8(sp)
	sd s8, 16(sp)
	sd s4, 24(sp)
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
	sd s3, 112(sp)
	fsw f9, 120(sp)
	fsw f8, 124(sp)
	jal getint
	mv s3, a0
	jal getint
pcrel764:
	auipc s8, %pcrel_hi(test_dct)
	lui s7, 256000
	li s6, 5
	lui s2, 258048
	li s4, 1
	mv s10, zero
	mv s1, a0
pcrel765:
	auipc a0, %pcrel_hi(test_block)
	addi s9, a0, %pcrel_lo(pcrel765)
pcrel766:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s0, a0, %pcrel_lo(pcrel766)
label55:
	bgt s3, s10, label57
label145:
	fcvt.s.w f18, s3
	flw f10, 4(s0)
	fcvt.s.w f19, s1
pcrel767:
	auipc s8, %pcrel_hi(test_dct)
	addi s5, s8, %pcrel_lo(pcrel767)
	mv a5, zero
	fdiv.s f9, f10, f18
	fdiv.s f8, f10, f19
	j label63
.p2align 2
label57:
	ble s1, zero, label148
	slli a0, s10, 5
	mv s11, zero
	add s5, s9, a0
.p2align 2
label59:
	jal getfloat
	sh2add a0, s11, s5
	addiw s11, s11, 1
	fsw f10, 0(a0)
	bgt s1, s11, label59
	addiw s10, s10, 1
	bgt s3, s10, label57
	j label145
label63:
	slliw a0, a5, 5
	fcvt.s.w f15, a5
	add a2, s5, a0
	bgt s3, a5, label176
label175:
	mv s10, zero
	j label66
.p2align 2
label176:
	mv a3, zero
	bgt s1, zero, label122
	j label698
label66:
	bgt s3, s10, label68
	j label72
.p2align 2
label122:
	sh2add a0, a3, a2
	mv a4, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, a3
	fsw f10, 0(a0)
	ble s3, zero, label125
.p2align 2
label126:
	ble s1, zero, label482
	fcvt.s.w f10, a4
	slliw t1, a4, 5
	fmv.w.x f11, s2
	add t0, s9, t1
	fadd.s f12, f10, f11
	fmul.s f10, f9, f12
	flw f12, 8(s0)
	fmul.s f11, f10, f15
	fadd.s f10, f11, f12
	flw f11, 12(s0)
	flw f12, 16(s0)
	flt.s a0, f11, f10
	flt.s a1, f10, f12
	or a0, a0, a1
	bne a0, zero, label136
	j label128
.p2align 2
label130:
	fcvt.s.w f10, t1
	fmv.w.x f11, s2
	sh2add a1, t1, t0
	fadd.s f12, f10, f11
	fmul.s f10, f8, f12
	flw f12, 8(s0)
	fmul.s f11, f10, f14
	fadd.s f10, f11, f12
	flw f11, 12(s0)
	flw f12, 16(s0)
	flt.s a0, f11, f10
	flt.s t2, f10, f12
	flw f11, 0(a1)
	or a0, a0, t2
	fmul.s f2, f11, f0
	bne a0, zero, label133
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label677
	j label714
.p2align 2
label738:
	fmv.s f10, f11
	j label679
.p2align 2
label677:
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label679
	fmv.s f10, f11
.p2align 2
label679:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s1, t1, label130
	addiw a4, a4, 1
	bgt s3, a4, label126
	addiw a3, a3, 1
	bgt s1, a3, label122
	addiw a5, a5, 1
	slliw a0, a5, 5
	fcvt.s.w f15, a5
	add a2, s5, a0
	bgt s3, a5, label176
	j label175
.p2align 2
label133:
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
	bne a0, zero, label677
	fmv.s f11, f10
	j label677
.p2align 2
label673:
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label675
.p2align 2
label674:
	fmv.s f10, f11
.p2align 2
label675:
	jal my_sin_impl
	mv t1, zero
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label130
.p2align 2
label136:
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
	bne a0, zero, label673
	fmv.s f11, f10
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label675
	j label674
.p2align 2
label128:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label673
	fmv.s f11, f10
	j label673
.p2align 2
label68:
	slliw a0, s10, 5
	add s9, s5, a0
	flw f10, 0(s9)
	jal putfloat
	ble s1, s4, label71
	mv s11, s4
.p2align 2
label69:
	li a0, 32
	jal putch
	sh2add a1, s11, s9
	flw f10, 0(a1)
	jal putfloat
	addiw s11, s11, 1
	bgt s1, s11, label69
.p2align 2
label71:
	li a0, 10
	jal putch
	addiw s10, s10, 1
	bgt s3, s10, label68
label72:
	li a0, 10
	jal putch
	mv t0, zero
	addiw a5, s1, -4
	addiw a4, s3, -4
pcrel768:
	auipc a1, %pcrel_hi(test_idct)
	addi s9, a1, %pcrel_lo(pcrel768)
label73:
	fcvt.s.w f10, t0
	slliw a0, t0, 5
	fmv.w.x f12, s2
	add a2, s9, a0
	fadd.s f11, f10, f12
	fmul.s f15, f9, f11
	bgt s3, t0, label214
label213:
	mv s2, zero
	j label75
.p2align 2
label214:
	mv a3, zero
	bgt s1, zero, label84
	j label700
label75:
	bgt s3, s2, label77
	j label81
.p2align 2
label84:
	sh2add a0, a3, a2
pcrel769:
	auipc s8, %pcrel_hi(test_dct)
	flw f10, %pcrel_lo(pcrel769)(s8)
	fmv.w.x f11, s7
	fmul.s f12, f10, f11
	fmv.w.x f11, s2
	fcvt.s.w f10, a3
	fsw f12, 0(a0)
	fadd.s f12, f10, f11
	fmul.s f14, f8, f12
	ble s3, s4, label250
	bgt s3, s6, label90
	j label86
.p2align 2
label98:
	ble s1, s4, label99
	fcvt.s.w f10, t2
	flw f12, 8(s0)
	slliw a1, t2, 5
	fmul.s f11, f15, f10
	flw f13, 12(s0)
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a0, f13, f10
	flt.s t1, f10, f11
	or a0, a0, t1
	add t1, s5, a1
	bne a0, zero, label109
	j label101
.p2align 2
label103:
	fcvt.s.w f10, t3
	flw f12, 8(s0)
	sh2add t4, t3, t1
	flw f13, 12(s0)
	fmul.s f11, f14, f10
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a0, f13, f10
	flt.s a1, f10, f11
	flw f11, 0(t4)
	or a0, a0, a1
	fmul.s f2, f11, f0
	bne a0, zero, label108
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label669
	fmv.s f11, f10
.p2align 2
label669:
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label671
.p2align 2
label670:
	fmv.s f10, f11
.p2align 2
label671:
	jal my_sin_impl
	addiw t3, t3, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s1, t3, label103
	addiw t2, t2, 1
	bgt s3, t2, label98
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s1, a3, label84
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	slliw a0, t0, 5
	fmv.w.x f12, s2
	add a2, s9, a0
	fadd.s f11, f10, f12
	fmul.s f15, f9, f11
	bgt s3, t0, label214
	j label213
.p2align 2
label108:
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
	bne a0, zero, label669
	fmv.s f11, f10
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label671
	j label670
.p2align 2
label101:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label665
	fmv.s f11, f10
.p2align 2
label665:
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label667
.p2align 2
label666:
	fmv.s f10, f11
.p2align 2
label667:
	jal my_sin_impl
	mv t3, s4
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label103
.p2align 2
label109:
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
	bne a0, zero, label665
	fmv.s f11, f10
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label667
	j label666
label705:
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	slliw a0, t0, 5
	fmv.w.x f12, s2
	add a2, s9, a0
	fadd.s f11, f10, f12
	fmul.s f15, f9, f11
	bgt s3, t0, label214
	j label213
.p2align 2
label99:
	addiw t2, t2, 1
	bgt s3, t2, label98
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s1, a3, label84
	j label705
.p2align 2
label87:
	slliw a1, a0, 5
	fmv.w.x f12, s2
	addiw a0, a0, 1
	add t1, s5, a1
	sh2add a1, a3, a2
	flw f10, 0(t1)
	fmul.s f13, f10, f12
	fadd.s f11, f11, f13
	fsw f11, 0(a1)
	bgt s3, a0, label87
	bgt s1, s4, label110
	j label703
.p2align 2
label90:
	sh2add a1, a3, a2
	mv a0, s4
	flw f11, 0(a1)
.p2align 2
label91:
	slliw t1, a0, 5
	fmv.w.x f10, s2
	addiw a0, a0, 4
	add a1, s5, t1
	flw f12, 0(a1)
	flw f13, 32(a1)
	fmul.s f0, f12, f10
	fmul.s f12, f13, f10
	fadd.s f11, f11, f0
	flw f0, 64(a1)
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 96(a1)
	fmul.s f10, f12, f10
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	bgt a4, a0, label91
	slliw a1, a0, 5
	fmv.w.x f12, s2
	addiw a0, a0, 1
	add t1, s5, a1
	sh2add a1, a3, a2
	flw f10, 0(t1)
	fmul.s f13, f10, f12
	fadd.s f11, f11, f13
	fsw f11, 0(a1)
	bgt s3, a0, label87
	j label704
.p2align 2
label110:
	ble s1, s6, label421
	sh2add a0, a3, a2
	flw f11, 0(a0)
	mv a0, s4
.p2align 2
label112:
	sh2add a1, a0, s5
	fmv.w.x f10, s2
	addiw a0, a0, 4
	flw f12, 0(a1)
	flw f0, 4(a1)
	fmul.s f13, f12, f10
	fmul.s f12, f0, f10
	flw f0, 8(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 12(a1)
	fmul.s f10, f12, f10
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	bgt a5, a0, label112
	sh2add a1, a0, s5
	fmv.w.x f13, s2
	addiw a0, a0, 1
	flw f10, 0(a1)
	sh2add a1, a3, a2
	fmul.s f12, f10, f13
	fadd.s f11, f11, f12
	fsw f11, 0(a1)
	ble s1, a0, label710
.p2align 2
label116:
	sh2add a1, a0, s5
	fmv.w.x f13, s2
	addiw a0, a0, 1
	flw f10, 0(a1)
	sh2add a1, a3, a2
	fmul.s f12, f10, f13
	fadd.s f11, f11, f12
	fsw f11, 0(a1)
	bgt s1, a0, label116
	mv t2, s4
	bgt s3, s4, label98
.p2align 2
label711:
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s1, a3, label84
	j label705
.p2align 2
label86:
	sh2add a0, a3, a2
	flw f11, 0(a0)
	mv a0, s4
	j label87
.p2align 2
label125:
	addiw a3, a3, 1
	bgt s1, a3, label122
label713:
	addiw a5, a5, 1
	slliw a0, a5, 5
	fcvt.s.w f15, a5
	add a2, s5, a0
	bgt s3, a5, label176
	j label175
.p2align 2
label77:
	slliw a0, s2, 5
	add s0, s9, a0
	flw f10, 0(s0)
	jal putfloat
	ble s1, s4, label80
	mv s5, s4
.p2align 2
label78:
	li a0, 32
	jal putch
	sh2add a1, s5, s0
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	bgt s1, s5, label78
.p2align 2
label80:
	li a0, 10
	jal putch
	addiw s2, s2, 1
	bgt s3, s2, label77
label81:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s8, 16(sp)
	ld s4, 24(sp)
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
	ld s3, 112(sp)
	flw f9, 120(sp)
	flw f8, 124(sp)
	addi sp, sp, 128
	ret
.p2align 2
label482:
	addiw a4, a4, 1
	bgt s3, a4, label126
	addiw a3, a3, 1
	bgt s1, a3, label122
	j label713
.p2align 2
label421:
	sh2add a1, a3, a2
	mv a0, s4
	flw f11, 0(a1)
	sh2add a1, s4, s5
	fmv.w.x f13, s2
	addiw a0, s4, 1
	flw f10, 0(a1)
	sh2add a1, a3, a2
	fmul.s f12, f10, f13
	fadd.s f11, f11, f12
	fsw f11, 0(a1)
	bgt s1, a0, label116
	mv t2, s4
	bgt s3, s4, label98
	j label711
.p2align 2
label704:
	bgt s1, s4, label110
	mv t2, s4
	bgt s3, s4, label98
	j label97
.p2align 2
label710:
	mv t2, s4
	bgt s3, s4, label98
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s1, a3, label84
	j label705
.p2align 2
label250:
	bgt s1, s4, label110
	mv t2, s4
	bgt s3, s4, label98
	j label97
.p2align 2
label703:
	mv t2, s4
	bgt s3, s4, label98
label97:
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s1, a3, label84
	j label705
label148:
	addiw s10, s10, 1
	j label55
label700:
	addiw t0, t0, 1
	j label73
label698:
	addiw a5, a5, 1
	j label63
.p2align 2
label714:
	fmv.s f11, f10
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label679
	j label738
