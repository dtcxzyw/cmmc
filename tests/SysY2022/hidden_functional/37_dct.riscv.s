.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	1078530011
	.4byte	1070141403
	.4byte	1086918619
	.4byte	3234402267
	.4byte	3226013659
.bss
.p2align 3
test_block:
	.zero	256
.p2align 3
test_dct:
	.zero	256
.p2align 3
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
	flw f13, 0(a0)
	fmv.w.x f14, a1
	fdiv.s f11, f10, f14
	fabs.s f12, f11
	fle.s a1, f12, f13
	beq a1, zero, label7
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label2
label7:
	lui a1, 263168
	flw f14, 0(a0)
	fmv.w.x f13, a1
	fdiv.s f10, f11, f13
	fabs.s f12, f10
	fle.s a1, f12, f14
	beq a1, zero, label10
label8:
	lui a0, 264192
	fmv.w.x f11, a0
	lui a0, 263168
	fmul.s f14, f10, f11
	fmul.s f13, f14, f10
	fmv.w.x f14, a0
	lui a0, 264192
	fmul.s f12, f13, f10
	fmul.s f13, f10, f14
	fsub.s f11, f13, f12
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label2
label10:
	lui a1, 263168
	flw f13, 0(a0)
	fmv.w.x f14, a1
	fdiv.s f11, f10, f14
	fabs.s f12, f11
	fle.s a1, f12, f13
	beq a1, zero, label13
	lui a0, 264192
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label8
label13:
	lui a0, 263168
	fmv.w.x f8, a0
	fdiv.s f10, f11, f8
	jal my_sin_impl
	lui a0, 264192
	fmv.w.x f11, a0
	fmul.s f15, f10, f8
	fmul.s f13, f10, f11
	fmul.s f14, f13, f10
	fmv.w.x f13, a0
	lui a0, 263168
	fmul.s f12, f14, f10
	fsub.s f11, f15, f12
	fmul.s f10, f11, f13
	fmv.w.x f13, a0
	fmul.s f14, f10, f11
	fmul.s f12, f14, f11
	fmul.s f14, f11, f13
	fsub.s f10, f14, f12
	j label8
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[120]
	addi sp, sp, -168
	sd ra, 0(sp)
	sd s11, 8(sp)
	sd s10, 16(sp)
	fsw f18, 24(sp)
	sd s6, 32(sp)
	sd s9, 40(sp)
	sd s7, 48(sp)
	fsw f19, 56(sp)
	sd s4, 64(sp)
	sd s3, 72(sp)
	sd s5, 80(sp)
	sd s0, 88(sp)
	sd s1, 96(sp)
	sd s8, 104(sp)
	sd s2, 112(sp)
	fsw f9, 120(sp)
	fsw f8, 124(sp)
	jal getint
	sd a0, 128(sp)
	mv a1, a0
	jal getint
	li s3, 4
	lui s5, 256000
	sd a0, 136(sp)
	addiw a2, a0, -3
	li s4, 16
pcrel1071:
	auipc s6, %pcrel_hi(test_dct)
	addiw s2, a0, -18
	lui s1, 258048
	sd a2, 152(sp)
pcrel1072:
	auipc a0, %pcrel_hi(test_block)
	ld a1, 128(sp)
	addi s8, a0, %pcrel_lo(pcrel1072)
	addiw a2, a1, -3
	sd a2, 144(sp)
	addiw a2, a1, -18
	sd a2, 160(sp)
pcrel1073:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s0, a2, %pcrel_lo(pcrel1073)
	ble a1, zero, label114
	mv s7, s8
	mv s9, zero
	ld a0, 136(sp)
	bgt a0, zero, label107
	j label112
.p2align 2
label111:
	addi s10, s10, 4
	mv s11, a1
.p2align 2
label108:
	jal getfloat
	addiw a1, s11, 1
	fsw f10, 0(s10)
	ld a0, 136(sp)
	bgt a0, a1, label111
	addiw s9, s9, 1
	ld a1, 128(sp)
	ble a1, s9, label114
