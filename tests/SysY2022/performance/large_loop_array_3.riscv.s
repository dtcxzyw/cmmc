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
pcrel260:
	auipc a3, %pcrel_hi(x)
	lui a4, 260096
	fmv.w.x f12, zero
	mv t4, zero
	addiw a1, s0, -4
pcrel261:
	auipc a5, %pcrel_hi(y)
	mv t2, zero
	lui t1, 24
pcrel262:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a3, %pcrel_lo(pcrel260)
	fmv.w.x f10, a4
	fmv.s f11, f12
	addi a0, a5, %pcrel_lo(pcrel261)
	addi a3, t0, %pcrel_lo(pcrel262)
	addiw a5, t1, 1696
	li t0, 4
	addiw t1, t3, 1639
label2:
	bge t2, a5, label39
.p2align 2
label8:
	mul t3, t2, t1
	flw f15, 0(a3)
	fmv.w.x f14, a4
	srli a7, t3, 63
	srai t5, t3, 34
	fadd.s f13, f10, f15
	add t6, a7, t5
	fmv.s f10, f14
	sh2add a6, t6, t6
	slliw a7, a6, 1
	subw t5, t2, a7
	sltu t3, zero, t5
	bne t3, zero, label232
	j label231
label133:
	fmv.w.x f13, zero
	mv t4, a2
	flw f14, 0(a2)
	mv t6, a0
	li t5, 1
	flw f0, 0(a0)
	fmul.s f15, f14, f0
	fadd.s f13, f13, f15
	bgt s0, t5, label36
.p2align 2
label178:
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
	beq s0, zero, label42
	mv a0, zero
	jal putint
	mv a0, zero
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
	ble s0, t3, label78
	sh2add t3, t4, a2
.p2align 2
label11:
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
	fadd.s f15, f10, f13
	fsw f14, 8(t5)
	fadd.s f14, f11, f13
	fsw f14, 12(t3)
	fsw f15, 12(t5)
	ble a1, t4, label108
	addi t3, t3, 16
	j label11
label78:
	sh2add t3, t4, a2
	fcvt.s.w f13, t4
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	bgt s0, t4, label20
.p2align 2
label123:
	mv t3, s0
	ble s0, zero, label245
.p2align 2
label23:
	ble s0, t0, label133
	fmv.w.x f13, zero
	mv t4, a2
	mv t5, zero
.p2align 2
label25:
	flw f15, 0(t4)
	sh2add t6, t5, a0
	addiw t5, t5, 4
	flw f2, 0(t6)
	flw f0, 4(t4)
	fmul.s f1, f15, f2
	flw f2, 4(t6)
	fmul.s f15, f0, f2
	fadd.s f14, f13, f1
	flw f1, 8(t4)
	flw f0, 8(t6)
	fmul.s f2, f1, f0
	fadd.s f13, f14, f15
	flw f15, 12(t4)
	flw f1, 12(t6)
	fmul.s f0, f15, f1
	fadd.s f14, f13, f2
	fadd.s f13, f14, f0
	ble a1, t5, label29
	addi t4, t4, 16
	j label25
.p2align 2
label29:
	sh2add t4, t5, a2
	sh2add t6, t5, a0
	flw f14, 0(t4)
	addiw t5, t5, 1
	flw f0, 0(t6)
	fmul.s f15, f14, f0
	fadd.s f13, f13, f15
	bgt s0, t5, label36
	j label239
.p2align 2
label32:
	flw f14, 0(t4)
	sh2add t6, t5, a0
	addiw t5, t5, 1
	flw f0, 0(t6)
	fmul.s f15, f14, f0
	fadd.s f13, f13, f15
	ble s0, t5, label178
.p2align 2
label36:
	addi t4, t4, 4
	j label32
.p2align 2
label108:
	sh2add t3, t4, a2
	fcvt.s.w f13, t4
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	bgt s0, t4, label20
	j label242
.p2align 2
label17:
	fcvt.s.w f13, t4
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	ble s0, t4, label123
.p2align 2
label20:
	addi t3, t3, 4
	j label17
label73:
	mv t3, t4
	bgt s0, zero, label23
label245:
	fmv.w.x f13, zero
	addiw t2, t2, 1
	mv t4, t3
	fadd.s f12, f12, f13
	j label2
label40:
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
label42:
	li a0, 1
	jal putint
	li a0, 1
	j label40
.p2align 2
label239:
	fadd.s f12, f12, f13
	addiw t2, t2, 1
	mv t4, t3
	blt t2, a5, label8
	j label39
.p2align 2
label242:
	mv t3, s0
	bgt s0, zero, label23
	j label245
