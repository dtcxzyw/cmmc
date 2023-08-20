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
	addi sp, sp, -160
	sd ra, 0(sp)
	sd s7, 8(sp)
	fsw f19, 16(sp)
	fsw f8, 20(sp)
	fsw f9, 24(sp)
	fsw f18, 28(sp)
	sd s6, 32(sp)
	sd s4, 40(sp)
	sd s3, 48(sp)
	sd s5, 56(sp)
	sd s0, 64(sp)
	sd s1, 72(sp)
	sd s8, 80(sp)
	sd s2, 88(sp)
	sd s9, 96(sp)
	sd s10, 104(sp)
	sd s11, 112(sp)
	jal getint
	sd a0, 120(sp)
	mv a1, a0
	jal getint
pcrel1074:
	auipc s6, %pcrel_hi(test_dct)
	li s4, 16
	sd a0, 128(sp)
	lui s5, 256000
	addiw a2, a0, -3
	li s3, 4
	addiw s2, a0, -18
pcrel1075:
	auipc a3, %pcrel_hi(test_block)
	lui s1, 258048
pcrel1076:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s8, a3, %pcrel_lo(pcrel1075)
	addi s0, a0, %pcrel_lo(pcrel1076)
	sd a2, 144(sp)
	ld a1, 120(sp)
	addiw a2, a1, -3
	sd a2, 136(sp)
	addiw a2, a1, -18
	sd a2, 152(sp)
	ble a1, zero, label103
	mv s7, s8
	mv s9, zero
	ld a0, 128(sp)
	bgt a0, zero, label261
	j label266
.p2align 2
label265:
	addi s10, s10, 4
	mv s11, a1
.p2align 2
label262:
	jal getfloat
	addiw a1, s11, 1
	fsw f10, 0(s10)
	ld a0, 128(sp)
	bgt a0, a1, label265
	addiw s9, s9, 1
	ld a1, 120(sp)
	ble a1, s9, label103
.p2align 2
label267:
	addi s7, s7, 32
	ld a0, 128(sp)
	ble a0, zero, label266
.p2align 2
label261:
	mv s10, s7
	mv s11, zero
	j label262
label103:
	ld a1, 120(sp)
pcrel1077:
	auipc s6, %pcrel_hi(test_dct)
	addi s7, s6, %pcrel_lo(pcrel1077)
	flw f10, 4(s0)
	ld a0, 128(sp)
	fcvt.s.w f18, a1
	fcvt.s.w f19, a0
	fdiv.s f9, f10, f18
	fdiv.s f8, f10, f19
	ble a1, zero, label132
	mv a4, s7
	mv a5, zero
	fcvt.s.w f1, zero
	bgt a0, zero, label108
	j label130
.p2align 2
label998:
	addiw a5, a5, 1
	ld a1, 120(sp)
	ble a1, a5, label132
.p2align 2
label131:
	addi a4, a4, 32
	fcvt.s.w f1, a5
	ld a0, 128(sp)
	ble a0, zero, label130
.p2align 2
label108:
	mv a3, a4
	mv t0, zero
	fmv.w.x f10, zero
	mv t1, s8
	mv t2, zero
	fcvt.s.w f0, zero
	fsw f10, 0(a4)
	j label112
.p2align 2
label390:
	addiw t2, t2, 1
	ld a1, 120(sp)
	ble a1, t2, label973
	addi t1, t1, 32
.p2align 2
label112:
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
	bne a2, zero, label129
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
	j label117
.p2align 2
label121:
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
label939:
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f11, f13
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
	ld a0, 128(sp)
	ble a0, t4, label390
	addi t3, t3, 4
.p2align 2
label117:
	fcvt.s.w f10, t4
	fmv.w.x f13, s1
	fadd.s f12, f10, f13
	flw f13, 8(s0)
	fmul.s f14, f8, f12
	flw f12, 12(s0)
	fmul.s f11, f14, f0
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a2, f10, f11
	flw f12, 0(t3)
	or a1, a0, a2
	fmul.s f4, f12, f2
	bne a1, zero, label121
	fmv.s f11, f10
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label939
	fmv.s f10, f11
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f11, f13
	bne a0, zero, label941
	j label1011
