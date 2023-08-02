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
.align 8
y:
	.zero	16384
.align 8
x:
	.zero	16384
.text
.p2align 2
.globl main
main:
	addi sp, sp, -16
	sd ra, 0(sp)
	sd s0, 8(sp)
	jal getint
	mv s0, a0
	li a0, 22
	jal _sysy_starttime
	lui t4, 419430
	lui t1, 122
	addiw a2, s0, -4
pcrel227:
	auipc a3, %pcrel_hi(x)
	lui a4, 260096
pcrel228:
	auipc a5, %pcrel_hi(y)
	fmv.w.x f12, zero
	mv t3, zero
	mv t2, zero
pcrel229:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a3, %pcrel_lo(pcrel227)
	fmv.w.x f10, a4
	addi a1, a5, %pcrel_lo(pcrel228)
	fmv.s f11, f12
	addi a3, t0, %pcrel_lo(pcrel229)
	addiw a5, t1, 288
	li t0, 4
	addiw t1, t4, 1639
	bge zero, a5, label25
.p2align 2
label8:
	mul t4, t2, t1
	flw f15, 0(a3)
	fmv.w.x f14, a4
	srli a6, t4, 63
	srai t5, t4, 34
	fadd.s f13, f10, f15
	add t6, a6, t5
	fmv.s f10, f14
	sh2add a7, t6, t6
	slliw a6, a7, 1
	subw t5, t2, a6
	sltu t4, zero, t5
	bne t4, zero, label210
	fmv.s f10, f13
.p2align 2
label210:
	flw f15, 4(a3)
	fmv.w.x f14, zero
	fadd.s f13, f11, f15
	fmv.s f11, f14
	bne t4, zero, label212
	fmv.s f11, f13
.p2align 2
label212:
	bgt s0, t3, label20
	j label9
.p2align 2
label13:
	ble s0, t0, label70
	fmv.w.x f13, zero
	mv t4, zero
.p2align 2
label14:
	sh2add t5, t4, a0
	sh2add t6, t4, a1
	flw f15, 0(t5)
	addiw t4, t4, 4
	flw f1, 0(t6)
	flw f0, 4(t5)
	fmul.s f2, f15, f1
	flw f1, 4(t6)
	flw f15, 8(t5)
	fadd.s f14, f13, f2
	fmul.s f2, f0, f1
	flw f1, 8(t6)
	flw f0, 12(t5)
	fadd.s f13, f14, f2
	fmul.s f2, f15, f1
	flw f1, 12(t6)
	fmul.s f15, f0, f1
	fadd.s f14, f13, f2
	fadd.s f13, f14, f15
	bgt a2, t4, label14
.p2align 2
label17:
	sh2add t6, t4, a0
	sh2add t5, t4, a1
	flw f14, 0(t6)
	addiw t4, t4, 1
	flw f15, 0(t5)
	fmul.s f0, f14, f15
	fadd.s f13, f13, f0
	bgt s0, t4, label17
.p2align 2
label116:
	fadd.s f12, f12, f13
	addiw t2, t2, 1
	blt t2, a5, label8
	j label25
.p2align 2
label20:
	addiw t5, t3, 4
	bgt s0, t5, label23
	j label121
.p2align 2
label21:
	fcvt.s.w f13, t4
	sh2add t3, t4, a0
	sh2add t5, t4, a1
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	bgt s0, t4, label21
	mv t3, s0
	bgt s0, zero, label13
	j label63
.p2align 2
label23:
	fcvt.s.w f13, t3
	addiw t6, t3, 1
	sh2add t4, t3, a0
	sh2add t5, t3, a1
	fadd.s f14, f10, f13
	fadd.s f15, f11, f13
	fcvt.s.w f13, t6
	addiw t6, t3, 2
	fsw f15, 0(t4)
	fadd.s f15, f10, f13
	fsw f14, 0(t5)
	fadd.s f14, f11, f13
	fcvt.s.w f13, t6
	addiw t6, t3, 3
	addiw t3, t3, 4
	fsw f14, 4(t4)
	fadd.s f14, f10, f13
	fsw f15, 4(t5)
	fadd.s f15, f11, f13
	fcvt.s.w f13, t6
	fsw f15, 8(t4)
	fadd.s f15, f10, f13
	fsw f14, 8(t5)
	fadd.s f14, f11, f13
	fsw f14, 12(t4)
	fsw f15, 12(t5)
	bgt a2, t3, label23
	mv t4, t3
	fcvt.s.w f13, t3
	sh2add t3, t3, a0
	sh2add t5, t4, a1
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	bgt s0, t4, label21
	mv t3, s0
	bgt s0, zero, label13
	j label63
label9:
	bgt s0, zero, label13
label63:
	fmv.w.x f13, zero
	fadd.s f12, f12, f13
	addiw t2, t2, 1
	blt t2, a5, label8
label25:
	flw f11, 8(a3)
	li a0, 39
	flw f13, 12(a3)
	fsub.s f10, f12, f11
	flw f11, 16(a3)
	fle.s a1, f10, f13
	fle.s a2, f11, f10
	or s0, a1, a2
	jal _sysy_stoptime
	bne s0, zero, label29
	li a0, 1
	jal putint
	li a0, 1
	j label26
label70:
	fmv.w.x f13, zero
	mv t4, zero
	mv t6, a0
	mv t5, a1
	flw f14, 0(a0)
	li t4, 1
	flw f15, 0(a1)
	fmul.s f0, f14, f15
	fadd.s f13, f13, f0
	bgt s0, t4, label17
	j label116
label26:
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
label29:
	mv a0, zero
	jal putint
	mv a0, zero
	j label26
label121:
	mv t4, t3
	j label21
