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
	addi sp, sp, -152
	sd ra, 0(sp)
	fsw f19, 8(sp)
	sd s7, 16(sp)
	fsw f9, 24(sp)
	sd s4, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s5, 56(sp)
	sd s0, 64(sp)
	sd s6, 72(sp)
	fsw f18, 80(sp)
	sd s1, 88(sp)
	sd s9, 96(sp)
	sd s8, 104(sp)
	fsw f8, 112(sp)
	sd s10, 120(sp)
	sd s11, 128(sp)
	jal getint
	sd a0, 136(sp)
	mv a1, a0
	jal getint
	sd a0, 144(sp)
pcrel937:
	auipc a1, %pcrel_hi(test_block)
	mv s9, zero
	li s4, 17
	lui s1, 258048
pcrel938:
	auipc s6, %pcrel_hi(test_dct)
	lui s5, 256000
	li s3, 5
	li s2, 1
pcrel939:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s8, a1, %pcrel_lo(pcrel937)
	addi s0, a0, %pcrel_lo(pcrel939)
	mv s7, s8
label55:
	ld a1, 136(sp)
	bgt a1, s9, label183
label58:
	ld a1, 136(sp)
pcrel940:
	auipc s6, %pcrel_hi(test_dct)
	addi s7, s6, %pcrel_lo(pcrel940)
	mv a5, zero
	mv a4, s7
	flw f10, 4(s0)
	fcvt.s.w f18, a1
	ld a0, 144(sp)
	fdiv.s f9, f10, f18
	fcvt.s.w f19, a0
	fdiv.s f8, f10, f19
	fcvt.s.w f1, zero
	bgt a1, zero, label62
	j label209
.p2align 2
label183:
	ld a0, 144(sp)
	ble a0, zero, label764
	mv s10, s7
	mv s11, zero
	j label185
.p2align 2
label770:
	addiw s9, s9, 1
	addi s7, s7, 32
	ld a1, 136(sp)
	bgt a1, s9, label183
	j label58
label209:
	mv s8, s7
	mv s9, zero
	j label86
.p2align 2
label62:
	mv a3, a4
	mv t0, zero
	ld a0, 144(sp)
	ble a0, zero, label213
.p2align 2
label66:
	fmv.w.x f10, zero
	mv t1, s8
	mv t2, zero
	fcvt.s.w f0, t0
	fsw f10, 0(a3)
	ld a1, 136(sp)
	ble a1, zero, label219
.p2align 2
label70:
	fcvt.s.w f10, t2
	fmv.w.x f14, s1
	fadd.s f12, f10, f14
	flw f14, 8(s0)
	fmul.s f13, f9, f12
	flw f12, 12(s0)
	fmul.s f11, f13, f1
	fadd.s f10, f11, f14
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a1, f10, f11
	or a2, a0, a1
	bne a2, zero, label82
	j label71
.p2align 2
label313:
	addiw t2, t2, 1
	addi t1, t1, 32
	ld a1, 136(sp)
	bgt a1, t2, label70
	addiw t0, t0, 1
	addi a3, a3, 4
	ld a0, 144(sp)
	bgt a0, t0, label66
	addiw a5, a5, 1
	addi a4, a4, 32
	fcvt.s.w f1, a5
	bgt a1, a5, label62
	j label209
label86:
	ld a1, 136(sp)
	bgt a1, s9, label89
	j label96
.p2align 2
label823:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label825
.p2align 2
label824:
	fmv.s f10, f11
.p2align 2
label825:
	jal my_sin_impl
	mv t4, zero
	mv t3, t1
	flw f3, 0(a3)
	fmv.s f2, f10
	j label73
.p2align 2
label82:
	flw f11, 12(s0)
	fdiv.s f14, f10, f11
	fcvt.w.s a0, f14, rtz
	fcvt.s.w f12, a0
	fmul.s f13, f12, f11
	flw f11, 4(s0)
	flw f12, 12(s0)
	fsub.s f10, f10, f13
	fsub.s f13, f10, f12
	flt.s a0, f11, f10
	fmv.s f11, f13
	bne a0, zero, label823
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label825
	j label824
