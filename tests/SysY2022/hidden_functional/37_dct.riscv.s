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
pcrel1073:
	auipc s6, %pcrel_hi(test_dct)
	lui s5, 256000
	li s4, 16
	sd a0, 136(sp)
	addiw a2, a0, -3
	addiw s2, a0, -18
	lui s1, 258048
	sd a2, 152(sp)
pcrel1074:
	auipc a0, %pcrel_hi(test_block)
	ld a1, 128(sp)
	addi s8, a0, %pcrel_lo(pcrel1074)
	addiw a2, a1, -3
	sd a2, 144(sp)
	addiw a2, a1, -18
	sd a2, 160(sp)
pcrel1075:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi s0, a2, %pcrel_lo(pcrel1075)
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
pcrel1076:
	auipc s6, %pcrel_hi(test_dct)
	addi s7, s6, %pcrel_lo(pcrel1076)
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
	bgt a0, zero, label119
	j label141
.p2align 2
label996:
	addiw a5, a5, 1
	ld a1, 128(sp)
	ble a1, a5, label143
.p2align 2
label142:
	addi a4, a4, 32
	fcvt.s.w f1, a5
	ld a0, 136(sp)
	ble a0, zero, label141
.p2align 2
label119:
	mv a3, a4
	mv t0, zero
	fmv.w.x f10, zero
	mv t1, s8
	mv t2, zero
	fcvt.s.w f0, zero
	fsw f10, 0(a4)
	j label123
.p2align 2
label414:
	addiw t2, t2, 1
	ld a1, 128(sp)
	ble a1, t2, label976
	addi t1, t1, 32
.p2align 2
label123:
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
	flt.s a1, f10, f11
	or a2, a0, a1
	beq a2, zero, label334
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
label935:
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f11, f13
	bne a0, zero, label937
.p2align 2
label1008:
	fmv.s f11, f10
.p2align 2
label937:
	fmv.s f10, f11
	jal my_sin_impl
	mv t4, zero
	mv t3, t1
	flw f3, 0(a3)
	fmv.s f2, f10
	j label129
.p2align 2
label939:
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f11, f13
	bne a0, zero, label941
.p2align 2
label1009:
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
	ble a0, t4, label414
	addi t3, t3, 4
.p2align 2
label129:
	fcvt.s.w f10, t4
	fmv.w.x f14, s1
	fadd.s f12, f10, f14
	flw f14, 8(s0)
	fmul.s f13, f8, f12
	flw f12, 12(s0)
	fmul.s f11, f13, f0
	fadd.s f10, f11, f14
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a2, f10, f11
	flw f12, 0(t3)
	or a1, a0, a2
	fmul.s f4, f12, f2
	beq a1, zero, label383
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
	bne a0, zero, label939
	fmv.s f10, f11
	j label939
.p2align 2
label383:
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
	j label1009
.p2align 2
label334:
	fmv.s f11, f10
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label935
	fmv.s f10, f11
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f11, f13
	bne a0, zero, label937
	j label1008
.p2align 2
label976:
	addiw t0, t0, 1
	ld a0, 136(sp)
	ble a0, t0, label996
	addi a3, a3, 4
	fmv.w.x f10, zero
	fcvt.s.w f0, t0
	mv t1, s8
	mv t2, zero
	fsw f10, 0(a3)
	j label123
label143:
	ld a1, 128(sp)
	ble a1, zero, label144
	mv s8, s7
	mv s9, zero
	j label258
.p2align 2
label266:
	li a0, 10
	jal putch
	ld a1, 128(sp)
	addiw s9, s9, 1
	ble a1, s9, label144
	addi s8, s8, 32
.p2align 2
label258:
	flw f10, 0(s8)
	jal putfloat
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label266
	addi s10, s8, 4
	mv s11, t5
.p2align 2
label262:
	li a0, 32
	jal putch
	flw f10, 0(s10)
	jal putfloat
	ld a0, 136(sp)
	addiw s11, s11, 1
	ble a0, s11, label266
	addi s10, s10, 4
	j label262
label144:
	li a0, 10
	jal putch
	ld a1, 128(sp)
pcrel1077:
	auipc a2, %pcrel_hi(test_idct)
	addi a5, a2, %pcrel_lo(pcrel1077)
	ble a1, zero, label145
	mv a4, a5
	mv t0, zero
	fcvt.s.w f10, zero
	ld a0, 136(sp)
	fmv.w.x f12, s1
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	bgt a0, zero, label163
	j label150
