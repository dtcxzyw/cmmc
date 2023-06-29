.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1036831949
	.4byte	1045220557
	.4byte	1512217432
	.4byte	897988541
	.4byte	3045472189
.text
.globl main
main:
	lui t0, 1048568
	add t0, t0, sp
	addi sp, t0, -40
	lui t0, 8
	add t0, t0, sp
	sd s1, 32(t0)
	lui t0, 8
	add t0, t0, sp
	sd s2, 24(t0)
	lui t0, 8
	add t0, t0, sp
	sd s0, 16(t0)
	lui t0, 8
	add t0, t0, sp
	fsw f8, 8(t0)
	lui t0, 8
	add t0, t0, sp
	sd ra, 0(t0)
	addi s1, sp, 0
	lui t0, 4
	add t0, t0, sp
	addi s2, t0, 0
	jal getint
	mv s0, a0
	li a0, 22
	jal _sysy_starttime
	fmv.w.x f8, zero
	lui a0, 260096
	fmv.w.x f10, a0
	fmv.w.x f11, zero
	mv a1, zero
	mv a0, zero
	li a2, 500000
	bge zero, a2, label33
	li a2, 1717986919
	mul a2, zero, a2
	srai a3, a2, 34
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 10
	mulw a2, a2, a3
	subw a2, zero, a2
	beq a2, zero, label32
	lui a2, 260096
	fmv.w.x f10, a2
	bge zero, s0, label14
	fcvt.s.w f12, zero
	fadd.s f13, f11, f12
	sh2add a2, zero, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, zero, s1
	fsw f12, 0(a2)
	addiw a1, zero, 1
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
	j label305
label32:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(label32)
	flw f12, 0(a2)
	fadd.s f11, f11, f12
	flw f12, 4(a2)
	fadd.s f10, f10, f12
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
	j label307
label33:
	li a0, 39
	jal _sysy_stoptime
pcrel327:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel327)
	flw f10, 8(a0)
	fsub.s f10, f8, f10
	flw f11, 12(a0)
	fle.s a1, f10, f11
	flw f11, 16(a0)
	fle.s a0, f11, f10
	or a0, a1, a0
	beq a0, zero, label207
	mv a0, zero
	jal putint
	mv a0, zero
	j label34
label207:
	li a0, 1
	jal putint
	li a0, 1
label34:
	lui t0, 8
	add t0, t0, sp
	ld ra, 0(t0)
	lui t0, 8
	add t0, t0, sp
	flw f8, 8(t0)
	lui t0, 8
	add t0, t0, sp
	ld s0, 16(t0)
	lui t0, 8
	add t0, t0, sp
	ld s2, 24(t0)
	lui t0, 8
	add t0, t0, sp
	ld s1, 32(t0)
	lui t0, 8
	add t0, t0, sp
	addi sp, t0, 40
	ret
label305:
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	j label289
label14:
	ble s0, zero, label73
	fmv.w.x f12, zero
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s0, label18
	j label29
label73:
	fmv.w.x f12, zero
	fadd.s f8, f8, f12
	addiw a0, a0, 1
	li a2, 500000
	bge a0, a2, label33
	li a2, 1717986919
	mul a2, a0, a2
	srai a3, a2, 34
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 10
	mulw a2, a2, a3
	subw a2, a0, a2
	beq a2, zero, label32
	lui a2, 260096
	fmv.w.x f10, a2
	fmv.w.x f11, zero
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
	j label305
label29:
	sh2add a3, a4, s2
	flw f13, 0(a3)
	sh2add a4, a4, s1
	flw f14, 0(a4)
	flw f15, 4(a3)
	flw f0, 4(a4)
	fmul.s f15, f15, f0
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	fadd.s f12, f12, f15
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
	bge a2, s0, label18
	j label29
label289:
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	j label298
label18:
	addiw a2, a4, 4
	bge a2, s0, label22
	j label21
label22:
	addiw a2, a4, 4
	bge a2, s0, label116
	j label28
label116:
	mv a2, a4
	sh2add a3, a4, s2
	flw f13, 0(a3)
	sh2add a3, a4, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a4, 1
	bge a2, s0, label30
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label30
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label30
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label30
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label30
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label30
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label30
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label30
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label30
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label30
	j label310
label28:
	sh2add a3, a4, s2
	flw f13, 0(a3)
	sh2add a4, a4, s1
	flw f14, 0(a4)
	flw f15, 4(a3)
	flw f0, 4(a4)
	fmul.s f15, f15, f0
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	fadd.s f12, f12, f15
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
	bge a2, s0, label116
	j label28
label30:
	fadd.s f8, f8, f12
	addiw a0, a0, 1
	li a2, 500000
	bge a0, a2, label33
	li a2, 1717986919
	mul a2, a0, a2
	srai a3, a2, 34
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 10
	mulw a2, a2, a3
	subw a2, a0, a2
	beq a2, zero, label32
	lui a2, 260096
	fmv.w.x f10, a2
	fmv.w.x f11, zero
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
	j label289
label307:
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	j label307
label298:
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label14
	j label307
label310:
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s0, label30
	j label310
label21:
	sh2add a3, a4, s2
	flw f13, 0(a3)
	sh2add a4, a4, s1
	flw f14, 0(a4)
	flw f15, 4(a3)
	flw f0, 4(a4)
	fmul.s f15, f15, f0
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	fadd.s f12, f12, f15
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
	bge a2, s0, label22
	j label21
