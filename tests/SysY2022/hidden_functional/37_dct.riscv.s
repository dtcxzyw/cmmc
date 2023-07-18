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
pcrel766:
	auipc a0, %pcrel_hi(test_block)
	addi s3, a0, %pcrel_lo(pcrel766)
	ble s1, zero, label63
	ble s0, zero, label145
	j label675
label63:
	fcvt.s.w f18, s1
pcrel767:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fcvt.s.w f19, s0
	mv a4, zero
	addi a1, a0, %pcrel_lo(pcrel767)
pcrel768:
	auipc a0, %pcrel_hi(test_dct)
	flw f10, 4(a1)
	addi s2, a0, %pcrel_lo(pcrel768)
	fdiv.s f8, f10, f19
	fdiv.s f9, f10, f18
	mv a0, zero
	fcvt.s.w f15, zero
	mv a2, s2
	ble s1, zero, label66
	mv a3, zero
	ble s0, zero, label143
	mv a0, s2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, zero
	fsw f10, 0(s2)
	j label131
label66:
	mv s3, zero
	ble s1, zero, label73
	j label69
label131:
	fcvt.s.w f10, a5
	lui a0, 258048
pcrel769:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f11, a0
	addi a0, a1, %pcrel_lo(pcrel769)
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
	slliw a1, a5, 5
	add t0, s3, a1
	beq a0, zero, label133
pcrel770:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel770)
	flw f11, 12(a0)
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
	bne a1, zero, label657
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label659
label747:
	fmv.s f10, f11
	j label659
label133:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label133)
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
	j label747
label659:
	jal my_sin_impl
	mv t1, zero
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label135
label143:
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	ble s1, a4, label66
	mv a3, zero
	ble s0, zero, label143
	mv a0, a2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, zero
	fsw f10, 0(a2)
	ble s1, zero, label142
	j label131
label135:
	fcvt.s.w f10, t1
	lui a0, 258048
pcrel772:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel772)
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
	beq a0, zero, label139
pcrel773:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel773)
	flw f11, 12(a0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel774:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel774)
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
label748:
	fmv.s f10, f11
	j label663
label661:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label663
	j label748
label663:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	ble s0, t1, label141
	j label135
label139:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label139)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label661
	fmv.s f11, f10
	j label661
label142:
	addiw a3, a3, 1
	ble s0, a3, label143
	sh2add a0, a3, a2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, a3
	fsw f10, 0(a0)
	ble s1, zero, label142
	ble s0, zero, label141
	j label131
label141:
	addiw a5, a5, 1
	ble s1, a5, label142
	ble s0, zero, label141
	j label131
label73:
	li a0, 10
	jal putch
	mv a4, zero
pcrel775:
	auipc a1, %pcrel_hi(test_idct)
	addi s3, a1, %pcrel_lo(pcrel775)
	fcvt.s.w f10, zero
	lui a0, 258048
	fmv.w.x f11, a0
	mv a0, zero
	fadd.s f10, f10, f11
	mv a2, s3
	fmul.s f15, f9, f10
	ble s1, zero, label208
	mv a3, zero
	ble s0, zero, label117
	j label78
label208:
	mv s2, zero
	ble s1, zero, label124
	j label120
label78:
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
	ble s1, a0, label90
	li a0, 5
	ble s1, a0, label80
	j label680
label80:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	li a0, 1
	j label81
label90:
	li a1, 1
	ble s0, a1, label277
	li a0, 5
	ble s0, a0, label92
	j label703
label277:
	li a5, 1
	ble s1, a5, label116
	li a0, 1
	ble s0, a0, label115
label105:
	fcvt.s.w f11, a5
pcrel776:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel776)
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
	beq a0, zero, label107
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
	j label743
label116:
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	ble s0, a3, label117
	j label78
label115:
	addiw a5, a5, 1
	ble s1, a5, label116
	li a0, 1
	ble s0, a0, label115
	j label105
label703:
	sh2add a1, a3, a2
	li a0, 5
	li a5, 1
	flw f11, 0(a1)
	j label94