.p2align 2
label73:
	fcvt.s.w f10, t4
	flw f15, 8(s0)
	fmv.w.x f13, s1
	fadd.s f14, f10, f13
	flw f13, 12(s0)
	fmul.s f12, f8, f14
	fmul.s f11, f12, f0
	flw f12, 16(s0)
	fadd.s f10, f11, f15
	flw f11, 0(t3)
	fmul.s f4, f11, f2
	flt.s a2, f10, f12
	flt.s a1, f13, f10
	or a0, a1, a2
	bne a0, zero, label77
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label827
	j label857
.p2align 2
label891:
	fmv.s f10, f11
	j label829
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
	addiw t4, t4, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 144(sp)
	ble a0, t4, label313
	addi t3, t3, 4
	j label73
.p2align 2
label77:
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
	j label827
.p2align 2
label71:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label823
	fmv.s f11, f10
	j label823
.p2align 2
label185:
	jal getfloat
	addiw a1, s11, 1
	fsw f10, 0(s10)
	ld a0, 144(sp)
	ble a0, a1, label770
	addi s10, s10, 4
	mv s11, a1
	j label185
.p2align 2
label89:
	flw f10, 0(s8)
	jal putfloat
	ld a0, 144(sp)
	bgt a0, s2, label90
.p2align 2
label95:
	li a0, 10
	jal putch
	ld a1, 136(sp)
	addi s8, s8, 32
	addiw s9, s9, 1
	bgt a1, s9, label89
label96:
	li a0, 10
	jal putch
	mv t4, zero
pcrel941:
	auipc a2, %pcrel_hi(test_idct)
	ld a1, 136(sp)
	addi t3, a2, %pcrel_lo(pcrel941)
	addiw a4, a1, -20
	addiw t0, a1, -4
	mv t2, t3
	ld a0, 144(sp)
	addiw a5, a0, -20
	addiw t1, a0, -4
	fcvt.s.w f10, zero
	fmv.w.x f11, s1
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, zero, label100
label362:
	mv s0, t3
	mv s1, zero
	j label172
.p2align 2
label100:
	mv a3, t2
	mv t5, zero
	ld a0, 144(sp)
	bgt a0, zero, label104
	j label366
.p2align 2
label886:
	addiw t4, t4, 1
	addi t2, t2, 32
	fmv.w.x f11, s1
	ld a1, 136(sp)
	fcvt.s.w f10, t4
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, t4, label100
	j label362
label172:
	ld a1, 136(sp)
	bgt a1, s1, label176
	j label175
.p2align 2
label104:
	auipc s6, %pcrel_hi(test_dct)
	flw f11, %pcrel_lo(label104)(s6)
	fmv.w.x f12, s5
	fcvt.s.w f10, t5
	fmul.s f13, f11, f12
	fmv.w.x f11, s1
	fadd.s f12, f10, f11
	fsw f13, 0(a3)
	ld a1, 136(sp)
	fmul.s f0, f8, f12
	bgt a1, s2, label148
	j label105
.p2align 2
label133:
	fcvt.s.w f13, a6
	flw f12, 8(s0)
	fmul.s f11, f1, f13
	flw f13, 12(s0)
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a0, f13, f10
	flt.s a2, f10, f11
	or a1, a0, a2
	bne a1, zero, label134
	j label534
.p2align 2
label616:
	addiw a6, a6, 1
	addi t6, t6, 32
	ld a1, 136(sp)
	bgt a1, a6, label133
	flw f10, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	ld a0, 144(sp)
	addi a3, a3, 4
	bgt a0, t5, label104
	j label886
.p2align 2
label148:
	ld a1, 136(sp)
	ble a1, s3, label622
	flw f11, 0(a3)
	ble t0, s4, label155
	addi a0, s7, 32
	mv a1, s2
