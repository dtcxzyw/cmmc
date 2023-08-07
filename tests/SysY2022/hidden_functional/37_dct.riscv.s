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
pcrel53:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel53)
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
	fmv.w.x f10, a0
	lui a0, 263168
	fmul.s f14, f11, f10
	fmul.s f13, f14, f11
	fmv.w.x f14, a0
	fmul.s f12, f13, f11
	fmul.s f13, f11, f14
	fsub.s f10, f13, f12
	j label2
label7:
	lui a0, 263168
	fmv.w.x f8, a0
	fdiv.s f10, f11, f8
	jal my_sin_impl
	lui a0, 264192
	fmv.w.x f11, a0
	fmul.s f13, f10, f8
	fmul.s f14, f10, f11
	fmul.s f15, f14, f10
	fmul.s f12, f15, f10
	fmv.w.x f10, a0
	lui a0, 263168
	fsub.s f11, f13, f12
	fmul.s f14, f11, f10
	fmul.s f13, f14, f11
	fmv.w.x f14, a0
	fmul.s f12, f13, f11
	fmul.s f13, f11, f14
	fsub.s f10, f13, f12
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -144
	sd ra, 0(sp)
	sd s11, 8(sp)
	sd s10, 16(sp)
	sd s4, 24(sp)
	sd s3, 32(sp)
	sd s2, 40(sp)
	sd s5, 48(sp)
	sd s0, 56(sp)
	sd s6, 64(sp)
	fsw f18, 72(sp)
	sd s1, 80(sp)
	sd s9, 88(sp)
	sd s7, 96(sp)
	fsw f19, 104(sp)
	sd s8, 112(sp)
	fsw f9, 120(sp)
	fsw f8, 124(sp)
	jal getint
	sd a0, 128(sp)
	mv a1, a0
	jal getint
	sd a0, 136(sp)
pcrel941:
	auipc a1, %pcrel_hi(test_block)
	li s3, 5
	mv s9, zero
	li s4, 17
	lui s1, 258048
	lui s5, 256000
	li s2, 1
pcrel942:
	auipc s6, %pcrel_hi(test_dct)
pcrel943:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s8, a1, %pcrel_lo(pcrel941)
	addi s0, a0, %pcrel_lo(pcrel943)
	mv s7, s8
	ld a1, 128(sp)
	ble a1, zero, label65
.p2align 2
label58:
	ld a0, 136(sp)
	ble a0, zero, label59
	mv s10, s7
	mv s11, zero
	j label61
.p2align 2
label207:
	addiw s9, s9, 1
	addi s7, s7, 32
	ld a1, 128(sp)
	bgt a1, s9, label58
label65:
	ld a1, 128(sp)
pcrel944:
	auipc s6, %pcrel_hi(test_dct)
	addi s7, s6, %pcrel_lo(pcrel944)
	mv a5, zero
	mv a4, s7
	flw f10, 4(s0)
	fcvt.s.w f18, a1
	ld a0, 136(sp)
	fdiv.s f9, f10, f18
	fcvt.s.w f19, a0
	fdiv.s f8, f10, f19
	fcvt.s.w f1, zero
	bgt a1, zero, label167
label69:
	mv s8, s7
	mv s9, zero
	ld a1, 128(sp)
	bgt a1, zero, label160
	j label73
.p2align 2
label167:
	mv a3, a4
	mv t0, zero
	ld a0, 136(sp)
	ble a0, zero, label658
.p2align 2
label171:
	fmv.w.x f10, zero
	mv t1, s8
	mv t2, zero
	fcvt.s.w f0, t0
	fsw f10, 0(a3)
	ld a1, 128(sp)
	ble a1, zero, label664
.p2align 2
label175:
	fcvt.s.w f10, t2
	fmv.w.x f12, s1
	fadd.s f14, f10, f12
	flw f12, 8(s0)
	fmul.s f13, f9, f14
	fmul.s f11, f13, f1
	flw f13, 12(s0)
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a0, f13, f10
	flt.s a1, f10, f11
	or a2, a0, a1
	bne a2, zero, label187
	j label176
.p2align 2
label750:
	addiw t2, t2, 1
	addi t1, t1, 32
	ld a1, 128(sp)
	bgt a1, t2, label175
	addiw t0, t0, 1
	addi a3, a3, 4
	ld a0, 136(sp)
	bgt a0, t0, label171
	addiw a5, a5, 1
	addi a4, a4, 32
	fcvt.s.w f1, a5
	bgt a1, a5, label167
	j label69
