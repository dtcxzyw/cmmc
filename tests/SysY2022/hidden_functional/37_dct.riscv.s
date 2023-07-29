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
.align 4
test_block:
	.zero	256
.align 4
test_dct:
	.zero	256
.align 4
test_idct:
	.zero	256
.text
my_sin_impl:
.p2align 2
	addi sp, sp, -16
	fabs.s f11, f10
pcrel52:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fsw f8, 8(sp)
	addi a1, a0, %pcrel_lo(pcrel52)
	sd ra, 0(sp)
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
pcrel53:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fdiv.s f10, f10, f12
	addi a1, a0, %pcrel_lo(pcrel53)
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
	addi sp, sp, -72
	sd s1, 64(sp)
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s3, 40(sp)
	sd s2, 32(sp)
	sd s4, 24(sp)
	fsw f18, 20(sp)
	fsw f9, 16(sp)
	fsw f19, 12(sp)
	fsw f8, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, zero
	mv s0, a0
pcrel791:
	auipc a0, %pcrel_hi(test_block)
	addi s3, a0, %pcrel_lo(pcrel791)
	ble s1, zero, label62
.p2align 2
label57:
	bgt s0, zero, label149
	addiw s2, s2, 1
	bgt s1, s2, label57
	j label62
.p2align 2
label60:
	jal getfloat
	sh2add a0, s5, s4
	addiw s5, s5, 1
	fsw f10, 0(a0)
	bgt s0, s5, label60
	addiw s2, s2, 1
	bgt s1, s2, label57
label62:
	fcvt.s.w f18, s1
pcrel792:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fcvt.s.w f19, s0
	mv a4, zero
	addi a1, a0, %pcrel_lo(pcrel792)
pcrel793:
	auipc a0, %pcrel_hi(test_dct)
	flw f10, 4(a1)
	addi s2, a0, %pcrel_lo(pcrel793)
	fdiv.s f8, f10, f19
	fdiv.s f9, f10, f18
	mv a0, zero
	fcvt.s.w f15, zero
	mv a2, s2
	bgt s1, zero, label176
	mv s3, zero
	j label91
.p2align 2
label70:
	bgt s0, zero, label72
	addiw a5, a5, 1
	bgt s1, a5, label70
	addiw a3, a3, 1
	bgt s0, a3, label67
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label176
	mv s3, zero
	bgt s1, zero, label87
	j label91
.p2align 2
label76:
	fcvt.s.w f10, t1
	lui a0, 258048
pcrel794:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel794)
	fadd.s f13, f10, f12
	fmul.s f11, f8, f13
	fmul.s f10, f11, f14
	flw f11, 8(a0)
	flw f12, 12(a0)
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s t2, f10, f11
	or a0, a1, t2
	sh2add a1, t1, t0
	flw f11, 0(a1)
	fmul.s f2, f11, f0
	bne a0, zero, label81
pcrel795:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel795)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label661
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label663
.p2align 2
label738:
	fmv.s f10, f11
.p2align 2
label663:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s0, t1, label76
	addiw a5, a5, 1
	bgt s1, a5, label70
	addiw a3, a3, 1
	bgt s0, a3, label67
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label176
	mv s3, zero
	bgt s1, zero, label87
	j label91
.p2align 2
label81:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label81)
	flw f11, 12(a0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel796:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel796)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label661
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label663
	j label738
.p2align 2
label87:
	slliw a0, s3, 5
	add s4, s2, a0
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	ble s0, a0, label88
	li s5, 1
	j label89
.p2align 2
label88:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bgt s1, s3, label87
	j label91
.p2align 2
label89:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	bgt s0, s5, label89
	j label88
label91:
	li a0, 10
	jal putch
	mv t0, zero
	addiw a5, s0, -4
	addiw a4, s1, -4
