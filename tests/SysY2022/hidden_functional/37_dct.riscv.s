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
.p2align 2
.globl main
main:
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd s2, 48(sp)
	fsw f18, 56(sp)
	fsw f9, 60(sp)
	fsw f19, 64(sp)
	fsw f8, 68(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s4, zero
	mv s0, a0
pcrel778:
	auipc a0, %pcrel_hi(test_block)
	addi s3, a0, %pcrel_lo(pcrel778)
	ble s1, zero, label64
.p2align 2
label59:
	ble s0, zero, label60
	slli a0, s4, 5
	mv s5, zero
	add s2, s3, a0
.p2align 2
label62:
	jal getfloat
	sh2add a0, s5, s2
	addiw s5, s5, 1
	fsw f10, 0(a0)
	bgt s0, s5, label62
	addiw s4, s4, 1
	bgt s1, s4, label59
label64:
	fcvt.s.w f18, s1
pcrel779:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fcvt.s.w f19, s0
	mv a5, zero
	addi a0, a1, %pcrel_lo(pcrel779)
	flw f10, 4(a0)
pcrel780:
	auipc a0, %pcrel_hi(test_dct)
	fdiv.s f8, f10, f19
	addi s2, a0, %pcrel_lo(pcrel780)
	fdiv.s f9, f10, f18
	mv a0, zero
	fcvt.s.w f15, zero
	mv a2, s2
	bgt s1, zero, label178
label177:
	mv s4, zero
	j label87
.p2align 2
label178:
	mv a3, zero
	ble s0, zero, label69
.p2align 2
label70:
	sh2add a0, a3, a2
	mv a4, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, a3
	fsw f10, 0(a0)
	ble s1, zero, label73
.p2align 2
label74:
	ble s0, zero, label75
	fcvt.s.w f10, a4
	lui a0, 258048
pcrel781:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f11, a0
	addi a0, a1, %pcrel_lo(pcrel781)
	fadd.s f13, f10, f11
	flw f11, 8(a0)
	fmul.s f12, f9, f13
	fmul.s f10, f12, f15
	flw f12, 12(a0)
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s t0, f10, f11
	or a0, a1, t0
	slliw a1, a4, 5
	add t0, s3, a1
	bne a0, zero, label85
	j label77
.p2align 2
label79:
	fcvt.s.w f10, t1
	lui a0, 258048
pcrel782:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel782)
	fadd.s f11, f10, f12
	fmul.s f13, f8, f11
	flw f11, 8(a0)
	flw f12, 12(a0)
	fmul.s f10, f13, f14
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s t2, f10, f11
	or a0, a1, t2
	sh2add a1, t1, t0
	flw f11, 0(a1)
	fmul.s f2, f11, f0
	bne a0, zero, label84
pcrel783:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel783)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label695
	fmv.s f11, f10
.p2align 2
label695:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label697
.p2align 2
label696:
	fmv.s f10, f11
.p2align 2
label697:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s0, t1, label79
	addiw a4, a4, 1
	bgt s1, a4, label74
	addiw a3, a3, 1
	bgt s0, a3, label70
	addiw a5, a5, 1
	slliw a0, a5, 5
	fcvt.s.w f15, a5
	add a2, s2, a0
	bgt s1, a5, label178
	j label177
label87:
	bgt s1, s4, label137
	j label89
.p2align 2
label84:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label84)
	flw f11, 12(a0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel784:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel784)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label695
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label697
	j label696
.p2align 2
label77:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label77)
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
	mv t1, zero
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label79
.p2align 2
label85:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label85)
	flw f11, 12(a0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel785:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel785)
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
label75:
	addiw a4, a4, 1
	bgt s1, a4, label74
	addiw a3, a3, 1
	bgt s0, a3, label70
	j label720
label89:
	li a0, 10
	jal putch
	mv t0, zero
	addiw a5, s0, -8
	addiw a4, s1, -8
pcrel786:
	auipc a1, %pcrel_hi(test_idct)
	addi s3, a1, %pcrel_lo(pcrel786)
	fcvt.s.w f10, zero
	lui a0, 258048
	fmv.w.x f11, a0
	mv a0, zero
	fadd.s f10, f10, f11
	mv a2, s3
	fmul.s f15, f9, f10
	bgt s1, zero, label329
	j label328
.p2align 2
label137:
	slliw a1, s4, 5
	add s3, s2, a1
	flw f10, 0(s3)
	jal putfloat
	li a0, 1
	ble s0, a0, label140
	li s5, 1
.p2align 2
label138:
	li a0, 32
	jal putch
	sh2add a1, s5, s3
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	bgt s0, s5, label138
.p2align 2
label140:
	li a0, 10
	jal putch
	addiw s4, s4, 1
	bgt s1, s4, label137
	j label89
label328:
	mv s4, zero
	j label92
.p2align 2
label329:
	mv a3, zero
	bgt s0, zero, label102
	j label101
label92:
	ble s1, s4, label98
.p2align 2
label94:
	slliw a0, s4, 5
	add s2, s3, a0
	flw f10, 0(s2)
	jal putfloat
	li a0, 1
	ble s0, a0, label97
	li s5, 1
.p2align 2
label95:
	li a0, 32
	jal putch
	sh2add a1, s5, s2
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	bgt s0, s5, label95
.p2align 2
label97:
	li a0, 10
	jal putch
	addiw s4, s4, 1
	bgt s1, s4, label94
