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
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	fsw f18, 48(sp)
	fsw f9, 52(sp)
	fsw f19, 56(sp)
	fsw f8, 60(sp)
	sd s2, 64(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s4, zero
	mv s0, a0
pcrel776:
	auipc a0, %pcrel_hi(test_block)
	addi s3, a0, %pcrel_lo(pcrel776)
label57:
	bgt s1, s4, label136
label59:
	fcvt.s.w f18, s1
pcrel777:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fcvt.s.w f19, s0
	mv t0, zero
	addi a0, a1, %pcrel_lo(pcrel777)
	flw f10, 4(a0)
pcrel778:
	auipc a0, %pcrel_hi(test_dct)
	fdiv.s f8, f10, f19
	addi s2, a0, %pcrel_lo(pcrel778)
	fdiv.s f9, f10, f18
label60:
	bgt s1, t0, label161
	j label160
.p2align 2
label136:
	ble s0, zero, label617
	slli a0, s4, 5
	mv s5, zero
	add s2, s3, a0
.p2align 2
label138:
	jal getfloat
	sh2add a0, s5, s2
	addiw s5, s5, 1
	fsw f10, 0(a0)
	bgt s0, s5, label138
	addiw s4, s4, 1
	bgt s1, s4, label136
	j label59
label160:
	mv s4, zero
	j label63
.p2align 2
label161:
	mv a2, zero
	slliw a0, t0, 5
	add a3, s2, a0
	bgt s0, zero, label119
	j label717
label63:
	bgt s1, s4, label113
	j label65
.p2align 2
label119:
	sh2add a0, a2, a3
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, a2
	fcvt.s.w f15, t0
	fsw f10, 0(a0)
	ble s1, zero, label498
.p2align 2
label122:
	ble s0, zero, label501
	fcvt.s.w f10, a5
	lui a0, 258048
pcrel779:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel779)
	fadd.s f13, f10, f12
	fmul.s f11, f9, f13
	fmul.s f10, f11, f15
	flw f11, 8(a0)
	flw f12, 12(a0)
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s a4, f10, f11
	or a0, a1, a4
	slliw a1, a5, 5
	add a4, s3, a1
	bne a0, zero, label132
	j label124
.p2align 2
label595:
	addiw a5, a5, 1
	bgt s1, a5, label122
	addiw a2, a2, 1
	slliw a0, t0, 5
	add a3, s2, a0
	bgt s0, a2, label119
	addiw t0, t0, 1
	bgt s1, t0, label161
	j label160
.p2align 2
label124:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label124)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label699
	fmv.s f11, f10
.p2align 2
label699:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label701
.p2align 2
label700:
	fmv.s f10, f11
.p2align 2
label701:
	jal my_sin_impl
	sh2add a0, a2, a3
	mv t1, zero
	fmv.s f0, f10
	flw f1, 0(a0)
.p2align 2
label126:
	fcvt.s.w f10, t1
	lui a0, 258048
pcrel780:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel780)
	fadd.s f12, f10, f13
	fmul.s f11, f8, f12
	fmul.s f10, f11, f14
	flw f11, 8(a0)
	flw f12, 12(a0)
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s t2, f10, f11
	or a0, a1, t2
	sh2add a1, t1, a4
	flw f11, 0(a1)
	fmul.s f2, f11, f0
	bne a0, zero, label131
	j label129
.p2align 2
label703:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label705
.p2align 2
label704:
	fmv.s f10, f11
.p2align 2
label705:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a2, a3
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s0, t1, label126
	j label595
.p2align 2
label131:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(label131)
	flw f11, 12(a1)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel781:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel781)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label703
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label705
	j label704
.p2align 2
label129:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label129)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label703
	fmv.s f11, f10
	j label703
.p2align 2
label132:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(label132)
	flw f11, 12(a1)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel782:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel782)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label699
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label701
	j label700
label65:
	li a0, 10
	jal putch
	mv a5, zero
