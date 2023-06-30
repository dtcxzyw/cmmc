.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1518488747
	.4byte	897988541
	.4byte	3045472189
	.4byte	1045220557
	.4byte	1036831949
.text
.globl main
main:
	lui t0, 1048560
	add t0, t0, sp
	addi sp, t0, -40
	lui t0, 16
	add t0, t0, sp
	sd s1, 8(t0)
	lui t0, 16
	add t0, t0, sp
	sd s2, 32(t0)
	lui t0, 8
	add t0, t0, sp
	sd s0, 0(t0)
	lui t0, 16
	add t0, t0, sp
	fsw f8, 24(t0)
	lui t0, 16
	add t0, t0, sp
	sd ra, 16(t0)
	addi s1, sp, 0
	lui t0, 8
	add t0, t0, sp
	addi s2, t0, 8
	jal getint
	mv s0, a0
	li a0, 22
	jal _sysy_starttime
	fmv.w.x f8, zero
	lui a0, 260096
	fmv.w.x f10, a0
	fmv.w.x f11, zero
	mv a2, zero
	mv a0, zero
	li a1, 100000
	bge zero, a1, label8
label13:
	li a1, 1717986919
	mul a1, a0, a1
	srai a3, a1, 34
	srli a1, a1, 63
	add a1, a1, a3
	li a3, 10
	mulw a1, a1, a3
	subw a1, a0, a1
	sltu a1, zero, a1
pcrel346:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a3, %pcrel_lo(pcrel346)
	flw f12, 12(a3)
	fadd.s f12, f10, f12
	lui a4, 260096
	fmv.w.x f10, a4
	bne a1, zero, label298
	fmv.s f10, f12
label298:
	flw f12, 16(a3)
	fadd.s f12, f11, f12
	fmv.w.x f11, zero
	bne a1, zero, label296
	fmv.s f11, f12
label296:
	bge a2, s0, label88
	addiw a1, a2, 4
	bge a1, s0, label206
	j label40
label88:
	mv a1, a2
label14:
	ble s0, zero, label91
	fmv.w.x f12, zero
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s0, label21
	j label32
label91:
	fmv.w.x f12, zero
label16:
	fadd.s f8, f8, f12
	addiw a0, a0, 1
	mv a2, a1
	li a1, 100000
	bge a0, a1, label8
	j label13
label206:
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label38
label37:
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a3, a1, s2
	fsw f13, 0(a3)
	fadd.s f12, f10, f12
	sh2add a4, a1, s1
	fsw f12, 0(a4)
	addiw a5, a1, 1
	fcvt.s.w f12, a5
	fadd.s f13, f11, f12
	fsw f13, 4(a3)
	fadd.s f12, f10, f12
	fsw f12, 4(a4)
	addiw a5, a1, 2
	fcvt.s.w f12, a5
	fadd.s f13, f11, f12
	fsw f13, 8(a3)
	fadd.s f12, f10, f12
	fsw f12, 8(a4)
	addiw a1, a1, 3
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	fsw f13, 12(a3)
	fadd.s f12, f10, f12
	fsw f12, 12(a4)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label38
	j label37
label38:
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	j label341
label40:
	fcvt.s.w f12, a2
	fadd.s f13, f11, f12
	sh2add a3, a2, s2
	fsw f13, 0(a3)
	fadd.s f12, f10, f12
	sh2add a4, a2, s1
	fsw f12, 0(a4)
	addiw a5, a2, 1
	fcvt.s.w f12, a5
	fadd.s f13, f11, f12
	fsw f13, 4(a3)
	fadd.s f12, f10, f12
	fsw f12, 4(a4)
	addiw a5, a2, 2
	fcvt.s.w f12, a5
	fadd.s f13, f11, f12
	fsw f13, 8(a3)
	fadd.s f12, f10, f12
	fsw f12, 8(a4)
	addiw a2, a2, 3
	fcvt.s.w f12, a2
	fadd.s f13, f11, f12
	fsw f13, 12(a3)
	fadd.s f12, f10, f12
	fsw f12, 12(a4)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label206
	j label40
label341:
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	j label341
label21:
	addiw a2, a4, 4
	bge a2, s0, label24
	j label31
label24:
	addiw a2, a4, 4
	bge a2, s0, label110
	j label30
label110:
	mv a2, a4
	sh2add a3, a4, s2
	flw f13, 0(a3)
	sh2add a3, a4, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a4, 1
	bge a2, s0, label16
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label16
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label16
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label16
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label16
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label16
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label16
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label16
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label16
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label16
label339:
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label16
	j label339
label32:
	sh2add a3, a4, s2
	flw f13, 0(a3)
	sh2add a4, a4, s1
	flw f14, 0(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 4(a3)
	flw f14, 4(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 8(a3)
	flw f14, 8(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 12(a3)
	flw f14, 12(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	mv a4, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	j label32
label30:
	sh2add a3, a4, s2
	flw f13, 0(a3)
	sh2add a4, a4, s1
	flw f14, 0(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 4(a3)
	flw f14, 4(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 8(a3)
	flw f14, 8(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 12(a3)
	flw f14, 12(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	mv a4, a2
	addiw a2, a2, 4
	bge a2, s0, label110
	j label30
label31:
	sh2add a3, a4, s2
	flw f13, 0(a3)
	sh2add a4, a4, s1
	flw f14, 0(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 4(a3)
	flw f14, 4(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 8(a3)
	flw f14, 8(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 12(a3)
	flw f14, 12(a4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	mv a4, a2
	addiw a2, a2, 4
	bge a2, s0, label24
	j label31
label8:
	li a0, 39
	jal _sysy_stoptime
pcrel347:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel347)
	flw f10, 0(a0)
	fsub.s f10, f8, f10
	flw f11, 4(a0)
	fle.s a1, f10, f11
	flw f11, 8(a0)
	fle.s a0, f11, f10
	or a0, a1, a0
	beq a0, zero, label9
	mv a0, zero
	jal putint
	mv a0, zero
	j label10
label9:
	li a0, 1
	jal putint
	li a0, 1
label10:
	lui t0, 16
	add t0, t0, sp
	ld ra, 16(t0)
	lui t0, 16
	add t0, t0, sp
	flw f8, 24(t0)
	lui t0, 8
	add t0, t0, sp
	ld s0, 0(t0)
	lui t0, 16
	add t0, t0, sp
	ld s2, 32(t0)
	lui t0, 16
	add t0, t0, sp
	ld s1, 8(t0)
	lui t0, 16
	add t0, t0, sp
	addi sp, t0, 40
	ret