label98:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s2, 48(sp)
	flw f18, 56(sp)
	flw f9, 60(sp)
	flw f19, 64(sp)
	flw f8, 68(sp)
	addi sp, sp, 72
	ret
.p2align 2
label102:
	sh2add a0, a3, a2
	flw f10, 0(s2)
	lui a1, 256000
	fmv.w.x f11, a1
	fmul.s f12, f10, f11
	fcvt.s.w f10, a3
	fsw f12, 0(a0)
	lui a0, 258048
	fmv.w.x f11, a0
	li a0, 1
	fadd.s f10, f10, f11
	fmul.s f14, f8, f10
	ble s1, a0, label366
	li a0, 9
	bgt s1, a0, label108
	j label104
.p2align 2
label116:
	li a0, 1
	ble s0, a0, label117
	fcvt.s.w f11, t1
pcrel787:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel787)
	fmul.s f10, f15, f11
	flw f12, 8(a0)
	flw f11, 12(a0)
	fadd.s f10, f10, f12
	flw f12, 16(a0)
	flt.s a1, f11, f10
	flt.s t2, f10, f12
	or a0, a1, t2
	slliw a1, t1, 5
	add t2, s2, a1
	bne a0, zero, label127
	j label119
.p2align 2
label121:
	fcvt.s.w f11, t3
pcrel788:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel788)
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
	bne a0, zero, label126
pcrel789:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel789)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label703
	fmv.s f11, f10
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
	addiw t3, t3, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s0, t3, label121
	addiw t1, t1, 1
	bgt s1, t1, label116
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a0)
	bgt s0, a3, label102
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t0, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t0, label329
	j label328
.p2align 2
label126:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label126)
	flw f11, 12(a0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel790:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel790)
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
label119:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label119)
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
	li t3, 1
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label121
.p2align 2
label127:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(label127)
	flw f11, 12(a1)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel791:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel791)
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
.p2align 2
label105:
	slliw a1, a0, 5
	addiw a0, a0, 1
	add t1, s2, a1
	lui a1, 258048
	flw f11, 0(t1)
	fmv.w.x f12, a1
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s1, a0, label105
	li a1, 1
	bgt s0, a1, label128
	j label729
.p2align 2
label108:
	sh2add a1, a3, a2
	li a0, 1
	flw f11, 0(a1)
.p2align 2
label109:
	slliw t1, a0, 5
	addiw a0, a0, 8
	add a1, s2, t1
	lui t1, 258048
	flw f12, 0(a1)
	fmv.w.x f10, t1
	fmul.s f13, f12, f10
	flw f12, 32(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 64(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 96(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 128(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 160(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 192(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 224(a1)
	fmul.s f10, f12, f10
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	bgt a4, a0, label109
	fmv.s f10, f11
	j label105
.p2align 2
label128:
	li a0, 9
	bgt s0, a0, label132
	j label553
.p2align 2
label129:
	sh2add t1, a0, s2
	lui a1, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a1
	flw f11, 0(t1)
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s0, a0, label129
	li t1, 1
	bgt s1, t1, label116
	j label735
.p2align 2
label132:
	sh2add a1, a3, a2
	li a0, 1
	flw f11, 0(a1)
.p2align 2
label133:
	sh2add a1, a0, s2
	lui t1, 258048
	addiw a0, a0, 8
	fmv.w.x f10, t1
	flw f12, 0(a1)
	fmul.s f13, f12, f10
	flw f12, 4(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 8(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 12(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 16(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 20(a1)
	flw f0, 24(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	fmul.s f12, f0, f10
	fadd.s f11, f11, f13
	flw f13, 28(a1)
	fmul.s f10, f13, f10
	fadd.s f11, f11, f12
	fadd.s f11, f11, f10
	bgt a5, a0, label133
	fmv.s f10, f11
	sh2add t1, a0, s2
	lui a1, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a1
	flw f11, 0(t1)
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s0, a0, label129
	li t1, 1
	bgt s1, t1, label116
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a0)
	bgt s0, a3, label102
label730:
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t0, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t0, label329
	j label328
.p2align 2
label117:
	addiw t1, t1, 1
	bgt s1, t1, label116
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a0)
	bgt s0, a3, label102
	j label730
.p2align 2
label104:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	li a0, 1
	j label105
.p2align 2
label73:
	addiw a3, a3, 1
	bgt s0, a3, label70
label720:
	addiw a5, a5, 1
	slliw a0, a5, 5
	fcvt.s.w f15, a5
	add a2, s2, a0
	bgt s1, a5, label178
	j label177
label60:
	addiw s4, s4, 1
	bgt s1, s4, label59
	j label64
label69:
	addiw a5, a5, 1
	slliw a0, a5, 5
	fcvt.s.w f15, a5
	add a2, s2, a0
	bgt s1, a5, label178
	j label177
label101:
	addiw t0, t0, 1
	fcvt.s.w f10, t0
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t0, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t0, label329
	j label328
.p2align 2
label366:
	li a1, 1
	bgt s0, a1, label128
	li t1, 1
	bgt s1, t1, label116
	j label115
.p2align 2
label729:
	li t1, 1
	bgt s1, t1, label116
label115:
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a0)
	bgt s0, a3, label102
	j label730
.p2align 2
label735:
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a0)
	bgt s0, a3, label102
	j label730
.p2align 2
label553:
	sh2add a1, a3, a2
	li a0, 1
	flw f10, 0(a1)
	j label129
