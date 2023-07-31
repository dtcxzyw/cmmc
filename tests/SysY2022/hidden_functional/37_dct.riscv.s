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
	sd s2, 40(sp)
	sd s4, 48(sp)
	fsw f18, 56(sp)
	fsw f9, 60(sp)
	fsw f19, 64(sp)
	fsw f8, 68(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, zero
	mv s0, a0
pcrel943:
	auipc a0, %pcrel_hi(test_block)
	addi s3, a0, %pcrel_lo(pcrel943)
	ble s1, zero, label64
.p2align 2
label59:
	ble s0, zero, label156
	slli a0, s2, 5
	mv s5, zero
	add s4, s3, a0
.p2align 2
label61:
	jal getfloat
	sh2add a0, s5, s4
	addiw s5, s5, 1
	fsw f10, 0(a0)
	bgt s0, s5, label61
	addiw s2, s2, 1
	bgt s1, s2, label59
label64:
	fcvt.s.w f18, s1
pcrel944:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fcvt.s.w f19, s0
	mv a4, zero
	addi a1, a0, %pcrel_lo(pcrel944)
pcrel945:
	auipc a0, %pcrel_hi(test_dct)
	flw f10, 4(a1)
	addi s2, a0, %pcrel_lo(pcrel945)
	fdiv.s f8, f10, f19
	fdiv.s f9, f10, f18
	mv a0, zero
	fcvt.s.w f15, zero
	mv a2, s2
	bgt s1, zero, label184
	mv s3, zero
	j label74
label184:
	mv a3, zero
	j label128
.p2align 2
label130:
	sh2add a0, a3, a2
	mv a5, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, a3
	fsw f10, 0(a0)
	j label131
.p2align 2
label134:
	bgt s0, zero, label135
	j label644
.p2align 2
label138:
	fcvt.s.w f10, t1
	lui a0, 258048
pcrel946:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel946)
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
	bne a0, zero, label141
	j label713
.p2align 2
label897:
	fmv.s f10, f11
	j label839
.p2align 2
label141:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(label141)
	flw f11, 12(a1)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel947:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel947)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label837
	fmv.s f11, f10
.p2align 2
label837:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label839
	fmv.s f10, f11
.p2align 2
label839:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s0, t1, label138
	addiw a5, a5, 1
	bgt s1, a5, label134
	addiw a3, a3, 1
	bgt s0, a3, label130
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label184
	mv s3, zero
	bgt s1, zero, label70
	j label74
.p2align 2
label713:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label713)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label837
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label839
	j label897
.p2align 2
label131:
	bgt s1, a5, label134
	addiw a3, a3, 1
	bgt s0, a3, label130
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label184
	mv s3, zero
	bgt s1, zero, label70
	j label74
.p2align 2
label135:
	fcvt.s.w f10, a5
	lui a0, 258048
pcrel948:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel948)
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
	bne a0, zero, label144
pcrel949:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel949)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label833
	fmv.s f11, f10
.p2align 2
label833:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label835
.p2align 2
label834:
	fmv.s f10, f11
.p2align 2
label835:
	jal my_sin_impl
	mv t1, zero
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label138
.p2align 2
label144:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(label144)
	flw f11, 12(a1)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
pcrel950:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel950)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label833
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label835
	j label834
.p2align 2
label70:
	slliw a0, s3, 5
	add s4, s2, a0
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	bgt s0, a0, label195
	j label73
.p2align 2
label128:
	bgt s0, a3, label130
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label184
	mv s3, zero
	bgt s1, zero, label70
	j label74
.p2align 2
label73:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bgt s1, s3, label70
label74:
	li a0, 10
	jal putch
	mv t2, zero
	addiw a5, s0, -20
	addiw t1, s0, -4
	addiw a4, s1, -20
pcrel951:
	auipc a0, %pcrel_hi(test_idct)
	addiw t0, s1, -4
	addi s3, a0, %pcrel_lo(pcrel951)
	fcvt.s.w f10, zero
	lui a0, 258048
	fmv.w.x f11, a0
	mv a0, zero
	fadd.s f10, f10, f11
	mv a2, s3
	fmul.s f15, f9, f10
	bgt s1, zero, label226
	mv s2, zero
	j label127
.p2align 2
label96:
	li a0, 1
	bgt s0, a0, label98
	j label97
.p2align 2
label101:
	fcvt.s.w f11, t5
pcrel952:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel952)
	fmul.s f10, f14, f11
	flw f12, 8(a0)
	flw f11, 12(a0)
	fadd.s f10, f10, f12
	flw f12, 16(a0)
	flt.s a1, f11, f10
	flt.s t6, f10, f12
	or a0, a1, t6
	sh2add a1, t5, t4
	flw f11, 0(a1)
	fmul.s f2, f11, f0
	bne a0, zero, label106
