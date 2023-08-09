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
	addi sp, sp, -176
	sd ra, 0(sp)
	fsw f9, 8(sp)
	sd s4, 16(sp)
	sd s3, 24(sp)
	sd s6, 32(sp)
	fsw f18, 40(sp)
	sd s1, 48(sp)
	sd s5, 56(sp)
	sd s0, 64(sp)
	sd s10, 72(sp)
	sd s7, 80(sp)
	fsw f19, 88(sp)
	sd s8, 96(sp)
	sd s2, 104(sp)
	sd s9, 112(sp)
	fsw f8, 120(sp)
	sd s11, 128(sp)
	jal getint
	addiw a2, a0, -4
	mv s9, a0
	sd a0, 136(sp)
	sd a2, 160(sp)
	jal getint
	li s4, 17
	li s3, 5
pcrel988:
	auipc s6, %pcrel_hi(test_dct)
	lui s5, 256000
	sd a0, 144(sp)
	addiw a2, a0, -4
pcrel989:
	auipc a1, %pcrel_hi(test_block)
	addiw s2, s9, -20
	mv s10, zero
	lui s1, 258048
	sd a2, 152(sp)
	addi s8, a1, %pcrel_lo(pcrel989)
	addiw a2, a0, -20
	mv s7, s8
pcrel990:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	sd a2, 168(sp)
	addi s0, a0, %pcrel_lo(pcrel990)
label103:
	ld s9, 136(sp)
	bgt s9, s10, label232
	j label106
.p2align 2
label237:
	addi s9, s9, 4
	mv s11, a1
.p2align 2
label234:
	jal getfloat
	addiw a1, s11, 1
	fsw f10, 0(s9)
	ld a0, 144(sp)
	bgt a0, a1, label237
	addiw s10, s10, 1
	addi s7, s7, 32
	ld s9, 136(sp)
	ble s9, s10, label106
.p2align 2
label232:
	ld a0, 144(sp)
	ble a0, zero, label810
	mv s9, s7
	mv s11, zero
	j label234
label106:
	ld s9, 136(sp)
pcrel991:
	auipc s6, %pcrel_hi(test_dct)
	addi s7, s6, %pcrel_lo(pcrel991)
	mv a5, zero
	mv a4, s7
	flw f10, 4(s0)
	fcvt.s.w f18, s9
	ld a0, 144(sp)
	fdiv.s f9, f10, f18
	fcvt.s.w f19, a0
	fdiv.s f8, f10, f19
	fcvt.s.w f1, zero
	bgt s9, zero, label110
	j label262
.p2align 2
label926:
	addiw a5, a5, 1
	addi a4, a4, 32
	ld s9, 136(sp)
	fcvt.s.w f1, a5
	ble s9, a5, label262
.p2align 2
label110:
	mv a3, a4
	mv t0, zero
	ld a0, 144(sp)
	bgt a0, zero, label114
label266:
	addiw a5, a5, 1
	addi a4, a4, 32
	ld s9, 136(sp)
	fcvt.s.w f1, a5
	bgt s9, a5, label110
	j label262
.p2align 2
label906:
	addiw t0, t0, 1
	addi a3, a3, 4
	ld a0, 144(sp)
	ble a0, t0, label926
.p2align 2
label114:
	fmv.w.x f10, zero
	mv t1, s8
	mv t2, zero
	fcvt.s.w f0, t0
	fsw f10, 0(a3)
	ld s9, 136(sp)
	bgt s9, zero, label118
	addiw t0, t0, 1
	addi a3, a3, 4
	ld a0, 144(sp)
	bgt a0, t0, label114
	j label266
.p2align 2
label127:
	addiw t2, t2, 1
	addi t1, t1, 32
	ld s9, 136(sp)
	ble s9, t2, label906
.p2align 2
label118:
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
	beq a1, zero, label119
	flw f11, 12(s0)
	fdiv.s f14, f10, f11
	fcvt.w.s a0, f14, rtz
	fcvt.s.w f13, a0
	fmul.s f12, f13, f11
	flw f11, 4(s0)
	fsub.s f10, f10, f12
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	beq a0, zero, label908
.p2align 2
label869:
	flw f14, 20(s0)
	fadd.s f13, f11, f12
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label871
.p2align 2
label870:
	fmv.s f10, f11
.p2align 2
label871:
	jal my_sin_impl
	mv t4, zero
	mv t3, t1
	flw f3, 0(a3)
	fmv.s f2, f10
	j label121
