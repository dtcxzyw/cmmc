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
pcrel101:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel101)
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
	flw f14, 0(a0)
	fmv.w.x f13, a1
	fdiv.s f11, f10, f13
	fabs.s f12, f11
	fle.s a1, f12, f14
	beq a1, zero, label5
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f14, a0
	fmul.s f13, f11, f14
	fmul.s f15, f10, f11
	fmul.s f12, f15, f11
	fsub.s f10, f13, f12
	j label2
label5:
	lui a1, 263168
	flw f13, 0(a0)
	fmv.w.x f14, a1
	fdiv.s f10, f11, f14
	fabs.s f12, f10
	fle.s a1, f12, f13
	beq a1, zero, label8
label6:
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f14, f10, f13
	fmul.s f11, f14, f10
	fmv.w.x f14, a0
	lui a0, 264192
	fmul.s f13, f10, f14
	fmul.s f12, f11, f10
	fsub.s f11, f13, f12
	fmv.w.x f13, a0
	lui a0, 263168
	fmv.w.x f14, a0
	fmul.s f10, f11, f13
	fmul.s f13, f11, f14
	fmul.s f15, f10, f11
	fmul.s f12, f15, f11
	fsub.s f10, f13, f12
	j label2
label8:
	lui a1, 263168
	flw f14, 0(a0)
	fmv.w.x f13, a1
	fdiv.s f11, f10, f13
	fabs.s f12, f11
	fle.s a1, f12, f14
	beq a1, zero, label11
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label6
label11:
	lui a0, 263168
	fmv.w.x f8, a0
	fdiv.s f10, f11, f8
	jal my_sin_impl
	lui a0, 264192
	fmv.w.x f13, a0
	fmul.s f11, f10, f13
	fmul.s f13, f10, f8
	fmul.s f14, f11, f10
	fmul.s f12, f14, f10
	fsub.s f11, f13, f12
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label6
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[120]
	addi sp, sp, -168
	sd ra, 0(sp)
	sd s11, 8(sp)
	sd s4, 16(sp)
	sd s3, 24(sp)
	sd s5, 32(sp)
	sd s0, 40(sp)
	sd s6, 48(sp)
	fsw f18, 56(sp)
	sd s1, 64(sp)
	sd s10, 72(sp)
	sd s7, 80(sp)
	fsw f19, 88(sp)
	sd s8, 96(sp)
	sd s2, 104(sp)
	sd s9, 112(sp)
	fsw f9, 120(sp)
	fsw f8, 124(sp)
	jal getint
	addiw a2, a0, -3
	mv s9, a0
	sd a0, 128(sp)
	sd a2, 152(sp)
	jal getint
	li s4, 16
	li s3, 4
pcrel1045:
	auipc s6, %pcrel_hi(test_dct)
	addiw a2, a0, -3
	addiw s2, s9, -18
pcrel1046:
	auipc a1, %pcrel_hi(test_block)
	lui s5, 256000
	mv s10, zero
	lui s1, 258048
	addi s8, a1, %pcrel_lo(pcrel1046)
	sd a0, 136(sp)
	mv s7, s8
	sd a2, 144(sp)
	addiw a2, a0, -18
pcrel1047:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	sd a2, 160(sp)
	addi s0, a0, %pcrel_lo(pcrel1047)
label103:
	ld s9, 128(sp)
	bgt s9, s10, label106
	j label113
.p2align 2
label111:
	addi s9, s9, 4
	mv s11, a1
.p2align 2
label108:
	jal getfloat
	addiw a1, s11, 1
	fsw f10, 0(s9)
	ld a0, 136(sp)
	bgt a0, a1, label111
	addiw s10, s10, 1
	addi s7, s7, 32
	ld s9, 128(sp)
	ble s9, s10, label113
.p2align 2
label106:
	ld a0, 136(sp)
	ble a0, zero, label274
	mv s9, s7
	mv s11, zero
	j label108
label113:
	ld s9, 128(sp)
