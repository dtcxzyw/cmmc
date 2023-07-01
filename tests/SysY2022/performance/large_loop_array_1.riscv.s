.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1487051712
	.4byte	897988541
	.4byte	3045472189
	.4byte	1045220557
	.4byte	1036831949
.text
.globl main
main:
	lui t0, 1048572
	add t0, t0, sp
	addi sp, t0, -40
	lui t0, 4
	add t0, t0, sp
	sd s1, 8(t0)
	lui t0, 4
	add t0, t0, sp
	sd s2, 32(t0)
	lui t0, 2
	add t0, t0, sp
	sd s0, 0(t0)
	lui t0, 4
	add t0, t0, sp
	fsw f8, 24(t0)
	lui t0, 4
	add t0, t0, sp
	sd ra, 16(t0)
	addi s1, sp, 0
	lui t0, 2
	add t0, t0, sp
	addi s2, t0, 8
	jal getint
	mv s0, a0
	li a0, 22
	jal _sysy_starttime
	lui a0, 260096
	fmv.w.x f10, a0
	fmv.w.x f11, zero
	fmv.w.x f8, zero
	mv a2, zero
	mv a0, zero
	li a1, 500000
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
pcrel357:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a3, %pcrel_lo(pcrel357)
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
	ble s0, a2, label88
	addiw a1, a2, 4
	ble s0, a1, label93
	j label16
label88:
	mv a1, a2
	ble s0, zero, label163
	fmv.w.x f12, zero
	mv a4, zero
	addiw a2, zero, 4
	ble s0, a2, label29
	j label40
label93:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label20
	j label19
label22:
	ble s0, zero, label163
	fmv.w.x f12, zero
	mv a4, zero
	addiw a2, zero, 4
	ble s0, a2, label29
	j label40
label163:
	fmv.w.x f12, zero
label24:
	fadd.s f8, f8, f12
	addiw a0, a0, 1
	mv a2, a1
	li a1, 500000
	bge a0, a1, label8
	j label13
label19:
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
	ble s0, a2, label20
	j label19
label20:
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label22
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label22
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label22
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label22
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label22
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label22
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label22
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label22
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label22
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label22
label349:
	fcvt.s.w f12, a1
	fadd.s f13, f11, f12
	sh2add a2, a1, s2
	fsw f13, 0(a2)
	fadd.s f12, f10, f12
	sh2add a2, a1, s1
	fsw f12, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label22
	j label349
label29:
	addiw a2, a4, 4
	ble s0, a2, label32
	j label39
label32:
	addiw a2, a4, 4
	ble s0, a2, label182
	j label35
label182:
	mv a2, a4
	sh2add a3, a4, s2
	flw f13, 0(a3)
	sh2add a3, a4, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a4, 1
	ble s0, a2, label24
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	ble s0, a2, label24
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	ble s0, a2, label24
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	ble s0, a2, label24
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	ble s0, a2, label24
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	ble s0, a2, label24
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	ble s0, a2, label24
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	ble s0, a2, label24
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	ble s0, a2, label24
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	ble s0, a2, label24
	j label351
label35:
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
	ble s0, a2, label182
	j label35
label351:
	sh2add a3, a2, s2
	flw f13, 0(a3)
	sh2add a3, a2, s1
	flw f14, 0(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a2, a2, 1
	ble s0, a2, label24
	j label351
label40:
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
	ble s0, a2, label29
	j label40
label16:
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
	ble s0, a1, label93
	j label16
label39:
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
	ble s0, a2, label32
	j label39
label8:
	li a0, 39
	jal _sysy_stoptime
pcrel358:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel358)
	flw f10, 0(a0)
	fsub.s f10, f8, f10
	flw f11, 4(a0)
	fle.s a1, f10, f11
	flw f11, 8(a0)
	fle.s a0, f11, f10
	or a0, a1, a0
	beq a0, zero, label69
	j label68
label69:
	li a0, 1
	jal putint
	li a0, 1
label11:
	lui t0, 4
	add t0, t0, sp
	ld ra, 16(t0)
	lui t0, 4
	add t0, t0, sp
	flw f8, 24(t0)
	lui t0, 2
	add t0, t0, sp
	ld s0, 0(t0)
	lui t0, 4
	add t0, t0, sp
	ld s2, 32(t0)
	lui t0, 4
	add t0, t0, sp
	ld s1, 8(t0)
	lui t0, 4
	add t0, t0, sp
	addi sp, t0, 40
	ret
label68:
	mv a0, zero
	jal putint
	mv a0, zero
	j label11