.p2align 2
label113:
	addi s7, s7, 32
	ld a0, 136(sp)
	ble a0, zero, label112
.p2align 2
label107:
	mv s10, s7
	mv s11, zero
	j label108
label114:
	ld a1, 128(sp)
pcrel1074:
	auipc s6, %pcrel_hi(test_dct)
	addi s7, s6, %pcrel_lo(pcrel1074)
	flw f10, 4(s0)
	ld a0, 136(sp)
	fcvt.s.w f18, a1
	fcvt.s.w f19, a0
	fdiv.s f9, f10, f18
	fdiv.s f8, f10, f19
	ble a1, zero, label143
	mv a4, s7
	mv a5, zero
	fcvt.s.w f1, zero
	bgt a0, zero, label121
	j label119
.p2align 2
label997:
	addiw a5, a5, 1
	ld a1, 128(sp)
	ble a1, a5, label143
.p2align 2
label120:
	addi a4, a4, 32
	fcvt.s.w f1, a5
	ld a0, 136(sp)
	ble a0, zero, label119
.p2align 2
label121:
	mv a3, a4
	mv t0, zero
	fmv.w.x f10, zero
	mv t1, s8
	mv t2, zero
	fcvt.s.w f0, zero
	fsw f10, 0(a4)
	j label125
.p2align 2
label412:
	addiw t2, t2, 1
	ld a1, 128(sp)
	ble a1, t2, label976
	addi t1, t1, 32
.p2align 2
label125:
	fcvt.s.w f10, t2
	fmv.w.x f12, s1
	fadd.s f13, f10, f12
	flw f12, 8(s0)
	fmul.s f14, f9, f13
	flw f13, 12(s0)
	fmul.s f11, f14, f1
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a0, f13, f10
	flt.s a1, f10, f11
	or a2, a0, a1
	beq a2, zero, label340
	flw f12, 12(s0)
	fdiv.s f11, f10, f12
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f14, a0
	fmul.s f13, f14, f12
	fsub.s f11, f10, f13
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label935
	fmv.s f10, f11
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f11, f14
	bne a0, zero, label937
	j label936
.p2align 2
label340:
	fmv.s f11, f10
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label935
	fmv.s f10, f11
label935:
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f11, f14
	bne a0, zero, label937
.p2align 2
label936:
	fmv.s f11, f10
.p2align 2
label937:
	fmv.s f10, f11
	jal my_sin_impl
	mv t3, t1
	mv t4, zero
	fmv.s f2, f10
	flw f3, 0(a3)
	j label130
.p2align 2
label939:
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f11, f14
	bne a0, zero, label941
.p2align 2
label1011:
	fmv.s f11, f10
.p2align 2
label941:
	fmv.s f10, f11
	jal my_sin_impl
	addiw t4, t4, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 136(sp)
	ble a0, t4, label412
	addi t3, t3, 4
.p2align 2
label130:
	fcvt.s.w f10, t4
	fmv.w.x f13, s1
	fadd.s f12, f10, f13
	flw f13, 8(s0)
	fmul.s f14, f8, f12
	flw f12, 12(s0)
	fmul.s f11, f14, f0
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a1, f12, f10
	flt.s a2, f10, f11
	flw f12, 0(t3)
	or a0, a1, a2
	fmul.s f4, f12, f2
	beq a0, zero, label381
	flw f12, 12(s0)
	fdiv.s f11, f10, f12
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f14, a0
	fmul.s f13, f14, f12
	fsub.s f11, f10, f13
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label939
	fmv.s f10, f11
	j label939
.p2align 2
label381:
	fmv.s f11, f10
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label939
	fmv.s f10, f11
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f11, f14
	bne a0, zero, label941
	j label1011