.p2align 2
label163:
	flw f12, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f14, 32(a0)
	fmul.s f15, f12, f10
	fmul.s f2, f14, f10
	fadd.s f13, f11, f15
	flw f15, 64(a0)
	fmul.s f14, f15, f10
	fadd.s f12, f13, f2
	flw f13, 96(a0)
	fmul.s f15, f13, f10
	fadd.s f11, f12, f14
	flw f14, 128(a0)
	fmul.s f13, f14, f10
	fadd.s f12, f11, f15
	flw f15, 160(a0)
	flw f14, 192(a0)
	fmul.s f2, f15, f10
	fmul.s f15, f14, f10
	fadd.s f11, f12, f13
	flw f13, 224(a0)
	flw f14, 256(a0)
	fmul.s f3, f13, f10
	fadd.s f12, f11, f2
	fmul.s f2, f14, f10
	fadd.s f11, f12, f15
	flw f15, 288(a0)
	fmul.s f14, f15, f10
	fadd.s f12, f11, f3
	fadd.s f13, f12, f2
	flw f2, 320(a0)
	fmul.s f15, f2, f10
	fadd.s f11, f13, f14
	flw f14, 352(a0)
	flw f13, 384(a0)
	fmul.s f2, f14, f10
	fmul.s f14, f13, f10
	fadd.s f12, f11, f15
	fadd.s f11, f12, f2
	flw f2, 416(a0)
	flw f13, 448(a0)
	fmul.s f15, f2, f10
	fmul.s f2, f13, f10
	fadd.s f12, f11, f14
	flw f14, 480(a0)
	fmul.s f13, f14, f10
	fadd.s f11, f12, f15
	fadd.s f12, f11, f2
	fadd.s f11, f12, f13
	ble a4, a1, label167
	addi a0, a0, 512
	j label163
.p2align 2
label134:
	flw f11, 12(s0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f14, f12, f11
	fsub.s f10, f10, f14
	ld a0, 144(sp)
	ble a0, s2, label137
.p2align 2
label138:
	flw f12, 12(s0)
	flw f14, 4(s0)
	fsub.s f13, f10, f12
	flt.s a0, f14, f10
	fmv.s f11, f13
	bne a0, zero, label831
	fmv.s f11, f10
.p2align 2
label831:
	fadd.s f13, f11, f12
	flw f14, 20(s0)
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label833
	fmv.s f10, f11
.p2align 2
label833:
	jal my_sin_impl
	mv s8, s2
	addi a7, t6, 4
	fmv.s f2, f10
	flw f3, 0(a3)
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
	j label585
.p2align 2
label898:
	fmv.s f10, f11
	j label837
.p2align 2
label143:
	flw f11, 12(s0)
	fdiv.s f14, f10, f11
	fcvt.w.s a0, f14, rtz
	fcvt.s.w f13, a0
	fmul.s f12, f13, f11
	fsub.s f10, f10, f12
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label835
	fmv.s f11, f10
.p2align 2
label835:
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label837
	fmv.s f10, f11
.p2align 2
label837:
	jal my_sin_impl
	addiw s8, s8, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 144(sp)
	ble a0, s8, label616
	addi a7, a7, 4
	j label139
.p2align 2
label585:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label835
	fmv.s f11, f10
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f10, f13
	bne a0, zero, label837
	j label898
.p2align 2
label156:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f14, 32(a0)
	fmul.s f15, f13, f10
	fmul.s f13, f14, f10
	fadd.s f12, f11, f15
	flw f15, 64(a0)
	fmul.s f14, f15, f10
	fadd.s f11, f12, f13
	flw f13, 96(a0)
	fmul.s f15, f13, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f15
	ble t0, a1, label160
	addi a0, a0, 128
	j label156
.p2align 2
label167:
	slliw a2, a1, 5
	add a0, s7, a2
	j label156
.p2align 2
label149:
	flw f11, 0(a0)
	fmv.w.x f13, s1
	addiw a2, a2, 1
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a3)
	ld a1, 136(sp)
	ble a1, a2, label632
.p2align 2
label153:
	addi a0, a0, 32
	j label149
