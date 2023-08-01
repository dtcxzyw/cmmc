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
	sd s2, 40(sp)
	fsw f9, 48(sp)
	sd s4, 56(sp)
	fsw f21, 64(sp)
	fsw f8, 68(sp)
	sd s3, 72(sp)
	sd s1, 80(sp)
	sd s0, 88(sp)
	sd s5, 96(sp)
	fsw f19, 104(sp)
	sd s7, 112(sp)
	jal getfloat
	fmv.s f19, f10
	jal getch
	jal getch
	li s5, 80
	beq a0, s5, label57
label84:
	li a0, -1
label55:
	ld ra, 0(sp)
	flw f20, 8(sp)
	ld s8, 16(sp)
	flw f18, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	flw f9, 48(sp)
	ld s4, 56(sp)
	flw f21, 64(sp)
	flw f8, 68(sp)
	ld s3, 72(sp)
	ld s1, 80(sp)
	ld s0, 88(sp)
	ld s5, 96(sp)
	flw f19, 104(sp)
	ld s7, 112(sp)
	addi sp, sp, 120
	ret
label57:
	jal getch
	li a1, 50
	bne a0, a1, label84
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 1024
	bgt s0, a0, label84
	li a1, 1024
	bgt s1, a1, label84
	jal getint
	srliw a1, s0, 31
	add a2, s0, a1
	sraiw s3, a2, 1
	srliw a2, s1, 31
	fcvt.s.w f8, s3
	add a1, s1, a2
	li a2, 255
	sraiw s4, a1, 1
pcrel284:
	auipc a1, %pcrel_hi(image)
	fcvt.s.w f9, s4
	addi s2, a1, %pcrel_lo(pcrel284)
	bne a0, a2, label84
	mv s6, zero
	ble s1, zero, label63
label74:
	bgt s0, zero, label76
label75:
	addiw s6, s6, 1
	bgt s1, s6, label74
	j label63
label76:
	mulw s7, s0, s6
	mv s8, zero
.p2align 2
label77:
	jal getint
	addw a2, s7, s8
	addiw s8, s8, 1
	sh2add a1, a2, s2
	sw a0, 0(a1)
	bgt s0, s8, label77
	j label75
label63:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label63)
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
	bne a1, zero, label244
	fmv.s f12, f10
label244:
	flw f0, 16(a0)
	fsub.s f10, f12, f14
	flt.s a1, f0, f12
	fmv.s f11, f10
	bne a1, zero, label246
	fmv.s f11, f12
label246:
	flw f1, 20(a0)
	fadd.s f12, f11, f14
	flt.s a0, f11, f1
	fmv.s f10, f12
	bne a0, zero, label248
	fmv.s f10, f11
label248:
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
	bne a0, zero, label250
	fmv.s f10, f19
label250:
	flt.s a0, f0, f10
	fsub.s f12, f10, f14
	fmv.s f11, f12
	bne a0, zero, label252
	fmv.s f11, f10
label252:
	flt.s a0, f11, f1
	fadd.s f12, f11, f14
	fmv.s f10, f12
	bne a0, zero, label254
	fmv.s f10, f11
label254:
	jal my_sin_impl
	mv a0, s5
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
	mv a0, s1
	jal putint
	li a0, 32
	jal putch
	li a0, 255
	jal putint
	li a0, 10
	jal putch
	mv s5, zero
	ble s1, zero, label166
label66:
	subw a0, s5, s4
	fcvt.s.w f10, a0
	fmul.s f21, f10, f19
	fmul.s f20, f10, f18
	ble s0, zero, label67
	mv s6, zero
	j label68
label67:
	li a0, 10
	jal putch
	addiw s5, s5, 1
	bgt s1, s5, label66
	j label166
.p2align 2
label68:
	subw a0, s6, s3
	fcvt.s.w f10, a0
	fmul.s f11, f10, f18
	fsub.s f12, f11, f21
	fadd.s f13, f12, f8
	fmul.s f12, f10, f19
	fcvt.w.s a0, f13, rtz
	fadd.s f10, f12, f20
	slti a3, a0, 0
	slt a1, a0, s0
	xori a2, a1, 1
	or a1, a2, a3
	fadd.s f11, f10, f9
	fcvt.w.s a2, f11, rtz
	slti a3, a2, 0
	or a1, a1, a3
	bne a1, zero, label193
	bgt s1, a2, label272
.p2align 2
label193:
	mv a0, zero
.p2align 2
label72:
	jal putint
	li a0, 32
	jal putch
	addiw s6, s6, 1
	bgt s0, s6, label68
	j label67
label166:
	mv a0, zero
	j label55
.p2align 2
label272:
	mulw a1, s0, a2
	addw a2, a0, a1
	sh2add a3, a2, s2
	lw a0, 0(a3)
	j label72