.p2align 2
label129:
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
	bne a0, zero, label935
	fmv.s f10, f11
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f11, f14
	bne a0, zero, label937
	j label936
.p2align 2
label973:
	addiw t0, t0, 1
	ld a0, 128(sp)
	ble a0, t0, label998
	addi a3, a3, 4
	fmv.w.x f10, zero
	fcvt.s.w f0, t0
	mv t1, s8
	mv t2, zero
	fsw f10, 0(a3)
	j label112
label132:
	ld a1, 120(sp)
	ble a1, zero, label133
	mv s8, s7
	mv s9, zero
	j label247
.p2align 2
label255:
	li a0, 10
	jal putch
	ld a1, 120(sp)
	addiw s9, s9, 1
	ble a1, s9, label133
	addi s8, s8, 32
.p2align 2
label247:
	flw f10, 0(s8)
	jal putfloat
	li t5, 1
	ld a0, 128(sp)
	ble a0, t5, label255
	addi s10, s8, 4
	mv s11, t5
.p2align 2
label251:
	li a0, 32
	jal putch
	flw f10, 0(s10)
	jal putfloat
	ld a0, 128(sp)
	addiw s11, s11, 1
	ble a0, s11, label255
	addi s10, s10, 4
	j label251
label133:
	li a0, 10
	jal putch
	ld a1, 120(sp)
pcrel1078:
	auipc a2, %pcrel_hi(test_idct)
	addi a5, a2, %pcrel_lo(pcrel1078)
	ble a1, zero, label134
	mv a4, a5
	mv t0, zero
	fcvt.s.w f10, zero
	ld a0, 128(sp)
	fmv.w.x f12, s1
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	bgt a0, zero, label139
	j label233
.p2align 2
label1003:
	addiw t0, t0, 1
	ld a1, 120(sp)
	ble a1, t0, label985
.p2align 2
label245:
	addi a4, a4, 32
	fcvt.s.w f10, t0
	fmv.w.x f12, s1
	ld a0, 128(sp)
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	ble a0, zero, label233
.p2align 2
label139:
	mv a3, a4
	mv t1, zero
	j label140
.p2align 2
label987:
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	ld a0, 128(sp)
	ble a0, t1, label1003
.p2align 2
label180:
	addi a3, a3, 4
.p2align 2
label140:
	auipc s6, %pcrel_hi(test_dct)
	flw f12, %pcrel_lo(label140)(s6)
	fmv.w.x f13, s5
	fcvt.s.w f10, t1
	li t5, 1
	fmul.s f11, f12, f13
	fmv.w.x f13, s1
	fadd.s f12, f10, f13
	fsw f11, 0(a3)
	ld a1, 120(sp)
	fmul.s f0, f8, f12
	ble a1, t5, label447
	ble a1, s3, label451
	ld a2, 136(sp)
	ble a2, s4, label473
	addi a0, s7, 32
	mv a1, t5
.p2align 2
label158:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f14, 32(a0)
	fmul.s f15, f13, f10
	flw f13, 64(a0)
	fmul.s f2, f14, f10
	flw f14, 96(a0)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f10
	fmul.s f13, f14, f10
	fadd.s f11, f12, f2
	fadd.s f12, f11, f15
	flw f15, 128(a0)
	flw f14, 160(a0)
	fmul.s f3, f15, f10
	fmul.s f2, f14, f10
	flw f15, 192(a0)
	fadd.s f11, f12, f13
	fmul.s f14, f15, f10
	fadd.s f13, f11, f3
	fadd.s f12, f13, f2
	flw f2, 224(a0)
	flw f3, 256(a0)
	fmul.s f15, f2, f10
	flw f2, 288(a0)
	fadd.s f11, f12, f14
	fmul.s f14, f3, f10
	fadd.s f13, f11, f15
	fmul.s f15, f2, f10
	fadd.s f12, f13, f14
	flw f14, 320(a0)
	flw f2, 352(a0)
	fmul.s f13, f14, f10
	fmul.s f14, f2, f10
	fadd.s f11, f12, f15
	flw f15, 384(a0)
	fadd.s f12, f11, f13
	fmul.s f13, f15, f10
	fadd.s f11, f12, f14
	flw f14, 416(a0)
	fmul.s f2, f14, f10
	fadd.s f12, f11, f13
	flw f13, 448(a0)
	flw f14, 480(a0)
	fmul.s f15, f13, f10
	ld a2, 152(sp)
	fmul.s f13, f14, f10
	fadd.s f11, f12, f2
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	ble a2, a1, label546
	addi a0, a0, 512
	j label158
