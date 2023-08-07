.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1045220557
	.4byte	1036831949
	.4byte	1518488747
	.4byte	897988541
	.4byte	3045472189
.bss
.align 8
y:
	.zero	32768
.align 8
x:
	.zero	32768
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
	lui t3, 419430
	addiw a1, s0, -4
	mv t2, zero
	lui t1, 24
pcrel258:
	auipc a3, %pcrel_hi(y)
	mv t4, zero
pcrel259:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
pcrel260:
	auipc a4, %pcrel_hi(x)
	fmv.w.x f12, zero
	addiw a5, t1, 1696
	addi a0, a3, %pcrel_lo(pcrel258)
	addi a2, a4, %pcrel_lo(pcrel260)
	fmv.s f11, f12
	addiw t1, t3, 1639
	addi a3, t0, %pcrel_lo(pcrel259)
	lui a4, 260096
	li t0, 4
	fmv.w.x f10, a4
	bge zero, a5, label39
.p2align 2
label8:
	mul t3, t2, t1
	flw f15, 0(a3)
	fmv.w.x f14, a4
	srli a6, t3, 63
	srai t5, t3, 34
	fadd.s f13, f10, f15
	add t6, a6, t5
	fmv.s f10, f14
	sh2add t3, t6, t6
	slliw a7, t3, 1
	subw t5, t2, a7
	sltu t3, zero, t5
	bne t3, zero, label232
	j label231
.p2align 2
label95:
	fadd.s f12, f12, f13
	addiw t2, t2, 1
	mv t4, t3
	blt t2, a5, label8
label39:
	flw f11, 8(a3)
	li a0, 39
	flw f13, 12(a3)
	fsub.s f10, f12, f11
	flw f11, 16(a3)
	fle.s a1, f10, f13
	fle.s a2, f11, f10
	or s0, a1, a2
	jal _sysy_stoptime
	bne s0, zero, label43
	li a0, 1
	jal putint
	li a0, 1
	j label40
.p2align 2
label231:
	fmv.s f10, f13
.p2align 2
label232:
	flw f14, 4(a3)
	fmv.w.x f15, zero
	fadd.s f13, f11, f14
	fmv.s f11, f15
	bne t3, zero, label234
	fmv.s f11, f13
.p2align 2
label234:
	ble s0, t4, label73
	addiw t3, t4, 4
	ble s0, t3, label135
	sh2add t3, t4, a2
.p2align 2
label29:
	fcvt.s.w f13, t4
	addiw t6, t4, 1
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	fadd.s f15, f11, f13
	fcvt.s.w f13, t6
	addiw t6, t4, 2
	fsw f15, 0(t3)
	fadd.s f15, f10, f13
	fsw f14, 0(t5)
	fadd.s f14, f11, f13
	fcvt.s.w f13, t6
	addiw t6, t4, 3
	addiw t4, t4, 4
	fsw f14, 4(t3)
	fadd.s f14, f10, f13
	fsw f15, 4(t5)
	fadd.s f15, f11, f13
	fcvt.s.w f13, t6
	fsw f15, 8(t3)
	fadd.s f15, f11, f13
	fsw f14, 8(t5)
	fadd.s f14, f10, f13
	fsw f15, 12(t3)
	fsw f14, 12(t5)
	ble a1, t4, label165
	addi t3, t3, 16
	j label29
label77:
	fmv.w.x f13, zero
	fadd.s f12, f12, f13
	addiw t2, t2, 1
	mv t4, t3
	blt t2, a5, label8
	j label39
.p2align 2
label13:
	ble s0, t0, label84
	fmv.w.x f13, zero
	mv t4, a2
	mv t5, zero
.p2align 2
label21:
	flw f15, 0(t4)
	sh2add t6, t5, a0
	addiw t5, t5, 4
	flw f1, 0(t6)
	flw f0, 4(t4)
	fmul.s f2, f15, f1
	flw f15, 4(t6)
	flw f1, 8(t4)
	fadd.s f14, f13, f2
	fmul.s f2, f0, f15
	flw f0, 8(t6)
	flw f15, 12(t4)
	fadd.s f13, f14, f2
	fmul.s f2, f1, f0
	flw f0, 12(t6)
	fmul.s f1, f15, f0
	fadd.s f14, f13, f2
	fadd.s f13, f14, f1
	ble a1, t5, label25
	addi t4, t4, 16
	j label21
label135:
	sh2add t3, t4, a2
	fcvt.s.w f13, t4
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	bgt s0, t4, label37
.p2align 2
label178:
	mv t3, s0
	bgt s0, zero, label13
	j label77
.p2align 2
label165:
	sh2add t3, t4, a2
	fcvt.s.w f13, t4
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	bgt s0, t4, label37
	j label245
.p2align 2
label34:
	fcvt.s.w f13, t4
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	ble s0, t4, label178
.p2align 2
label37:
	addi t3, t3, 4
	j label34
.p2align 2
label14:
	flw f14, 0(t4)
	sh2add t6, t5, a0
	addiw t5, t5, 1
	flw f15, 0(t6)
	fmul.s f0, f14, f15
	fadd.s f13, f13, f0
	ble s0, t5, label95
.p2align 2
label18:
	addi t4, t4, 4
	j label14
.p2align 2
label25:
	sh2add t4, t5, a2
	sh2add t6, t5, a0
	flw f14, 0(t4)
	addiw t5, t5, 1
	flw f15, 0(t6)
	fmul.s f0, f14, f15
	fadd.s f13, f13, f0
	bgt s0, t5, label18
	fadd.s f12, f12, f13
	addiw t2, t2, 1
	mv t4, t3
	blt t2, a5, label8
	j label39
label73:
	mv t3, t4
	bgt s0, zero, label13
	j label77
label40:
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
label43:
	mv a0, zero
	jal putint
	mv a0, zero
	j label40
.p2align 2
label245:
	mv t3, s0
	bgt s0, zero, label13
	j label77
label84:
	fmv.w.x f13, zero
	mv t4, a2
	mv t5, zero
	j label14