.p2align 2
label998:
	addiw t0, t0, 1
	ld a1, 128(sp)
	ble a1, t0, label456
.p2align 2
label151:
	addi a4, a4, 32
	fcvt.s.w f10, t0
	fmv.w.x f12, s1
	ld a0, 136(sp)
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	ble a0, zero, label150
.p2align 2
label163:
	mv a3, a4
	mv t1, zero
	j label164
.p2align 2
label983:
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	ble a0, t1, label998
.p2align 2
label170:
	addi a3, a3, 4
.p2align 2
label164:
	auipc s6, %pcrel_hi(test_dct)
	flw f10, %pcrel_lo(label164)(s6)
	fmv.w.x f13, s5
	fcvt.s.w f12, t1
	li t5, 1
	fmul.s f11, f10, f13
	fmv.w.x f10, s1
	fadd.s f13, f12, f10
	fsw f11, 0(a3)
	ld a1, 128(sp)
	fmul.s f0, f8, f13
	ble a1, t5, label167
	ble a1, s3, label743
	ld a2, 144(sp)
	ble a2, s4, label765
	addi a0, s7, 32
	mv a1, t5
.p2align 2
label252:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f14, 32(a0)
	fmul.s f15, f13, f10
	flw f2, 64(a0)
	fmul.s f13, f14, f10
	flw f3, 96(a0)
	fmul.s f14, f3, f10
	fadd.s f12, f11, f15
	fmul.s f15, f2, f10
	flw f2, 128(a0)
	fadd.s f11, f12, f13
	fadd.s f13, f11, f15
	fmul.s f15, f2, f10
	fadd.s f12, f13, f14
	flw f13, 160(a0)
	flw f14, 192(a0)
	fmul.s f2, f13, f10
	flw f13, 224(a0)
	fadd.s f11, f12, f15
	fmul.s f15, f14, f10
	fmul.s f14, f13, f10
	fadd.s f12, f11, f2
	fadd.s f11, f12, f15
	flw f15, 256(a0)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	flw f14, 288(a0)
	flw f3, 320(a0)
	fmul.s f15, f14, f10
	flw f2, 352(a0)
	fmul.s f14, f3, f10
	fadd.s f11, f12, f13
	fadd.s f13, f11, f15
	fmul.s f15, f2, f10
	fadd.s f12, f13, f14
	flw f13, 384(a0)
	fmul.s f14, f13, f10
	fadd.s f11, f12, f15
	flw f15, 416(a0)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	flw f14, 448(a0)
	fmul.s f15, f14, f10
	fadd.s f11, f12, f13
	flw f13, 480(a0)
	ld a2, 160(sp)
	fmul.s f14, f13, f10
	fadd.s f12, f11, f15
	fadd.s f11, f12, f14
	ble a2, a1, label868
	addi a0, a0, 512
	j label252
.p2align 2
label868:
	fmv.s f10, f11
	mv t5, a1
	ld a2, 144(sp)
	ble a2, a1, label995
.p2align 2
label245:
	slliw a2, t5, 5
	mv a1, t5
	fmv.s f11, f10
	add a0, s7, a2
	j label246
.p2align 2
label250:
	addi a0, a0, 128
.p2align 2
label246:
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
	ld a2, 144(sp)
	fmul.s f15, f13, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f15
	bgt a2, a1, label250
	mv a2, a1
	fmv.s f10, f11
	ld a1, 128(sp)
	ble a1, a2, label994
.p2align 2
label228:
	slliw a1, a2, 5
	add a0, s7, a1
.p2align 2
label229:
	flw f11, 0(a0)
	fmv.w.x f13, s1
	addiw a2, a2, 1
	ld a1, 128(sp)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	ble a1, a2, label760
	addi a0, a0, 32
	j label229
.p2align 2
label760:
	fsw f10, 0(a3)
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label1005
.p2align 2
label189:
	flw f11, 0(a3)
	ld a0, 136(sp)
	ble a0, s3, label615
	ld a2, 152(sp)
	ble a2, s4, label620
	addi a0, s7, 4
	li t5, 1
	mv a1, t5
	j label206
.p2align 2
label210:
	addi a0, a0, 64
