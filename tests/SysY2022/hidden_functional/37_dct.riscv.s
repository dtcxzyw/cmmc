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
	addi sp, sp, -16
	fabs.s f11, f10
pcrel58:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fsw f8, 8(sp)
	addi a0, a1, %pcrel_lo(pcrel58)
	sd ra, 0(sp)
	flw f12, 0(a0)
	fle.s a1, f11, f12
	beq a1, zero, label4
	j label2
label56:
	lui a0, 264192
	fmv.w.x f11, a0
	lui a0, 263168
	fmul.s f13, f10, f11
	fmul.s f12, f13, f10
	fmv.w.x f13, a0
	fmul.s f11, f12, f10
	fmul.s f12, f10, f13
	fsub.s f10, f12, f11
label2:
	ld ra, 0(sp)
	flw f8, 8(sp)
	addi sp, sp, 16
	ret
label4:
	lui a0, 263168
	fmv.w.x f12, a0
pcrel59:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fdiv.s f10, f10, f12
	addi a1, a0, %pcrel_lo(pcrel59)
	flw f12, 0(a1)
	fabs.s f11, f10
	fle.s a0, f11, f12
	beq a0, zero, label7
	j label56
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
	addi sp, sp, -72
	sd s1, 64(sp)
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s3, 40(sp)
	sd s4, 32(sp)
	fsw f18, 28(sp)
	fsw f9, 24(sp)
	fsw f19, 20(sp)
	fsw f8, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s4, zero
	mv s0, a0
pcrel763:
	auipc a0, %pcrel_hi(test_block)
	addi s3, a0, %pcrel_lo(pcrel763)
	ble s1, zero, label63
	ble s0, zero, label148
	j label675
label63:
	fcvt.s.w f18, s1
pcrel764:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fcvt.s.w f19, s0
	mv a4, zero
	addi a0, a1, %pcrel_lo(pcrel764)
	flw f10, 4(a0)
pcrel765:
	auipc a0, %pcrel_hi(test_dct)
	fdiv.s f8, f10, f19
	addi s2, a0, %pcrel_lo(pcrel765)
	fdiv.s f9, f10, f18
	mv a0, zero
	fcvt.s.w f15, zero
	mv a2, s2
	ble s1, zero, label66
	mv a3, zero
	ble s0, zero, label127
	mv a0, s2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, zero
	fsw f10, 0(s2)
	j label132
label66:
	mv s3, zero
	ble s1, zero, label69
label121:
	slliw a1, s3, 5
	add s4, s2, a1
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	ble s0, a0, label124
	li s5, 1
	j label122
label132:
	fcvt.s.w f10, a5
	lui a0, 258048
pcrel766:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f11, a0
	addi a0, a1, %pcrel_lo(pcrel766)
	fadd.s f12, f10, f11
	flw f11, 8(a0)
	fmul.s f13, f9, f12
	flw f12, 12(a0)
	fmul.s f10, f13, f15
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s t0, f10, f11
	or a0, a1, t0
	slliw a1, a5, 5
	add t0, s3, a1
	beq a0, zero, label134
pcrel767:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel767)
	flw f11, 12(a0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel768:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel768)
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
	j label745
label143:
	addiw a3, a3, 1
	ble s0, a3, label127
	sh2add a0, a3, a2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, a3
	fsw f10, 0(a0)
	ble s1, zero, label143
	ble s0, zero, label142
	j label132
label142:
	addiw a5, a5, 1
	ble s1, a5, label143
	ble s0, zero, label142
	j label132
label127:
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	ble s1, a4, label66
	mv a3, zero
	ble s0, zero, label127
	mv a0, a2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, zero
	fsw f10, 0(a2)
	ble s1, zero, label143
	j label132
label134:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label134)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label657
	fmv.s f11, f10
label657:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label659
	j label745
label659:
	jal my_sin_impl
	mv t1, zero
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
label136:
	fcvt.s.w f10, t1
	lui a0, 258048
pcrel769:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel769)
	fadd.s f11, f10, f13
	fmul.s f12, f8, f11
	flw f11, 8(a0)
	fmul.s f10, f12, f14
	flw f12, 12(a0)
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s t2, f10, f11
	or a0, a1, t2
	sh2add a1, t1, t0
	flw f11, 0(a1)
	fmul.s f2, f11, f0
	beq a0, zero, label140
pcrel770:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel770)
	flw f11, 12(a1)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel771:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel771)
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
label746:
	fmv.s f10, f11
	j label663
label140:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label140)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label661
	fmv.s f11, f10
label661:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label663
	j label746
label663:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	ble s0, t1, label142
	j label136
label745:
	fmv.s f10, f11
	j label659
label122:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	ble s0, s5, label124
	j label122
label69:
	li a0, 10
	jal putch
	mv a4, zero