.p2align 2
label976:
	addiw t0, t0, 1
	ld a0, 136(sp)
	ble a0, t0, label997
	addi a3, a3, 4
	fmv.w.x f10, zero
	fcvt.s.w f0, t0
	mv t1, s8
	mv t2, zero
	fsw f10, 0(a3)
	j label125
label143:
	ld a1, 128(sp)
	ble a1, zero, label155
	mv s8, s7
	mv s9, zero
	j label145
.p2align 2
label152:
	addi s10, s10, 4
.p2align 2
label149:
	li a0, 32
	jal putch
	flw f10, 0(s10)
	jal putfloat
	ld a0, 136(sp)
	addiw s11, s11, 1
	bgt a0, s11, label152
.p2align 2
label153:
	li a0, 10
	jal putch
	ld a1, 128(sp)
	addiw s9, s9, 1
	ble a1, s9, label155
	addi s8, s8, 32
.p2align 2
label145:
	flw f10, 0(s8)
	jal putfloat
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label153
	addi s10, s8, 4
	mv s11, t5
	j label149
label155:
	li a0, 10
	jal putch
	ld a1, 128(sp)
pcrel1075:
	auipc a2, %pcrel_hi(test_idct)
	addi a5, a2, %pcrel_lo(pcrel1075)
	ble a1, zero, label156
	mv a4, a5
	mv t0, zero
	fcvt.s.w f10, zero
	ld a0, 136(sp)
	fmv.w.x f11, s1
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a0, zero, label174
	j label161
.p2align 2
label999:
	addiw t0, t0, 1
	ld a1, 128(sp)
	ble a1, t0, label474
.p2align 2
label162:
	addi a4, a4, 32
	fcvt.s.w f10, t0
	fmv.w.x f11, s1
	ld a0, 136(sp)
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	ble a0, zero, label161
.p2align 2
label174:
	mv a3, a4
	mv t1, zero
	j label175
.p2align 2
label982:
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	ble a0, t1, label999
.p2align 2
label199:
	addi a3, a3, 4
.p2align 2
label175:
	auipc s6, %pcrel_hi(test_dct)
	flw f10, %pcrel_lo(label175)(s6)
	fmv.w.x f13, s5
	fcvt.s.w f12, t1
	li t5, 1
	fmul.s f11, f10, f13
	fmv.w.x f13, s1
	fadd.s f10, f12, f13
	fsw f11, 0(a3)
	ld a1, 128(sp)
	fmul.s f0, f8, f10
	ble a1, t5, label178
	ble a1, s3, label761
	ld a2, 144(sp)
	ble a2, s4, label783
	addi a0, s7, 32
	mv a1, t5
	j label263
.p2align 2
label267:
	addi a0, a0, 512
.p2align 2
label263:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f14, 32(a0)
	fmul.s f2, f13, f10
	fmul.s f15, f14, f10
	fadd.s f12, f11, f2
	flw f2, 64(a0)
	flw f14, 96(a0)
	fmul.s f13, f2, f10
	fadd.s f11, f12, f15
	fmul.s f15, f14, f10
	fadd.s f12, f11, f13
	flw f13, 128(a0)
	fmul.s f14, f13, f10
	fadd.s f11, f12, f15
	flw f15, 160(a0)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	flw f14, 192(a0)
	flw f15, 224(a0)
	fmul.s f2, f14, f10
	fmul.s f14, f15, f10
	fadd.s f11, f12, f13
	flw f13, 256(a0)
	flw f15, 288(a0)
	fadd.s f12, f11, f2
	fmul.s f2, f13, f10
	flw f13, 320(a0)
	fadd.s f11, f12, f14
	fmul.s f14, f15, f10
	fmul.s f15, f13, f10
	fadd.s f12, f11, f2
	flw f2, 352(a0)
	fadd.s f11, f12, f14
	fmul.s f14, f2, f10
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
	ld a2, 160(sp)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	bgt a2, a1, label267
	fmv.s f10, f11
	mv t5, a1
	ld a2, 144(sp)
	ble a2, a1, label996