.p2align 2
label160:
	slliw a2, a1, 5
	fmv.s f10, f11
	fmv.w.x f13, s1
	add a0, s7, a2
	addiw a2, a1, 1
	flw f11, 0(a0)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a3)
	ld a1, 136(sp)
	bgt a1, a2, label153
	ld a0, 144(sp)
	bgt a0, s2, label106
	addi t6, s7, 32
	mv a6, s2
	bgt a1, s2, label133
	j label132
.p2align 2
label106:
	ld a0, 144(sp)
	ble a0, s3, label386
	flw f11, 0(a3)
	ble t1, s4, label108
	addi a0, s7, 4
	mv a1, s2
.p2align 2
label116:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f2, 4(a0)
	fmul.s f14, f13, f10
	flw f15, 8(a0)
	fmul.s f13, f2, f10
	fmul.s f2, f15, f10
	fadd.s f12, f11, f14
	flw f14, 12(a0)
	flw f15, 16(a0)
	fmul.s f3, f14, f10
	fmul.s f14, f15, f10
	fadd.s f11, f12, f13
	fadd.s f13, f11, f2
	fadd.s f12, f13, f3
	flw f13, 20(a0)
	fmul.s f2, f13, f10
	fadd.s f11, f12, f14
	flw f14, 24(a0)
	flw f13, 28(a0)
	fmul.s f15, f14, f10
	fmul.s f14, f13, f10
	fadd.s f12, f11, f2
	fadd.s f11, f12, f15
	flw f15, 32(a0)
	fmul.s f3, f15, f10
	fadd.s f12, f11, f14
	flw f14, 36(a0)
	flw f15, 40(a0)
	fmul.s f2, f14, f10
	fmul.s f14, f15, f10
	fadd.s f13, f12, f3
	fadd.s f11, f13, f2
	flw f2, 44(a0)
	fmul.s f13, f2, f10
	fadd.s f12, f11, f14
	flw f14, 48(a0)
	flw f15, 52(a0)
	fmul.s f3, f14, f10
	fmul.s f2, f15, f10
	fadd.s f11, f12, f13
	flw f13, 56(a0)
	flw f15, 60(a0)
	fmul.s f14, f13, f10
	fmul.s f13, f15, f10
	fadd.s f12, f11, f3
	fadd.s f11, f12, f2
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	ble a5, a1, label120
	addi a0, a0, 64
	j label116
label132:
	flw f10, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	ld a0, 144(sp)
	addi a3, a3, 4
	bgt a0, t5, label104
	j label864
.p2align 2
label632:
	ld a0, 144(sp)
	bgt a0, s2, label106
	addi t6, s7, 32
	mv a6, s2
	ld a1, 136(sp)
	bgt a1, s2, label133
	j label132
.p2align 2
label109:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a2, a1, 4
	flw f14, 4(a0)
	fmul.s f2, f13, f10
	flw f13, 8(a0)
	fmul.s f15, f14, f10
	fmul.s f14, f13, f10
	fadd.s f12, f11, f2
	fadd.s f11, f12, f15
	flw f15, 12(a0)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	ble t1, a2, label113
	addi a0, a0, 16
	mv a1, a2
	j label109
.p2align 2
label120:
	sh2add a0, a1, s7
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
	ld a0, 144(sp)
	bgt a0, a2, label127
	j label863
.p2align 2
label123:
	flw f11, 0(a1)
	fmv.w.x f13, s1
	addiw a2, a2, 1
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a3)
	ld a0, 144(sp)
	ble a0, a2, label503
.p2align 2
label127:
	addi a1, a1, 4
	j label123
.p2align 2
label137:
	addiw a6, a6, 1
	addi t6, t6, 32
	ld a1, 136(sp)
	bgt a1, a6, label133
	flw f10, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	ld a0, 144(sp)
	addi a3, a3, 4
	bgt a0, t5, label104
	j label864
.p2align 2
label534:
	ld a0, 144(sp)
	bgt a0, s2, label138
	addiw a6, a6, 1
	addi t6, t6, 32
	ld a1, 136(sp)
	bgt a1, a6, label133
	flw f10, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	addi a3, a3, 4
	bgt a0, t5, label104
	j label864
