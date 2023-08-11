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
	flw f13, 0(a0)
	fmv.w.x f14, a1
	fdiv.s f11, f10, f14
	fabs.s f12, f11
	fle.s a1, f12, f13
	beq a1, zero, label7
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label2
label7:
	lui a1, 263168
	flw f14, 0(a0)
	fmv.w.x f13, a1
	fdiv.s f10, f11, f13
	fabs.s f12, f10
	fle.s a1, f12, f14
	beq a1, zero, label10
label8:
	lui a0, 264192
	fmv.w.x f11, a0
	lui a0, 263168
	fmul.s f14, f10, f11
	fmul.s f13, f14, f10
	fmv.w.x f14, a0
	lui a0, 264192
	fmul.s f12, f13, f10
	fmul.s f13, f10, f14
	fsub.s f11, f13, f12
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label2
label10:
	lui a1, 263168
	flw f13, 0(a0)
	fmv.w.x f14, a1
	fdiv.s f11, f10, f14
	fabs.s f12, f11
	fle.s a1, f12, f13
	beq a1, zero, label13
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label8
label13:
	lui a0, 263168
	fmv.w.x f8, a0
	fdiv.s f10, f11, f8
	jal my_sin_impl
	lui a0, 264192
	fmv.w.x f11, a0
	fmul.s f15, f10, f8
	fmul.s f13, f10, f11
	fmul.s f14, f13, f10
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f12, f14, f10
	fsub.s f11, f15, f12
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label8
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
	sd s4, 56(sp)
	fsw f21, 64(sp)
	fsw f8, 68(sp)
	sd s2, 72(sp)
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
	bne a0, s5, label134
	jal getch
	li a1, 50
	beq a0, a1, label104
label134:
	li a0, -1
label127:
	ld ra, 0(sp)
	flw f20, 8(sp)
	ld s8, 16(sp)
	flw f18, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	flw f9, 48(sp)
	ld s4, 56(sp)
	flw f21, 64(sp)
	flw f8, 68(sp)
	ld s2, 72(sp)
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
	bgt s0, a1, label134
	bgt a0, a1, label134
	jal getint
	srliw a2, s0, 31
	add a1, s0, a2
	srliw a2, s1, 31
	sraiw s2, a1, 1
	add a1, s1, a2
	fcvt.s.w f8, s2
pcrel339:
	auipc a2, %pcrel_hi(image)
	sraiw s4, a1, 1
	addi s3, a2, %pcrel_lo(pcrel339)
	li a1, 255
	fcvt.s.w f9, s4
	bne a0, a1, label134
	mv s6, zero
	bgt s1, zero, label120
	j label109
.p2align 2
label126:
	addi s7, s7, 4
.p2align 2
label123:
	jal getint
	addiw s8, s8, 1
	sw a0, 0(s7)
	bgt s0, s8, label126
label121:
	addiw s6, s6, 1
	ble s1, s6, label109
label120:
	ble s0, zero, label121
	mulw a0, s0, s6
	mv s8, zero
	sh2add s7, a0, s3
	j label123
label109:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label109)
	flw f11, 4(a0)
	flw f0, 8(a0)
	fadd.s f10, f19, f11
	flw f1, 12(a0)
	fdiv.s f12, f10, f0
	flt.s a3, f10, f1
	fcvt.w.s a1, f12, rtz
	fcvt.s.w f13, a1
	flt.s a1, f0, f10
	fmul.s f14, f13, f0
	or a2, a1, a3
	fsub.s f11, f10, f14
	fmv.s f12, f11
	bne a2, zero, label296
	fmv.s f12, f10
label296:
	flw f2, 16(a0)
	fsub.s f10, f12, f0
	flt.s a1, f2, f12
	fmv.s f11, f10
	bne a1, zero, label298
	fmv.s f11, f12
label298:
	flw f3, 20(a0)
	fadd.s f12, f11, f0
	flt.s a1, f11, f3
	fmv.s f10, f12
	bne a1, zero, label300
	fmv.s f10, f11
label300:
	jal my_sin_impl
	flt.s a2, f19, f1
	fmv.s f18, f10
	flt.s a1, f0, f19
	fdiv.s f11, f19, f0
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f12, a0
	or a0, a1, a2
	fmul.s f10, f12, f0
	fsub.s f11, f19, f10
	fmv.s f10, f11
	bne a0, zero, label302
	fmv.s f10, f19
label302:
	flt.s a0, f2, f10
	fsub.s f12, f10, f0
	fmv.s f11, f12
	bne a0, zero, label304
	fmv.s f11, f10
label304:
	flt.s a0, f11, f3
	fadd.s f12, f11, f0
	fmv.s f10, f12
	bne a0, zero, label306
	fmv.s f10, f11
label306:
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
	bgt s1, zero, label112
	j label216
label113:
	li a0, 10
	jal putch
	addiw s5, s5, 1
	ble s1, s5, label216
label112:
	subw a0, s5, s4
	fcvt.s.w f10, a0
	fmul.s f21, f10, f19
	fmul.s f20, f10, f18
	ble s0, zero, label113
	mv s6, zero
	j label114
.p2align 2
label243:
	mv a0, zero
.p2align 2
label118:
	jal putint
	li a0, 32
	jal putch
	addiw s6, s6, 1
	ble s0, s6, label113
.p2align 2
label114:
	subw a0, s6, s2
	fcvt.s.w f10, a0
	fmul.s f11, f10, f18
	fsub.s f12, f11, f21
	fadd.s f13, f12, f8
	fcvt.w.s a0, f13, rtz
	fmul.s f13, f10, f19
	slti a4, a0, 0
	slt a3, a0, s0
	xori a2, a3, 1
	or a1, a2, a4
	fadd.s f11, f13, f20
	fadd.s f12, f11, f9
	fcvt.w.s a2, f12, rtz
	slti a3, a2, 0
	or a4, a1, a3
	bne a4, zero, label243
	ble s1, a2, label243
	mulw a1, s0, a2
	sh2add a3, a0, s3
	sh2add a4, a1, a3
	lw a0, 0(a4)
	j label118
label216:
	mv a0, zero
	j label127