.p2align 2
label256:
	slliw a2, t5, 5
	mv a1, t5
	fmv.s f11, f10
	add a0, s7, a2
	j label257
.p2align 2
label261:
	addi a0, a0, 128
.p2align 2
label257:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f14, 32(a0)
	fmul.s f15, f13, f10
	flw f2, 64(a0)
	fmul.s f13, f14, f10
	flw f14, 96(a0)
	ld a2, 144(sp)
	fadd.s f12, f11, f15
	fmul.s f15, f2, f10
	fadd.s f11, f12, f13
	fmul.s f13, f14, f10
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	bgt a2, a1, label261
	mv a2, a1
	fmv.s f10, f11
	ld a1, 128(sp)
	ble a1, a2, label995
.p2align 2
label239:
	slliw a1, a2, 5
	add a0, s7, a1
	j label240
.p2align 2
label244:
	addi a0, a0, 32
.p2align 2
label240:
	flw f11, 0(a0)
	fmv.w.x f12, s1
	addiw a2, a2, 1
	ld a1, 128(sp)
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	bgt a1, a2, label244
	fsw f10, 0(a3)
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label1007
.p2align 2
label200:
	flw f11, 0(a3)
	ld a0, 136(sp)
	ble a0, s3, label633
	ld a2, 152(sp)
	ble a2, s4, label655
	addi a0, s7, 4
	li t5, 1
	mv a1, t5
.p2align 2
label215:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f14, 4(a0)
	fmul.s f15, f13, f10
	fmul.s f13, f14, f10
	fadd.s f12, f11, f15
	flw f15, 8(a0)
	fmul.s f14, f15, f10
	fadd.s f11, f12, f13
	flw f13, 12(a0)
	fmul.s f15, f13, f10
	fadd.s f12, f11, f14
	flw f14, 16(a0)
	fmul.s f13, f14, f10
	fadd.s f11, f12, f15
	flw f15, 20(a0)
	flw f3, 24(a0)
	fmul.s f14, f15, f10
	fmul.s f2, f3, f10
	flw f15, 28(a0)
	fadd.s f12, f11, f13
	fadd.s f13, f12, f14
	fmul.s f14, f15, f10
	fadd.s f11, f13, f2
	flw f13, 32(a0)
	flw f15, 36(a0)
	fmul.s f2, f13, f10
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	flw f14, 40(a0)
	fmul.s f15, f14, f10
	fadd.s f11, f12, f2
	fadd.s f12, f11, f13
	flw f13, 44(a0)
	flw f14, 48(a0)
	fmul.s f2, f13, f10
	fmul.s f13, f14, f10
	fadd.s f11, f12, f15
	fadd.s f12, f11, f2
	flw f2, 52(a0)
	flw f15, 56(a0)
	fmul.s f14, f2, f10
	fmul.s f2, f15, f10
	fadd.s f11, f12, f13
	fadd.s f13, f11, f14
	flw f14, 60(a0)
	fmul.s f15, f14, f10
	fadd.s f12, f13, f2
	fadd.s f11, f12, f15
	ble s2, a1, label727
	addi a0, a0, 64
	j label215
.p2align 2
label727:
	fmv.s f10, f11
	mv t5, a1
	ld a2, 152(sp)
	ble a2, a1, label990
.p2align 2
label228:
	sh2add a0, t5, s7
	mv a1, t5
	fmv.s f11, f10
.p2align 2
label229:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f14, 4(a0)
	fmul.s f15, f13, f10
	flw f2, 8(a0)
	fmul.s f13, f14, f10
	fmul.s f14, f2, f10
	fadd.s f12, f11, f15
	flw f15, 12(a0)
	ld a2, 152(sp)
	fadd.s f11, f12, f13
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	ble a2, a1, label756
	addi a0, a0, 16
	j label229
.p2align 2
label756:
	mv a2, a1
	fmv.s f10, f11
	ld a0, 136(sp)
	ble a0, a1, label992