.p2align 2
label125:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label873
	fmv.s f11, f10
.p2align 2
label873:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label875
.p2align 2
label874:
	fmv.s f10, f11
.p2align 2
label875:
	jal my_sin_impl
	addiw t4, t4, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 144(sp)
	ble a0, t4, label127
	addi t3, t3, 4
.p2align 2
label121:
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
	beq a1, zero, label125
	flw f11, 12(s0)
	fdiv.s f13, f10, f11
	fcvt.w.s a0, f13, rtz
	fcvt.s.w f14, a0
	fmul.s f12, f14, f11
	flw f11, 4(s0)
	fsub.s f10, f10, f12
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label873
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label875
	j label874
.p2align 2
label119:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label869
	fmv.s f11, f10
	j label869
.p2align 2
label908:
	fmv.s f11, f10
	flw f14, 20(s0)
	fadd.s f13, f10, f12
	flt.s a0, f10, f14
	fmv.s f10, f13
	bne a0, zero, label871
	j label870
label262:
	mv s8, s7
	mv s10, zero
	ld s9, 136(sp)
	bgt s9, zero, label137
	j label144
.p2align 2
label138:
	li a0, 10
	jal putch
	ld s9, 136(sp)
	addi s8, s8, 32
	addiw s10, s10, 1
	ble s9, s10, label144
.p2align 2
label137:
	flw f10, 0(s8)
	jal putfloat
	li t5, 1
	ld a0, 144(sp)
	ble a0, t5, label138
	addi s9, s8, 4
	mv s11, t5
.p2align 2
label140:
	li a0, 32
	jal putch
	flw f10, 0(s9)
	jal putfloat
	ld a0, 144(sp)
	addiw s11, s11, 1
	ble a0, s11, label138
	addi s9, s9, 4
	j label140
label144:
	li a0, 10
	jal putch
	mv t0, zero
pcrel992:
	auipc a1, %pcrel_hi(test_idct)
	addi a5, a1, %pcrel_lo(pcrel992)
	mv a4, a5
	fcvt.s.w f10, zero
	ld s9, 136(sp)
	fmv.w.x f12, s1
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	bgt s9, zero, label160
	j label148
.p2align 2
label943:
	addiw t0, t0, 1
	addi a4, a4, 32
	fmv.w.x f12, s1
	ld s9, 136(sp)
	fcvt.s.w f10, t0
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	ble s9, t0, label148
.p2align 2
label160:
	mv a3, a4
	mv t1, zero
	ld a0, 144(sp)
	bgt a0, zero, label164
	addiw t0, t0, 1
	addi a4, a4, 32
	fmv.w.x f12, s1
	ld s9, 136(sp)
	fcvt.s.w f10, t0
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	bgt s9, t0, label160
	j label148
.p2align 2
label930:
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	ld a0, 144(sp)
	addi a3, a3, 4
	ble a0, t1, label943
.p2align 2
label164:
	auipc s6, %pcrel_hi(test_dct)
	flw f12, %pcrel_lo(label164)(s6)
	fmv.w.x f13, s5
	fcvt.s.w f10, t1
	li t5, 1
	fmul.s f11, f12, f13
	fmv.w.x f13, s1
	fadd.s f12, f10, f13
	fsw f11, 0(a3)
	ld s9, 136(sp)
	fmul.s f0, f8, f12
	ble s9, t5, label165
	ble s9, s3, label688
	ld a2, 160(sp)
	ble a2, s4, label210
	addi a0, s7, 32
	mv a1, t5
	j label218
.p2align 2
label223:
	addi a0, a0, 512
