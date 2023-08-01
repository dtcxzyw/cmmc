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
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel53)
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
	fmv.w.x f12, a1
	fdiv.s f10, f10, f12
	flw f12, 0(a0)
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
	addi sp, sp, -136
	sd ra, 0(sp)
	sd s11, 8(sp)
	sd s4, 16(sp)
	sd s8, 24(sp)
	sd s3, 32(sp)
	sd s7, 40(sp)
	fsw f19, 48(sp)
	sd s5, 56(sp)
	sd s0, 64(sp)
	sd s2, 72(sp)
	sd s10, 80(sp)
	fsw f18, 88(sp)
	sd s6, 96(sp)
	sd s9, 104(sp)
	sd s1, 112(sp)
	fsw f9, 120(sp)
	fsw f8, 124(sp)
	jal getint
	sd a0, 128(sp)
	jal getint
	li s6, 17
	li s3, 1
pcrel933:
	auipc s8, %pcrel_hi(test_dct)
	lui s7, 256000
	li s5, 5
	lui s2, 258048
	mv s10, zero
	mv s1, a0
pcrel934:
	auipc a0, %pcrel_hi(test_block)
	addi s9, a0, %pcrel_lo(pcrel934)
pcrel935:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s0, a0, %pcrel_lo(pcrel935)
label55:
	ld a0, 128(sp)
	bgt a0, s10, label57
label151:
	ld a0, 128(sp)
	fcvt.s.w f19, s1
pcrel936:
	auipc s8, %pcrel_hi(test_dct)
	addi s4, s8, %pcrel_lo(pcrel936)
	mv a5, zero
	flw f10, 4(s0)
	fcvt.s.w f18, a0
	fdiv.s f8, f10, f19
	fdiv.s f9, f10, f18
	j label63
.p2align 2
label57:
	ble s1, zero, label154
	slli a0, s10, 5
	mv s11, zero
	add s4, s9, a0
.p2align 2
label59:
	jal getfloat
	sh2add a0, s11, s4
	addiw s11, s11, 1
	fsw f10, 0(a0)
	bgt s1, s11, label59
	addiw s10, s10, 1
	ld a0, 128(sp)
	bgt a0, s10, label57
	j label151
label63:
	slliw a0, a5, 5
	fcvt.s.w f15, a5
	add a2, s4, a0
	ld a0, 128(sp)
	bgt a0, a5, label182
label181:
	mv s10, zero
	j label66
.p2align 2
label182:
	mv a3, zero
	bgt s1, zero, label128
	j label865
label66:
	ld a0, 128(sp)
	ble a0, s10, label72
.p2align 2
label68:
	slliw a0, s10, 5
	add s9, s4, a0
	flw f10, 0(s9)
	jal putfloat
	ble s1, s3, label71
	mv s11, s3
.p2align 2
label69:
	li a0, 32
	jal putch
	sh2add a1, s11, s9
	flw f10, 0(a1)
	jal putfloat
	addiw s11, s11, 1
	bgt s1, s11, label69
.p2align 2
label71:
	li a0, 10
	jal putch
	addiw s10, s10, 1
	ld a0, 128(sp)
	bgt a0, s10, label68
label72:
	li a0, 10
	jal putch
	mv t2, zero
	addiw a5, s1, -20
pcrel937:
	auipc a1, %pcrel_hi(test_idct)
	addiw t1, s1, -4
	ld a0, 128(sp)
	addi s9, a1, %pcrel_lo(pcrel937)
	addiw a4, a0, -20
	addiw t0, a0, -4
	fcvt.s.w f10, zero
	mv a1, zero
	fmv.w.x f12, s2
	mv a2, s9
	fadd.s f11, f10, f12
	fmul.s f15, f9, f11
	bgt a0, zero, label224
	j label223
.p2align 2
label128:
	sh2add a0, a3, a2
	mv a4, zero
	fmv.w.x f10, zero
	fcvt.s.w f14, a3
	fsw f10, 0(a0)
	ld a0, 128(sp)
	ble a0, zero, label131
