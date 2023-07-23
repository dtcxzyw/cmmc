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
	addi sp, sp, -72
	sd s1, 64(sp)
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s3, 40(sp)
	sd s2, 32(sp)
	fsw f18, 28(sp)
	fsw f9, 24(sp)
	fsw f19, 20(sp)
	fsw f8, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, zero
	mv s0, a0
pcrel796:
	auipc a0, %pcrel_hi(test_block)
	addi s3, a0, %pcrel_lo(pcrel796)
	bgt s1, zero, label139
label58:
	fcvt.s.w f18, s1
pcrel797:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fcvt.s.w f19, s0
	mv a4, zero
	addi a0, a1, %pcrel_lo(pcrel797)
	flw f10, 4(a0)
pcrel798:
	auipc a0, %pcrel_hi(test_dct)
	fdiv.s f8, f10, f19
	addi s2, a0, %pcrel_lo(pcrel798)
	fdiv.s f9, f10, f18
	mv a0, zero
	fcvt.s.w f15, zero
	mv a2, s2
	bgt s1, zero, label169
	mv s3, zero
	ble s1, zero, label64
label116:
	slliw a1, s3, 5
	add s4, s2, a1
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	ble s0, a0, label119
	li s5, 1
	j label117
label139:
	bgt s0, zero, label140
	addiw s2, s2, 1
	bgt s1, s2, label139
	j label58
label141:
	jal getfloat
	sh2add a0, s5, s4
	addiw s5, s5, 1
	fsw f10, 0(a0)
	bgt s0, s5, label141
	addiw s2, s2, 1
	bgt s1, s2, label139
	j label58
label169:
	mv a3, zero
	bgt s0, zero, label123
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label169
	mv s3, zero
	bgt s1, zero, label116
label64:
	li a0, 10
	jal putch
	mv a4, zero
pcrel799:
	auipc a1, %pcrel_hi(test_idct)
	addi s3, a1, %pcrel_lo(pcrel799)
	fcvt.s.w f10, zero
	lui a0, 258048
	fmv.w.x f11, a0
	mv a0, zero
	fadd.s f10, f10, f11
	mv a2, s3
	fmul.s f15, f9, f10
	bgt s1, zero, label188
	mv s2, zero
	j label115
label126:
	bgt s0, zero, label127
	addiw a5, a5, 1
	bgt s1, a5, label126
	addiw a3, a3, 1
	bgt s0, a3, label123
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label169
	mv s3, zero
	bgt s1, zero, label116
	j label64
label131:
	fcvt.s.w f10, t1
	lui a0, 258048
pcrel800:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel800)
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
	bne a0, zero, label134
pcrel801:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel801)
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
label741:
	fmv.s f10, f11
	j label647
label134:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label134)
	flw f11, 12(a0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel802:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel802)
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
	beq a0, zero, label741
label647:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s0, t1, label131
	addiw a5, a5, 1
	bgt s1, a5, label126
	addiw a3, a3, 1
	bgt s0, a3, label123
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label169
	mv s3, zero
	bgt s1, zero, label116
	j label64
label127:
	fcvt.s.w f10, a5
	lui a0, 258048
pcrel803:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f11, a0
	addi a0, a1, %pcrel_lo(pcrel803)
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
	bne a0, zero, label128
pcrel804:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel804)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label641
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label643
label740:
	fmv.s f10, f11
	j label643
label128:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label128)
	flw f11, 12(a0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel805:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel805)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label641
	fmv.s f11, f10
label641:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	beq a0, zero, label740
label643:
	jal my_sin_impl
	mv t1, zero
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label131
label123:
	sh2add a0, a3, a2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, a3
	fsw f10, 0(a0)
	bgt s1, zero, label126
	addiw a3, a3, 1
	bgt s0, a3, label123
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label169
	mv s3, zero
	j label64
label117:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	bgt s0, s5, label117
label119:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bgt s1, s3, label116
	j label64
label188:
	mv a3, zero
	bgt s0, zero, label70
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a4, label188
	mv s2, zero
	ble s1, zero, label115
label111:
	slliw a0, s2, 5
	add s4, s3, a0
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	ble s0, a0, label112
	li s5, 1
	j label113
label70:
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
	bgt s1, a0, label98
	bgt s0, a0, label72
	li a5, 1
	bgt s1, a5, label85
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	bgt s0, a3, label70
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a4, label188
	mv s2, zero
	bgt s1, zero, label111
	j label115
label98:
	li a0, 5
	bgt s1, a0, label379
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
	bgt s1, a0, label100
	sh2add a1, a3, a2
	fsw f10, 0(a1)
	li a0, 1
	bgt s0, a0, label72
	li a5, 1
	bgt s1, a5, label85
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	bgt s0, a3, label70
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a4, label188
	mv s2, zero
	bgt s1, zero, label111
	j label115
