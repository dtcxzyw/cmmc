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
	fsw f8, 8(sp)
	fsw f19, 12(sp)
	sd s7, 16(sp)
	fsw f9, 24(sp)
	sd s4, 32(sp)
	sd s3, 40(sp)
	sd s5, 48(sp)
	sd s0, 56(sp)
	sd s6, 64(sp)
	fsw f18, 72(sp)
	sd s1, 80(sp)
	sd s8, 88(sp)
	sd s2, 96(sp)
	sd s9, 104(sp)
	sd s10, 112(sp)
	sd s11, 120(sp)
	jal getint
	addiw a2, a0, -3
	mv s9, a0
	sd a0, 128(sp)
	sd a2, 152(sp)
	jal getint
	li s4, 16
	lui s5, 256000
	sd a0, 136(sp)
	addiw a2, a0, -3
	addiw s2, s9, -18
	li s3, 4
pcrel1081:
	auipc a1, %pcrel_hi(test_block)
	lui s1, 258048
pcrel1082:
	auipc s6, %pcrel_hi(test_dct)
	addi s8, a1, %pcrel_lo(pcrel1081)
	sd a2, 144(sp)
	addiw a2, a0, -18
pcrel1083:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	sd a2, 160(sp)
	addi s0, a0, %pcrel_lo(pcrel1083)
	ble s9, zero, label103
	mv s7, s8
	mv s10, zero
	ld a0, 136(sp)
	bgt a0, zero, label261
	j label266
.p2align 2
label265:
	addi s9, s9, 4
	mv s11, a1
.p2align 2
label262:
	jal getfloat
	addiw a1, s11, 1
	fsw f10, 0(s9)
	ld a0, 136(sp)
	bgt a0, a1, label265
	addiw s10, s10, 1
	ld s9, 128(sp)
	ble s9, s10, label103
.p2align 2
label267:
	addi s7, s7, 32
	ld a0, 136(sp)
	ble a0, zero, label266
.p2align 2
label261:
	mv s9, s7
	mv s11, zero
	j label262
label103:
	ld s9, 128(sp)
pcrel1084:
	auipc s6, %pcrel_hi(test_dct)
	addi s7, s6, %pcrel_lo(pcrel1084)
	flw f10, 4(s0)
	ld a0, 136(sp)
	fcvt.s.w f18, s9
	fcvt.s.w f19, a0
	fdiv.s f9, f10, f18
	fdiv.s f8, f10, f19
	ble s9, zero, label132
	mv a4, s7
	mv a5, zero
	fcvt.s.w f1, zero
	bgt a0, zero, label110
	j label108
.p2align 2
label1003:
	addiw a5, a5, 1
	ld s9, 128(sp)
	ble s9, a5, label132
.p2align 2
label109:
	addi a4, a4, 32
	fcvt.s.w f1, a5
	ld a0, 136(sp)
	ble a0, zero, label108
.p2align 2
label110:
	mv a3, a4
	mv t0, zero
	fmv.w.x f10, zero
	mv t1, s8
	mv t2, zero
	fcvt.s.w f0, zero
	fsw f10, 0(a4)
	j label114
.p2align 2
label404:
	addiw t2, t2, 1
	ld s9, 128(sp)
	ble s9, t2, label980
	addi t1, t1, 32
.p2align 2
label114:
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
	flt.s a2, f10, f11
	or a1, a0, a2
	beq a1, zero, label324
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
	bne a0, zero, label940
	fmv.s f11, f10
.p2align 2
label940:
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label942
.p2align 2
label1013:
	fmv.s f10, f11
.p2align 2
label942:
	jal my_sin_impl
	mv t4, zero
	mv t3, t1
	flw f3, 0(a3)
	fmv.s f2, f10
	j label120
.p2align 2
label373:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	beq a0, zero, label979
.p2align 2
label944:
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label946
.p2align 2
label1014:
	fmv.s f10, f11
.p2align 2
label946:
	jal my_sin_impl
	addiw t4, t4, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 136(sp)
	ble a0, t4, label404
	addi t3, t3, 4
.p2align 2
label120:
	fcvt.s.w f10, t4
	flw f14, 8(s0)
	fmv.w.x f13, s1
	fadd.s f12, f10, f13
	flw f13, 12(s0)
	fmul.s f15, f8, f12
	flw f12, 16(s0)
	fmul.s f11, f15, f0
	fadd.s f10, f11, f14
	flw f11, 0(t3)
	fmul.s f4, f11, f2
	flt.s a2, f10, f12
	flt.s a1, f13, f10
	or a0, a1, a2
	beq a0, zero, label373
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
	bne a0, zero, label944
	fmv.s f11, f10
	j label944
.p2align 2
label324:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label940
	fmv.s f11, f10
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f10, f13
	bne a0, zero, label942
	j label1013
