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
	sd s2, 24(sp)
	fsw f18, 20(sp)
	fsw f9, 16(sp)
	fsw f19, 12(sp)
	fsw f8, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s4, zero
	mv s0, a0
pcrel761:
	auipc a0, %pcrel_hi(test_block)
	addi s3, a0, %pcrel_lo(pcrel761)
	ble s1, zero, label68
	ble s0, zero, label67
	j label671
label68:
	fcvt.s.w f18, s1
pcrel762:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fcvt.s.w f19, s0
	mv a4, zero
	addi a1, a0, %pcrel_lo(pcrel762)
pcrel763:
	auipc a0, %pcrel_hi(test_dct)
	flw f10, 4(a1)
	addi s2, a0, %pcrel_lo(pcrel763)
	fdiv.s f8, f10, f19
	fdiv.s f9, f10, f18
	mv a0, zero
	fcvt.s.w f15, zero
	mv a2, s2
	ble s1, zero, label71
	mv a3, zero
	ble s0, zero, label147
	mv a0, s2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, zero
	fsw f10, 0(s2)
	j label135
label71:
	mv s3, zero
	ble s1, zero, label78
label74:
	slliw a0, s3, 5
	add s4, s2, a0
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	ble s0, a0, label77
	li s5, 1
label75:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	ble s0, s5, label77
	j label75
label135:
	fcvt.s.w f10, a5
	lui a0, 258048
pcrel764:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel764)
	fadd.s f12, f10, f13
	fmul.s f11, f9, f12
	flw f12, 8(a0)
	fmul.s f10, f11, f15
	flw f11, 12(a0)
	fadd.s f10, f10, f12
	flw f12, 16(a0)
	flt.s a1, f11, f10
	flt.s t0, f10, f12
	or a0, a1, t0
	slliw a1, a5, 5
	add t0, s3, a1
	beq a0, zero, label137
pcrel765:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel765)
	flw f11, 12(a1)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel766:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel766)
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
	j label736
label146:
	addiw a3, a3, 1
	ble s0, a3, label147
	sh2add a0, a3, a2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, a3
	fsw f10, 0(a0)
	ble s1, zero, label146
	j label135
label736:
	fmv.s f10, f11
	j label655
label137:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label137)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label653
	fmv.s f11, f10
label653:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label655
	j label736
label655:
	jal my_sin_impl
	mv t1, zero
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
label139:
	fcvt.s.w f10, t1
	lui a0, 258048
pcrel767:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel767)
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
	beq a0, zero, label143
pcrel768:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel768)
	flw f11, 12(a0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel769:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel769)
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
label737:
	fmv.s f10, f11
	j label659
label143:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label143)
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
	j label737
label659:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	ble s0, t1, label145
	j label139
label145:
	addiw a5, a5, 1
	ble s1, a5, label146
	j label135
label147:
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	ble s1, a4, label71
	mv a3, zero
	ble s0, zero, label147
	mv a0, a2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, zero
	fsw f10, 0(a2)
	ble s1, zero, label146
	j label135
label78:
	li a0, 10
	jal putch
	mv a4, zero
pcrel770:
	auipc a1, %pcrel_hi(test_idct)
	addi s3, a1, %pcrel_lo(pcrel770)
	fcvt.s.w f10, zero
	lui a0, 258048
	fmv.w.x f11, a0
	mv a0, zero
	fadd.s f10, f10, f11
	mv a2, s3
	fmul.s f15, f9, f10
	ble s1, zero, label221
	mv a3, zero
	ble s0, zero, label83
	j label84
label221:
	mv s2, zero
	ble s1, zero, label129
label125:
	slliw a0, s2, 5
	add s4, s3, a0
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	ble s0, a0, label128
	li s5, 1
	j label126
label129:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	flw f8, 8(sp)
	flw f19, 12(sp)
	flw f9, 16(sp)
	flw f18, 20(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s1, 64(sp)
	addi sp, sp, 72
	ret
label83:
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	ble s1, a4, label221
	mv a3, zero
	ble s0, zero, label83
label84:
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
	ble s1, a0, label85
	li a0, 5
	ble s1, a0, label113
	j label678
label85:
	li a0, 1
	ble s0, a0, label243
	li a0, 5
	ble s0, a0, label96
	j label679
label243:
	li a5, 1
	ble s1, a5, label111
	li a0, 1
	ble s0, a0, label100
	j label101
label111:
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a0)
	ble s0, a3, label83
	j label84