.p2align 2
label218:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f15, 32(a0)
	fmul.s f14, f13, f10
	flw f2, 64(a0)
	fmul.s f13, f15, f10
	fmul.s f15, f2, f10
	fadd.s f12, f11, f14
	flw f14, 96(a0)
	fmul.s f3, f14, f10
	fadd.s f11, f12, f13
	fadd.s f12, f11, f15
	flw f15, 128(a0)
	fmul.s f2, f15, f10
	fadd.s f13, f12, f3
	flw f3, 160(a0)
	fmul.s f14, f3, f10
	fadd.s f11, f13, f2
	flw f2, 192(a0)
	flw f15, 224(a0)
	fmul.s f13, f2, f10
	fmul.s f2, f15, f10
	fadd.s f12, f11, f14
	flw f14, 256(a0)
	flw f15, 288(a0)
	fadd.s f11, f12, f13
	fmul.s f13, f14, f10
	fmul.s f14, f15, f10
	fadd.s f12, f11, f2
	fadd.s f11, f12, f13
	flw f13, 320(a0)
	fmul.s f15, f13, f10
	fadd.s f12, f11, f14
	flw f14, 352(a0)
	flw f2, 384(a0)
	fmul.s f13, f14, f10
	flw f14, 416(a0)
	fadd.s f11, f12, f15
	fmul.s f15, f2, f10
	fmul.s f2, f14, f10
	fadd.s f12, f11, f13
	fadd.s f13, f12, f15
	flw f15, 448(a0)
	flw f14, 480(a0)
	fmul.s f3, f15, f10
	fadd.s f11, f13, f2
	fmul.s f13, f14, f10
	fadd.s f12, f11, f3
	fadd.s f11, f12, f13
	bgt s2, a1, label223
	slliw a2, a1, 5
	add a0, s7, a2
	j label211
.p2align 2
label216:
	addi a0, a0, 128
.p2align 2
label211:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 4
	flw f15, 32(a0)
	fmul.s f14, f13, f10
	flw f2, 64(a0)
	fmul.s f13, f15, f10
	flw f15, 96(a0)
	ld a2, 160(sp)
	fadd.s f12, f11, f14
	fmul.s f14, f2, f10
	fadd.s f11, f12, f13
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	bgt a2, a1, label216
	slliw a2, a1, 5
	fmv.w.x f13, s1
	addiw t5, a1, 1
	add a0, s7, a2
	flw f10, 0(a0)
	ld s9, 136(sp)
	fmul.s f12, f10, f13
	fadd.s f11, f11, f12
	ble s9, t5, label919
.p2align 2
label228:
	addi a0, a0, 32
	flw f10, 0(a0)
	fmv.w.x f13, s1
	addiw t5, t5, 1
	ld s9, 136(sp)
	fmul.s f12, f10, f13
	fadd.s f11, f11, f12
	bgt s9, t5, label228
	fsw f11, 0(a3)
	li t5, 1
	ld a0, 144(sp)
	ble a0, t5, label936
.p2align 2
label185:
	flw f11, 0(a3)
	ld a0, 144(sp)
	ble a0, s3, label567
	ld a2, 152(sp)
	ble a2, s4, label187
	addi a0, s7, 4
	li t5, 1
	mv a1, t5
.p2align 2
label195:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw a1, a1, 16
	flw f15, 4(a0)
	fmul.s f14, f13, f10
	flw f2, 8(a0)
	fmul.s f13, f15, f10
	flw f15, 12(a0)
	fadd.s f12, f11, f14
	fmul.s f14, f2, f10
	fadd.s f11, f12, f13
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	flw f14, 16(a0)
	flw f3, 20(a0)
	fmul.s f2, f14, f10
	fmul.s f15, f3, f10
	flw f14, 24(a0)
	fadd.s f11, f12, f13
	fadd.s f13, f11, f2
	fmul.s f2, f14, f10
	fadd.s f12, f13, f15
	flw f13, 28(a0)
	flw f14, 32(a0)
	fmul.s f15, f13, f10
	fmul.s f13, f14, f10
	fadd.s f11, f12, f2
	fadd.s f12, f11, f15
	flw f15, 36(a0)
	flw f2, 40(a0)
	fmul.s f14, f15, f10
	fmul.s f15, f2, f10
	fadd.s f11, f12, f13
	fadd.s f12, f11, f14
	flw f14, 44(a0)
	fmul.s f2, f14, f10
	fadd.s f13, f12, f15
	flw f15, 48(a0)
	fmul.s f14, f15, f10
	fadd.s f11, f13, f2
	flw f13, 52(a0)
	fmul.s f15, f13, f10
	fadd.s f12, f11, f14
	flw f14, 56(a0)
	fmul.s f13, f14, f10
	fadd.s f11, f12, f15
	flw f15, 60(a0)
	ld a2, 168(sp)
	fmul.s f14, f15, f10
	fadd.s f12, f11, f13
	fadd.s f11, f12, f14
	ble a2, a1, label199
	addi a0, a0, 64
	j label195
.p2align 2
label199:
	sh2add a0, a1, s7
	j label188
.p2align 2
label192:
	addi a0, a0, 16
	mv a1, t5