.p2align 2
label980:
	addiw t0, t0, 1
	ld a0, 136(sp)
	ble a0, t0, label1003
	addi a3, a3, 4
	fmv.w.x f10, zero
	fcvt.s.w f0, t0
	mv t1, s8
	mv t2, zero
	fsw f10, 0(a3)
	j label114
label132:
	ld s9, 128(sp)
	ble s9, zero, label144
	mv s8, s7
	mv s10, zero
	j label134
.p2align 2
label141:
	addi s9, s9, 4
.p2align 2
label138:
	li a0, 32
	jal putch
	flw f10, 0(s9)
	jal putfloat
	ld a0, 136(sp)
	addiw s11, s11, 1
	bgt a0, s11, label141
.p2align 2
label142:
	li a0, 10
	jal putch
	ld s9, 128(sp)
	addiw s10, s10, 1
	ble s9, s10, label144
	addi s8, s8, 32
.p2align 2
label134:
	flw f10, 0(s8)
	jal putfloat
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label142
	addi s9, s8, 4
	mv s11, t5
	j label138
label144:
	li a0, 10
	jal putch
	ld s9, 128(sp)
pcrel1085:
	auipc a1, %pcrel_hi(test_idct)
	addi a5, a1, %pcrel_lo(pcrel1085)
	ble s9, zero, label145
	mv a4, a5
	mv t0, zero
	fcvt.s.w f10, zero
	ld a0, 136(sp)
	fmv.w.x f11, s1
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	bgt a0, zero, label163
	j label150
.p2align 2
label1005:
	addiw t0, t0, 1
	ld s9, 128(sp)
	ble s9, t0, label458
.p2align 2
label151:
	addi a4, a4, 32
	fcvt.s.w f10, t0
	fmv.w.x f11, s1
	ld a0, 136(sp)
	fadd.s f12, f10, f11
	fmul.s f1, f9, f12
	ble a0, zero, label150
.p2align 2
label163:
	mv a3, a4
	mv t1, zero
	j label164
.p2align 2
label987:
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	ld a0, 136(sp)
	ble a0, t1, label1005
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
	fmv.w.x f13, s1
	fadd.s f10, f12, f13
	fsw f11, 0(a3)
	ld s9, 128(sp)
	fmul.s f0, f8, f10
	ble s9, t5, label167
	ble s9, s3, label745
	ld a2, 152(sp)
	ble a2, s4, label767
	addi a0, s7, 32
	mv a1, t5
.p2align 2
label252:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f15, 32(a0)
	fmul.s f14, f13, f10
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	flw f14, 64(a0)
	flw f3, 96(a0)
	fmul.s f15, f14, f10
	flw f2, 128(a0)
	fmul.s f14, f3, f10
	fadd.s f11, f12, f13
	fmul.s f3, f2, f10
	fadd.s f13, f11, f15
	flw f15, 160(a0)
	fadd.s f12, f13, f14
	flw f14, 192(a0)
	fmul.s f13, f15, f10
	fmul.s f15, f14, f10
	fadd.s f11, f12, f3
	fadd.s f12, f11, f13
	flw f13, 224(a0)
	flw f14, 256(a0)
	fmul.s f2, f13, f10
	flw f3, 288(a0)
	fadd.s f11, f12, f15
	fmul.s f15, f14, f10
	flw f14, 320(a0)
	fadd.s f12, f11, f2
	fmul.s f2, f3, f10
	fadd.s f13, f12, f15
	fmul.s f15, f14, f10
	fadd.s f11, f13, f2
	flw f2, 352(a0)
	fmul.s f13, f2, f10
	fadd.s f12, f11, f15
	flw f15, 384(a0)
	fmul.s f14, f15, f10
	fadd.s f11, f12, f13
	flw f13, 416(a0)
	flw f2, 448(a0)
	fmul.s f15, f13, f10
	fadd.s f12, f11, f14
	fmul.s f14, f2, f10
	fadd.s f11, f12, f15
	flw f15, 480(a0)
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	ble s2, a1, label870
	addi a0, a0, 512
	j label252
.p2align 2
label870:
	fmv.s f10, f11
	mv t5, a1
	ld a2, 152(sp)
	ble a2, a1, label1000
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
	flw f2, 32(a0)
	fmul.s f14, f13, f10
	flw f15, 64(a0)
	fmul.s f13, f2, f10
	fadd.s f12, f11, f14
	fmul.s f14, f15, f10
	fadd.s f11, f12, f13
	flw f13, 96(a0)
	ld a2, 152(sp)
	fmul.s f15, f13, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f15
	bgt a2, a1, label250
	fmv.s f10, f11
	ld s9, 128(sp)
	ble s9, a1, label999
.p2align 2
label230:
	slliw a2, a1, 5
	add a0, s7, a2
	j label231