label92:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	li a0, 1
	sh2add a5, a0, s2
	lui a1, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label101
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label101
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label101
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label101
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label101
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label101
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label101
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label101
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label101
	sh2add a5, a0, s2
	addiw a0, a0, 1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label101
label98:
	sh2add a5, a0, s2
	lui a1, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a1
	flw f11, 0(a5)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s0, a0, label101
	j label98
label101:
	sh2add a0, a3, a2
	li a5, 1
	fsw f10, 0(a0)
	ble s1, a5, label116
	li a0, 1
	ble s0, a0, label115
	j label105
label743:
	fmv.s f10, f11
	j label651
label107:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label107)
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
	j label743
label651:
	jal my_sin_impl
	li t1, 1
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
label109:
	fcvt.s.w f11, t1
pcrel779:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel779)
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
	beq a0, zero, label113
pcrel780:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel780)
	flw f11, 12(a1)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel781:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel781)
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
label744:
	fmv.s f10, f11
	j label655
label653:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label655
	j label744
label655:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	ble s0, t1, label115
	j label109
label113:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label113)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label653
	fmv.s f11, f10
	j label653
label94:
	sh2add a1, a5, s2
	lui a5, 258048
	flw f12, 0(a1)
	fmv.w.x f10, a5
	flw f13, 4(a1)
	fmul.s f12, f12, f10
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 8(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 12(a1)
	addiw a1, a0, 4
	fmul.s f10, f13, f10
	fadd.s f11, f11, f12
	fadd.s f11, f11, f10
	ble s0, a1, label310
	mv a5, a0
	mv a0, a1
	j label94
label310:
	fmv.s f10, f11
	j label98
label81:
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label84
	j label81
label84:
	sh2add a0, a3, a2
	fsw f10, 0(a0)
	li a1, 1
	ble s0, a1, label277
	li a0, 5
	ble s0, a0, label92
	j label703
label86:
	slliw t0, a5, 5
	lui a5, 258048
	add a1, s2, t0
	fmv.w.x f10, a5
	flw f12, 0(a1)
	fmul.s f13, f12, f10
	flw f12, 32(a1)
	fmul.s f0, f12, f10
	fadd.s f11, f11, f13
	flw f13, 64(a1)
	fmul.s f12, f13, f10
	flw f13, 96(a1)
	fadd.s f11, f11, f0
	addiw a1, a0, 4
	fmul.s f10, f13, f10
	fadd.s f11, f11, f12
	fadd.s f11, f11, f10
	ble s1, a1, label273
	mv a5, a0
	mv a0, a1
	j label86
label273:
	fmv.s f10, f11
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label84
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label84
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label84
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label84
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label84
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label84
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label84
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label84
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label84
	slliw a1, a0, 5
	addiw a0, a0, 1
	add a5, s2, a1
	lui a1, 258048
	flw f11, 0(a5)
	fmv.w.x f12, a1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	ble s1, a0, label84
	j label81
label117:
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	ble s1, a4, label208
	mv a3, zero
	ble s0, zero, label117
	j label78
label120:
	slliw a0, s2, 5
	add s4, s3, a0
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	ble s0, a0, label121
	li s5, 1
label122:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	ble s0, s5, label121
	j label122
label680:
	sh2add a0, a3, a2
	li a5, 1
	flw f11, 0(a0)
	li a0, 5
	j label86
label145:
	addiw s4, s4, 1
	ble s1, s4, label63
	ble s0, zero, label145
	j label675
label69:
	slliw a0, s3, 5
	add s4, s2, a0
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	ble s0, a0, label72
	li s5, 1
	j label70
label72:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	ble s1, s3, label73
	j label69
label70:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	ble s0, s5, label72
	j label70
label121:
	li a0, 10
	jal putch
	addiw s2, s2, 1
	ble s1, s2, label124
	j label120
label675:
	slli a0, s4, 5
	mv s5, zero
	add s2, s3, a0
label147:
	jal getfloat
	sh2add a0, s5, s2
	addiw s5, s5, 1
	fsw f10, 0(a0)
	ble s0, s5, label145
	j label147
label124:
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
