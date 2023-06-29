.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1512217432
	.4byte	897988541
	.4byte	3045472189
	.4byte	1036831949
	.4byte	1045220557
.text
.globl main
main:
	lui t0, 1048568
	add t0, t0, sp
	addi sp, t0, -40
	lui t0, 8
	add t0, t0, sp
	sd s2, 32(t0)
	lui t0, 8
	add t0, t0, sp
	sd s3, 24(t0)
	lui t0, 8
	add t0, t0, sp
	sd s1, 16(t0)
	lui t0, 8
	add t0, t0, sp
	fsw f8, 8(t0)
	lui t0, 8
	add t0, t0, sp
	sd ra, 0(t0)
	addi s2, sp, 0
	lui t0, 4
	add t0, t0, sp
	addi s3, t0, 0
	jal getint
	mv s1, a0
	li a0, 22
	jal _sysy_starttime
	fmv.w.x f8, zero
	lui a0, 260096
	fmv.w.x f10, a0
	fmv.w.x f11, zero
	mv a1, zero
	mv a0, zero
	li a2, 500000
	bge zero, a2, label8
	li a2, 1717986919
	mul a2, zero, a2
	srai a3, a2, 34
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 10
	mulw a2, a2, a3
	subw a2, zero, a2
	beq a2, zero, label14
	lui a2, 260096
	fmv.w.x f10, a2
	bge zero, s1, label20
	j label19
label8:
	li a0, 39
	jal _sysy_stoptime
pcrel257:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel257)
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
	lui t0, 8
	add t0, t0, sp
	ld ra, 0(t0)
	lui t0, 8
	add t0, t0, sp
	flw f8, 8(t0)
	lui t0, 8
	add t0, t0, sp
	ld s1, 16(t0)
	lui t0, 8
	add t0, t0, sp
	ld s3, 24(t0)
	lui t0, 8
	add t0, t0, sp
	ld s2, 32(t0)
	lui t0, 8
	add t0, t0, sp
	addi sp, t0, 40
	ret
label14:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(label14)
	flw f12, 12(a2)
	fadd.s f11, f11, f12
	flw f12, 16(a2)
	fadd.s f10, f10, f12
	bge a1, s1, label20
label19:
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	slli a2, a1, 2
	add a2, s3, a2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	slli a2, a1, 2
	add a2, s2, a2
	fsw f12, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label20
	j label19
label20:
	ble s1, zero, label97
	fmv.w.x f12, zero
	mv a2, zero
	addiw a3, zero, 4
	bge a3, s1, label26
	j label37
label97:
	fmv.w.x f12, zero
label21:
	fadd.s f8, f8, f12
	addiw a0, a0, 1
	li a2, 500000
	bge a0, a2, label8
	li a2, 1717986919
	mul a2, a0, a2
	srai a3, a2, 34
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 10
	mulw a2, a2, a3
	subw a2, a0, a2
	beq a2, zero, label14
	lui a2, 260096
	fmv.w.x f10, a2
	fmv.w.x f11, zero
	bge a1, s1, label20
	j label19
label26:
	addiw a3, a2, 4
	bge a3, s1, label29
	j label36
label29:
	addiw a3, a2, 4
	bge a3, s1, label32
	j label35
label32:
	slliw a3, a2, 2
	add a3, s3, a3
	flw f13, 0(a3)
	slliw a3, a2, 2
	add a3, s2, a3
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s1, label21
	slliw a3, a2, 2
	add a3, s3, a3
	flw f13, 0(a3)
	slliw a3, a2, 2
	add a3, s2, a3
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s1, label21
	slliw a3, a2, 2
	add a3, s3, a3
	flw f13, 0(a3)
	slliw a3, a2, 2
	add a3, s2, a3
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s1, label21
	slliw a3, a2, 2
	add a3, s3, a3
	flw f13, 0(a3)
	slliw a3, a2, 2
	add a3, s2, a3
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s1, label21
	slliw a3, a2, 2
	add a3, s3, a3
	flw f13, 0(a3)
	slliw a3, a2, 2
	add a3, s2, a3
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s1, label21
	slliw a3, a2, 2
	add a3, s3, a3
	flw f13, 0(a3)
	slliw a3, a2, 2
	add a3, s2, a3
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s1, label21
	slliw a3, a2, 2
	add a3, s3, a3
	flw f13, 0(a3)
	slliw a3, a2, 2
	add a3, s2, a3
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s1, label21
	slliw a3, a2, 2
	add a3, s3, a3
	flw f13, 0(a3)
	slliw a3, a2, 2
	add a3, s2, a3
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s1, label21
	slliw a3, a2, 2
	add a3, s3, a3
	flw f13, 0(a3)
	slliw a3, a2, 2
	add a3, s2, a3
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s1, label21
	slliw a3, a2, 2
	add a3, s3, a3
	flw f13, 0(a3)
	slliw a3, a2, 2
	add a3, s2, a3
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s1, label21
label255:
	slliw a3, a2, 2
	add a3, s3, a3
	flw f13, 0(a3)
	slliw a3, a2, 2
	add a3, s2, a3
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	bge a2, s1, label21
	j label255
label36:
	slliw a4, a2, 2
	add a4, s3, a4
	flw f13, 0(a4)
	slliw a2, a2, 2
	add a2, s2, a2
	flw f14, 0(a2)
	flw f15, 4(a4)
	flw f0, 4(a2)
	fmul.s f15, f15, f0
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	fadd.s f12, f12, f15
	flw f13, 8(a4)
	flw f14, 8(a2)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 12(a4)
	flw f14, 12(a2)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	mv a2, a3
	addiw a3, a3, 4
	bge a3, s1, label29
	j label36
label37:
	slliw a4, a2, 2
	add a4, s3, a4
	flw f13, 0(a4)
	slliw a2, a2, 2
	add a2, s2, a2
	flw f14, 0(a2)
	flw f15, 4(a4)
	flw f0, 4(a2)
	fmul.s f15, f15, f0
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	fadd.s f12, f12, f15
	flw f13, 8(a4)
	flw f14, 8(a2)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 12(a4)
	flw f14, 12(a2)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	mv a2, a3
	addiw a3, a3, 4
	bge a3, s1, label26
	j label37
label35:
	slliw a4, a2, 2
	add a4, s3, a4
	flw f13, 0(a4)
	slliw a2, a2, 2
	add a2, s2, a2
	flw f14, 0(a2)
	flw f15, 4(a4)
	flw f0, 4(a2)
	fmul.s f15, f15, f0
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	fadd.s f12, f12, f15
	flw f13, 8(a4)
	flw f14, 8(a2)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 12(a4)
	flw f14, 12(a2)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	mv a2, a3
	addiw a3, a3, 4
	bge a3, s1, label32
	j label35