.p2align 2
label176:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label831
	fmv.s f11, f10
.p2align 2
label831:
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label833
.p2align 2
label832:
	fmv.s f10, f11
.p2align 2
label833:
	jal my_sin_impl
	mv t4, zero
	mv t3, t1
	flw f3, 0(a3)
	fmv.s f2, f10
.p2align 2
label178:
	fcvt.s.w f10, t4
	flw f14, 8(s0)
	fmv.w.x f12, s1
	fadd.s f13, f10, f12
	flw f12, 12(s0)
	fmul.s f15, f8, f13
	flw f13, 16(s0)
	fmul.s f11, f15, f0
	fadd.s f10, f11, f14
	flw f11, 0(t3)
	fmul.s f4, f11, f2
	flt.s a2, f10, f13
	flt.s a1, f12, f10
	or a0, a1, a2
	bne a0, zero, label186
	j label182
.p2align 2
label835:
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label837
.p2align 2
label836:
	fmv.s f10, f11
.p2align 2
label837:
	jal my_sin_impl
	addiw t4, t4, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 136(sp)
	ble a0, t4, label750
	addi t3, t3, 4
	j label178
.p2align 2
label186:
	flw f11, 12(s0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f14, f12, f11
	flw f11, 4(s0)
	flw f12, 12(s0)
	fsub.s f10, f10, f14
	fsub.s f13, f10, f12
	flt.s a0, f11, f10
	fmv.s f11, f13
	bne a0, zero, label835
	fmv.s f11, f10
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f10, f13
	bne a0, zero, label837
	j label836
.p2align 2
label182:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label835
	fmv.s f11, f10
	j label835
.p2align 2
label187:
	flw f11, 12(s0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f14, a0
	fmul.s f13, f14, f11
	flw f11, 4(s0)
	flw f12, 12(s0)
	fsub.s f10, f10, f13
	fsub.s f13, f10, f12
	flt.s a0, f11, f10
	fmv.s f11, f13
	bne a0, zero, label831
	fmv.s f11, f10
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f10, f13
	bne a0, zero, label833
	j label832
.p2align 2
label61:
	jal getfloat
	addiw a1, s11, 1
	fsw f10, 0(s10)
	ld a0, 136(sp)
	ble a0, a1, label207
	addi s10, s10, 4
	mv s11, a1
	j label61
label73:
	li a0, 10
	jal putch
	mv t4, zero
pcrel945:
	auipc a2, %pcrel_hi(test_idct)
	ld a1, 128(sp)
	addi t3, a2, %pcrel_lo(pcrel945)
	addiw a4, a1, -20
	addiw t0, a1, -4
	mv t2, t3
	ld a0, 136(sp)
	addiw a5, a0, -20
	addiw t1, a0, -4
	fcvt.s.w f10, zero
	fmv.w.x f11, s1
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, zero, label77
	j label242
.p2align 2
label160:
	flw f10, 0(s8)
	jal putfloat
	ld a0, 136(sp)
	ble a0, s2, label166
	addi s10, s8, 4
	mv s11, s2
	j label162
.p2align 2
label166:
	li a0, 10
	jal putch
	ld a1, 128(sp)
	addi s8, s8, 32
	addiw s9, s9, 1
	bgt a1, s9, label160
	j label73
label242:
	mv s0, t3
	mv s1, zero
	j label149
.p2align 2
label77:
	mv a3, t2
	mv t5, zero
	ld a0, 136(sp)
	ble a0, zero, label81
.p2align 2
label82:
	auipc s6, %pcrel_hi(test_dct)
	flw f10, %pcrel_lo(label82)(s6)
	fmv.w.x f13, s5
	fcvt.s.w f11, t5
	fmul.s f12, f10, f13
	fmv.w.x f10, s1
	fsw f12, 0(a3)
	ld a1, 128(sp)
	fadd.s f12, f11, f10
	fmul.s f0, f8, f12
	ble a1, s2, label261
	bgt a1, s3, label85
	j label84
.p2align 2
label134:
	fcvt.s.w f12, a6
	flw f13, 8(s0)
	fmul.s f11, f1, f12
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a1, f10, f11
	or a2, a0, a1
	bne a2, zero, label147
	j label135
.p2align 2
label613:
	addiw a6, a6, 1
	addi t6, t6, 32
	ld a1, 128(sp)
	bgt a1, a6, label134
	flw f11, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	addi a3, a3, 4
	bgt a0, t5, label82
	addiw t4, t4, 1
	addi t2, t2, 32
	fmv.w.x f11, s1
	fcvt.s.w f10, t4
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, t4, label77
	j label242
label149:
	ld a1, 128(sp)
	ble a1, s1, label152
.p2align 2
label153:
	flw f10, 0(s0)
	jal putfloat
	ld a0, 136(sp)
	ble a0, s2, label154
	addi s3, s0, 4
	mv s4, s2
	j label156
.p2align 2
label135:
	ld a0, 136(sp)
	bgt a0, s2, label138
	addiw a6, a6, 1
	addi t6, t6, 32
	ld a1, 128(sp)
	bgt a1, a6, label134
	flw f11, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	addi a3, a3, 4
	bgt a0, t5, label82
	j label866
.p2align 2
label138:
	flw f12, 12(s0)
	flw f14, 4(s0)
	fsub.s f13, f10, f12
	flt.s a0, f14, f10
	fmv.s f11, f13
	bne a0, zero, label823
	fmv.s f11, f10
.p2align 2
label823:
	fadd.s f13, f11, f12
	flw f14, 20(s0)
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label825
	fmv.s f10, f11
.p2align 2
label825:
	jal my_sin_impl
	mv s8, s2
	addi a7, t6, 4
	flw f3, 0(a3)
	fmv.s f2, f10
	j label139
.p2align 2
label147:
	flw f11, 12(s0)
	fdiv.s f14, f10, f11
	fcvt.w.s a0, f14, rtz
	fcvt.s.w f12, a0
	ld a0, 136(sp)
	fmul.s f13, f12, f11
	fsub.s f10, f10, f13
	bgt a0, s2, label138
	addiw a6, a6, 1
	addi t6, t6, 32
	ld a1, 128(sp)
	bgt a1, a6, label134
	flw f11, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	addi a3, a3, 4
	bgt a0, t5, label82
	j label866
.p2align 2
label139:
	fcvt.s.w f12, s8
	flw f13, 8(s0)
	fmul.s f11, f0, f12
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a1, f12, f10
	flt.s a2, f10, f11
	flw f12, 0(a7)
	or a0, a1, a2
	fmul.s f4, f12, f2
	bne a0, zero, label143
	j label582
.p2align 2
label894:
	fmv.s f10, f11
	j label829
.p2align 2
label143:
	flw f11, 12(s0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f14, a0
	fmul.s f12, f14, f11
	fsub.s f10, f10, f12
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label827
	fmv.s f11, f10
.p2align 2
label827:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label829
	fmv.s f10, f11
.p2align 2
label829:
	jal my_sin_impl
	addiw s8, s8, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 136(sp)
	ble a0, s8, label613
	addi a7, a7, 4
	j label139
.p2align 2
label582:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label827
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label829
	j label894
.p2align 2
label162:
	li a0, 32
	jal putch
	flw f10, 0(s10)
	jal putfloat
	ld a0, 136(sp)
	addiw s11, s11, 1
	ble a0, s11, label166
	addi s10, s10, 4
	j label162
.p2align 2
label156:
	li a0, 32
	jal putch
	flw f10, 0(s3)
	jal putfloat
	ld a0, 136(sp)
	addiw s4, s4, 1
	ble a0, s4, label154
	addi s3, s3, 4
	j label156
.p2align 2
label85:
	flw f11, 0(a3)
	ble t0, s4, label86
	addi a0, s7, 32
	mv a1, s2
.p2align 2
label94:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f15, 32(a0)
	fmul.s f14, f13, f10
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	flw f14, 64(a0)
	flw f15, 96(a0)
	fmul.s f2, f14, f10
	flw f14, 128(a0)
	fadd.s f11, f12, f13
	fmul.s f13, f15, f10
	fmul.s f15, f14, f10
	fadd.s f12, f11, f2
	flw f2, 160(a0)
	fmul.s f14, f2, f10
	fadd.s f11, f12, f13
	fadd.s f13, f11, f15
	flw f15, 192(a0)
	fmul.s f2, f15, f10
	fadd.s f12, f13, f14
	flw f13, 224(a0)
	fmul.s f15, f13, f10
	fadd.s f11, f12, f2
	flw f2, 256(a0)
	fmul.s f14, f2, f10
	fadd.s f12, f11, f15
	flw f15, 288(a0)
	fmul.s f2, f15, f10
	fadd.s f13, f12, f14
	flw f14, 320(a0)
	fmul.s f15, f14, f10
	fadd.s f11, f13, f2
	flw f13, 352(a0)
	fmul.s f14, f13, f10
	fadd.s f12, f11, f15
	flw f15, 384(a0)
	fmul.s f13, f15, f10
	fadd.s f11, f12, f14
	flw f14, 416(a0)
	fmul.s f15, f14, f10
	fadd.s f12, f11, f13
	flw f13, 448(a0)
	fmul.s f14, f13, f10
	fadd.s f11, f12, f15
	flw f15, 480(a0)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	ble a4, a1, label98
	addi a0, a0, 512
	j label94
.p2align 2
label87:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f14, 32(a0)
	fmul.s f2, f13, f10
	flw f13, 64(a0)
	fmul.s f15, f14, f10
	fmul.s f14, f13, f10
	fadd.s f12, f11, f2
	fadd.s f11, f12, f15
	flw f15, 96(a0)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	ble t0, a1, label91
	addi a0, a0, 128
	j label87
.p2align 2
label98:
	slliw a2, a1, 5
	add a0, s7, a2
	j label87
.p2align 2
label91:
	slliw a2, a1, 5
	fmv.s f10, f11
	add a0, s7, a2
	fmv.w.x f11, s1
	addiw a2, a1, 1
	flw f12, 0(a0)
	fmul.s f13, f12, f11
	fadd.s f10, f10, f13
	fsw f10, 0(a3)
	ld a1, 128(sp)
	bgt a1, a2, label104
	j label862
.p2align 2
label100:
	flw f12, 0(a0)
	fmv.w.x f11, s1
	addiw a2, a2, 1
	fmul.s f13, f12, f11
	fadd.s f10, f10, f13
	fsw f10, 0(a3)
	ld a1, 128(sp)
	ble a1, a2, label382
.p2align 2
label104:
	addi a0, a0, 32
	j label100
.p2align 2
label382:
	ld a0, 136(sp)
	ble a0, s2, label863
.p2align 2
label107:
	ld a0, 136(sp)
	ble a0, s3, label391
	flw f11, 0(a3)
	ble t1, s4, label396
	addi a0, s7, 4
	mv a1, s2
.p2align 2
label117:
	flw f12, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f14, 4(a0)
	fmul.s f2, f12, f10
	fmul.s f15, f14, f10
	fadd.s f13, f11, f2
	flw f2, 8(a0)
	flw f3, 12(a0)
	fmul.s f14, f2, f10
	fmul.s f2, f3, f10
	fadd.s f12, f13, f15
	flw f15, 16(a0)
	fadd.s f11, f12, f14
	fmul.s f14, f15, f10
	fadd.s f13, f11, f2
	flw f2, 20(a0)
	fmul.s f15, f2, f10
	fadd.s f12, f13, f14
	flw f13, 24(a0)
	fmul.s f14, f13, f10
	fadd.s f11, f12, f15
	flw f15, 28(a0)
	fmul.s f2, f15, f10
	fadd.s f12, f11, f14
	flw f14, 32(a0)
	fmul.s f15, f14, f10
	fadd.s f13, f12, f2
	flw f2, 36(a0)
	fmul.s f14, f2, f10
	fadd.s f11, f13, f15
	flw f13, 40(a0)
	flw f15, 44(a0)
	fmul.s f2, f13, f10
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	flw f14, 48(a0)
	fmul.s f15, f14, f10
	fadd.s f11, f12, f2
	flw f2, 52(a0)
	fadd.s f12, f11, f13
	fmul.s f13, f2, f10
	fadd.s f11, f12, f15
	flw f15, 56(a0)
	flw f2, 60(a0)
	fmul.s f14, f15, f10
	fmul.s f15, f2, f10
	fadd.s f12, f11, f13
	fadd.s f13, f12, f14
	fadd.s f11, f13, f15
	ble a5, a1, label121
	addi a0, a0, 64
	j label117
.p2align 2
label121:
	sh2add a0, a1, s7
.p2align 2
label109:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a2, a1, 4
	flw f15, 4(a0)
	fmul.s f14, f13, f10
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	flw f14, 8(a0)
	fmul.s f15, f14, f10
	fadd.s f11, f12, f13
	flw f13, 12(a0)
	fmul.s f14, f13, f10
	fadd.s f12, f11, f15
	fadd.s f11, f12, f14
	ble t1, a2, label113
	addi a0, a0, 16
	mv a1, a2
	j label109
.p2align 2
label113:
	sh2add a1, a2, s7
	fmv.s f10, f11
	fmv.w.x f13, s1
	addiw a2, a2, 1
	flw f11, 0(a1)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a3)
	ld a0, 136(sp)
	bgt a0, a2, label128
	j label865
.p2align 2
label124:
	flw f11, 0(a1)
	fmv.w.x f13, s1
	addiw a2, a2, 1
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a3)
	ld a0, 136(sp)
	ble a0, a2, label508
.p2align 2
label128:
	addi a1, a1, 4
	j label124
.p2align 2
label84:
	flw f10, 0(a3)
	addi a0, s7, 32
	fmv.w.x f11, s1
	addiw a2, s2, 1
	flw f12, 0(a0)
	fmul.s f13, f12, f11
	fadd.s f10, f10, f13
	fsw f10, 0(a3)
	ld a1, 128(sp)
	bgt a1, a2, label104
	ld a0, 136(sp)
	bgt a0, s2, label107
.p2align 2
label863:
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label134
label133:
	flw f11, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	addi a3, a3, 4
	bgt a0, t5, label82
	j label866
.p2align 2
label86:
	addi a0, s7, 32
	mv a1, s2
	j label87
.p2align 2
label154:
	li a0, 10
	jal putch
	ld a1, 128(sp)
	addi s0, s0, 32
	addiw s1, s1, 1
	bgt a1, s1, label153
	j label152
.p2align 2
label391:
	flw f10, 0(a3)
	addi a1, s7, 4
	fmv.w.x f13, s1
	addiw a2, s2, 1
	flw f11, 0(a1)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a3)
	ld a0, 136(sp)
	bgt a0, a2, label128
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label134
	j label882