pcrel797:
	auipc a1, %pcrel_hi(test_idct)
	addi s3, a1, %pcrel_lo(pcrel797)
	fcvt.s.w f10, zero
	lui a0, 258048
	fmv.w.x f11, a0
	mv a0, zero
	fadd.s f10, f10, f11
	mv a2, s3
	fmul.s f15, f9, f10
	bgt s1, zero, label342
	mv s2, zero
	j label100
.p2align 2
label661:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label663
	j label738
.p2align 2
label72:
	fcvt.s.w f10, a5
	lui a0, 258048
pcrel798:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel798)
	fadd.s f13, f10, f12
	flw f12, 8(a0)
	fmul.s f11, f9, f13
	fmul.s f10, f11, f15
	flw f11, 12(a0)
	fadd.s f10, f10, f12
	flw f12, 16(a0)
	flt.s a1, f11, f10
	flt.s t0, f10, f12
	or a0, a1, t0
	slliw a1, a5, 5
	add t0, s3, a1
	bne a0, zero, label73
pcrel799:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel799)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label657
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label659
.p2align 2
label737:
	fmv.s f10, f11
	j label659
.p2align 2
label73:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(label73)
	flw f11, 12(a1)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel800:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel800)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label657
	fmv.s f11, f10
.p2align 2
label657:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	beq a0, zero, label737
.p2align 2
label659:
	jal my_sin_impl
	mv t1, zero
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label76
.p2align 2
label67:
	sh2add a0, a3, a2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, a3
	fsw f10, 0(a0)
	bgt s1, zero, label70
	addiw a3, a3, 1
	bgt s0, a3, label67
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label176
	mv s3, zero
	j label91
.p2align 2
label342:
	mv a3, zero
	bgt s0, zero, label104
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t0, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t0, label342
	mv s2, zero
	bgt s1, zero, label96
label100:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	flw f8, 8(sp)
	flw f19, 12(sp)
	flw f9, 16(sp)
	flw f18, 20(sp)
	ld s4, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s1, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label104:
	sh2add a0, a3, a2
	flw f10, 0(s2)
	lui a1, 256000
	fmv.w.x f12, a1
	fmul.s f11, f10, f12
	fcvt.s.w f10, a3
	fsw f11, 0(a0)
	lui a0, 258048
	fmv.w.x f11, a0
	li a0, 1
	fadd.s f10, f10, f11
	fmul.s f14, f8, f10
	bgt s1, a0, label130
	bgt s0, a0, label106
	li t1, 1
	bgt s1, t1, label118
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s0, a3, label104
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t0, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t0, label342
	mv s2, zero
	bgt s1, zero, label96
	j label100
.p2align 2
label698:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	li a0, 1
	j label132
.p2align 2
label112:
	sh2add t1, a0, s2
	lui a1, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a1
	flw f11, 0(t1)
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s0, a0, label112
	li t1, 1
	bgt s1, t1, label118
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s0, a3, label104
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t0, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t0, label342
	mv s2, zero
	bgt s1, zero, label96
	j label100
.p2align 2
label130:
	li a0, 5
	bgt s1, a0, label551
	j label698
.p2align 2
label118:
	li a0, 1
	bgt s0, a0, label120
	addiw t1, t1, 1
	bgt s1, t1, label118
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s0, a3, label104
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t0, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t0, label342
	mv s2, zero
	bgt s1, zero, label96
	j label100
.p2align 2
label123:
	fcvt.s.w f11, t3
pcrel801:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel801)
	fmul.s f10, f14, f11
	flw f11, 8(a0)
	flw f12, 12(a0)
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s t4, f10, f11
	or a0, a1, t4
	sh2add a1, t3, t2
	flw f11, 0(a1)
	fmul.s f2, f11, f0
	bne a0, zero, label128
pcrel802:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel802)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label669
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label671
.p2align 2
label754:
	fmv.s f10, f11
	j label671
.p2align 2
label669:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	beq a0, zero, label754
.p2align 2
label671:
	jal my_sin_impl
	addiw t3, t3, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s0, t3, label123
	addiw t1, t1, 1
	bgt s1, t1, label118
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s0, a3, label104
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t0, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t0, label342
	mv s2, zero
	bgt s1, zero, label96
	j label100