.p2align 2
label235:
	addi a0, a0, 32
.p2align 2
label231:
	flw f11, 0(a0)
	fmv.w.x f13, s1
	addiw a1, a1, 1
	ld s9, 128(sp)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	bgt s9, a1, label235
	fsw f10, 0(a3)
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label997
.p2align 2
label189:
	flw f11, 0(a3)
	ld a0, 136(sp)
	ble a0, s3, label617
	ld a2, 144(sp)
	ble a2, s4, label622
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
	flw f14, 16(a0)
	fmul.s f12, f2, f10
	flw f2, 20(a0)
	fadd.s f11, f13, f15
	fmul.s f15, f14, f10
	fmul.s f14, f2, f10
	fadd.s f13, f11, f12
	fadd.s f12, f13, f15
	flw f15, 24(a0)
	fmul.s f2, f15, f10
	fadd.s f11, f12, f14
	flw f14, 28(a0)
	fmul.s f15, f14, f10
	fadd.s f13, f11, f2
	flw f2, 32(a0)
	fmul.s f14, f2, f10
	fadd.s f12, f13, f15
	flw f15, 36(a0)
	flw f3, 40(a0)
	fmul.s f13, f15, f10
	flw f2, 44(a0)
	fadd.s f11, f12, f14
	fmul.s f15, f2, f10
	fmul.s f14, f3, f10
	fadd.s f12, f11, f13
	flw f13, 48(a0)
	fmul.s f2, f13, f10
	fadd.s f11, f12, f14
	flw f14, 52(a0)
	flw f3, 56(a0)
	fmul.s f13, f14, f10
	fadd.s f12, f11, f15
	fmul.s f15, f3, f10
	fadd.s f11, f12, f2
	flw f2, 60(a0)
	ld a2, 160(sp)
	fmul.s f14, f2, f10
	fadd.s f12, f11, f13
	fadd.s f13, f12, f15
	fadd.s f11, f13, f14
	bgt a2, a1, label210
	fmv.s f10, f11
	mv t5, a1
	ld a2, 144(sp)
	ble a2, a1, label993
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
	flw f15, 4(a0)
	fmul.s f14, f13, f10
	flw f2, 8(a0)
	fmul.s f13, f15, f10
	fmul.s f15, f2, f10
	fadd.s f12, f11, f14
	flw f14, 12(a0)
	ld a2, 144(sp)
	fadd.s f11, f12, f13
	fmul.s f13, f14, f10
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	ble a2, a1, label651
	addi a0, a0, 16
	j label200
.p2align 2
label651:
	mv a2, a1
	fmv.s f10, f11
	ld a0, 136(sp)
	ble a0, a1, label992
.p2align 2
label217:
	sh2add a1, a2, s7
.p2align 2
label218:
	flw f11, 0(a1)
	fmv.w.x f13, s1
	addiw a2, a2, 1
	ld a0, 136(sp)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	ble a0, a2, label740
	addi a1, a1, 4
	j label218
.p2align 2
label740:
	fsw f10, 0(a3)
	li t5, 1
	ld s9, 128(sp)
	ble s9, t5, label995
.p2align 2
label171:
	addi t2, s7, 32
	li t5, 1
	mv t3, t5
	ld a0, 136(sp)
	bgt a0, t5, label175
	addiw t3, t5, 1
	ld s9, 128(sp)
	bgt s9, t3, label188
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	bgt a0, t1, label170
	j label988
.p2align 2
label605:
	addiw t3, t3, 1
	ld s9, 128(sp)
	ble s9, t3, label987