label379:
	sh2add a0, a3, a2
	li a5, 1
	flw f11, 0(a0)
	li a0, 5
	j label105
label100:
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bgt s1, a0, label100
	sh2add a1, a3, a2
	fsw f10, 0(a1)
	li a0, 1
	bgt s0, a0, label72
	li a5, 1
	bgt s1, a5, label85
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	bgt s0, a3, label70
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a4, label188
	mv s2, zero
	bgt s1, zero, label111
	j label115
label105:
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
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	fadd.s f10, f11, f12
	bgt s1, a1, label423
	slliw a5, a0, 5
	addiw a0, a0, 1
	add a1, s2, a5
	lui a5, 258048
	flw f11, 0(a1)
	fmv.w.x f12, a5
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bgt s1, a0, label100
	sh2add a1, a3, a2
	fsw f10, 0(a1)
	li a0, 1
	bgt s0, a0, label72
	li a5, 1
	bgt s1, a5, label85
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	bgt s0, a3, label70
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a4, label188
	mv s2, zero
	bgt s1, zero, label111
	j label115
label423:
	fmv.s f11, f10
	mv a5, a0
	mv a0, a1
	j label105
label85:
	li a0, 1
	bgt s0, a0, label86
	addiw a5, a5, 1
	bgt s1, a5, label85
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	bgt s0, a3, label70
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a4, label188
	mv s2, zero
	bgt s1, zero, label111
	j label115
label89:
	fcvt.s.w f11, t1
pcrel806:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel806)
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
	bne a0, zero, label92
pcrel807:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel807)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label637
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label639
label726:
	fmv.s f10, f11
	j label639
label92:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(label92)
	flw f11, 12(a1)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel808:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel808)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label637
	fmv.s f11, f10
label637:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	beq a0, zero, label726
label639:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s0, t1, label89
	addiw a5, a5, 1
	bgt s1, a5, label85
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	bgt s0, a3, label70
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a4, label188
	mv s2, zero
	bgt s1, zero, label111
	j label115
label72:
	li a0, 5
	bgt s0, a0, label213
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
	bgt s0, a0, label74
	sh2add a1, a3, a2
	li a5, 1
	fsw f10, 0(a1)
	bgt s1, a5, label85
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	bgt s0, a3, label70
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a4, label188
	mv s2, zero
	bgt s1, zero, label111
	j label115
label213:
	sh2add a0, a3, a2
	li a5, 1
	flw f11, 0(a0)
	li a0, 5
	j label79
label74:
	sh2add a1, a0, s2
	lui a5, 258048
	addiw a0, a0, 1
	fmv.w.x f12, a5
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bgt s0, a0, label74
	sh2add a1, a3, a2
	li a5, 1
	fsw f10, 0(a1)
	bgt s1, a5, label85
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	bgt s0, a3, label70
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a4, label188
	mv s2, zero
	bgt s1, zero, label111
	j label115
label79:
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
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	fadd.s f10, f11, f13
	bgt s0, a1, label257
	sh2add a1, a0, s2
	addiw a0, a0, 1
	fmv.w.x f12, a5
	flw f11, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bgt s0, a0, label74
	sh2add a1, a3, a2
	li a5, 1
	fsw f10, 0(a1)
	bgt s1, a5, label85
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f10, 0(a0)
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a0)
	bgt s0, a3, label70
	addiw a4, a4, 1
	fcvt.s.w f10, a4
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, a4, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, a4, label188
	mv s2, zero
	bgt s1, zero, label111
	j label115
label257:
	fmv.s f11, f10
	mv a5, a0
	mv a0, a1
	j label79
label86:
	fcvt.s.w f11, a5
pcrel809:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel809)
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
	bne a0, zero, label95
pcrel810:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel810)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label633
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label635
label725:
	fmv.s f10, f11
	j label635
label95:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(label95)
	flw f11, 12(a1)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel811:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel811)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label633
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label635
	j label725
label633:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	beq a0, zero, label725
label635:
	jal my_sin_impl
	li t1, 1
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label89
label112:
	li a0, 10
	jal putch
	addiw s2, s2, 1
	bgt s1, s2, label111
	j label115
label113:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	bgt s0, s5, label113
	j label112
label140:
	slli a0, s2, 5
	mv s5, zero
	add s4, s3, a0
	j label141
label115:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	flw f8, 16(sp)
	flw f19, 20(sp)
	flw f9, 24(sp)
	flw f18, 28(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s1, 64(sp)
	addi sp, sp, 72
	ret