pcrel953:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel953)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label829
	fmv.s f11, f10
.p2align 2
label829:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label831
.p2align 2
label830:
	fmv.s f10, f11
.p2align 2
label831:
	jal my_sin_impl
	addiw t5, t5, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s0, t5, label101
	addiw t3, t3, 1
	bgt s1, t3, label96
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s0, a3, label79
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t2, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t2, label226
	mv s2, zero
	ble s1, zero, label127
.p2align 2
label123:
	slliw a0, s2, 5
	add s4, s3, a0
	flw f10, 0(s4)
	jal putfloat
	li a0, 1
	ble s0, a0, label126
	li s5, 1
.p2align 2
label124:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	bgt s0, s5, label124
	j label126
.p2align 2
label106:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(label106)
	flw f11, 12(a1)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel954:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel954)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label829
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label831
	j label830
.p2align 2
label226:
	mv a3, zero
	j label77
.p2align 2
label97:
	addiw t3, t3, 1
	bgt s1, t3, label96
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s0, a3, label79
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t2, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t2, label226
	mv s2, zero
	bgt s1, zero, label123
	j label127
.p2align 2
label79:
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
	bgt s1, a0, label80
	j label243
.p2align 2
label861:
	li t3, 1
	bgt s1, t3, label96
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s0, a3, label79
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t2, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t2, label226
	mv s2, zero
	bgt s1, zero, label123
	j label127
.p2align 2
label98:
	fcvt.s.w f11, t3
pcrel955:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel955)
	fmul.s f10, f15, f11
	flw f11, 8(a0)
	flw f12, 12(a0)
	fadd.s f10, f10, f11
	flw f11, 16(a0)
	flt.s a1, f12, f10
	flt.s t4, f10, f11
	or a0, a1, t4
	slliw a1, t3, 5
	add t4, s2, a1
	beq a0, zero, label99
pcrel956:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel956)
	flw f11, 12(a1)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
pcrel957:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel957)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label825
	fmv.s f11, f10
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label827
	j label826
.p2align 2
label99:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(label99)
	flw f11, 4(a0)
	flw f12, 12(a0)
	flt.s a1, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a1, zero, label825
	fmv.s f11, f10
