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
my_sin_impl:
.p2align 2
	addi sp, sp, -16
	fabs.s f11, f10
pcrel54:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a1, a0, %pcrel_lo(pcrel54)
	fsw f8, 8(sp)
	flw f12, 0(a1)
	fle.s a0, f11, f12
	beq a0, zero, label4
label2:
	ld ra, 0(sp)
	flw f8, 8(sp)
	addi sp, sp, 16
	ret
label4:
	lui a0, 263168
	fmv.w.x f12, a0
pcrel55:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fdiv.s f10, f10, f12
	addi a1, a0, %pcrel_lo(pcrel55)
	flw f12, 0(a1)
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
.globl main
main:
.p2align 2
	addi sp, sp, -104
	sd ra, 0(sp)
	fsw f20, 8(sp)
	fsw f18, 12(sp)
	sd s6, 16(sp)
	fsw f9, 24(sp)
	fsw f21, 28(sp)
	fsw f8, 32(sp)
	sd s4, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	sd s1, 64(sp)
	sd s5, 72(sp)
	sd s0, 80(sp)
	fsw f19, 88(sp)
	sd s7, 96(sp)
	jal getfloat
	fmv.s f19, f10
	jal getch
	jal getch
	li a1, 80
	beq a0, a1, label59
label85:
	li a0, -1
label57:
	ld ra, 0(sp)
	flw f20, 8(sp)
	flw f18, 12(sp)
	ld s6, 16(sp)
	flw f9, 24(sp)
	flw f21, 28(sp)
	flw f8, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	ld s1, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	flw f19, 88(sp)
	ld s7, 96(sp)
	addi sp, sp, 104
	ret
label59:
	jal getch
	li a1, 50
	bne a0, a1, label85
	jal getint
	li s1, 1024
	mv s0, a0
	slt s2, s1, a0
	jal getint
	mv s3, a0
	slt a0, s1, a0
	or a1, s2, a0
	bne a1, zero, label85
	jal getint
	srliw a1, s3, 31
	add a2, s3, a1
	sraiw s4, a2, 1
	srliw a2, s0, 31
	fcvt.s.w f8, s4
	add a1, s0, a2
	sraiw s2, a1, 1
pcrel282:
	auipc a1, %pcrel_hi(image)
	fcvt.s.w f9, s2
	addi s1, a1, %pcrel_lo(pcrel282)
	li a1, 255
	bne a0, a1, label85
	mv s6, zero
	bgt s3, zero, label75
label64:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label64)
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
	bne a1, zero, label241
	j label240
.p2align 2
label75:
	ble s0, zero, label76
	mulw s5, s0, s6
	mv s7, zero
.p2align 2
label78:
	jal getint
	addw a2, s5, s7
	addiw s7, s7, 1
	sh2add a1, a2, s1
	sw a0, 0(a1)
	bgt s0, s7, label78
	addiw s6, s6, 1
	bgt s3, s6, label75
	j label64
label240:
	fmv.s f12, f10
label241:
	flw f0, 16(a0)
	fsub.s f10, f12, f14
	flt.s a1, f0, f12
	fmv.s f11, f10
	bne a1, zero, label243
	fmv.s f11, f12
label243:
	flw f1, 20(a0)
	fadd.s f12, f11, f14
	flt.s a0, f11, f1
	fmv.s f10, f12
	bne a0, zero, label245
	fmv.s f10, f11
label245:
	jal my_sin_impl
	flt.s a2, f19, f15
	fmv.s f18, f10
	flt.s a1, f14, f19
	fdiv.s f10, f19, f14
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f12, a0
	or a0, a1, a2
	fmul.s f11, f12, f14
	fsub.s f10, f19, f11
	bne a0, zero, label247
	fmv.s f10, f19
label247:
	flt.s a0, f0, f10
	fsub.s f12, f10, f14
	fmv.s f11, f12
	bne a0, zero, label249
	fmv.s f11, f10
label249:
	flt.s a0, f11, f1
	fadd.s f12, f11, f14
	fmv.s f10, f12
	bne a0, zero, label251
	fmv.s f10, f11
label251:
	jal my_sin_impl
	li a0, 80
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
	ble s3, zero, label165
.p2align 2
label67:
	subw a0, s5, s4
	fcvt.s.w f10, a0
	fmul.s f21, f10, f19
	fmul.s f20, f10, f18
	ble s0, zero, label68
	mv s6, zero
	j label69
.p2align 2
label68:
	li a0, 10
	jal putch
	addiw s5, s5, 1
	bgt s3, s5, label67
	j label165
.p2align 2
label69:
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
	beq a1, zero, label191
.p2align 2
label192:
	mv a0, zero
.p2align 2
label73:
	jal putint
	li a0, 32
	jal putch
	addiw s6, s6, 1
	bgt s0, s6, label69
	j label68
.p2align 2
label191:
	ble s3, a2, label192
	mulw a2, s0, a2
	addw a1, a0, a2
	sh2add a3, a1, s1
	lw a0, 0(a3)
	j label73
label165:
	mv a0, zero
	j label57
label76:
	addiw s6, s6, 1
	bgt s3, s6, label75
	j label64