.p2align 2
label205:
	sh2add a1, a2, s7
	j label206
.p2align 2
label210:
	addi a1, a1, 4
.p2align 2
label206:
	flw f11, 0(a1)
	fmv.w.x f13, s1
	addiw a2, a2, 1
	ld a0, 136(sp)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	bgt a0, a2, label210
	fsw f10, 0(a3)
	li t5, 1
	ld a1, 128(sp)
	ble a1, t5, label1003
.p2align 2
label180:
	addi t2, s7, 32
	li t5, 1
	mv t3, t5
	ld a0, 136(sp)
	bgt a0, t5, label184
	addiw t3, t5, 1
	ld a1, 128(sp)
	bgt a1, t3, label197
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	bgt a0, t1, label199
	j label985
.p2align 2
label594:
	addiw t3, t3, 1
	ld a1, 128(sp)
	ble a1, t3, label982
.p2align 2
label197:
	addi t2, t2, 32
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label986
.p2align 2
label184:
	fcvt.s.w f12, t3
	flw f13, 8(s0)
	fmul.s f11, f1, f12
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a1, f10, f11
	or a2, a0, a1
	beq a2, zero, label533
	flw f12, 12(s0)
	fdiv.s f11, f10, f12
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f13, a0
	fmul.s f14, f13, f12
	fsub.s f11, f10, f14
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label943
	fmv.s f10, f11
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f11, f14
	bne a0, zero, label945
	j label944
.p2align 2
label533:
	fmv.s f11, f10
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label943
	fmv.s f10, f11
label943:
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f11, f14
	bne a0, zero, label945
.p2align 2
label944:
	fmv.s f11, f10
.p2align 2
label945:
	fmv.s f10, f11
	jal my_sin_impl
	li t5, 1
	addi t4, t2, 4
	flw f3, 0(a3)
	fmv.s f2, f10
	j label187
.p2align 2
label947:
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f11, f13
	bne a0, zero, label949
.p2align 2
label948:
	fmv.s f11, f10
.p2align 2
label949:
	fmv.s f10, f11
	jal my_sin_impl
	addiw t5, t5, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 136(sp)
	ble a0, t5, label594
	addi t4, t4, 4
.p2align 2
label187:
	fcvt.s.w f12, t5
	flw f13, 8(s0)
	fmul.s f11, f0, f12
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a1, f12, f10
	flt.s a2, f10, f11
	flw f12, 0(t4)
	or a0, a1, a2
	fmul.s f4, f12, f2
	bne a0, zero, label194
	fmv.s f11, f10
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label947
	fmv.s f10, f11
	j label947
.p2align 2
label194:
	flw f12, 12(s0)
	fdiv.s f11, f10, f12
	fcvt.w.s a0, f11, rtz
	fcvt.s.w f13, a0
	fmul.s f14, f13, f12
	fsub.s f11, f10, f14
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label947
	fmv.s f10, f11
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f11, f13
	bne a0, zero, label949
	j label948
.p2align 2
label761:
	fmv.w.x f12, zero
	li t5, 1
	fmv.s f10, f11
	mv a2, t5
	fmv.s f11, f12
	ld a1, 128(sp)
	bgt a1, t5, label239
	fmv.s f10, f12
	fsw f12, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label200
	j label179
.p2align 2
label633:
	fmv.w.x f12, zero
	li t5, 1
	fmv.s f10, f11
	mv a2, t5
	fmv.s f11, f12
	ld a0, 136(sp)
	bgt a0, t5, label205
	fmv.s f10, f12
	fsw f12, 0(a3)
	ld a1, 128(sp)
	bgt a1, t5, label180
label511:
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label199
	j label627
.p2align 2
label783:
	fmv.w.x f12, zero
	fmv.s f10, f11
	li t5, 1
	mv a1, zero
	fmv.s f11, f12
	ld a2, 144(sp)
	bgt a2, t5, label256
	mv a2, zero
	fmv.s f10, f12
	ld a1, 128(sp)
	bgt a1, zero, label239
	fsw f12, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label200
	bgt a1, t5, label180
	j label511