.p2align 2
label188:
	flw f13, 0(a0)
	fmv.w.x f10, s1
	addiw t5, a1, 4
	flw f15, 4(a0)
	fmul.s f14, f13, f10
	flw f2, 8(a0)
	fmul.s f13, f15, f10
	flw f15, 12(a0)
	ld a2, 152(sp)
	fadd.s f12, f11, f14
	fmul.s f14, f2, f10
	fadd.s f11, f12, f13
	fmul.s f13, f15, f10
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	bgt a2, t5, label192
	sh2add a1, t5, s7
	fmv.w.x f12, s1
	addiw t5, t5, 1
	flw f10, 0(a1)
	ld a0, 144(sp)
	fmul.s f13, f10, f12
	fadd.s f11, f11, f13
	ble a0, t5, label933
.p2align 2
label207:
	addi a1, a1, 4
	flw f10, 0(a1)
	fmv.w.x f12, s1
	addiw t5, t5, 1
	ld a0, 144(sp)
	fmul.s f13, f10, f12
	fadd.s f11, f11, f13
	bgt a0, t5, label207
	fsw f11, 0(a3)
	addi t2, s7, 32
	li t5, 1
	ld s9, 136(sp)
	mv t3, t5
	bgt s9, t5, label171
.p2align 2
label918:
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	ld a0, 144(sp)
	addi a3, a3, 4
	bgt a0, t1, label164
label913:
	addiw t0, t0, 1
	addi a4, a4, 32
	fmv.w.x f12, s1
	ld s9, 136(sp)
	fcvt.s.w f10, t0
	fadd.s f11, f10, f12
	fmul.s f1, f9, f11
	bgt s9, t0, label160
	j label148
.p2align 2
label551:
	addiw t3, t3, 1
	addi t2, t2, 32
	ld s9, 136(sp)
	ble s9, t3, label930
.p2align 2
label171:
	fcvt.s.w f12, t3
	flw f13, 8(s0)
	fmul.s f11, f1, f12
	flw f12, 12(s0)
	fadd.s f10, f11, f13
	flw f11, 16(s0)
	flt.s a0, f12, f10
	flt.s a1, f10, f11
	or a2, a0, a1
	beq a2, zero, label172
	flw f11, 12(s0)
	li t5, 1
	fdiv.s f12, f10, f11
	fcvt.w.s a0, f12, rtz
	fcvt.s.w f13, a0
	ld a0, 144(sp)
	fmul.s f14, f13, f11
	fsub.s f10, f10, f14
	bgt a0, t5, label174
	addiw t3, t3, 1
	addi t2, t2, 32
	ld s9, 136(sp)
	bgt s9, t3, label171
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	addi a3, a3, 4
	bgt a0, t1, label164
	j label913
.p2align 2
label172:
	ld a0, 144(sp)
	li t5, 1
	ble a0, t5, label482
.p2align 2
label174:
	flw f12, 12(s0)
	flw f14, 4(s0)
	fsub.s f13, f10, f12
	flt.s a0, f14, f10
	fmv.s f11, f13
	bne a0, zero, label877
	fmv.s f11, f10
.p2align 2
label877:
	fadd.s f13, f11, f12
	flw f14, 20(s0)
	flt.s a0, f11, f14
	fmv.s f10, f13
	bne a0, zero, label879
	fmv.s f10, f11
.p2align 2
label879:
	jal my_sin_impl
	li t5, 1
	addi t4, t2, 4
	flw f3, 0(a3)
	fmv.s f2, f10
	j label175
.p2align 2
label881:
	flw f13, 20(s0)
	fadd.s f14, f11, f12
	flt.s a0, f11, f13
	fmv.s f10, f14
	bne a0, zero, label883
.p2align 2
label942:
	fmv.s f10, f11
.p2align 2
label883:
	jal my_sin_impl
	addiw t5, t5, 1
	fmul.s f11, f4, f10
	fadd.s f3, f3, f11
	fsw f3, 0(a3)
	ld a0, 144(sp)
	ble a0, t5, label551
	addi t4, t4, 4
.p2align 2
label175:
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
	beq a0, zero, label520
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
	bne a0, zero, label881
	fmv.s f11, f10
	j label881
