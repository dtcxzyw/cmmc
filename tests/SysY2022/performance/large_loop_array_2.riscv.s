.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1045220557
	.4byte	1036831949
	.4byte	1512217432
	.4byte	897988541
	.4byte	3045472189
.bss
.align 4
y:
	.zero	16384
.align 4
x:
	.zero	16384
.text
.globl main
main:
.p2align 2
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s1, 16(sp)
	fsw f8, 8(sp)
	sd ra, 0(sp)
	jal getint
	addiw s1, a0, -4
	mv s0, a0
	li a0, 22
	jal _sysy_starttime
	mv a4, zero
	fmv.w.x f8, zero
pcrel241:
	auipc a2, %pcrel_hi(y)
pcrel242:
	auipc a1, %pcrel_hi(x)
	fmv.s f11, f8
	addi a0, a1, %pcrel_lo(pcrel242)
	addi a1, a2, %pcrel_lo(pcrel241)
	lui a2, 260096
	fmv.w.x f10, a2
	mv a2, zero
	li a3, 500000
	bge zero, a3, label25
.p2align 2
label8:
	li t0, 1717986919
	mul a3, a2, t0
	srli t0, a3, 63
	srai a5, a3, 34
	add a3, t0, a5
	sh2add a5, a3, a3
	slliw t0, a5, 1
	subw t1, a2, t0
pcrel243:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	sltu a3, zero, t1
	addi a5, t0, %pcrel_lo(pcrel243)
	lui t0, 260096
	flw f13, 0(a5)
	fadd.s f12, f10, f13
	fmv.w.x f13, t0
	fmv.s f10, f13
	bne a3, zero, label205
	fmv.s f10, f12
.p2align 2
label205:
	flw f14, 4(a5)
	fmv.w.x f13, zero
	fadd.s f12, f11, f14
	fmv.s f11, f13
	bne a3, zero, label207
	fmv.s f11, f12
.p2align 2
label207:
	bgt s0, a4, label20
	mv a3, a4
	bgt s0, zero, label13
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	li a3, 500000
	blt a2, a3, label8
	j label25
.p2align 2
label13:
	li a4, 4
	bgt s0, a4, label71
	fmv.w.x f13, zero
	mv a4, zero
	mv a5, a0
	mv t0, a1
	flw f12, 0(a0)
	li a4, 1
	flw f14, 0(a1)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f12
	bgt s0, a4, label14
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, a3
	li a3, 500000
	blt a2, a3, label8
	j label25
.p2align 2
label14:
	sh2add a5, a4, a0
	sh2add t0, a4, a1
	flw f12, 0(a5)
	addiw a4, a4, 1
	flw f14, 0(t0)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f12
	bgt s0, a4, label14
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, a3
	li a3, 500000
	blt a2, a3, label8
	j label25
.p2align 2
label20:
	addiw a3, a4, 4
	bgt s0, a3, label122
	fcvt.s.w f12, a4
	sh2add a3, a4, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a3)
	sh2add a3, a4, a1
	addiw a4, a4, 1
	fsw f12, 0(a3)
	bgt s0, a4, label23
	mv a3, s0
	bgt s0, zero, label13
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, s0
	li a3, 500000
	blt a2, a3, label8
	j label25
.p2align 2
label23:
	fcvt.s.w f12, a4
	sh2add a3, a4, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a3)
	sh2add a3, a4, a1
	addiw a4, a4, 1
	fsw f12, 0(a3)
	bgt s0, a4, label23
	mv a3, s0
	bgt s0, zero, label13
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, s0
	li a3, 500000
	blt a2, a3, label8
label25:
	li a0, 39
	jal _sysy_stoptime
pcrel244:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel244)
	flw f11, 8(a0)
	flw f12, 12(a0)
	fsub.s f10, f8, f11
	flw f11, 16(a0)
	fle.s a1, f10, f12
	fle.s a2, f11, f10
	or a0, a1, a2
	bne a0, zero, label29
	j label28
label26:
	ld ra, 0(sp)
	flw f8, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label28:
	li a0, 1
	jal putint
	li a0, 1
	j label26
label29:
	mv a0, zero
	jal putint
	mv a0, zero
	j label26
.p2align 2
label122:
	mv a3, a4
	fcvt.s.w f12, a4
	addiw t0, a4, 1
	sh2add a4, a4, a0
	sh2add a5, a3, a1
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a4)
	fsw f12, 0(a5)
	fcvt.s.w f12, t0
	addiw t0, a3, 2
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 4(a4)
	fsw f12, 4(a5)
	fcvt.s.w f12, t0
	addiw t0, a3, 3
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 8(a4)
	fsw f12, 8(a5)
	fcvt.s.w f12, t0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 12(a4)
	addiw a4, a3, 4
	fsw f12, 12(a5)
	bgt s1, a4, label122
	fcvt.s.w f12, a4
	sh2add a3, a4, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a3)
	sh2add a3, a4, a1
	addiw a4, a4, 1
	fsw f12, 0(a3)
	bgt s0, a4, label23
	mv a3, s0
	bgt s0, zero, label13
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, s0
	li a3, 500000
	blt a2, a3, label8
	j label25
.p2align 2
label71:
	fmv.w.x f12, zero
	mv a4, zero
.p2align 2
label17:
	sh2add a5, a4, a0
	sh2add t0, a4, a1
	flw f13, 0(a5)
	addiw a4, a4, 4
	flw f15, 0(t0)
	fmul.s f14, f13, f15
	flw f13, 4(a5)
	flw f15, 4(t0)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f15
	flw f13, 8(a5)
	flw f15, 8(t0)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f15
	flw f13, 12(a5)
	flw f15, 12(t0)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f15
	fadd.s f13, f12, f14
	bgt s1, a4, label117
	sh2add a5, a4, a0
	sh2add t0, a4, a1
	flw f12, 0(a5)
	addiw a4, a4, 1
	flw f14, 0(t0)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f12
	bgt s0, a4, label14
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, a3
	li a3, 500000
	blt a2, a3, label8
	j label25
.p2align 2
label117:
	fmv.s f12, f13
	j label17