label100:
	addiw a5, a5, 1
	ble s1, a5, label111
	li a0, 1
	ble s0, a0, label100
label101:
	fcvt.s.w f11, a5
pcrel771:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel771)
	fmul.s f10, f15, f11
	flw f12, 8(a0)
	flw f11, 12(a0)
	fadd.s f10, f10, f12
	flw f12, 16(a0)
	flt.s a1, f11, f10
	flt.s t0, f10, f12
	or a0, a1, t0
	slliw a1, a5, 5
	add t0, s2, a1
	beq a0, zero, label103
pcrel772:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel772)
	flw f11, 12(a1)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel773:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel773)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label645
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label647
	j label732
label103:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label103)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label645
	fmv.s f11, f10
label645:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label647
	j label732
label647:
	jal my_sin_impl
	li t1, 1
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
label105:
	fcvt.s.w f11, t1
pcrel774:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel774)
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
	beq a0, zero, label109
pcrel775:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel775)
	flw f11, 12(a1)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel776:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel776)
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
label733:
	fmv.s f10, f11
	j label651
label109:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label109)
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
	j label733
label651:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	ble s0, t1, label100
	j label105
label732:
	fmv.s f10, f11
	j label647
label678:
	sh2add a1, a3, a2
	li a0, 5
	li a5, 1
	flw f11, 0(a1)
	j label115
label96:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	li a0, 1
	sh2add a1, a0, s2
	lui a5, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a5
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label95
	sh2add a1, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label95
	sh2add a1, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label95
	sh2add a1, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label95
	sh2add a1, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label95
	sh2add a1, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label95
	sh2add a1, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label95
	sh2add a1, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label95
	sh2add a1, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label95
	sh2add a1, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label95
	j label92
label113:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	li a0, 1
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label122
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label122
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label122
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label122
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label122
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label122
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label122
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label122
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label122
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label122
	j label119
label122:
	sh2add a0, a3, a2
	fsw f10, 0(a0)
	li a0, 1
	ble s0, a0, label243
	li a0, 5
	ble s0, a0, label96
	j label679
label95:
	sh2add a0, a3, a2
	li a5, 1
	fsw f10, 0(a0)
	ble s1, a5, label111
	li a0, 1
	ble s0, a0, label100
	j label101
label115:
	slliw t0, a5, 5
	lui a5, 258048
	add a1, s2, t0
	fmv.w.x f10, a5
	flw f12, 0(a1)
	flw f0, 32(a1)
	fmul.s f12, f12, f10
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 64(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 96(a1)
	addiw a1, a0, 4
	fmul.s f10, f12, f10
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	ble s1, a1, label442
	mv a5, a0
	mv a0, a1
	j label115
label442:
	fmv.s f10, f11
label119:
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label122
	j label119
label88:
	sh2add a1, a5, s2
	lui a5, 258048
	flw f12, 0(a1)
	fmv.w.x f10, a5
	flw f0, 4(a1)
	fmul.s f12, f12, f10
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 8(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 12(a1)
	addiw a1, a0, 4
	fmul.s f10, f12, f10
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	ble s0, a1, label273
	mv a5, a0
	mv a0, a1
	j label88
label273:
	fmv.s f10, f11
label92:
	sh2add a1, a0, s2
	lui a5, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a5
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label95
	j label92
label126:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	ble s0, s5, label128
	j label126
label679:
	sh2add a0, a3, a2
	li a5, 1
	flw f11, 0(a0)
	li a0, 5
	j label88
label77:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	ble s1, s3, label78
	j label74
label128:
	li a0, 10
	jal putch
	addiw s2, s2, 1
	ble s1, s2, label129
	j label125
label67:
	addiw s4, s4, 1
	ble s1, s4, label68
	ble s0, zero, label67
label671:
	slli a0, s4, 5
	mv s5, zero
	add s2, s3, a0
label65:
	jal getfloat
	sh2add a0, s5, s2
	addiw s5, s5, 1
	fsw f10, 0(a0)
	ble s0, s5, label67
	j label65