pcrel783:
	auipc a1, %pcrel_hi(test_idct)
	addi s3, a1, %pcrel_lo(pcrel783)
	fcvt.s.w f10, zero
	lui a0, 258048
	fmv.w.x f11, a0
	mv a0, zero
	fadd.s f10, f10, f11
	mv a2, s3
	fmul.s f15, f9, f10
	bgt s1, zero, label180
	j label179
.p2align 2
label113:
	slliw a1, s4, 5
	add s3, s2, a1
	flw f10, 0(s3)
	jal putfloat
	li a0, 1
	ble s0, a0, label116
	li s5, 1
.p2align 2
label114:
	li a0, 32
	jal putch
	sh2add a1, s5, s3
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	bgt s0, s5, label114
.p2align 2
label116:
	li a0, 10
	jal putch
	addiw s4, s4, 1
	bgt s1, s4, label113
	j label65
label179:
	mv s4, zero
	j label68
.p2align 2
label180:
	mv a3, zero
	fcvt.s.w f10, zero
	lui a0, 258048
	fmv.w.x f11, a0
	fadd.s f10, f10, f11
	bgt s0, zero, label78
	j label77
label68:
	bgt s1, s4, label70
	j label74
.p2align 2
label721:
	addiw a5, a5, 1
	fcvt.s.w f10, a5
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a5, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a5, label180
	j label179
.p2align 2
label78:
	sh2add a0, a3, a2
	flw f11, 0(s2)
	lui a1, 256000
	fmul.s f14, f8, f10
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fsw f11, 0(a0)
	li a0, 1
	bgt s1, a0, label104
	j label79
.p2align 2
label82:
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	fcvt.s.w f10, a3
	lui a0, 258048
	fmv.w.x f11, a0
	fadd.s f10, f10, f11
	bgt s0, a3, label78
	j label721
.p2align 2
label83:
	li a0, 1
	ble s0, a0, label84
	fcvt.s.w f11, t0
pcrel784:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel784)
	fmul.s f10, f15, f11
	flw f12, 8(a0)
	flw f11, 12(a0)
	fadd.s f10, f10, f12
	flw f12, 16(a0)
	flt.s a1, f11, f10
	flt.s a4, f10, f12
	or a0, a1, a4
	slliw a1, t0, 5
	add a4, s2, a1
	bne a0, zero, label94
	j label86
.p2align 2
label88:
	fcvt.s.w f11, t1
pcrel785:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel785)
	fmul.s f10, f14, f11
	flw f11, 8(a0)
	flw f12, 12(a0)
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s t2, f10, f11
	or a0, a1, t2
	sh2add a1, t1, a4
	flw f11, 0(a1)
	fmul.s f2, f11, f0
	bne a0, zero, label91
pcrel786:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel786)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label695
	j label723
.p2align 2
label742:
	fmv.s f10, f11
	j label697
.p2align 2
label695:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label697
	fmv.s f10, f11
.p2align 2
label697:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s0, t1, label88
	addiw t0, t0, 1
	bgt s1, t0, label83
	j label82
.p2align 2
label91:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label91)
	flw f11, 12(a0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel787:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel787)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label695
	fmv.s f11, f10
	j label695
.p2align 2
label86:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label86)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label691
	fmv.s f11, f10
.p2align 2
label691:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label693
.p2align 2
label692:
	fmv.s f10, f11
.p2align 2
label693:
	jal my_sin_impl
	li t1, 1
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label88
.p2align 2
label94:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label94)
	flw f11, 12(a0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel788:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel788)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label691
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label693
	j label692
.p2align 2
label84:
	addiw t0, t0, 1
	bgt s1, t0, label83
	j label82
.p2align 2
label95:
	li a0, 9
	bgt s0, a0, label97
	j label96
.p2align 2
label104:
	li a1, 9
	bgt s1, a1, label109
	j label407
.p2align 2
label105:
	slliw a4, a0, 5
	addiw a0, a0, 1
	add a1, s2, a4
	lui a4, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a4
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s1, a0, label105
	li a0, 1
	bgt s0, a0, label95
	j label728
