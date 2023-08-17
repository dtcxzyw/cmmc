.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	1070141403
	.4byte	1086918619
	.4byte	3234402267
	.4byte	1078530011
	.4byte	3226013659
.bss
.p2align 3
image:
	.zero	4194304
.text
.p2align 2
my_sin_impl:
	addi sp, sp, -16
	fabs.s f11, f10
pcrel101:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel101)
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
	flw f14, 0(a0)
	fmv.w.x f13, a1
	fdiv.s f11, f10, f13
	fabs.s f12, f11
	fle.s a1, f12, f14
	beq a1, zero, label5
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f14, a0
	fmul.s f13, f11, f14
	fmul.s f15, f10, f11
	fmul.s f12, f15, f11
	fsub.s f10, f13, f12
	j label2
label5:
	lui a1, 263168
	flw f13, 0(a0)
	fmv.w.x f14, a1
	fdiv.s f10, f11, f14
	fabs.s f12, f10
	fle.s a1, f12, f13
	beq a1, zero, label8
label6:
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f14, f10, f13
	fmul.s f11, f14, f10
	fmv.w.x f14, a0
	lui a0, 264192
	fmul.s f13, f10, f14
	fmul.s f12, f11, f10
	fsub.s f11, f13, f12
	fmv.w.x f13, a0
	lui a0, 263168
	fmv.w.x f14, a0
	fmul.s f10, f11, f13
	fmul.s f13, f11, f14
	fmul.s f15, f10, f11
	fmul.s f12, f15, f11
	fsub.s f10, f13, f12
	j label2
label8:
	lui a1, 263168
	flw f14, 0(a0)
	fmv.w.x f13, a1
	fdiv.s f11, f10, f13
	fabs.s f12, f11
	fle.s a1, f12, f14
	beq a1, zero, label11
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label6
label11:
	lui a0, 263168
	fmv.w.x f8, a0
	fdiv.s f10, f11, f8
	jal my_sin_impl
	lui a0, 264192
	fmv.w.x f13, a0
	fmul.s f11, f10, f13
	fmul.s f13, f10, f8
	fmul.s f14, f11, f10
	fmul.s f12, f14, f10
	fsub.s f11, f13, f12
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label6
.p2align 2
.globl main
main:
	addi sp, sp, -120
	sd ra, 0(sp)
	fsw f20, 8(sp)
	sd s8, 16(sp)
	fsw f18, 24(sp)
	sd s6, 32(sp)
	sd s3, 40(sp)
	fsw f9, 48(sp)
	sd s2, 56(sp)
	fsw f21, 64(sp)
	fsw f8, 68(sp)
	sd s4, 72(sp)
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
	bne a0, s5, label133
	jal getch
	li a1, 50
	beq a0, a1, label104
label133:
	li a0, -1
label126:
	ld ra, 0(sp)
	flw f20, 8(sp)
	ld s8, 16(sp)
	flw f18, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	flw f9, 48(sp)
	ld s2, 56(sp)
	flw f21, 64(sp)
	flw f8, 68(sp)
	ld s4, 72(sp)
	ld s1, 80(sp)
	ld s0, 88(sp)
	ld s5, 96(sp)
	flw f19, 104(sp)
	ld s7, 112(sp)
	addi sp, sp, 120
	ret
label104:
	jal getint
	mv s0, a0
	jal getint
	li a1, 1024
	mv s1, a0
	bgt s0, a1, label133
	bgt a0, a1, label133
	jal getint
	li a1, 255
	bne a0, a1, label133
	srliw a1, s1, 31
	add a0, s1, a1
	srliw a1, s0, 31
	sraiw s4, a0, 1
	add a0, s0, a1
	fcvt.s.w f8, s4
pcrel338:
	auipc a1, %pcrel_hi(image)
	sraiw s2, a0, 1
	addi s3, a1, %pcrel_lo(pcrel338)
	fcvt.s.w f9, s2
	ble s1, zero, label108
	mv s6, zero
	j label118
.p2align 2
label125:
	addi s7, s7, 4
.p2align 2
label122:
	jal getint
	addiw s8, s8, 1
	sw a0, 0(s7)
	bgt s0, s8, label125
label120:
	addiw s6, s6, 1
	ble s1, s6, label108
label118:
	ble s0, zero, label120
	mulw a0, s0, s6
	mv s8, zero
	sh2add s7, a0, s3
	j label122
label108:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label108)
	flw f11, 4(a0)
	flw f0, 8(a0)
	fadd.s f10, f19, f11
	flw f1, 12(a0)
	fdiv.s f12, f10, f0
	flt.s a3, f10, f1
	fcvt.w.s a1, f12, rtz
	fcvt.s.w f11, a1
	flt.s a1, f0, f10
	fmul.s f13, f11, f0
	or a2, a1, a3
	fsub.s f12, f10, f13
	fmv.s f11, f12
	bne a2, zero, label300
	fmv.s f11, f10
label300:
	flw f2, 16(a0)
	fsub.s f10, f11, f0
	flt.s a1, f2, f11
	fmv.s f12, f10
	bne a1, zero, label302
	fmv.s f12, f11
label302:
	flw f3, 20(a0)
	fadd.s f11, f12, f0
	flt.s a1, f12, f3
	fmv.s f10, f11
	bne a1, zero, label304
	fmv.s f10, f12
label304:
	jal my_sin_impl
	flt.s a2, f19, f1
	fmv.s f18, f10
	fdiv.s f11, f19, f0
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f12, a0
	flt.s a0, f0, f19
	fmul.s f10, f12, f0
	or a1, a0, a2
	fsub.s f11, f19, f10
	fmv.s f10, f11
	bne a1, zero, label306
	fmv.s f10, f19
label306:
	flt.s a0, f2, f10
	fsub.s f12, f10, f0
	fmv.s f11, f12
	bne a0, zero, label308
	fmv.s f11, f10
label308:
	flt.s a0, f11, f3
	fadd.s f12, f11, f0
	fmv.s f10, f12
	bne a0, zero, label310
	fmv.s f10, f11
label310:
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
	ble s1, zero, label214
	mv s5, zero
	j label109
label111:
	li a0, 10
	jal putch
	addiw s5, s5, 1
	ble s1, s5, label214
label109:
	subw a0, s5, s4
	fcvt.s.w f10, a0
	fmul.s f21, f10, f18
	fmul.s f20, f10, f19
	ble s0, zero, label111
	mv s6, zero
	j label112
.p2align 2
label243:
	mv a0, zero
.p2align 2
label116:
	jal putint
	li a0, 32
	jal putch
	addiw s6, s6, 1
	ble s0, s6, label111
.p2align 2
label112:
	subw a0, s6, s2
	fcvt.s.w f10, a0
	fmul.s f13, f10, f18
	fsub.s f11, f13, f20
	fmul.s f13, f10, f19
	fadd.s f12, f11, f9
	fcvt.w.s a0, f12, rtz
	fadd.s f12, f13, f21
	sltu a2, a0, s0
	xori a1, a2, 1
	fadd.s f11, f12, f8
	fcvt.w.s a2, f11, rtz
	slti a4, a2, 0
	or a3, a1, a4
	bne a3, zero, label243
	ble s1, a2, label243
	mulw a1, s0, a2
	sh2add a4, a0, s3
	sh2add a3, a1, a4
	lw a0, 0(a3)
	j label116
label214:
	mv a0, zero
	j label126