.p2align 2
label996:
	mv a2, a1
	fmv.s f10, f11
	ld a1, 128(sp)
	bgt a1, a2, label239
	li t5, 1
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label200
	bgt a1, t5, label180
	j label511
.p2align 2
label990:
	mv a2, a1
	fmv.s f10, f11
	ld a0, 136(sp)
	bgt a0, a1, label205
	li t5, 1
	fsw f11, 0(a3)
	ld a1, 128(sp)
	bgt a1, t5, label180
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	bgt a0, t1, label199
	j label627
.p2align 2
label178:
	ld a0, 136(sp)
	li t5, 1
	bgt a0, t5, label200
label179:
	ld a1, 128(sp)
	li t5, 1
	bgt a1, t5, label180
	j label511
.p2align 2
label986:
	addiw t3, t3, 1
	ld a1, 128(sp)
	bgt a1, t3, label197
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label199
label985:
	addiw t0, t0, 1
	ld a1, 128(sp)
	bgt a1, t0, label162
	j label474
.p2align 2
label655:
	fmv.w.x f12, zero
	fmv.s f10, f11
	li t5, 1
	mv a1, zero
	ld a2, 152(sp)
	fmv.s f11, f12
	bgt a2, t5, label228
	mv a2, zero
	fmv.s f10, f12
	ld a0, 136(sp)
	bgt a0, zero, label205
	fsw f12, 0(a3)
	ld a1, 128(sp)
	bgt a1, t5, label180
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	bgt a0, t1, label199
	j label627
.p2align 2
label992:
	fmv.s f10, f11
	li t5, 1
	fsw f11, 0(a3)
	ld a1, 128(sp)
	bgt a1, t5, label180
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label199
	j label627
.p2align 2
label995:
	fmv.s f10, f11
	li t5, 1
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label200
	ld a1, 128(sp)
	bgt a1, t5, label180
	j label511
label112:
	addiw s9, s9, 1
	ld a1, 128(sp)
	bgt a1, s9, label113
	j label114
label161:
	addiw t0, t0, 1
	ld a1, 128(sp)
	bgt a1, t0, label162
	j label474
label119:
	addiw a5, a5, 1
	ld a1, 128(sp)
	bgt a1, a5, label120
	j label143
label474:
	mv s0, a5
	mv s1, zero
	j label164
.p2align 2
label173:
	addi s2, s2, 4
.p2align 2
label170:
	li a0, 32
	jal putch
	flw f10, 0(s2)
	jal putfloat
	ld a0, 136(sp)
	addiw s3, s3, 1
	bgt a0, s3, label173
.p2align 2
label167:
	li a0, 10
	jal putch
	ld a1, 128(sp)
	addiw s1, s1, 1
	ble a1, s1, label156
	addi s0, s0, 32
.p2align 2
label164:
	flw f10, 0(s0)
	jal putfloat
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label167
	addi s2, s0, 4
	mv s3, t5
	j label170
label156:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s10, 16(sp)
	flw f18, 24(sp)
	ld s6, 32(sp)
	ld s9, 40(sp)
	ld s7, 48(sp)
	flw f19, 56(sp)
	ld s4, 64(sp)
	ld s3, 72(sp)
	ld s5, 80(sp)
	ld s0, 88(sp)
	ld s1, 96(sp)
	ld s8, 104(sp)
	ld s2, 112(sp)
	flw f9, 120(sp)
	flw f8, 124(sp)
	addi sp, sp, 168
	ret
.p2align 2
label1007:
	ld a1, 128(sp)
	li t5, 1
	bgt a1, t5, label180
	j label511
.p2align 2
label1003:
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label199
label627:
	addiw t0, t0, 1
	ld a1, 128(sp)
	bgt a1, t0, label162
	j label474
