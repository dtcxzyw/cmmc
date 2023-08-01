.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	1070141403
	.4byte	1086918619
	.4byte	3234402267
	.4byte	1078530011
	.4byte	3226013659
.bss
.align 8
image:
	.zero	4194304
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
	addi sp, sp, -120
	sd ra, 0(sp)
	fsw f20, 8(sp)
	sd s8, 16(sp)
	fsw f18, 24(sp)
	sd s6, 32(sp)
	sd s7, 40(sp)
	fsw f19, 48(sp)
	fsw f9, 52(sp)
	fsw f8, 56(sp)
	sd s4, 64(sp)
	sd s3, 72(sp)
	sd s2, 80(sp)
	sd s5, 88(sp)
	sd s0, 96(sp)
	sd s1, 104(sp)
	fsw f21, 112(sp)
	jal getfloat
	fmv.s f19, f10
	jal getch
	jal getch
	li s6, 80
	beq a0, s6, label57
label83:
	li a0, -1
label55:
	ld ra, 0(sp)
	flw f20, 8(sp)
	ld s8, 16(sp)
	flw f18, 24(sp)
	ld s6, 32(sp)
	ld s7, 40(sp)
	flw f19, 48(sp)
	flw f9, 52(sp)
	flw f8, 56(sp)
	ld s4, 64(sp)
	ld s3, 72(sp)
	ld s2, 80(sp)
	ld s5, 88(sp)
	ld s0, 96(sp)
	ld s1, 104(sp)
	flw f21, 112(sp)
	addi sp, sp, 120
	ret
label57:
	jal getch
	li a1, 50
	bne a0, a1, label83
	jal getint
	li s2, 1024
	mv s0, a0
	slt s1, s2, a0
	jal getint
	mv s3, a0
	slt a0, s2, a0
	or a1, s1, a0
	bne a1, zero, label83
	jal getint
	srliw a1, s3, 31
	add a2, s3, a1
	sraiw s4, a2, 1
	srliw a2, s0, 31
	fcvt.s.w f8, s4
	add a1, s0, a2
	li a2, 255
	sraiw s2, a1, 1
pcrel281:
	auipc a1, %pcrel_hi(image)
	fcvt.s.w f9, s2
	addi s1, a1, %pcrel_lo(pcrel281)
	bne a0, a2, label83
	mv s7, zero
	bgt s3, zero, label73
label62:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label62)
	flw f11, 4(a0)
	flw f14, 8(a0)
	fadd.s f10, f19, f11
	flw f15, 12(a0)
	fdiv.s f11, f10, f14
	flt.s a2, f10, f15
	fcvt.w.s a1, f11, rtz
	fcvt.s.w f12, a1
	flt.s a1, f14, f10
	fmul.s f13, f12, f14
	or a1, a1, a2
	fsub.s f11, f10, f13
	fmv.s f12, f11
	bne a1, zero, label239
	j label238
.p2align 2
label73:
	ble s0, zero, label74
	mulw s5, s0, s7
	mv s8, zero
.p2align 2
label76:
	jal getint
	addw a1, s5, s8
	addiw s8, s8, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	bgt s0, s8, label76
	addiw s7, s7, 1
	bgt s3, s7, label73
	j label62
label238:
	fmv.s f12, f10
label239:
	flw f0, 16(a0)
	fsub.s f10, f12, f14
	flt.s a1, f0, f12
	fmv.s f11, f10
	bne a1, zero, label241
	fmv.s f11, f12
label241:
	flw f1, 20(a0)
	fadd.s f12, f11, f14
	flt.s a0, f11, f1
	fmv.s f10, f12
	bne a0, zero, label243
	fmv.s f10, f11
label243:
	jal my_sin_impl
	flt.s a2, f19, f15
	fmv.s f18, f10
	fdiv.s f10, f19, f14
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f12, a0
	flt.s a0, f14, f19
	fmul.s f11, f12, f14
	or a1, a0, a2
	fsub.s f10, f19, f11
	bne a1, zero, label245
	fmv.s f10, f19
label245:
	flt.s a0, f0, f10
	fsub.s f12, f10, f14
	fmv.s f11, f12
	bne a0, zero, label247
	fmv.s f11, f10
label247:
	flt.s a0, f11, f1
	fadd.s f12, f11, f14
	fmv.s f10, f12
	bne a0, zero, label249
	fmv.s f10, f11
label249:
	jal my_sin_impl
	mv a0, s6
	fmv.s f19, f10
	jal putch
	li a0, 50
	jal putch
	li a0, 10
	jal putch
	mv a0, s0
	jal putint
	li a0, 32
	jal putch
	mv a0, s3
	jal putint
	li a0, 32
	jal putch
	li a0, 255
	jal putint
	li a0, 10
	jal putch
	mv s5, zero
	ble s3, zero, label163
label65:
	subw a0, s5, s4
	fcvt.s.w f10, a0
	fmul.s f21, f10, f19
	fmul.s f20, f10, f18
	ble s0, zero, label66
	mv s6, zero
	j label67
label66:
	li a0, 10
	jal putch
	addiw s5, s5, 1
	bgt s3, s5, label65
	j label163
.p2align 2
label67:
	subw a0, s6, s2
	fcvt.s.w f10, a0
	fmul.s f11, f10, f18
	fmul.s f10, f10, f19
	fsub.s f13, f11, f21
	fadd.s f11, f10, f20
	fadd.s f12, f13, f9
	fcvt.w.s a0, f12, rtz
	fadd.s f12, f11, f8
	slti a3, a0, 0
	slt a1, a0, s0
	xori a2, a1, 1
	or a1, a2, a3
	fcvt.w.s a2, f12, rtz
	slti a3, a2, 0
	or a1, a1, a3
	beq a1, zero, label189
.p2align 2
label190:
	mv a0, zero
.p2align 2
label71:
	jal putint
	li a0, 32
	jal putch
	addiw s6, s6, 1
	bgt s0, s6, label67
	j label66
.p2align 2
label189:
	ble s3, a2, label190
	mulw a3, s0, a2
	addw a1, a0, a3
	sh2add a2, a1, s1
	lw a0, 0(a2)
	j label71
label74:
	addiw s7, s7, 1
	bgt s3, s7, label73
	j label62
label163:
	mv a0, zero
	j label55