pcrel1048:
	auipc s6, %pcrel_hi(test_dct)
	addi s7, s6, %pcrel_lo(pcrel1048)
	mv a5, zero
	mv a4, s7
	flw f10, 4(s0)
	fcvt.s.w f18, s9
	ld a0, 136(sp)
	fdiv.s f9, f10, f18
	fcvt.s.w f19, a0
	fdiv.s f8, f10, f19
	fcvt.s.w f1, zero
	bgt s9, zero, label117
	j label297
.p2align 2
label970:
	addiw a5, a5, 1
	addi a4, a4, 32
	ld s9, 128(sp)
	fcvt.s.w f1, a5
	ble s9, a5, label297
.p2align 2
label117:
	mv a3, a4
	mv t0, zero
	ld a0, 136(sp)
	bgt a0, zero, label121
	addiw a5, a5, 1
	addi a4, a4, 32
	ld s9, 128(sp)
	fcvt.s.w f1, a5
	bgt s9, a5, label117
	j label297
.p2align 2
label949:
	addiw t0, t0, 1
	addi a3, a3, 4
	ld a0, 136(sp)
	ble a0, t0, label970
.p2align 2
label121:
	fmv.w.x f10, zero
	mv t1, s8
	mv t2, zero
	fcvt.s.w f0, t0
	fsw f10, 0(a3)
	ld s9, 128(sp)
	bgt s9, zero, label126
	addiw t0, t0, 1
	addi a3, a3, 4
	ld a0, 136(sp)
	bgt a0, t0, label121
	addiw a5, a5, 1
	addi a4, a4, 32
	fcvt.s.w f1, a5
	bgt s9, a5, label117
	j label297
.p2align 2
label136:
	addiw t2, t2, 1
	addi t1, t1, 32
	ld s9, 128(sp)
	ble s9, t2, label949