pcrel772:
	auipc a1, %pcrel_hi(test_idct)
	addi s3, a1, %pcrel_lo(pcrel772)
	fcvt.s.w f10, zero
	lui a0, 258048
	fmv.w.x f11, a0
	mv a0, zero
	fadd.s f10, f10, f11
	mv a2, s3
	fmul.s f15, f9, f10
	ble s1, zero, label193
	mv a3, zero
	ble s0, zero, label74
	j label75
label193:
	mv s2, zero
	ble s1, zero, label120
label116:
	slliw a0, s2, 5
	add s4, s3, a0
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	ble s0, a0, label117
	li s5, 1
	j label118
label120:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	flw f8, 16(sp)
	flw f19, 20(sp)
	flw f9, 24(sp)
	flw f18, 28(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s1, 64(sp)
	addi sp, sp, 72
	ret
label75:
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
	ble s1, a0, label76
	li a0, 5
	ble s1, a0, label104
	sh2add a0, a3, a2
	li a5, 1
	flw f11, 0(a0)
	li a0, 5
	j label110
label102:
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	ble s0, a3, label74
	j label75
label94:
	fcvt.s.w f11, t1
pcrel773:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel773)
	fmul.s f10, f14, f11
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
	beq a0, zero, label98
pcrel774:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel774)
	flw f11, 12(a0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel775:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel775)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label653
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label655
label741:
	fmv.s f10, f11
	j label655
label653:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label655
	j label741
label655:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	ble s0, t1, label101
	j label94
label101:
	addiw a5, a5, 1
	ble s1, a5, label102
	li a0, 1
	ble s0, a0, label101
	j label91
label98:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label98)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label653
	fmv.s f11, f10
	j label653
label76:
	li a0, 1
	ble s0, a0, label215
	li a0, 5
	ble s0, a0, label78
	j label681
label215:
	li a5, 1
	ble s1, a5, label102
	li a0, 1
	ble s0, a0, label101
label91:
	fcvt.s.w f11, a5
pcrel776:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel776)
	fmul.s f10, f15, f11
	flw f11, 8(a0)
	flw f12, 12(a0)
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s t0, f10, f11
	or a0, a1, t0
	slliw a1, a5, 5
	add t0, s2, a1
	beq a0, zero, label92
pcrel777:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel777)
	flw f11, 12(a1)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel778:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel778)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label649
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label651
	j label740
label92:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label92)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label649
	fmv.s f11, f10
label649:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label651
label740:
	fmv.s f10, f11
label651:
	jal my_sin_impl
	li t1, 1
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label94
label78:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	li a0, 1
	j label79
label105:
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label108
	j label105
label108:
	sh2add a0, a3, a2
	fsw f10, 0(a0)
	li a0, 1
	ble s0, a0, label215
	li a0, 5
	ble s0, a0, label78
	j label681
label110:
	slliw t0, a5, 5
	lui a5, 258048
	add a1, s2, t0
	fmv.w.x f10, a5
	flw f12, 0(a1)
	flw f13, 32(a1)
	fmul.s f12, f12, f10
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 64(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 96(a1)
	addiw a1, a0, 4
	fmul.s f10, f13, f10
	fadd.s f11, f11, f12
	fadd.s f11, f11, f10
	ble s1, a1, label428
	mv a5, a0
	mv a0, a1
	j label110
label428:
	fmv.s f10, f11
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label108
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label108
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label108
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label108
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label108
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label108
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label108
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label108
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label108
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label108
	j label105
label79:
	sh2add a5, a0, s2
	lui a1, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label82
	j label79
label82:
	sh2add a0, a3, a2
	li a5, 1
	fsw f10, 0(a0)
	ble s1, a5, label102
	li a0, 1
	ble s0, a0, label101
	j label91
label84:
	sh2add a1, a5, s2
	lui a5, 258048
	flw f12, 0(a1)
	fmv.w.x f10, a5
	fmul.s f13, f12, f10
	flw f12, 4(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 8(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 12(a1)
	addiw a1, a0, 4
	fmul.s f10, f12, f10
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	ble s0, a1, label262
	mv a5, a0
	mv a0, a1
	j label84
label262:
	fmv.s f10, f11
	sh2add a5, a0, s2
	lui a1, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label82
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label82
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label82
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label82
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label82
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label82
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label82
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label82
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label82
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label82
	j label79
label74:
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	ble s1, a4, label193
	mv a3, zero
	ble s0, zero, label74
	j label75
label118:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	ble s0, s5, label117
	j label118
label681:
	sh2add a0, a3, a2
	li a5, 1
	flw f11, 0(a0)
	li a0, 5
	j label84
label104:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	li a0, 1
	j label105
label148:
	addiw s4, s4, 1
	ble s1, s4, label63
	ble s0, zero, label148
	j label675
label124:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	ble s1, s3, label69
	j label121
label117:
	li a0, 10
	jal putch
	addiw s2, s2, 1
	ble s1, s2, label120
	j label116
label675:
	slli a0, s4, 5
	mv s5, zero
	add s2, s3, a0
label146:
	jal getfloat
	sh2add a0, s5, s2
	addiw s5, s5, 1
	fsw f10, 0(a0)
	ble s0, s5, label148
	j label146