.p2align 2
label206:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f15, 4(a0)
	fmul.s f14, f13, f10
	fmul.s f2, f15, f10
	fadd.s f12, f11, f14
	flw f14, 8(a0)
	fmul.s f15, f14, f10
	fadd.s f13, f12, f2
	flw f2, 12(a0)
	fmul.s f14, f2, f10
	fadd.s f11, f13, f15
	flw f13, 16(a0)
	flw f15, 20(a0)
	fmul.s f2, f13, f10
	fadd.s f12, f11, f14
	fmul.s f14, f15, f10
	fadd.s f11, f12, f2
	flw f2, 24(a0)
	fmul.s f13, f2, f10
	fadd.s f12, f11, f14
	flw f14, 28(a0)
	flw f2, 32(a0)
	fmul.s f15, f14, f10
	fmul.s f14, f2, f10
	fadd.s f11, f12, f13
	fadd.s f13, f11, f15
	flw f15, 36(a0)
	flw f2, 40(a0)
	fmul.s f3, f15, f10
	flw f15, 44(a0)
	fadd.s f12, f13, f14
	fmul.s f14, f2, f10
	fmul.s f2, f15, f10
	fadd.s f11, f12, f3
	fadd.s f13, f11, f14
	flw f14, 48(a0)
	fmul.s f15, f14, f10
	fadd.s f12, f13, f2
	flw f13, 52(a0)
	flw f2, 56(a0)
	fmul.s f14, f13, f10
	flw f3, 60(a0)
	fadd.s f11, f12, f15
	fmul.s f15, f2, f10
	fadd.s f12, f11, f14
	fmul.s f14, f3, f10
	fadd.s f13, f12, f15
	fadd.s f11, f13, f14
	bgt s2, a1, label210
	fmv.s f10, f11
	mv t5, a1
	ld a2, 152(sp)
	ble a2, a1, label990
.p2align 2
label199:
	sh2add a0, t5, s7
	mv a1, t5
	fmv.s f11, f10
.p2align 2
label200:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f2, 4(a0)
	fmul.s f15, f13, f10
	flw f13, 8(a0)
	fmul.s f14, f2, f10
	fadd.s f12, f11, f15
	fmul.s f15, f13, f10
	fadd.s f11, f12, f14
	flw f14, 12(a0)
	ld a2, 152(sp)
	fmul.s f13, f14, f10
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	ble a2, a1, label649
	addi a0, a0, 16
	j label200
.p2align 2
label649:
	mv a2, a1
	fmv.s f10, f11
	ld a0, 136(sp)
	ble a0, a1, label989
.p2align 2
label215:
	sh2add a1, a2, s7
.p2align 2
label216:
	flw f11, 0(a1)
	fmv.w.x f12, s1
	addiw a2, a2, 1
	ld a0, 136(sp)
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	ble a0, a2, label738
	addi a1, a1, 4
	j label216
.p2align 2
label738:
	fsw f10, 0(a3)
	li t5, 1
	ld a1, 128(sp)
	ble a1, t5, label1003
.p2align 2
label171:
	addi t2, s7, 32
	li t5, 1
	mv t3, t5
	ld a0, 136(sp)
	bgt a0, t5, label175
	addiw t3, t5, 1
	ld a1, 128(sp)
	bgt a1, t3, label188
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	bgt a0, t1, label170
	j label985
.p2align 2
label595:
	addiw t3, t3, 1
	ld a1, 128(sp)
	ble a1, t3, label983
.p2align 2
label188:
	addi t2, t2, 32
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label986
.p2align 2
label175:
	fcvt.s.w f13, t3
	flw f12, 8(s0)
	fmul.s f11, f1, f13
	flw f13, 12(s0)
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flt.s a0, f13, f10
	flt.s a1, f10, f11
	or a2, a0, a1
	bne a2, zero, label176
	fmv.s f11, f10
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label943
	fmv.s f10, f11
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f11, f13
	bne a0, zero, label945
	j label1011
.p2align 2
label176:
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
label943:
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f11, f13
	bne a0, zero, label945
.p2align 2
label1011:
	fmv.s f11, f10
.p2align 2
label945:
	fmv.s f10, f11
	jal my_sin_impl
	li t5, 1
	addi t4, t2, 4
	flw f3, 0(a3)
	fmv.s f2, f10
	j label179
.p2align 2
label572:
	fmv.s f11, f10
	flw f10, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f10, f11
	fsub.s f13, f11, f12
	fmv.s f10, f13
	bne a0, zero, label947
	fmv.s f10, f11
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
	ld a0, 136(sp)
	ble a0, t5, label595
	addi t4, t4, 4
.p2align 2
label179:
	fcvt.s.w f13, t5
	flw f12, 8(s0)
	fmul.s f11, f0, f13
	flw f13, 12(s0)
	fadd.s f10, f11, f12
	flw f11, 16(s0)
	flw f12, 0(t4)
	fmul.s f4, f12, f2
	flt.s a2, f10, f11
	flt.s a0, f13, f10
	or a1, a0, a2
	beq a1, zero, label572
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
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f11, f14
	bne a0, zero, label949
	j label948