.p2align 2
label108:
	addi a0, s7, 4
	mv a1, s2
	j label109
.p2align 2
label155:
	addi a0, s7, 32
	mv a1, s2
	j label156
.p2align 2
label105:
	ld a0, 144(sp)
	bgt a0, s2, label106
	addi t6, s7, 32
	mv a6, s2
	ld a1, 136(sp)
	bgt a1, s2, label133
	j label132
.p2align 2
label176:
	flw f10, 0(s0)
	jal putfloat
	ld a0, 144(sp)
	bgt a0, s2, label178
.p2align 2
label177:
	li a0, 10
	jal putch
	ld a1, 136(sp)
	addi s0, s0, 32
	addiw s1, s1, 1
	bgt a1, s1, label176
	j label175
.p2align 2
label386:
	flw f10, 0(a3)
	addi a1, s7, 4
	fmv.w.x f13, s1
	addiw a2, s2, 1
	flw f11, 0(a1)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(a3)
	ld a0, 144(sp)
	bgt a0, a2, label127
	addi t6, s7, 32
	mv a6, s2
	ld a1, 136(sp)
	bgt a1, s2, label133
	j label882
.p2align 2
label503:
	addi t6, s7, 32
	mv a6, s2
	ld a1, 136(sp)
	bgt a1, s2, label133
.p2align 2
label882:
	flw f10, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	ld a0, 144(sp)
	addi a3, a3, 4
	bgt a0, t5, label104
label864:
	addiw t4, t4, 1
	addi t2, t2, 32
	fmv.w.x f11, s1
	ld a1, 136(sp)
	fcvt.s.w f10, t4
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, t4, label100
	j label362
.p2align 2
label863:
	addi t6, s7, 32
	mv a6, s2
	ld a1, 136(sp)
	bgt a1, s2, label133
	flw f10, 0(a3)
	addiw t5, t5, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	ld a0, 144(sp)
	addi a3, a3, 4
	bgt a0, t5, label104
	j label864
label175:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	flw f19, 8(sp)
	ld s7, 16(sp)
	flw f9, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	ld s6, 72(sp)
	flw f18, 80(sp)
	ld s1, 88(sp)
	ld s9, 96(sp)
	ld s8, 104(sp)
	flw f8, 112(sp)
	ld s10, 120(sp)
	ld s11, 128(sp)
	addi sp, sp, 152
	ret
.p2align 2
label219:
	addiw t0, t0, 1
	addi a3, a3, 4
	ld a0, 144(sp)
	bgt a0, t0, label66
	addiw a5, a5, 1
	addi a4, a4, 32
	ld a1, 136(sp)
	fcvt.s.w f1, a5
	bgt a1, a5, label62
	j label209
label366:
	addiw t4, t4, 1
	addi t2, t2, 32
	fmv.w.x f11, s1
	ld a1, 136(sp)
	fcvt.s.w f10, t4
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a1, t4, label100
	j label362
label213:
	addiw a5, a5, 1
	addi a4, a4, 32
	ld a1, 136(sp)
	fcvt.s.w f1, a5
	bgt a1, a5, label62
	j label209
.p2align 2
label622:
	flw f10, 0(a3)
	addi a0, s7, 32
	mv a2, s2
	j label149
.p2align 2
label178:
	addi s3, s0, 4
	mv s4, s2
.p2align 2
label179:
	li a0, 32
	jal putch
	flw f10, 0(s3)
	jal putfloat
	ld a0, 144(sp)
	addiw s4, s4, 1
	ble a0, s4, label177
	addi s3, s3, 4
	j label179
label764:
	addiw s9, s9, 1
	addi s7, s7, 32
	j label55
.p2align 2
label90:
	addi s10, s8, 4
	mv s11, s2
.p2align 2
label91:
	li a0, 32
	jal putch
	flw f10, 0(s10)
	jal putfloat
	ld a0, 144(sp)
	addiw s11, s11, 1
	ble a0, s11, label95
	addi s10, s10, 4
	j label91
.p2align 2
label857:
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label829
	j label891