.p2align 2
label546:
	fmv.s f10, f11
	mv t5, a1
	ld a2, 136(sp)
	ble a2, a1, label982
.p2align 2
label171:
	slliw a2, t5, 5
	mv a1, t5
	fmv.s f11, f10
	add a0, s7, a2
.p2align 2
label172:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f14, 32(a0)
	fmul.s f15, f13, f10
	flw f2, 64(a0)
	fmul.s f13, f14, f10
	flw f14, 96(a0)
	ld a2, 136(sp)
	fadd.s f12, f11, f15
	fmul.s f15, f2, f10
	fadd.s f11, f12, f13
	fmul.s f13, f14, f10
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	ble a2, a1, label576
	addi a0, a0, 128
	j label172
.p2align 2
label576:
	mv a2, a1
	fmv.s f10, f11
	ld a1, 120(sp)
	ble a1, a2, label984
.p2align 2
label150:
	slliw a1, a2, 5
	add a0, s7, a1
.p2align 2
label151:
	flw f11, 0(a0)
	fmv.w.x f13, s1
	addiw a2, a2, 1
	ld a1, 120(sp)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	ble a1, a2, label468
	addi a0, a0, 32
	j label151
.p2align 2
label468:
	fsw f10, 0(a3)
	li t5, 1
	ld a0, 128(sp)
	ble a0, t5, label980
.p2align 2
label199:
	flw f11, 0(a3)
	ld a0, 128(sp)
	ble a0, s3, label705
	ld a2, 144(sp)
	ble a2, s4, label727
	addi a0, s7, 4
	li t5, 1
	mv a1, t5
.p2align 2
label228:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f2, 4(a0)
	fmul.s f14, f13, f10
	fmul.s f15, f2, f10
	fadd.s f12, f11, f14
	flw f14, 8(a0)
	fmul.s f2, f14, f10
	fadd.s f13, f12, f15
	flw f15, 12(a0)
	fmul.s f14, f15, f10
	fadd.s f11, f13, f2
	flw f13, 16(a0)
	flw f15, 20(a0)
	fmul.s f2, f13, f10
	flw f13, 24(a0)
	fadd.s f12, f11, f14
	fmul.s f14, f15, f10
	fmul.s f15, f13, f10
	fadd.s f11, f12, f2
	fadd.s f12, f11, f14
	flw f14, 28(a0)
	fmul.s f2, f14, f10
	fadd.s f11, f12, f15
	flw f15, 32(a0)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f2
	flw f2, 36(a0)
	flw f14, 40(a0)
	fmul.s f15, f2, f10
	fmul.s f2, f14, f10
	fadd.s f11, f12, f13
	fadd.s f13, f11, f15
	flw f15, 44(a0)
	fmul.s f14, f15, f10
	fadd.s f12, f13, f2
	flw f13, 48(a0)
	flw f2, 52(a0)
	fmul.s f3, f13, f10
	fmul.s f15, f2, f10
	fadd.s f11, f12, f14
	flw f14, 56(a0)
	fmul.s f13, f14, f10
	fadd.s f12, f11, f3
	fadd.s f11, f12, f15
	flw f15, 60(a0)
	fmul.s f14, f15, f10
	fadd.s f12, f11, f13
	fadd.s f11, f12, f14
	ble s2, a1, label828
	addi a0, a0, 64
	j label228