.p2align 2
label743:
	fmv.w.x f12, zero
	li t5, 1
	fmv.s f10, f11
	mv a2, t5
	fmv.s f11, f12
	ld a1, 128(sp)
	bgt a1, t5, label228
	fmv.s f10, f12
	fsw f12, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label189
	j label168
.p2align 2
label765:
	fmv.w.x f12, zero
	fmv.s f10, f11
	li t5, 1
	mv a1, zero
	fmv.s f11, f12
	ld a2, 144(sp)
	bgt a2, t5, label245
	mv a2, zero
	fmv.s f10, f12
	ld a1, 128(sp)
	bgt a1, zero, label228
	fsw f12, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label189
	bgt a1, t5, label171
	j label169
.p2align 2
label620:
	fmv.w.x f12, zero
	fmv.s f10, f11
	li t5, 1
	mv a1, zero
	fmv.s f11, f12
	ld a2, 152(sp)
	bgt a2, t5, label199
	mv a2, zero
	fmv.s f10, f12
	ld a0, 136(sp)
	bgt a0, zero, label215
	fsw f12, 0(a3)
	ld a1, 128(sp)
	bgt a1, t5, label171
	j label169
.p2align 2
label990:
	mv a2, a1
	fmv.s f10, f11
	ld a0, 136(sp)
	bgt a0, a1, label215
	li t5, 1
	fsw f11, 0(a3)
	ld a1, 128(sp)
	bgt a1, t5, label171
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	bgt a0, t1, label170
	j label503
.p2align 2
label995:
	mv a2, a1
	fmv.s f10, f11
	ld a1, 128(sp)
	bgt a1, a2, label228
	li t5, 1
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label189
	bgt a1, t5, label171
	j label169
.p2align 2
label167:
	ld a0, 136(sp)
	li t5, 1
	bgt a0, t5, label189
label168:
	ld a1, 128(sp)
	li t5, 1
	bgt a1, t5, label171
	j label169
.p2align 2
label986:
	addiw t3, t3, 1
	ld a1, 128(sp)
	bgt a1, t3, label188
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label170
label985:
	addiw t0, t0, 1
	ld a1, 128(sp)
	bgt a1, t0, label151
	j label456
.p2align 2
label615:
	fmv.w.x f12, zero
	li t5, 1
	fmv.s f10, f11
	mv a2, t5
	ld a0, 136(sp)
	fmv.s f11, f12
	bgt a0, t5, label215
	fmv.s f10, f12
	fsw f12, 0(a3)
	ld a1, 128(sp)
	bgt a1, t5, label171
label169:
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label170
	j label503
.p2align 2
label989:
	fmv.s f10, f11
	li t5, 1
	fsw f11, 0(a3)
	ld a1, 128(sp)
	bgt a1, t5, label171
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label170
	j label503
.p2align 2
label994:
	fmv.s f10, f11
	li t5, 1
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label189
	ld a1, 128(sp)
	bgt a1, t5, label171
	j label169
label112:
	addiw s9, s9, 1
	ld a1, 128(sp)
	bgt a1, s9, label113
	j label114
label141:
	addiw a5, a5, 1
	ld a1, 128(sp)
	bgt a1, a5, label142
	j label143
label150:
	addiw t0, t0, 1
	ld a1, 128(sp)
	bgt a1, t0, label151
label456:
	mv s0, a5
	mv s1, zero
	j label153
.p2align 2
label160:
	addi s2, s2, 4
.p2align 2
label157:
	li a0, 32
	jal putch
	flw f10, 0(s2)
	jal putfloat
	ld a0, 136(sp)
	addiw s3, s3, 1
	bgt a0, s3, label160
.p2align 2
label161:
	li a0, 10
	jal putch
	ld a1, 128(sp)
	addiw s1, s1, 1
	ble a1, s1, label145
	addi s0, s0, 32
.p2align 2
label153:
	flw f10, 0(s0)
	jal putfloat
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label161
	addi s2, s0, 4
	mv s3, t5
	j label157
label145:
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
label1003:
	flw f11, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f18
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f19
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label170
label503:
	addiw t0, t0, 1
	ld a1, 128(sp)
	bgt a1, t0, label151
	j label456
.p2align 2
label1005:
	ld a1, 128(sp)
	li t5, 1
	bgt a1, t5, label171
	j label169
