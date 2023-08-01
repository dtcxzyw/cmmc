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
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	fsw f8, 24(sp)
	sd s2, 32(sp)
	jal getint
	addiw s0, a0, -4
	mv s1, a0
	li a0, 22
	jal _sysy_starttime
	li a5, 1717986919
pcrel231:
	auipc a1, %pcrel_hi(x)
pcrel232:
	auipc a3, %pcrel_hi(y)
	lui a2, 260096
	fmv.w.x f8, zero
	mv t1, zero
	mv t0, zero
pcrel233:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel231)
	fmv.w.x f10, a2
	fmv.s f11, f8
	addi s2, a4, %pcrel_lo(pcrel233)
	addi a1, a3, %pcrel_lo(pcrel232)
	li a4, 4
	li a3, 500000
	bge zero, a3, label25
.p2align 2
label8:
	mul t2, t0, a5
	flw f13, 0(s2)
	fmv.w.x f14, a2
	srli t4, t2, 63
	srai t3, t2, 34
	fadd.s f12, f10, f13
	add t2, t4, t3
	fmv.s f10, f14
	sh2add t5, t2, t2
	slliw t3, t5, 1
	subw t4, t0, t3
	sltu t2, zero, t4
	bne t2, zero, label208
	fmv.s f10, f12
.p2align 2
label208:
	flw f14, 4(s2)
	fmv.w.x f13, zero
	fadd.s f12, f11, f14
	fmv.s f11, f13
	bne t2, zero, label210
	fmv.s f11, f12
.p2align 2
label210:
	ble s1, t1, label14
	addiw t3, t1, 4
	bgt s1, t3, label12
	j label66
.p2align 2
label10:
	fcvt.s.w f12, t2
	sh2add t1, t2, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(t1)
	sh2add t1, t2, a1
	addiw t2, t2, 1
	fsw f12, 0(t1)
	bgt s1, t2, label10
	mv t1, s1
	bgt s1, zero, label18
	j label216
.p2align 2
label12:
	fcvt.s.w f12, t1
	addiw t4, t1, 1
	sh2add t2, t1, a0
	sh2add t3, t1, a1
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(t2)
	fsw f12, 0(t3)
	fcvt.s.w f12, t4
	addiw t4, t1, 2
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 4(t2)
	fsw f12, 4(t3)
	fcvt.s.w f12, t4
	addiw t4, t1, 3
	fadd.s f13, f11, f12
	addiw t1, t1, 4
	fadd.s f12, f10, f12
	fsw f13, 8(t2)
	fsw f12, 8(t3)
	fcvt.s.w f12, t4
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 12(t2)
	fsw f12, 12(t3)
	bgt s0, t1, label12
	mv t2, t1
	fcvt.s.w f12, t1
	sh2add t1, t1, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(t1)
	sh2add t1, t2, a1
	addiw t2, t2, 1
	fsw f12, 0(t1)
	bgt s1, t2, label10
	j label217
.p2align 2
label18:
	ble s1, a4, label117
	fmv.w.x f12, zero
	mv t2, zero
	j label22
.p2align 2
label19:
	sh2add t3, t2, a0
	sh2add t4, t2, a1
	flw f13, 0(t3)
	addiw t2, t2, 1
	flw f14, 0(t4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	bgt s1, t2, label19
.p2align 2
label132:
	fadd.s f8, f8, f12
	addiw t0, t0, 1
	blt t0, a3, label8
	j label25
.p2align 2
label22:
	sh2add t3, t2, a0
	sh2add t4, t2, a1
	flw f13, 0(t3)
	addiw t2, t2, 4
	flw f14, 0(t4)
	fmul.s f15, f13, f14
	flw f13, 4(t3)
	flw f14, 4(t4)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f14
	flw f13, 8(t3)
	fadd.s f12, f12, f15
	flw f15, 8(t4)
	fmul.s f14, f13, f15
	flw f13, 12(t3)
	flw f15, 12(t4)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f15
	fadd.s f12, f12, f14
	bgt s0, t2, label22
	sh2add t3, t2, a0
	sh2add t4, t2, a1
	flw f13, 0(t3)
	addiw t2, t2, 1
	flw f14, 0(t4)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	bgt s1, t2, label19
	fadd.s f8, f8, f12
	addiw t0, t0, 1
	blt t0, a3, label8
	j label25
label216:
	fmv.w.x f12, zero
	j label16
.p2align 2
label217:
	mv t1, s1
	bgt s1, zero, label18
	j label216
label16:
	fadd.s f8, f8, f12
	addiw t0, t0, 1
	blt t0, a3, label8
	j label25
label14:
	bgt s1, zero, label18
	j label216
label117:
	fmv.w.x f12, zero
	mv t2, zero
	mv t3, a0
	mv t4, a1
	flw f13, 0(a0)
	li t2, 1
	flw f14, 0(a1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	bgt s1, t2, label19
	j label132
label25:
	li a0, 39
	jal _sysy_stoptime
	flw f12, 8(s2)
	flw f11, 12(s2)
	fsub.s f10, f8, f12
	flw f12, 16(s2)
	fle.s a0, f10, f11
	fle.s a1, f12, f10
	or a0, a0, a1
	bne a0, zero, label29
	li a0, 1
	jal putint
	li a0, 1
label26:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	flw f8, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 40
	ret
label29:
	mv a0, zero
	jal putint
	mv a0, zero
	j label26
label66:
	mv t2, t1
	j label10