.p2align 2
label132:
	ble s1, zero, label642
	fcvt.s.w f10, a4
	slliw t1, a4, 5
	fmv.w.x f11, s2
	add t0, s9, t1
	fadd.s f12, f10, f11
	fmul.s f10, f9, f12
	flw f12, 8(s0)
	fmul.s f11, f10, f15
	fadd.s f10, f11, f12
	flw f11, 12(s0)
	flw f12, 16(s0)
	flt.s a0, f11, f10
	flt.s a1, f10, f12
	or a0, a0, a1
	bne a0, zero, label142
	j label134
.p2align 2
label136:
	fcvt.s.w f10, t1
	fmv.w.x f11, s2
	sh2add t2, t1, t0
	fadd.s f12, f10, f11
	fmul.s f10, f8, f12
	flw f12, 8(s0)
	fmul.s f11, f10, f14
	fadd.s f10, f11, f12
	flw f11, 12(s0)
	flw f12, 16(s0)
	flt.s a0, f11, f10
	flt.s a1, f10, f12
	flw f11, 0(t2)
	or a0, a0, a1
	fmul.s f2, f11, f0
	bne a0, zero, label139
	j label711
.p2align 2
label901:
	fmv.s f10, f11
	j label845
.p2align 2
label139:
	flw f11, 12(s0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f11, f12, f11
	fsub.s f10, f10, f11
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label843
	fmv.s f11, f10
.p2align 2
label843:
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label845
	fmv.s f10, f11
.p2align 2
label845:
	jal my_sin_impl
	addiw t1, t1, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s1, t1, label136
	addiw a4, a4, 1
	ld a0, 128(sp)
	bgt a0, a4, label132
	addiw a3, a3, 1
	bgt s1, a3, label128
	addiw a5, a5, 1
	slliw a0, a5, 5
	fcvt.s.w f15, a5
	add a2, s4, a0
	ld a0, 128(sp)
	bgt a0, a5, label182
	j label181
.p2align 2
label711:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label843
	fmv.s f11, f10
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label845
	j label901
label223:
	mv s2, zero
	j label119
.p2align 2
label224:
	mv a3, zero
	ble s1, zero, label227
.p2align 2
label77:
	sh2add a0, a3, a2
pcrel938:
	auipc s8, %pcrel_hi(test_dct)
	flw f10, %pcrel_lo(pcrel938)(s8)
	fmv.w.x f12, s7
	fmul.s f11, f10, f12
	fcvt.s.w f10, a3
	fsw f11, 0(a0)
	ld a0, 128(sp)
	fmv.w.x f11, s2
	fadd.s f12, f10, f11
	fmul.s f14, f8, f12
	ble a0, s3, label241
	bgt a0, s5, label83
	j label79
.p2align 2
label94:
	ble s1, s3, label95
	fcvt.s.w f10, t3
	flw f12, 8(s0)
	slliw t5, t3, 5
	fmul.s f11, f15, f10
	flw f13, 12(s0)
	add t4, s4, t5
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a0, f13, f10
	flt.s a1, f10, f11
	or a0, a0, a1
	bne a0, zero, label105
	j label97
.p2align 2
label468:
	addiw t3, t3, 1
	ld a0, 128(sp)
	bgt a0, t3, label94
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s1, a3, label77
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	slliw a1, t2, 5
	ld a0, 128(sp)
	fmv.w.x f12, s2
	add a2, s9, a1
	fadd.s f11, f10, f12
	fmul.s f15, f9, f11
	bgt a0, t2, label224
	j label223
label119:
	ld a0, 128(sp)
	bgt a0, s2, label121
	j label125
.p2align 2
label839:
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label841
.p2align 2
label840:
	fmv.s f10, f11
.p2align 2
label841:
	jal my_sin_impl
	mv t1, zero
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
	j label136
.p2align 2
label142:
	flw f11, 12(s0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label839
	fmv.s f11, f10
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label841
	j label840
.p2align 2
label134:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label839
	fmv.s f11, f10
	j label839
.p2align 2
label97:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label831
	fmv.s f11, f10
.p2align 2
label831:
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label833
.p2align 2
label832:
	fmv.s f10, f11
.p2align 2
label833:
	jal my_sin_impl
	mv t5, s3
	sh2add a0, a3, a2
	fmv.s f0, f10
	flw f1, 0(a0)
.p2align 2
label99:
	fcvt.s.w f10, t5
	flw f13, 8(s0)
	sh2add t6, t5, t4
	flw f12, 12(s0)
	fmul.s f11, f14, f10
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a1, f10, f11
	flw f11, 0(t6)
	or a0, a0, a1
	fmul.s f2, f11, f0
	bne a0, zero, label104
	j label102
.p2align 2
label835:
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label837
.p2align 2
label836:
	fmv.s f10, f11
.p2align 2
label837:
	jal my_sin_impl
	addiw t5, t5, 1
	sh2add a0, a3, a2
	fmul.s f11, f2, f10
	fadd.s f1, f1, f11
	fsw f1, 0(a0)
	bgt s1, t5, label99
	j label468
.p2align 2
label104:
	flw f11, 12(s0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label835
	fmv.s f11, f10
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label837
	j label836
.p2align 2
label102:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label835
	fmv.s f11, f10
	j label835
.p2align 2
label105:
	flw f11, 12(s0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f11, f13, f11
	fsub.s f10, f10, f11
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label831
	fmv.s f11, f10
	flw f10, 20(s0)
	fadd.s f12, f11, f12
	flt.s a0, f11, f10
	fmv.s f10, f12
	bne a0, zero, label833
	j label832
label869:
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	slliw a1, t2, 5
	ld a0, 128(sp)
	fmv.w.x f12, s2
	add a2, s9, a1
	fadd.s f11, f10, f12
	fmul.s f15, f9, f11
	bgt a0, t2, label224
	j label223
.p2align 2
label95:
	addiw t3, t3, 1
	ld a0, 128(sp)
	bgt a0, t3, label94
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s1, a3, label77
	j label869
.p2align 2
label83:
	sh2add a1, a3, a2
	flw f11, 0(a1)
	ble t0, s6, label267
	mv a0, s3
	j label87
.p2align 2
label84:
	slliw t3, a0, 5
	fmv.w.x f10, s2
	addiw a0, a0, 4
	add a1, s4, t3
	flw f12, 0(a1)
	flw f0, 32(a1)
	fmul.s f13, f12, f10
	fmul.s f12, f0, f10
	flw f0, 64(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f0, f10
	fadd.s f11, f11, f12
	flw f12, 96(a1)
	fmul.s f10, f12, f10
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	bgt t0, a0, label84
	fmv.s f10, f11
	j label80
.p2align 2
label87:
	slliw t3, a0, 5
	fmv.w.x f10, s2
	addiw a0, a0, 16
	add a1, s4, t3
	flw f12, 0(a1)
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
	fmul.s f0, f12, f10
	fadd.s f11, f11, f13
	flw f13, 160(a1)
	fmul.s f12, f13, f10
	flw f13, 192(a1)
	fadd.s f11, f11, f0
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 224(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 256(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 288(a1)
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 320(a1)
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
	fmul.s f10, f12, f10
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	bgt a4, a0, label87
	j label84
.p2align 2
label80:
	slliw t3, a0, 5
	fmv.w.x f13, s2
	add a1, s4, t3
	sh2add t3, a3, a2
	flw f11, 0(a1)
	addiw a1, a0, 1
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	fsw f10, 0(t3)
	ld a0, 128(sp)
	ble a0, a1, label261
	mv a0, a1
	j label80
.p2align 2
label261:
	ble s1, s3, label868
.p2align 2
label106:
	ble s1, s5, label487
	sh2add a0, a3, a2
	flw f11, 0(a0)
	ble t1, s6, label493
	mv a0, s3
	j label111
.p2align 2
label108:
	sh2add a1, a0, s4
	fmv.w.x f10, s2
	addiw a0, a0, 4
	flw f12, 0(a1)
	flw f13, 4(a1)
	fmul.s f0, f12, f10
	fmul.s f12, f13, f10
	flw f13, 8(a1)
	fadd.s f11, f11, f0
	fadd.s f11, f11, f12
	fmul.s f12, f13, f10
	flw f13, 12(a1)
	fmul.s f10, f13, f10
	fadd.s f11, f11, f12
	fadd.s f11, f11, f10
	bgt t1, a0, label108
	fmv.s f10, f11
	sh2add a1, a0, s4
	fmv.w.x f12, s2
	addiw a0, a0, 1
	flw f11, 0(a1)
	sh2add a1, a3, a2
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	fsw f10, 0(a1)
	bgt s1, a0, label115
	j label874
.p2align 2
label111:
	sh2add a1, a0, s4
	fmv.w.x f10, s2
	addiw a0, a0, 16
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
	fadd.s f11, f11, f13
	fmul.s f13, f12, f10
	flw f12, 60(a1)
	fmul.s f10, f12, f10
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	bgt a5, a0, label111
	j label108
.p2align 2
label487:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	mv a0, s3
	sh2add a1, s3, s4
	fmv.w.x f12, s2
	addiw a0, s3, 1
	flw f11, 0(a1)
	sh2add a1, a3, a2
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	fsw f10, 0(a1)
	ble s1, a0, label887
.p2align 2
label115:
	sh2add a1, a0, s4
	fmv.w.x f12, s2
	addiw a0, a0, 1
	flw f11, 0(a1)
	sh2add a1, a3, a2
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	fsw f10, 0(a1)
	bgt s1, a0, label115
	mv t3, s3
	ld a0, 128(sp)
	bgt a0, s3, label94
.p2align 2
label875:
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s1, a3, label77
	j label869
.p2align 2
label79:
	sh2add a0, a3, a2
	flw f10, 0(a0)
	mv a0, s3
	j label80
.p2align 2
label131:
	addiw a3, a3, 1
	bgt s1, a3, label128
label878:
	addiw a5, a5, 1
	slliw a0, a5, 5
	fcvt.s.w f15, a5
	add a2, s4, a0
	ld a0, 128(sp)
	bgt a0, a5, label182
	j label181
.p2align 2
label121:
	slliw a0, s2, 5
	add s0, s9, a0
	flw f10, 0(s0)
	jal putfloat
	ble s1, s3, label124
	mv s4, s3
.p2align 2
label122:
	li a0, 32
	jal putch
	sh2add a1, s4, s0
	flw f10, 0(a1)
	jal putfloat
	addiw s4, s4, 1
	bgt s1, s4, label122
.p2align 2
label124:
	li a0, 10
	jal putch
	addiw s2, s2, 1
	ld a0, 128(sp)
	bgt a0, s2, label121
label125:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s4, 16(sp)
	ld s8, 24(sp)
	ld s3, 32(sp)
	ld s7, 40(sp)
	flw f19, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	ld s2, 72(sp)
	ld s10, 80(sp)
	flw f18, 88(sp)
	ld s6, 96(sp)
	ld s9, 104(sp)
	ld s1, 112(sp)
	flw f9, 120(sp)
	flw f8, 124(sp)
	addi sp, sp, 136
	ret
.p2align 2
label642:
	addiw a4, a4, 1
	ld a0, 128(sp)
	bgt a0, a4, label132
	addiw a3, a3, 1
	bgt s1, a3, label128
	j label878
.p2align 2
label874:
	mv t3, s3
	ld a0, 128(sp)
	bgt a0, s3, label94
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s1, a3, label77
	j label869
.p2align 2
label241:
	bgt s1, s3, label106
	mv t3, s3
	ld a0, 128(sp)
	bgt a0, s3, label94
	j label93
.p2align 2
label868:
	mv t3, s3
	ld a0, 128(sp)
	bgt a0, s3, label94
label93:
	sh2add a0, a3, a2
	addiw a3, a3, 1
	flw f11, 0(a0)
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f11, f10, f10
	fdiv.s f12, f11, f19
	fsw f12, 0(a0)
	bgt s1, a3, label77
	j label869
.p2align 2
label887:
	mv t3, s3
	ld a0, 128(sp)
	bgt a0, s3, label94
	j label875
label227:
	addiw t2, t2, 1
	fcvt.s.w f10, t2
	slliw a1, t2, 5
	ld a0, 128(sp)
	fmv.w.x f12, s2
	add a2, s9, a1
	fadd.s f11, f10, f12
	fmul.s f15, f9, f11
	bgt a0, t2, label224
	j label223
.p2align 2
label267:
	mv a0, s3
	j label84
.p2align 2
label493:
	mv a0, s3
	j label108
label865:
	addiw a5, a5, 1
	j label63
label154:
	addiw s10, s10, 1
	j label55