.p2align 2
label188:
	addi t2, t2, 32
	li t5, 1
	ld a0, 136(sp)
	ble a0, t5, label989
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
	beq a2, zero, label528
	flw f11, 12(s0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f12, a0
	fmul.s f14, f12, f11
	fsub.s f10, f10, f14
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label948
	fmv.s f11, f10
.p2align 2
label948:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label950
.p2align 2
label1016:
	fmv.s f10, f11
.p2align 2
label950:
	jal my_sin_impl
	li t5, 1
	addi t4, t2, 4
	flw f3, 0(a3)
	fmv.s f2, f10
	j label179
.p2align 2
label183:
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
	bne a0, zero, label952
	fmv.s f11, f10
.p2align 2
label952:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label954
.p2align 2
label1017:
	fmv.s f10, f11
.p2align 2
label954:
	jal my_sin_impl
	addiw t5, t5, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 136(sp)
	ble a0, t5, label605
	addi t4, t4, 4
.p2align 2
label179:
	fcvt.s.w f12, t5
	flw f13, 8(s0)
	fmul.s f11, f0, f12
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f13, 16(s0)
	flw f11, 0(t4)
	fmul.s f4, f11, f2
	flt.s a2, f10, f13
	flt.s a1, f12, f10
	or a0, a1, a2
	bne a0, zero, label183
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label952
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label954
	j label1017
.p2align 2
label528:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label948
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label950
	j label1016
.p2align 2
label745:
	fmv.w.x f12, zero
	li t5, 1
	fmv.s f10, f11
	mv a1, t5
	fmv.s f11, f12
	ld s9, 128(sp)
	bgt s9, t5, label230
	fmv.s f10, f12
	fsw f12, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label189
label996:
	ld s9, 128(sp)
	li t5, 1
	bgt s9, t5, label171
	j label169
.p2align 2
label622:
	fmv.w.x f12, zero
	fmv.s f10, f11
	li t5, 1
	mv a1, zero
	fmv.s f11, f12
	ld a2, 144(sp)
	bgt a2, t5, label199
	mv a2, zero
	fmv.s f10, f12
	ld a0, 136(sp)
	bgt a0, zero, label217
	fsw f12, 0(a3)
	ld s9, 128(sp)
	bgt s9, t5, label171
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	bgt a0, t1, label170
	j label505
.p2align 2
label767:
	fmv.w.x f12, zero
	fmv.s f10, f11
	li t5, 1
	mv a1, zero
	fmv.s f11, f12
	ld a2, 152(sp)
	bgt a2, t5, label245
	fmv.s f10, f12
	ld s9, 128(sp)
	bgt s9, zero, label230
	fsw f12, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label189
	j label996
.p2align 2
label993:
	mv a2, a1
	fmv.s f10, f11
	ld a0, 136(sp)
	bgt a0, a1, label217
	li t5, 1
	fsw f11, 0(a3)
	ld s9, 128(sp)
	bgt s9, t5, label171
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	bgt a0, t1, label170
	j label505
.p2align 2
label1000:
	fmv.s f10, f11
	ld s9, 128(sp)
	bgt s9, a1, label230
	li t5, 1
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label189
	bgt s9, t5, label171
	j label169
.p2align 2
label167:
	ld a0, 136(sp)
	li t5, 1
	bgt a0, t5, label189
	ld s9, 128(sp)
	bgt s9, t5, label171
	j label169
.p2align 2
label989:
	addiw t3, t3, 1
	ld s9, 128(sp)
	bgt s9, t3, label188
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label170
label988:
	addiw t0, t0, 1
	ld s9, 128(sp)
	bgt s9, t0, label151
	j label458
.p2align 2
label617:
	fmv.w.x f12, zero
	li t5, 1
	fmv.s f10, f11
	mv a2, t5
	ld a0, 136(sp)
	fmv.s f11, f12
	bgt a0, t5, label217
	fmv.s f10, f12
	fsw f12, 0(a3)
	ld s9, 128(sp)
	bgt s9, t5, label171
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	bgt a0, t1, label170
	j label505
.p2align 2
label992:
	fmv.s f10, f11
	li t5, 1
	fsw f11, 0(a3)
	ld s9, 128(sp)
	bgt s9, t5, label171
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label170
	j label505
.p2align 2
label999:
	fmv.s f10, f11
	li t5, 1
	fsw f11, 0(a3)
	ld a0, 136(sp)
	bgt a0, t5, label189
	ld s9, 128(sp)
	bgt s9, t5, label171
	j label169
label150:
	addiw t0, t0, 1
	ld s9, 128(sp)
	bgt s9, t0, label151
	j label458
label266:
	addiw s10, s10, 1
	ld s9, 128(sp)
	bgt s9, s10, label267
	j label103
label108:
	addiw a5, a5, 1
	ld s9, 128(sp)
	bgt s9, a5, label109
	j label132
label458:
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
	ld s9, 128(sp)
	addiw s1, s1, 1
	ble s9, s1, label145
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
	ld ra, 0(sp)
	mv a0, zero
	flw f8, 8(sp)
	flw f19, 12(sp)
	ld s7, 16(sp)
	flw f9, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s6, 64(sp)
	flw f18, 72(sp)
	ld s1, 80(sp)
	ld s8, 88(sp)
	ld s2, 96(sp)
	ld s9, 104(sp)
	ld s10, 112(sp)
	ld s11, 120(sp)
	addi sp, sp, 168
	ret
.p2align 2
label995:
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label170
label505:
	addiw t0, t0, 1
	ld s9, 128(sp)
	bgt s9, t0, label151
	j label458
.p2align 2
label997:
	ld s9, 128(sp)
	li t5, 1
	bgt s9, t5, label171
label169:
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f12, f10, f10
	fdiv.s f11, f12, f18
	fadd.s f13, f11, f11
	fdiv.s f10, f13, f19
	fsw f10, 0(a3)
	ld a0, 136(sp)
	bgt a0, t1, label170
	j label505
.p2align 2
label979:
	fmv.s f11, f10
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f10, f13
	bne a0, zero, label946
	j label1014