.p2align 2
label825:
	flw f10, 20(a0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label827
.p2align 2
label826:
	fmv.s f10, f11
.p2align 2
label827:
	jal my_sin_impl
	li t5, 1
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label101
.p2align 2
label80:
	li a0, 5
	ble s1, a0, label81
	sh2add a1, a3, a2
	li a0, 17
	flw f10, 0(a1)
	ble t0, a0, label269
	li a0, 1
	fmv.s f11, f10
.p2align 2
label89:
	slliw t3, a0, 5
	add a1, s2, t3
	flw f12, 0(a1)
	lui t3, 258048
	flw f13, 32(a1)
	fmv.w.x f10, t3
	fmul.s f12, f12, f10
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 64(a1)
	flw f0, 96(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 128(a1)
	fmul.s f0, f12, f10
	fadd.s f11, f11, f13
	flw f13, 160(a1)
	fmul.s f12, f13, f10
	flw f13, 192(a1)
	fadd.s f11, f11, f0
	flw f0, 224(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 256(a1)
	fmul.s f0, f12, f10
	fadd.s f11, f11, f13
	flw f13, 288(a1)
	fmul.s f12, f13, f10
	flw f13, 320(a1)
	fadd.s f11, f11, f0
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 352(a1)
	flw f0, 384(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 416(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 448(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 480(a1)
	addiw a1, a0, 16
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	fadd.s f10, f11, f13
	ble a4, a1, label86
	mv a0, a1
	fmv.s f11, f10
	j label89
.p2align 2
label86:
	slliw t3, a1, 5
	addiw a1, a1, 4
	add a0, s2, t3
	lui t3, 258048
	flw f12, 0(a0)
	fmv.w.x f11, t3
	flw f13, 32(a0)
	fmul.s f12, f12, f11
	flw f0, 64(a0)
	fadd.s f10, f10, f12
	fmul.s f12, f13, f11
	fmul.s f13, f0, f11
	fadd.s f10, f10, f12
	flw f12, 96(a0)
	fmul.s f11, f12, f11
	fadd.s f10, f10, f13
	fadd.s f10, f10, f11
	bgt t0, a1, label86
	j label293
.p2align 2
label82:
	slliw a1, a0, 5
	addiw a0, a0, 1
	add t3, s2, a1
	lui a1, 258048
	flw f11, 0(t3)
	fmv.w.x f12, a1
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s1, a0, label82
	j label263
.p2align 2
label293:
	mv a0, a1
	j label82
.p2align 2
label263:
	li a0, 1
	ble s0, a0, label855
.p2align 2
label108:
	li a0, 5
	ble s0, a0, label489
	sh2add a1, a3, a2
	li a0, 17
	flw f10, 0(a1)
	ble t1, a0, label495
	li a0, 1
	fmv.s f11, f10
.p2align 2
label113:
	sh2add a1, a0, s2
	lui t3, 258048
	flw f12, 0(a1)
	fmv.w.x f10, t3
	flw f0, 4(a1)
	fmul.s f12, f12, f10
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 8(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 12(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 16(a1)
	flw f0, 20(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	fmul.s f12, f0, f10
	fadd.s f11, f11, f13
	flw f13, 24(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 28(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 32(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 36(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 40(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 44(a1)
	flw f0, 48(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 52(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 56(a1)
	flw f0, 60(a1)
	addiw a1, a0, 16
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	fmul.s f12, f0, f10
	fadd.s f11, f11, f13
	fadd.s f10, f11, f12
	ble a5, a1, label110
	mv a0, a1
	fmv.s f11, f10
	j label113
.p2align 2
label110:
	sh2add a0, a1, s2
	lui t3, 258048
	addiw a1, a1, 4
	fmv.w.x f11, t3
	flw f12, 0(a0)
	flw f13, 4(a0)
	fmul.s f12, f12, f11
	fadd.s f10, f10, f12
	fmul.s f12, f13, f11
	flw f13, 8(a0)
	fadd.s f10, f10, f12
	fmul.s f12, f13, f11
	flw f13, 12(a0)
	fmul.s f11, f13, f11
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	bgt t1, a1, label110
	mv a0, a1
	sh2add a1, a1, s2
	addiw a0, a0, 1
	fmv.w.x f12, t3
	flw f11, 0(a1)
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	ble s0, a0, label861
.p2align 2
label117:
	sh2add a1, a0, s2
	lui t3, 258048
	addiw a0, a0, 1
	fmv.w.x f12, t3
	flw f11, 0(a1)
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s0, a0, label117
	li t3, 1
	bgt s1, t3, label96
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s0, a3, label79
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t2, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t2, label226
	mv s2, zero
	bgt s1, zero, label123
	j label127
.p2align 2
label126:
	li a0, 10
	jal putch
	addiw s2, s2, 1
	bgt s1, s2, label123
	j label127
.p2align 2
label644:
	addiw a5, a5, 1
	bgt s1, a5, label134
	addiw a3, a3, 1
	bgt s0, a3, label130
	addiw a4, a4, 1
	slliw a0, a4, 5
	fcvt.s.w f15, a4
	add a2, s2, a0
	bgt s1, a4, label184
	mv s3, zero
	bgt s1, zero, label70
	j label74
.p2align 2
label489:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	li a0, 1
	sh2add a1, a0, s2
	lui t3, 258048
	addiw a0, a0, 1
	fmv.w.x f12, t3
	flw f11, 0(a1)
	sh2add a1, a3, a2
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fsw f10, 0(a1)
	bgt s0, a0, label117
	li t3, 1
	bgt s1, t3, label96
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s0, a3, label79
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t2, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t2, label226
	mv s2, zero
	bgt s1, zero, label123
	j label127
.p2align 2
label243:
	li a0, 1
	bgt s0, a0, label108
	li t3, 1
	bgt s1, t3, label96
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s0, a3, label79
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t2, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t2, label226
	mv s2, zero
	bgt s1, zero, label123
	j label127
.p2align 2
label855:
	li t3, 1
	bgt s1, t3, label96
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s0, a3, label79
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t2, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t2, label226
	mv s2, zero
	bgt s1, zero, label123
	j label127
.p2align 2
label81:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	li a0, 1
	j label82
.p2align 2
label195:
	li s5, 1
.p2align 2
label71:
	li a0, 32
	jal putch
	sh2add a1, s5, s4
	flw f10, 0(a1)
	jal putfloat
	addiw s5, s5, 1
	bgt s0, s5, label71
	j label73
.p2align 2
label77:
	bgt s0, a3, label79
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	lui a0, 258048
	fmv.w.x f11, a0
	slliw a0, t2, 5
	fadd.s f10, f10, f11
	add a2, s3, a0
	fmul.s f15, f9, f10
	bgt s1, t2, label226
	mv s2, zero
	bgt s1, zero, label123
label127:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	flw f18, 56(sp)
	flw f9, 60(sp)
	flw f19, 64(sp)
	flw f8, 68(sp)
	addi sp, sp, 72
	ret
.p2align 2
label156:
	addiw s2, s2, 1
	bgt s1, s2, label59
	j label64
.p2align 2
label269:
	li a1, 1
	j label86
.p2align 2
label495:
	li a1, 1
	j label110