.p2align 2
label828:
	fmv.s f10, f11
	mv t5, a1
	ld a2, 144(sp)
	ble a2, a1, label994
.p2align 2
label218:
	sh2add a0, t5, s7
	mv a1, t5
	fmv.s f11, f10
	j label219
.p2align 2
label223:
	addi a0, a0, 16
.p2align 2
label219:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f14, 4(a0)
	fmul.s f2, f13, f10
	flw f13, 8(a0)
	fmul.s f15, f14, f10
	fmul.s f14, f13, f10
	fadd.s f12, f11, f2
	fadd.s f11, f12, f15
	flw f15, 12(a0)
	ld a2, 144(sp)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	bgt a2, a1, label223
	mv a2, a1
	fmv.s f10, f11
	ld a0, 128(sp)
	ble a0, a1, label1009
.p2align 2
label204:
	sh2add a1, a2, s7
	j label205
.p2align 2
label209:
	addi a1, a1, 4
.p2align 2
label205:
	flw f11, 0(a1)
	fmv.w.x f12, s1
	addiw a2, a2, 1
	ld a0, 128(sp)
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	bgt a0, a2, label209
	fsw f10, 0(a3)
	li t5, 1
	ld a1, 120(sp)
	ble a1, t5, label1007
.p2align 2
label181:
	addi t2, s7, 32
	li t5, 1
	mv t3, t5
	ld a0, 128(sp)
	bgt a0, t5, label185
	addiw t3, t5, 1
	ld a1, 120(sp)
	bgt a1, t3, label198
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	bgt a0, t1, label180
	j label990
.p2align 2
label677:
	addiw t3, t3, 1
	ld a1, 120(sp)
	ble a1, t3, label987
.p2align 2
label198:
	addi t2, t2, 32
	li t5, 1
	ld a0, 128(sp)
	ble a0, t5, label991
.p2align 2
label185:
	fcvt.s.w f13, t3
	flw f12, 8(s0)
	fmul.s f11, f1, f13
	flw f13, 12(s0)
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a0, f13, f10
	flt.s a2, f10, f11
	or a1, a0, a2
	bne a1, zero, label196
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
	j label188
.p2align 2
label947:
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f11, f14
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
	ld a0, 128(sp)
	ble a0, t5, label677
	addi t4, t4, 4
.p2align 2
label188:
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
	bne a0, zero, label195
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
label195:
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
	bne a0, zero, label947
	fmv.s f10, f11
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f11, f14
	bne a0, zero, label949
	j label948
.p2align 2
label196:
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
	bne a0, zero, label943
	fmv.s f10, f11
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f11, f14
	bne a0, zero, label945
	j label944
.p2align 2
label451:
	fmv.w.x f12, zero
	li t5, 1
	fmv.s f10, f11
	mv a2, t5
	fmv.s f11, f12
	ld a1, 120(sp)
	bgt a1, t5, label150
	fmv.s f10, f12
	fsw f12, 0(a3)
	ld a0, 128(sp)
	bgt a0, t5, label199
	j label179
.p2align 2
label705:
	fmv.w.x f12, zero
	li t5, 1
	fmv.s f10, f11
	mv a2, t5
	fmv.s f11, f12
	ld a0, 128(sp)
	bgt a0, t5, label204
	fmv.s f10, f12
	fsw f12, 0(a3)
	ld a1, 120(sp)
	bgt a1, t5, label181
label1006:
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	ld a0, 128(sp)
	bgt a0, t1, label180
	j label593
.p2align 2
label727:
	fmv.w.x f12, zero
	fmv.s f10, f11
	li t5, 1
	mv a1, zero
	fmv.s f11, f12
	ld a2, 144(sp)
	bgt a2, t5, label218
	mv a2, zero
	fmv.s f10, f12
	ld a0, 128(sp)
	bgt a0, zero, label204
	fsw f12, 0(a3)
	ld a1, 120(sp)
	bgt a1, t5, label181
	j label1006
