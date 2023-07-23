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
.align 4
image:
	.zero	4194304
.text
my_sin_impl:
	addi sp, sp, -16
	fabs.s f11, f10
pcrel53:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fsw f8, 8(sp)
	addi a1, a0, %pcrel_lo(pcrel53)
	sd ra, 0(sp)
	flw f12, 0(a1)
	fle.s a0, f11, f12
	bne a0, zero, label2
	lui a0, 263168
	fmv.w.x f12, a0
pcrel54:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fdiv.s f10, f10, f12
	addi a1, a0, %pcrel_lo(pcrel54)
	flw f12, 0(a1)
	fabs.s f11, f10
	fle.s a0, f11, f12
	bne a0, zero, label5
	j label7
label2:
	ld ra, 0(sp)
	flw f8, 8(sp)
	addi sp, sp, 16
	ret
label5:
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
	addi sp, sp, -104
	fsw f20, 12(sp)
	fsw f18, 24(sp)
	sd s6, 0(sp)
	fsw f9, 8(sp)
	fsw f21, 100(sp)
	fsw f8, 96(sp)
	sd s4, 88(sp)
	sd s2, 80(sp)
	sd s3, 72(sp)
	sd s1, 64(sp)
	sd s5, 56(sp)
	sd s0, 48(sp)
	fsw f19, 40(sp)
	sd s7, 16(sp)
	sd ra, 32(sp)
	jal getfloat
	fmv.s f19, f10
	jal getch
	jal getch
	li a1, 80
	bne a0, a1, label84
	jal getch
	li a1, 50
	bne a0, a1, label84
	jal getint
	li s1, 1024
	mv s0, a0
	slt s3, s1, a0
	jal getint
	slt a1, s1, a0
	mv s2, a0
	or a0, s3, a1
	bne a0, zero, label84
	jal getint
	srliw a1, s2, 31
	add a2, s2, a1
	srliw a1, s0, 31
	sraiw s4, a2, 1
	add a2, s0, a1
	fcvt.s.w f8, s4
pcrel273:
	auipc a1, %pcrel_hi(image)
	sraiw s3, a2, 1
	addi s1, a1, %pcrel_lo(pcrel273)
	fcvt.s.w f9, s3
	li a1, 255
	bne a0, a1, label84
	mv s5, zero
	ble s2, zero, label61
label72:
	bgt s0, zero, label208
	addiw s5, s5, 1
	bgt s2, s5, label72
	j label61
label75:
	jal getint
	addw a2, s6, s7
	addiw s7, s7, 1
	sh2add a1, a2, s1
	sw a0, 0(a1)
	bgt s0, s7, label75
	addiw s5, s5, 1
	bgt s2, s5, label72
	j label61
label84:
	li a0, -1
	j label77
label164:
	mv a0, zero
	j label77
label65:
	subw a0, s6, s3
	fcvt.s.w f10, a0
	fmul.s f12, f10, f18
	fmul.s f10, f10, f19
	fsub.s f13, f12, f21
	fadd.s f11, f13, f9
	fcvt.w.s a0, f11, rtz
	fadd.s f11, f10, f20
	slti a3, a0, 0
	slt a1, a0, s0
	xori a2, a1, 1
	or a1, a2, a3
	fadd.s f12, f11, f8
	fcvt.w.s a2, f12, rtz
	slti a3, a2, 0
	or a1, a1, a3
	bne a1, zero, label190
	ble s2, a2, label190
	mulw a3, s0, a2
	addw a2, a0, a3
	sh2add a1, a2, s1
	lw a0, 0(a1)
	j label69
label190:
	mv a0, zero
label69:
	jal putint
	li a0, 32
	jal putch
	addiw s6, s6, 1
	bgt s0, s6, label65
label71:
	li a0, 10
	jal putch
	addiw s5, s5, 1
	bgt s2, s5, label64
	j label164
label77:
	ld ra, 32(sp)
	ld s7, 16(sp)
	flw f19, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s1, 64(sp)
	ld s3, 72(sp)
	ld s2, 80(sp)
	ld s4, 88(sp)
	flw f8, 96(sp)
	flw f21, 100(sp)
	flw f9, 8(sp)
	ld s6, 0(sp)
	flw f18, 24(sp)
	flw f20, 12(sp)
	addi sp, sp, 104
	ret
label61:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label61)
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
	bne a1, zero, label238
	fmv.s f12, f10
label238:
	flw f0, 16(a0)
	fsub.s f10, f12, f14
	flt.s a1, f0, f12
	fmv.s f11, f10
	bne a1, zero, label240
	fmv.s f11, f12
label240:
	flw f1, 20(a0)
	fadd.s f12, f11, f14
	flt.s a0, f11, f1
	fmv.s f10, f12
	bne a0, zero, label242
	fmv.s f10, f11
label242:
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
	bne a0, zero, label244
	fmv.s f10, f19
label244:
	flt.s a0, f0, f10
	fsub.s f12, f10, f14
	fmv.s f11, f12
	bne a0, zero, label246
	fmv.s f11, f10
label246:
	flt.s a0, f11, f1
	fadd.s f12, f11, f14
	fmv.s f10, f12
	bne a0, zero, label248
	fmv.s f10, f11
label248:
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
	mv a0, s2
	jal putint
	li a0, 32
	jal putch
	li a0, 255
	jal putint
	li a0, 10
	jal putch
	mv s5, zero
	ble s2, zero, label164
label64:
	subw a0, s5, s4
	fcvt.s.w f10, a0
	fmul.s f21, f10, f19
	fmul.s f20, f10, f18
	ble s0, zero, label71
	mv s6, zero
	j label65
label208:
	mulw s6, s0, s5
	mv s7, zero
	j label75
