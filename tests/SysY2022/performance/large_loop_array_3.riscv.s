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
.globl main
main:
.p2align 2
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	fsw f8, 24(sp)
	jal getint
	addiw s1, a0, -4
	mv s0, a0
	li a0, 22
	jal _sysy_starttime
	mv a4, zero
	fmv.w.x f8, zero
pcrel236:
	auipc a2, %pcrel_hi(y)
pcrel237:
	auipc a1, %pcrel_hi(x)
	fmv.s f11, f8
	addi a0, a1, %pcrel_lo(pcrel237)
	addi a1, a2, %pcrel_lo(pcrel236)
	lui a2, 260096
	fmv.w.x f10, a2
	mv a2, zero
	li a3, 100000
	bge zero, a3, label25
.p2align 2
label8:
	li t0, 1717986919
	mul a3, a2, t0
	srli t0, a3, 63
	srai a5, a3, 34
	add a3, t0, a5
	sh2add a5, a3, a3
	slliw t1, a5, 1
	subw t0, a2, t1
pcrel238:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	sltu a3, zero, t0
	addi a5, t1, %pcrel_lo(pcrel238)
	lui t0, 260096
	flw f13, 0(a5)
	fadd.s f12, f10, f13
	fmv.w.x f13, t0
	fmv.s f10, f13
	bne a3, zero, label205
	j label204
.p2align 2
label163:
	sh2add t0, a4, a0
	sh2add a5, a4, a1
	flw f12, 0(t0)
	addiw a4, a4, 1
	flw f14, 0(a5)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f12
	bgt s0, a4, label19
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, a3
	li a3, 100000
	blt a2, a3, label8
	j label25
.p2align 2
label117:
	fmv.w.x f13, zero
	mv a4, zero
	mv t0, a0
	mv a5, a1
	flw f12, 0(a0)
	li a4, 1
	flw f14, 0(a1)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f12
	ble s0, a4, label217
.p2align 2
label19:
	sh2add t0, a4, a0
	sh2add a5, a4, a1
	flw f12, 0(t0)
	addiw a4, a4, 1
	flw f14, 0(a5)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f12
	bgt s0, a4, label19
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, a3
	li a3, 100000
	blt a2, a3, label8
	j label25
.p2align 2
label204:
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
	ble s0, a4, label61
	addiw a3, a4, 4
	bgt s0, a3, label67
	fcvt.s.w f12, a4
	sh2add a3, a4, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a3)
	sh2add a3, a4, a1
	addiw a4, a4, 1
	fsw f12, 0(a3)
	bgt s0, a4, label10
	mv a3, s0
	bgt s0, zero, label18
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, s0
	li a3, 100000
	blt a2, a3, label8
	j label25
.p2align 2
label67:
	mv a3, a4
	j label12
.p2align 2
label10:
	fcvt.s.w f12, a4
	sh2add a3, a4, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a3)
	sh2add a3, a4, a1
	addiw a4, a4, 1
	fsw f12, 0(a3)
	bgt s0, a4, label10
	j label78
.p2align 2
label12:
	fcvt.s.w f12, a3
	addiw t0, a3, 1
	sh2add a4, a3, a0
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
	bgt s1, a4, label67
	fcvt.s.w f12, a4
	sh2add a3, a4, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a3)
	sh2add a3, a4, a1
	addiw a4, a4, 1
	fsw f12, 0(a3)
	bgt s0, a4, label10
	mv a3, s0
	bgt s0, zero, label18
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, s0
	li a3, 100000
	blt a2, a3, label8
	j label25
.p2align 2
label78:
	mv a3, s0
	ble s0, zero, label214
.p2align 2
label18:
	li a4, 4
	ble s0, a4, label117
	fmv.w.x f12, zero
	mv a4, zero
.p2align 2
label22:
	sh2add a5, a4, a0
	sh2add t0, a4, a1
	flw f13, 0(a5)
	addiw a4, a4, 4
	flw f14, 0(t0)
	fmul.s f15, f13, f14
	flw f13, 4(a5)
	flw f14, 4(t0)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f14
	flw f13, 8(a5)
	fadd.s f12, f12, f15
	flw f15, 8(t0)
	fmul.s f14, f13, f15
	flw f13, 12(a5)
	fadd.s f12, f12, f14
	flw f14, 12(t0)
	fmul.s f15, f13, f14
	fadd.s f13, f12, f15
	ble s1, a4, label163
	fmv.s f12, f13
	j label22
.p2align 2
label61:
	mv a3, a4
	bgt s0, zero, label18
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	li a3, 100000
	blt a2, a3, label8
label25:
	li a0, 39
	jal _sysy_stoptime
pcrel239:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel239)
	flw f12, 8(a0)
	flw f11, 12(a0)
	fsub.s f10, f8, f12
	flw f12, 16(a0)
	fle.s a1, f10, f11
	fle.s a0, f12, f10
	or a1, a1, a0
	beq a1, zero, label28
	mv a0, zero
	jal putint
	mv a0, zero
	j label26
.p2align 2
label217:
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, a3
	li a3, 100000
	blt a2, a3, label8
	j label25
.p2align 2
label214:
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, a3
	li a3, 100000
	blt a2, a3, label8
	j label25
label26:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	flw f8, 24(sp)
	addi sp, sp, 32
	ret
label28:
	li a0, 1
	jal putint
	li a0, 1
	j label26