.p2align 2
label508:
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label134
.p2align 2
label882:
	flw f11, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	addi a3, a3, 4
	bgt a0, t5, label82
label866:
	addiw t4, t4, 1
	addi t2, t2, 32
	fmv.w.x f11, s1
	ld a1, 128(sp)
	fcvt.s.w f10, t4
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, t4, label77
	j label242
.p2align 2
label865:
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label134
	flw f11, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	addi a3, a3, 4
	bgt a0, t5, label82
	j label866
.p2align 2
label862:
	ld a0, 136(sp)
	bgt a0, s2, label107
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label134
	j label133
label59:
	addiw s9, s9, 1
	addi s7, s7, 32
	ld a1, 128(sp)
	bgt a1, s9, label58
	j label65
label81:
	addiw t4, t4, 1
	addi t2, t2, 32
	fmv.w.x f11, s1
	ld a1, 128(sp)
	fcvt.s.w f10, t4
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, t4, label77
	j label242
label152:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s10, 16(sp)
	ld s4, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s6, 64(sp)
	flw f18, 72(sp)
	ld s1, 80(sp)
	ld s9, 88(sp)
	ld s7, 96(sp)
	flw f19, 104(sp)
	ld s8, 112(sp)
	flw f9, 120(sp)
	flw f8, 124(sp)
	addi sp, sp, 144
	ret
.p2align 2
label664:
	addiw t0, t0, 1
	addi a3, a3, 4
	ld a0, 136(sp)
	bgt a0, t0, label171
	addiw a5, a5, 1
	addi a4, a4, 32
	ld a1, 128(sp)
	fcvt.s.w f1, a5
	bgt a1, a5, label167
	j label69
.p2align 2
label261:
	ld a0, 136(sp)
	bgt a0, s2, label107
	addi t6, s7, 32
	mv a6, s2
	ld a1, 128(sp)
	bgt a1, s2, label134
	j label133
label658:
	addiw a5, a5, 1
	addi a4, a4, 32
	ld a1, 128(sp)
	fcvt.s.w f1, a5
	bgt a1, a5, label167
	j label69
.p2align 2
label396:
	addi a0, s7, 4
	mv a1, s2
	j label109