.p2align 2
label520:
	flw f11, 4(s0)
	flw f12, 12(s0)
	flt.s a0, f11, f10
	fsub.s f13, f10, f12
	fmv.s f11, f13
	bne a0, zero, label881
	fmv.s f11, f10
	flw f13, 20(s0)
	fadd.s f14, f10, f12
	flt.s a0, f10, f13
	fmv.s f10, f14
	bne a0, zero, label883
	j label942
.p2align 2
label187:
	addi a0, s7, 4
	li t5, 1
	mv a1, t5
	j label188
.p2align 2
label210:
	addi a0, s7, 32
	li t5, 1
	mv a1, t5
	j label211
.p2align 2
label165:
	ld a0, 144(sp)
	li t5, 1
	bgt a0, t5, label185
label166:
	addi t2, s7, 32
	li t5, 1
	mv t3, t5
	ld s9, 136(sp)
	bgt s9, t5, label171
	j label170
.p2align 2
label688:
	addi a0, s7, 32
	li t5, 1
	fmv.w.x f13, s1
	flw f10, 0(a0)
	addiw t5, t5, 1
	ld s9, 136(sp)
	fmul.s f12, f10, f13
	fadd.s f11, f11, f12
	bgt s9, t5, label228
	fsw f11, 0(a3)
	li t5, 1
	ld a0, 144(sp)
	bgt a0, t5, label185
	j label166
.p2align 2
label567:
	addi a1, s7, 4
	li t5, 1
	fmv.w.x f12, s1
	flw f10, 0(a1)
	addiw t5, t5, 1
	ld a0, 144(sp)
	fmul.s f13, f10, f12
	fadd.s f11, f11, f13
	bgt a0, t5, label207
	fsw f11, 0(a3)
	addi t2, s7, 32
	li t5, 1
	ld s9, 136(sp)
	mv t3, t5
	bgt s9, t5, label171
	j label918
.p2align 2
label482:
	addiw t3, t3, 1
	addi t2, t2, 32
	ld s9, 136(sp)
	bgt s9, t3, label171
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	ld a0, 144(sp)
	addi a3, a3, 4
	bgt a0, t1, label164
	j label913
.p2align 2
label933:
	fsw f11, 0(a3)
	addi t2, s7, 32
	li t5, 1
	ld s9, 136(sp)
	mv t3, t5
	bgt s9, t5, label171
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	ld a0, 144(sp)
	addi a3, a3, 4
	bgt a0, t1, label164
	j label913
.p2align 2
label919:
	fsw f11, 0(a3)
	li t5, 1
	ld a0, 144(sp)
	bgt a0, t5, label185
	addi t2, s7, 32
	ld s9, 136(sp)
	mv t3, t5
	bgt s9, t5, label171
	j label170
label148:
	mv s0, a5
	mv s1, zero
	ld s9, 136(sp)
	bgt s9, zero, label153
	j label152
.p2align 2
label159:
	li a0, 10
	jal putch
	ld s9, 136(sp)
	addi s0, s0, 32
	addiw s1, s1, 1
	ble s9, s1, label152
.p2align 2
label153:
	flw f10, 0(s0)
	jal putfloat
	li t5, 1
	ld a0, 144(sp)
	ble a0, t5, label159
	addi s2, s0, 4
	mv s3, t5
.p2align 2
label155:
	li a0, 32
	jal putch
	flw f10, 0(s2)
	jal putfloat
	ld a0, 144(sp)
	addiw s3, s3, 1
	ble a0, s3, label159
	addi s2, s2, 4
	j label155
label152:
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	flw f9, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s6, 32(sp)
	flw f18, 40(sp)
	ld s1, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	ld s10, 72(sp)
	ld s7, 80(sp)
	flw f19, 88(sp)
	ld s8, 96(sp)
	ld s2, 104(sp)
	ld s9, 112(sp)
	flw f8, 120(sp)
	ld s11, 128(sp)
	addi sp, sp, 176
	ret
.p2align 2
label936:
	addi t2, s7, 32
	li t5, 1
	ld s9, 136(sp)
	mv t3, t5
	bgt s9, t5, label171
label170:
	flw f10, 0(a3)
	addiw t1, t1, 1
	fadd.s f13, f10, f10
	fdiv.s f11, f13, f18
	fadd.s f12, f11, f11
	fdiv.s f10, f12, f19
	fsw f10, 0(a3)
	ld a0, 144(sp)
	addi a3, a3, 4
	bgt a0, t1, label164
	j label913
label810:
	addiw s10, s10, 1
	addi s7, s7, 32
	j label103