.p2align 2
label126:
	fcvt.s.w f10, t2
	fmv.w.x f13, s1
	fadd.s f12, f10, f13
	flw f13, 8(s0)
	fmul.s f14, f9, f12
	flw f12, 12(s0)
	fmul.s f11, f14, f1
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a2, f10, f11
	or a1, a0, a2
	beq a1, zero, label331
	flw f11, 12(s0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f14, a0
	fmul.s f13, f14, f11
	fsub.s f10, f10, f13
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label909
	fmv.s f11, f10
.p2align 2
label909:
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label911
.p2align 2
label984:
	fmv.s f10, f11
.p2align 2
label911:
	jal my_sin_impl
	mv t3, t1
	mv t4, zero
	fmv.s f2, f10
	flw f3, 0(a3)
	j label130
.p2align 2
label134:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label913
	fmv.s f11, f10
.p2align 2
label913:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label915
.p2align 2
label914:
	fmv.s f10, f11
.p2align 2
label915:
	jal my_sin_impl
	addiw t4, t4, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 136(sp)
	ble a0, t4, label136
	addi t3, t3, 4
.p2align 2
label130:
	fcvt.s.w f10, t4
	flw f13, 8(s0)
	fmv.w.x f12, s1
	fadd.s f15, f10, f12
	flw f12, 12(s0)
	fmul.s f14, f8, f15
	fmul.s f11, f14, f0
	fadd.s f10, f11, f13
	flw f13, 16(s0)
	flw f11, 0(t3)
	fmul.s f4, f11, f2
	flt.s a2, f10, f13
	flt.s a1, f12, f10
	or a0, a1, a2
	beq a0, zero, label134
	flw f11, 12(s0)
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	fmul.s f14, f13, f11
	flw f11, 4(s0)
	flw f12, 12(s0)
	fsub.s f10, f10, f14
	fsub.s f13, f10, f12
	flt.s a0, f11, f10
	fmv.s f11, f13
	bne a0, zero, label913
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label915
	j label914
.p2align 2
label331:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label909
	fmv.s f11, f10
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f10, f13
	bne a0, zero, label911
	j label984
label297:
	mv s8, s7
	mv s10, zero
	ld s9, 128(sp)
	bgt s9, zero, label144
	j label151
.p2align 2
label150:
	li a0, 10
	jal putch
	ld s9, 128(sp)
	addi s8, s8, 32
	addiw s10, s10, 1
	ble s9, s10, label151
.p2align 2
label144:
	flw f10, 0(s8)
	jal putfloat
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label150
	addi s9, s8, 4
	mv s11, t5
.p2align 2
label146:
	li a0, 32
	jal putch
	flw f10, 0(s9)
	jal putfloat
	ld a0, 136(sp)
	addiw s11, s11, 1
	ble a0, s11, label150
	addi s9, s9, 4
	j label146
label151:
	li a0, 10
	jal putch
	mv t0, zero
pcrel1049:
	auipc a1, %pcrel_hi(test_idct)
	addi a5, a1, %pcrel_lo(pcrel1049)
	mv a4, a5
	fcvt.s.w f10, zero
	ld s9, 128(sp)
	fmv.w.x f11, s1
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt s9, zero, label167
	j label155
.p2align 2
label990:
	addiw t0, t0, 1
	addi a4, a4, 32
	fmv.w.x f11, s1
	ld s9, 128(sp)
	fcvt.s.w f10, t0
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	ble s9, t0, label155
.p2align 2
label167:
	mv a3, a4
	mv t1, zero
	ld a0, 136(sp)
	bgt a0, zero, label172
label171:
	addiw t0, t0, 1
	addi a4, a4, 32
	fmv.w.x f11, s1
	ld s9, 128(sp)
	fcvt.s.w f10, t0
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt s9, t0, label167
	j label155
.p2align 2
label973:
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	addi a3, a3, 4
	ble a0, t1, label990
.p2align 2
label172:
	auipc s6, %pcrel_hi(test_dct)
	flw f12, %pcrel_lo(label172)(s6)
	fmv.w.x f13, s5
	fcvt.s.w f10, t1
	li t5, 1
	fmul.s f11, f12, f13
	fmv.w.x f12, s1
	fadd.s f13, f10, f12
	fsw f11, 0(a3)
	ld s9, 128(sp)
	fmul.s f0, f8, f13
	ble s9, t5, label173
	ble s9, s3, label733
	ld a2, 152(sp)
	ble a2, s4, label755
	addi a0, s7, 32
	mv a1, t5
.p2align 2
label256:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f14, 32(a0)
	fmul.s f15, f13, f10
	fmul.s f13, f14, f10
	fadd.s f12, f11, f15
	flw f15, 64(a0)
	flw f2, 96(a0)
	fmul.s f14, f15, f10
	fadd.s f11, f12, f13
	fmul.s f13, f2, f10
	fadd.s f12, f11, f14
	flw f14, 128(a0)
	fmul.s f15, f14, f10
	fadd.s f11, f12, f13
	flw f13, 160(a0)
	flw f2, 192(a0)
	fmul.s f3, f13, f10
	fmul.s f14, f2, f10
	fadd.s f12, f11, f15
	flw f15, 224(a0)
	fmul.s f2, f15, f10
	fadd.s f11, f12, f3
	fadd.s f13, f11, f14
	flw f14, 256(a0)
	fmul.s f15, f14, f10
	fadd.s f12, f13, f2
	flw f2, 288(a0)
	fmul.s f14, f2, f10
	fadd.s f11, f12, f15
	flw f15, 320(a0)
	fmul.s f2, f15, f10
	fadd.s f13, f11, f14
	flw f14, 352(a0)
	fmul.s f15, f14, f10
	fadd.s f12, f13, f2
	flw f13, 384(a0)
	flw f14, 416(a0)
	fmul.s f2, f13, f10
	flw f13, 448(a0)
	fadd.s f11, f12, f15
	fmul.s f15, f14, f10
	fmul.s f14, f13, f10
	fadd.s f12, f11, f2
	fadd.s f11, f12, f15
	flw f15, 480(a0)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	ble s2, a1, label858
	addi a0, a0, 512
	j label256
.p2align 2
label858:
	fmv.s f10, f11
	mv t5, a1
	ld a2, 152(sp)
	ble a2, a1, label966
.p2align 2
label246:
	slliw a2, t5, 5
	mv a1, t5
	fmv.s f11, f10
	add a0, s7, a2
	j label247
.p2align 2
label251:
	addi a0, a0, 128
.p2align 2
label247:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f15, 32(a0)
	fmul.s f14, f13, f10
	fmul.s f2, f15, f10
	fadd.s f12, f11, f14
	flw f14, 64(a0)
	flw f15, 96(a0)
	fmul.s f13, f14, f10
	ld a2, 152(sp)
	fmul.s f14, f15, f10
	fadd.s f11, f12, f2
	fadd.s f12, f11, f13
	fadd.s f11, f12, f14
	bgt a2, a1, label251
	fmv.s f10, f11
	ld s9, 128(sp)
	ble s9, a1, label982
.p2align 2
label232:
	slliw a2, a1, 5
	add a0, s7, a2
	j label233
.p2align 2
label237:
	addi a0, a0, 32
.p2align 2
label233:
	flw f11, 0(a0)
	fmv.w.x f13, s1
	addiw a1, a1, 1
	ld s9, 128(sp)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	bgt s9, a1, label237
	fsw f10, 0(a3)
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label980
.p2align 2
label193:
	flw f11, 0(a3)
	ld a0, 136(sp)
	ble a0, s3, label604
	ld a2, 144(sp)
	ble a2, s4, label609
	addi a0, s7, 4
	li t5, 1
	mv a1, t5
.p2align 2
label196:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f14, 4(a0)
	fmul.s f15, f13, f10
	flw f2, 8(a0)
	fmul.s f13, f14, f10
	fmul.s f14, f2, f10
	fadd.s f12, f11, f15
	flw f15, 12(a0)
	fadd.s f11, f12, f13
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	flw f14, 16(a0)
	fmul.s f15, f14, f10
	fadd.s f11, f12, f13
	flw f13, 20(a0)
	flw f2, 24(a0)
	fmul.s f14, f13, f10
	flw f13, 28(a0)
	fadd.s f12, f11, f15
	fmul.s f15, f2, f10
	fmul.s f2, f13, f10
	fadd.s f11, f12, f14
	flw f14, 32(a0)
	fmul.s f3, f14, f10
	fadd.s f12, f11, f15
	flw f15, 36(a0)
	flw f14, 40(a0)
	fmul.s f13, f15, f10
	flw f15, 44(a0)
	fadd.s f11, f12, f2
	fmul.s f2, f14, f10
	fmul.s f14, f15, f10
	fadd.s f12, f11, f3
	fadd.s f11, f12, f13
	fadd.s f13, f11, f2
	flw f2, 48(a0)
	fmul.s f15, f2, f10
	fadd.s f12, f13, f14
	flw f14, 52(a0)
	fmul.s f13, f14, f10
	fadd.s f11, f12, f15
	flw f15, 56(a0)
	flw f14, 60(a0)
	fmul.s f2, f15, f10
	ld a2, 160(sp)
	fmul.s f15, f14, f10
	fadd.s f12, f11, f13
	fadd.s f13, f12, f2
	fadd.s f11, f13, f15
	ble a2, a1, label681
	addi a0, a0, 64
	j label196
.p2align 2
label681:
	fmv.s f10, f11
	mv t5, a1
	ld a2, 144(sp)
	ble a2, a1, label961
.p2align 2
label206:
	sh2add a0, t5, s7
	mv a1, t5
	fmv.s f11, f10
	j label207
.p2align 2
label211:
	addi a0, a0, 16
.p2align 2
label207:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f2, 4(a0)
	fmul.s f15, f13, f10
	fmul.s f14, f2, f10
	fadd.s f12, f11, f15
	flw f15, 8(a0)
	fmul.s f13, f15, f10
	fadd.s f11, f12, f14
	flw f14, 12(a0)
	ld a2, 144(sp)
	fmul.s f15, f14, f10
	fadd.s f12, f11, f13
	fadd.s f11, f12, f15
	bgt a2, a1, label211
	mv a2, a1
	fmv.s f10, f11
	ld a0, 136(sp)
	ble a0, a1, label976
.p2align 2
label221:
	sh2add a1, a2, s7
.p2align 2
label222:
	flw f11, 0(a1)
	fmv.w.x f12, s1
	addiw a2, a2, 1
	ld a0, 136(sp)
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	ble a0, a2, label728
	addi a1, a1, 4
	j label222
.p2align 2
label733:
	fmv.w.x f12, zero
	li t5, 1
	fmv.s f10, f11
	mv a1, t5
	fmv.s f11, f12
	ld s9, 128(sp)
	bgt s9, t5, label232
	fmv.s f10, f12
	fsw f12, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label193
label979:
	addi t2, s7, 32
	li t5, 1
	ld s9, 128(sp)
	mv t3, t5
	bgt s9, t5, label178
	j label491
.p2align 2
label581:
	addiw t3, t3, 1
	addi t2, t2, 32
	ld s9, 128(sp)
	ble s9, t3, label973
.p2align 2
label178:
	fcvt.s.w f12, t3
	flw f13, 8(s0)
	fmul.s f11, f1, f12
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a1, f10, f11
	or a2, a0, a1
	bne a2, zero, label191
	ld a0, 136(sp)
	li t5, 1
	ble a0, t5, label512
.p2align 2
label181:
	flw f12, 12(s0)
	flw f14, 4(s0)
	fsub.s f13, f10, f12
	flt.s a0, f14, f10
	fmv.s f11, f13
	bne a0, zero, label917
	fmv.s f11, f10
.p2align 2
label917:
	fadd.s f13, f11, f12
	flw f14, 20(s0)
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label919
	fmv.s f10, f11
.p2align 2
label919:
	jal my_sin_impl
	li t5, 1
	addi t4, t2, 4
	flw f3, 0(a3)
	fmv.s f2, f10
	j label182
.p2align 2
label186:
	flw f11, 12(s0)
	fdiv.s f14, f10, f11
	fcvt.w.s a0, f14, rtz
	fcvt.s.w f12, a0
	fmul.s f13, f12, f11
	fsub.s f10, f10, f13
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label921
	fmv.s f11, f10
.p2align 2
label921:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label923
.p2align 2
label989:
	fmv.s f10, f11
.p2align 2
label923:
	jal my_sin_impl
	addiw t5, t5, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 136(sp)
	ble a0, t5, label581
	addi t4, t4, 4
.p2align 2
label182:
	fcvt.s.w f12, t5
	flw f13, 8(s0)
	fmul.s f11, f0, f12
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a2, f10, f11
	flw f12, 0(t4)
	or a1, a0, a2
	fmul.s f4, f12, f2
	bne a1, zero, label186
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label921
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label923
	j label989
.p2align 2
label191:
	flw f11, 12(s0)
	li t5, 1
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f14, a0
	ld a0, 136(sp)
	fmul.s f13, f14, f11
	fsub.s f10, f10, f13
	bgt a0, t5, label181
	addiw t3, t3, 1
	addi t2, t2, 32
	ld s9, 128(sp)
	bgt s9, t3, label178
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	addi a3, a3, 4
	bgt a0, t1, label172
label971:
	addiw t0, t0, 1
	addi a4, a4, 32
	fmv.w.x f11, s1
	ld s9, 128(sp)
	fcvt.s.w f10, t0
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt s9, t0, label167
	j label155
.p2align 2
label966:
	fmv.s f10, f11
	ld s9, 128(sp)
	bgt s9, a1, label232
	li t5, 1
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label193
	addi t2, s7, 32
	mv t3, t5
	bgt s9, t5, label178
	j label491
.p2align 2
label755:
	fmv.w.x f12, zero
	fmv.s f10, f11
	li t5, 1
	mv a1, zero
	fmv.s f11, f12
	ld a2, 152(sp)
	bgt a2, t5, label246
	fmv.s f10, f12
	ld s9, 128(sp)
	bgt s9, zero, label232
	fsw f12, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label193
	j label979
.p2align 2
label961:
	mv a2, a1
	fmv.s f10, f11
	ld a0, 136(sp)
	bgt a0, a1, label221
	addi t2, s7, 32
	li t5, 1
	fsw f11, 0(a3)
	mv t3, t5
	ld s9, 128(sp)
	bgt s9, t5, label178
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	addi a3, a3, 4
	bgt a0, t1, label172
	j label171
.p2align 2
label173:
	ld a0, 136(sp)
	li t5, 1
	bgt a0, t5, label193
	addi t2, s7, 32
	mv t3, t5
	ld s9, 128(sp)
	bgt s9, t5, label178
	j label491
.p2align 2
label604:
	fmv.w.x f12, zero
	li t5, 1
	fmv.s f10, f11
	mv a2, t5
	ld a0, 136(sp)
	fmv.s f11, f12
	bgt a0, t5, label221
	fmv.s f10, f12
	addi t2, s7, 32
	fsw f12, 0(a3)
	mv t3, t5
	ld s9, 128(sp)
	bgt s9, t5, label178
label962:
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	addi a3, a3, 4
	bgt a0, t1, label172
	j label171
.p2align 2
label609:
	fmv.w.x f12, zero
	fmv.s f10, f11
	li t5, 1
	mv a1, zero
	ld a2, 144(sp)
	fmv.s f11, f12
	bgt a2, t5, label206
	mv a2, zero
	fmv.s f10, f12
	ld a0, 136(sp)
	bgt a0, zero, label221
	addi t2, s7, 32
	fsw f12, 0(a3)
	mv t3, t5
	ld s9, 128(sp)
	bgt s9, t5, label178
	j label962
.p2align 2
label728:
	fsw f10, 0(a3)
	addi t2, s7, 32
	li t5, 1
	ld s9, 128(sp)
	mv t3, t5
	bgt s9, t5, label178
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	addi a3, a3, 4
	bgt a0, t1, label172
	j label171
.p2align 2
label512:
	addiw t3, t3, 1
	addi t2, t2, 32
	ld s9, 128(sp)
	bgt s9, t3, label178
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	addi a3, a3, 4
	bgt a0, t1, label172
	j label971
.p2align 2
label976:
	fmv.s f10, f11
	addi t2, s7, 32
	li t5, 1
	fsw f11, 0(a3)
	mv t3, t5
	ld s9, 128(sp)
	bgt s9, t5, label178
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	addi a3, a3, 4
	bgt a0, t1, label172
	j label171
.p2align 2
label982:
	fmv.s f10, f11
	li t5, 1
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label193
	addi t2, s7, 32
	ld s9, 128(sp)
	mv t3, t5
	bgt s9, t5, label178
	j label491
label155:
	mv s0, a5
	mv s1, zero
	ld s9, 128(sp)
	bgt s9, zero, label160
	j label159
.p2align 2
label161:
	li a0, 10
	jal putch
	ld s9, 128(sp)
	addi s0, s0, 32
	addiw s1, s1, 1
	ble s9, s1, label159
.p2align 2
label160:
	flw f10, 0(s0)
	jal putfloat
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label161
	addi s2, s0, 4
	mv s3, t5
.p2align 2
label163:
	li a0, 32
	jal putch
	flw f10, 0(s2)
	jal putfloat
	ld a0, 136(sp)
	addiw s3, s3, 1
	ble a0, s3, label161
	addi s2, s2, 4
	j label163
label159:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s6, 48(sp)
	flw f18, 56(sp)
	ld s1, 64(sp)
	ld s10, 72(sp)
	ld s7, 80(sp)
	flw f19, 88(sp)
	ld s8, 96(sp)
	ld s2, 104(sp)
	ld s9, 112(sp)
	flw f9, 120(sp)
	flw f8, 124(sp)
	addi sp, sp, 168
	ret
.p2align 2
label980:
	addi t2, s7, 32
	li t5, 1
	ld s9, 128(sp)
	mv t3, t5
	bgt s9, t5, label178
label491:
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f18
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	addi a3, a3, 4
	bgt a0, t1, label172
	j label971
label274:
	addiw s10, s10, 1
	addi s7, s7, 32
	j label103