.p2align 2
label109:
	sh2add a1, a3, a2
	li a0, 1
	flw f11, 0(a1)
.p2align 2
label110:
	slliw a4, a0, 5
	addiw a0, a0, 8
	add a1, s2, a4
	lui a4, 258048
	flw f12, 0(a1)
	fmv.w.x f10, a4
	flw f13, 32(a1)
	fmul.s f12, f12, f10
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 64(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 96(a1)
	fmul.s f0, f13, f10
	fadd.s f11, f11, f12
	flw f12, 128(a1)
	fmul.s f13, f12, f10
	fadd.s f11, f11, f0
	flw f0, 160(a1)
	fmul.s f12, f0, f10
	fadd.s f11, f11, f13
	flw f13, 192(a1)
	fmul.s f0, f13, f10
	fadd.s f11, f11, f12
	flw f12, 224(a1)
	addiw a1, s1, -8
	fmul.s f10, f12, f10
	fadd.s f11, f11, f0
	fadd.s f11, f11, f10
	blt a0, a1, label110
	fmv.s f10, f11
	j label105
.p2align 2
label97:
	sh2add a1, a3, a2
	li a0, 1
	flw f11, 0(a1)
.p2align 2
label98:
	sh2add a1, a0, s2
	lui a4, 258048
	addiw a0, a0, 8
	fmv.w.x f10, a4
	flw f12, 0(a1)
	flw f13, 4(a1)
	fmul.s f12, f12, f10
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 8(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 12(a1)
	flw f0, 16(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 20(a1)
	flw f0, 24(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	fmul.s f12, f0, f10
	fadd.s f11, f11, f13
	flw f13, 28(a1)
	addiw a1, s0, -8
	fmul.s f10, f13, f10
	fadd.s f11, f11, f12
	fadd.s f11, f11, f10
	blt a0, a1, label98
	fmv.s f10, f11
.p2align 2
label101:
	sh2add a4, a0, s2
	lui a1, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a1
	flw f11, 0(a4)
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s0, a0, label101
	li t0, 1
	bgt s1, t0, label83
	j label82
.p2align 2
label96:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	li a0, 1
	sh2add a4, a0, s2
	lui a1, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a1
	flw f11, 0(a4)
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s0, a0, label101
	li t0, 1
	bgt s1, t0, label83
	j label82
.p2align 2
label79:
	li a0, 1
	bgt s0, a0, label95
	li t0, 1
	bgt s1, t0, label83
	j label82
.p2align 2
label70:
	slliw a0, s4, 5
	add s2, s3, a0
	flw f10, 0(s2)
	jal putfloat
	li a0, 1
	ble s0, a0, label73
	li s5, 1
.p2align 2
label71:
	li a0, 32
	jal putch
	sh2add a1, s5, s2
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	bgt s0, s5, label71
.p2align 2
label73:
	li a0, 10
	jal putch
	addiw s4, s4, 1
	bgt s1, s4, label70
label74:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	flw f18, 48(sp)
	flw f9, 52(sp)
	flw f19, 56(sp)
	flw f8, 60(sp)
	ld s2, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label501:
	addiw a5, a5, 1
	bgt s1, a5, label122
	addiw a2, a2, 1
	slliw a0, t0, 5
	add a3, s2, a0
	bgt s0, a2, label119
	j label739
label77:
	addiw a5, a5, 1
	fcvt.s.w f10, a5
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a5, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a5, label180
	j label179
.p2align 2
label498:
	addiw a2, a2, 1
	slliw a0, t0, 5
	add a3, s2, a0
	bgt s0, a2, label119
label739:
	addiw t0, t0, 1
	bgt s1, t0, label161
	j label160
.p2align 2
label728:
	li t0, 1
	bgt s1, t0, label83
	j label82
.p2align 2
label407:
	sh2add a1, a3, a2
	li a0, 1
	flw f10, 0(a1)
	j label105
label717:
	addiw t0, t0, 1
	j label60
label617:
	addiw s4, s4, 1
	j label57
.p2align 2
label723:
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label697
	j label742