.p2align 2
label982:
	mv a2, a1
	fmv.s f10, f11
	ld a1, 120(sp)
	bgt a1, a2, label150
	li t5, 1
	fsw f11, 0(a3)
	ld a0, 128(sp)
	bgt a0, t5, label199
	bgt a1, t5, label181
	j label179
.p2align 2
label994:
	mv a2, a1
	fmv.s f10, f11
	ld a0, 128(sp)
	bgt a0, a1, label204
	li t5, 1
	fsw f11, 0(a3)
	ld a1, 120(sp)
	bgt a1, t5, label181
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	bgt a0, t1, label180
	j label593
.p2align 2
label991:
	addiw t3, t3, 1
	ld a1, 120(sp)
	bgt a1, t3, label198
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	ld a0, 128(sp)
	bgt a0, t1, label180
label990:
	addiw t0, t0, 1
	ld a1, 120(sp)
	bgt a1, t0, label245
	j label985
.p2align 2
label473:
	fmv.w.x f12, zero
	fmv.s f10, f11
	li t5, 1
	mv a1, zero
	ld a2, 136(sp)
	fmv.s f11, f12
	bgt a2, t5, label171
	mv a2, zero
	fmv.s f10, f12
	ld a1, 120(sp)
	bgt a1, zero, label150
	fsw f12, 0(a3)
	ld a0, 128(sp)
	bgt a0, t5, label199
	bgt a1, t5, label181
	j label179
.p2align 2
label1009:
	fmv.s f10, f11
	li t5, 1
	fsw f11, 0(a3)
	ld a1, 120(sp)
	bgt a1, t5, label181
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	ld a0, 128(sp)
	bgt a0, t1, label180
	j label593
.p2align 2
label984:
	fmv.s f10, f11
	li t5, 1
	fsw f11, 0(a3)
	ld a0, 128(sp)
	bgt a0, t5, label199
	ld a1, 120(sp)
	bgt a1, t5, label181
	j label179
label266:
	addiw s9, s9, 1
	ld a1, 120(sp)
	bgt a1, s9, label267
	j label103
label130:
	addiw a5, a5, 1
	ld a1, 120(sp)
	bgt a1, a5, label131
	j label132
.p2align 2
label447:
	ld a0, 128(sp)
	li t5, 1
	bgt a0, t5, label199
	ld a1, 120(sp)
	bgt a1, t5, label181
	j label179
label233:
	addiw t0, t0, 1
	ld a1, 120(sp)
	bgt a1, t0, label245
label985:
	mv s0, a5
	mv s1, zero
	j label235
.p2align 2
label244:
	addi s2, s2, 4
.p2align 2
label241:
	li a0, 32
	jal putch
	flw f10, 0(s2)
	jal putfloat
	ld a0, 128(sp)
	addiw s3, s3, 1
	bgt a0, s3, label244
.p2align 2
label238:
	li a0, 10
	jal putch
	ld a1, 120(sp)
	addiw s1, s1, 1
	ble a1, s1, label134
	addi s0, s0, 32
.p2align 2
label235:
	flw f10, 0(s0)
	jal putfloat
	li t5, 1
	ld a0, 128(sp)
	ble a0, t5, label238
	addi s2, s0, 4
	mv s3, t5
	j label241
label134:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	flw f19, 16(sp)
	flw f8, 20(sp)
	flw f9, 24(sp)
	flw f18, 28(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	ld s1, 72(sp)
	ld s8, 80(sp)
	ld s2, 88(sp)
	ld s9, 96(sp)
	ld s10, 104(sp)
	ld s11, 112(sp)
	addi sp, sp, 160
	ret
.p2align 2
label980:
	ld a1, 120(sp)
	li t5, 1
	bgt a1, t5, label181
label179:
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	ld a0, 128(sp)
	bgt a0, t1, label180
	j label593
.p2align 2
label1007:
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	ld a0, 128(sp)
	bgt a0, t1, label180
label593:
	addiw t0, t0, 1
	ld a1, 120(sp)
	bgt a1, t0, label245
	j label985