.p2align 2
label128:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label128)
	flw f11, 12(a0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel803:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel803)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label669
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label671
	j label754
.p2align 2
label106:
	li a0, 5
	bgt s0, a0, label107
	sh2add a1, a3, a2
	li a0, 1
	flw f10, 0(a1)
	sh2add t1, a0, s2
	lui a1, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a1
	flw f11, 0(t1)
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s0, a0, label112
	li t1, 1
	bgt s1, t1, label118
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s0, a3, label104
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t0, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t0, label342
	mv s2, zero
	bgt s1, zero, label96
	j label100
.p2align 2
label107:
	sh2add a0, a3, a2
	flw f11, 0(a0)
	li a0, 1
.p2align 2
label108:
	sh2add a1, a0, s2
	lui t1, 258048
	addiw a0, a0, 4
	fmv.w.x f10, t1
	flw f12, 0(a1)
	flw f13, 4(a1)
	fmul.s f12, f12, f10
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 8(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 12(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	fadd.s f10, f11, f12
	bgt a5, a0, label413
	sh2add t1, a0, s2
	lui a1, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a1
	flw f11, 0(t1)
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s0, a0, label112
	li t1, 1
	bgt s1, t1, label118
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s0, a3, label104
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t0, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t0, label342
	mv s2, zero
	bgt s1, zero, label96
	j label100
.p2align 2
label413:
	fmv.s f11, f10
	j label108
.p2align 2
label120:
	fcvt.s.w f11, t1
pcrel804:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel804)
	fmul.s f10, f15, f11
	flw f11, 8(a0)
	flw f12, 12(a0)
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s t2, f10, f11
	or a0, a1, t2
	slliw a1, t1, 5
	add t2, s2, a1
	bne a0, zero, label129
pcrel805:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel805)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label665
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label667
.p2align 2
label753:
	fmv.s f10, f11
.p2align 2
label667:
	jal my_sin_impl
	li t3, 1
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label123
.p2align 2
label129:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(label129)
	flw f11, 12(a1)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel806:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel806)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label665
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label667
	j label753
.p2align 2
label665:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label667
	j label753
.p2align 2
label96:
	slliw a0, s2, 5
	add s4, s3, a0
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	ble s0, a0, label97
	li s5, 1
	j label98
.p2align 2
label551:
	sh2add a1, a3, a2
	li a0, 1
	flw f11, 0(a1)
	j label136
.p2align 2
label132:
	slliw t1, a0, 5
	addiw a0, a0, 1
	add a1, s2, t1
	lui t1, 258048
	flw f11, 0(a1)
	fmv.w.x f12, t1
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s1, a0, label132
	li a0, 1
	bgt s0, a0, label106
	li t1, 1
	bgt s1, t1, label118
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a0)
	bgt s0, a3, label104
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t0, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t0, label342
	mv s2, zero
	bgt s1, zero, label96
	j label100
.p2align 2
label136:
	slliw t1, a0, 5
	addiw a0, a0, 4
	add a1, s2, t1
	lui t1, 258048
	flw f12, 0(a1)
	fmv.w.x f10, t1
	flw f13, 32(a1)
	fmul.s f12, f12, f10
	flw f0, 64(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 96(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	fadd.s f10, f11, f13
	ble a4, a0, label132
	fmv.s f11, f10
	j label136
.p2align 2
label97:
	li a0, 10
	jal putch
	addiw s2, s2, 1
	bgt s1, s2, label96
	j label100
.p2align 2
label98:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	bgt s0, s5, label98
	j label97
label176:
	mv a3, zero
	bgt s0, zero, label67
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label176
	mv s3, zero
	bgt s1, zero, label87
	j label91
.p2align 2
label149:
	slli a0, s2, 5
	mv s5, zero
	add s4, s3, a0
	j label60
