.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	3045472189
.text
.globl main
main:
	lui t0, 1048283
	add t0, t0, sp
	addi sp, t0, 96
	lui t0, 195
	add t0, t0, sp
	sd s0, 1288(t0)
	lui t0, 293
	add t0, t0, sp
	sd s2, -104(t0)
	lui t0, 98
	add t0, t0, sp
	sd s1, -1408(t0)
	lui t0, 293
	add t0, t0, sp
	sd ra, -112(t0)
	addi s0, sp, 0
	lui t0, 98
	add t0, t0, sp
	addi s2, t0, -1400
	lui t0, 195
	add t0, t0, sp
	addi s1, t0, 1296
	li a0, 62
	jal _sysy_starttime
	mv a1, zero
label2:
	sh2add a0, a1, s1
	lui a2, 260096
	fmv.w.x f10, a2
	fsw f10, 0(a0)
	fsw f10, 4(a0)
	fsw f10, 8(a0)
	fsw f10, 12(a0)
	fsw f10, 16(a0)
	fsw f10, 20(a0)
	fsw f10, 24(a0)
	fsw f10, 28(a0)
	fsw f10, 32(a0)
	fsw f10, 36(a0)
	fsw f10, 40(a0)
	fsw f10, 44(a0)
	fsw f10, 48(a0)
	fsw f10, 52(a0)
	fsw f10, 56(a0)
	fsw f10, 60(a0)
	addiw a1, a1, 16
	li a0, 100000
	bge a1, a0, label210
	j label2
label210:
	mv a0, zero
	fmv.w.x f10, zero
	mv a2, zero
	mv t1, zero
	li a1, 100000
	bge zero, a1, label215
	addiw a3, zero, 3
	addiw a4, zero, 2
	addiw a1, zero, 1
	li a5, 100000
	bge zero, a5, label11
	addiw a5, zero, 4
	li t2, 100000
	bge a5, t2, label18
	j label17
label215:
	fmv.w.x f10, zero
	mv a2, zero
	mv t1, zero
	li a1, 100000
	bge zero, a1, label438
	addiw a3, zero, 3
	addiw a4, zero, 2
	addiw a1, zero, 1
	li a5, 100000
	bge zero, a5, label57
	addiw a5, zero, 4
	li t2, 100000
	bge a5, t2, label41
	j label56
label17:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a1, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s1
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 1
	addw t4, a1, t4
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a1, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label18
	j label17
label48:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label509
	j label51
label509:
	mv a3, t1
	j label52
label51:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	sraiw t2, t2, 1
	addiw t3, t1, 1
	addw t2, t2, t3
	fcvt.s.w f11, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t4, a1, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 2
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a5, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label509
	j label51
label52:
	addw a4, a2, a3
	addw a5, a1, a3
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a5, a4, 1
	addiw a4, a3, 1
	addw a5, a5, a4
	fcvt.s.w f11, a5
	sh2add a3, a3, s0
	flw f12, 0(a3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	li a3, 100000
	bge a4, a3, label569
	mv a3, a4
	j label52
label569:
	mv t1, a4
	sh2add a2, a2, s2
	fsw f10, 0(a2)
	mv a2, a1
	li a1, 100000
	bge a2, a1, label438
	addiw a3, a2, 3
	addiw a4, a2, 2
	addiw a1, a2, 1
	li a5, 100000
	bge t1, a5, label57
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label41
	j label56
label57:
	sh2add a2, a2, s2
	fsw f10, 0(a2)
	mv a2, a1
	li a1, 100000
	bge a2, a1, label438
	addiw a3, a2, 3
	addiw a4, a2, 2
	addiw a1, a2, 1
	li a5, 100000
	bge t1, a5, label57
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label41
	j label56
label41:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label45
	j label44
label45:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label48
	j label55
label18:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label22
label21:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a1, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s1
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 1
	addw t4, a1, t4
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a1, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label22
	j label21
label56:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addiw t5, t1, 2
	addw t3, t3, t5
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a3, t1
	mulw t4, t4, t3
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addiw t1, t1, 3
	addw t1, t4, t1
	fcvt.s.w f11, t1
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t1, a2, a5
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a5, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label41
	j label56
label22:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label326
	j label32
label326:
	mv a5, t1
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label331
	j label28
label331:
	mv a3, a5
	j label29
label28:
	addw t2, a2, a5
	addw t3, a1, a5
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	sraiw t2, t2, 1
	addw t2, a1, t2
	fcvt.s.w f11, t2
	sh2add t2, a5, s1
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, a5, 1
	addw t3, a1, t3
	addw t4, a1, a5
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, a5, 2
	addw t3, a1, t3
	addw t4, a4, a5
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, a5, 3
	addw t3, a1, t3
	addw a5, a3, a5
	mulw a5, t3, a5
	srliw t3, a5, 31
	add a5, a5, t3
	sraiw a5, a5, 1
	addw a5, a1, a5
	fcvt.s.w f11, a5
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv a5, t1
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label331
	j label28
label32:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a1, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s1
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 1
	addw t4, a1, t4
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a1, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label326
	j label32
label29:
	addw a4, a2, a3
	addw a5, a1, a3
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a4, a4, 1
	addw a4, a1, a4
	fcvt.s.w f11, a4
	sh2add a4, a3, s1
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw a3, a3, 1
	li a4, 100000
	bge a3, a4, label391
	j label29
label391:
	mv t1, a3
	sh2add a2, a2, s0
	fsw f10, 0(a2)
	mv a2, a1
	li a1, 100000
	bge a2, a1, label215
	addiw a3, a2, 3
	addiw a4, a2, 2
	addiw a1, a2, 1
	li a5, 100000
	bge t1, a5, label11
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label18
	j label17
label55:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a1, t4
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 2
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a5, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label48
	j label55
label44:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a1, t4
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 2
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a5, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label45
	j label44
label438:
	fmv.w.x f10, zero
	mv a2, zero
	mv t1, zero
	li a1, 100000
	bge zero, a1, label659
	addiw a3, zero, 3
	addiw a4, zero, 2
	addiw a1, zero, 1
	li a5, 100000
	bge zero, a5, label130
	addiw a5, zero, 4
	li t2, 100000
	bge a5, t2, label136
	j label151
label146:
	addw a4, a2, a3
	addw a5, a1, a3
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a4, a4, 1
	addw a4, a1, a4
	fcvt.s.w f11, a4
	sh2add a4, a3, s2
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw a3, a3, 1
	li a4, 100000
	bge a3, a4, label1208
	j label146
label1208:
	mv t1, a3
	sh2add a2, a2, s0
	fsw f10, 0(a2)
	mv a2, a1
	li a1, 100000
	bge a2, a1, label659
	addiw a3, a2, 3
	addiw a4, a2, 2
	addiw a1, a2, 1
	li a5, 100000
	bge t1, a5, label130
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label136
label151:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a1, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s2
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 1
	addw t4, a1, t4
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a1, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label136
	j label151
label136:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label140
label139:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a1, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s2
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 1
	addw t4, a1, t4
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a1, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label140
	j label139
label140:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label1187
label150:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a1, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s2
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 1
	addw t4, a1, t4
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a1, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label1187
	j label150
label1187:
	mv a5, t1
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label1192
	j label149
label1192:
	mv a3, a5
	j label146
label659:
	fmv.w.x f10, zero
	mv a2, zero
	mv t1, zero
	li a1, 100000
	bge zero, a1, label68
	addiw a3, zero, 3
	addiw a4, zero, 2
	addiw a1, zero, 1
	li a5, 100000
	bge zero, a5, label107
	addiw a5, zero, 4
	li t2, 100000
	bge a5, t2, label114
	j label113
label68:
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label69
	fmv.w.x f10, zero
	mv a2, zero
	mv t1, zero
	li a1, 100000
	bge zero, a1, label215
	addiw a3, zero, 3
	addiw a4, zero, 2
	addiw a1, zero, 1
	li a5, 100000
	bge zero, a5, label11
	addiw a5, zero, 4
	li t2, 100000
	bge a5, t2, label18
	j label17
label69:
	li a0, 76
	jal _sysy_stoptime
	fmv.w.x f10, zero
	mv a1, zero
	addiw a0, zero, 4
	li a2, 100000
	bge a0, a2, label73
label105:
	sh2add a2, a1, s1
	flw f11, 0(a2)
	sh2add a1, a1, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(a2)
	flw f12, 4(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(a2)
	flw f12, 8(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(a2)
	flw f12, 12(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label73
	j label105
label114:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label117
	j label128
label117:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label121
label120:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a1, t4
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 2
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a5, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label121
	j label120
label121:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label1017
	j label124
label1017:
	mv a3, t1
label125:
	addw a4, a2, a3
	addw a5, a1, a3
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a5, a4, 1
	addiw a4, a3, 1
	addw a5, a5, a4
	fcvt.s.w f11, a5
	sh2add a3, a3, s0
	flw f12, 0(a3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	li a3, 100000
	bge a4, a3, label1077
	mv a3, a4
	j label125
label1077:
	mv t1, a4
	sh2add a2, a2, s1
	fsw f10, 0(a2)
	mv a2, a1
	li a1, 100000
	bge a2, a1, label68
	addiw a3, a2, 3
	addiw a4, a2, 2
	addiw a1, a2, 1
	li a5, 100000
	bge t1, a5, label107
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label114
	j label113
label11:
	sh2add a2, a2, s0
	fsw f10, 0(a2)
	mv a2, a1
	li a1, 100000
	bge a2, a1, label215
	addiw a3, a2, 3
	addiw a4, a2, 2
	addiw a1, a2, 1
	li a5, 100000
	bge t1, a5, label11
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label18
	j label17
label149:
	addw t2, a2, a5
	addw t3, a1, a5
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	sraiw t2, t2, 1
	addw t2, a1, t2
	fcvt.s.w f11, t2
	sh2add t2, a5, s2
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, a5, 1
	addw t3, a1, t3
	addw t4, a1, a5
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, a5, 2
	addw t3, a1, t3
	addw t4, a4, a5
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a1, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, a5, 3
	addw t3, a1, t3
	addw a5, a3, a5
	mulw a5, t3, a5
	srliw t3, a5, 31
	add a5, a5, t3
	sraiw a5, a5, 1
	addw a5, a1, a5
	fcvt.s.w f11, a5
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv a5, t1
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label1192
	j label149
label130:
	sh2add a2, a2, s0
	fsw f10, 0(a2)
	mv a2, a1
	li a1, 100000
	bge a2, a1, label659
	addiw a3, a2, 3
	addiw a4, a2, 2
	addiw a1, a2, 1
	li a5, 100000
	bge t1, a5, label130
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label136
	j label151
label128:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a1, t4
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 2
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a5, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label117
	j label128
label113:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addiw t5, t1, 2
	addw t3, t3, t5
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a3, t1
	mulw t4, t4, t3
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addiw t1, t1, 3
	addw t1, t4, t1
	fcvt.s.w f11, t1
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t1, a2, a5
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a5, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label114
	j label113
label107:
	sh2add a2, a2, s1
	fsw f10, 0(a2)
	mv a2, a1
	li a1, 100000
	bge a2, a1, label68
	addiw a3, a2, 3
	addiw a4, a2, 2
	addiw a1, a2, 1
	li a5, 100000
	bge t1, a5, label107
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label114
	j label113
label124:
	addw t2, a2, t1
	addw t3, a1, t1
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	sraiw t2, t2, 1
	addiw t3, t1, 1
	addw t2, t2, t3
	fcvt.s.w f11, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t4, a1, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 2
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t4, a4, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t4, t3
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, a1, t3
	addw t1, a3, t1
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a5, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label1017
	j label124
label73:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label77
	j label76
label77:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label711
	j label104
label711:
	mv a0, a1
	sh2add a1, a1, s1
	flw f11, 0(a1)
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label724
	sh2add a1, a0, s1
	flw f11, 0(a1)
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label724
	sh2add a1, a0, s1
	flw f11, 0(a1)
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label724
	sh2add a1, a0, s1
	flw f11, 0(a1)
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label724
	sh2add a1, a0, s1
	flw f11, 0(a1)
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label724
	sh2add a1, a0, s1
	flw f11, 0(a1)
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label724
	sh2add a1, a0, s1
	flw f11, 0(a1)
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label724
	sh2add a1, a0, s1
	flw f11, 0(a1)
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label724
	sh2add a1, a0, s1
	flw f11, 0(a1)
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label724
	sh2add a1, a0, s1
	flw f11, 0(a1)
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label724
	j label1652
label724:
	fmv.w.x f11, zero
	mv a1, zero
	addiw a0, zero, 4
	li a2, 100000
	bge a0, a2, label86
	j label103
label104:
	sh2add a2, a1, s1
	flw f11, 0(a2)
	sh2add a1, a1, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(a2)
	flw f12, 4(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(a2)
	flw f12, 8(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(a2)
	flw f12, 12(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label711
	j label104
label1652:
	sh2add a1, a0, s1
	flw f11, 0(a1)
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label724
	j label1652
label86:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label735
	j label102
label735:
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label92
	j label101
label102:
	sh2add a1, a1, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 4(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 8(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 12(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label735
	j label102
label92:
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label95
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label95
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label95
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label95
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label95
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label95
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label95
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label95
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label95
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label95
label1653:
	sh2add a1, a0, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label95
	j label1653
label95:
	fdiv.s f10, f10, f11
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f11, f11, f10
pcrel1657:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1657)
	flw f12, 0(a0)
	flt.s a1, f12, f11
	flw f12, 4(a0)
	flt.s a0, f11, f12
	or a0, a1, a0
	beq a0, zero, label766
	lui a0, 260096
	fmv.w.x f11, a0
	fmv.s f12, f10
	j label96
label766:
	lui a0, 260096
	fmv.w.x f11, a0
	j label99
label96:
	fadd.s f11, f11, f12
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f11, f11, f12
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
pcrel1658:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1658)
	flw f14, 0(a0)
	flt.s a1, f14, f13
	flw f14, 4(a0)
	flt.s a0, f13, f14
	or a0, a1, a0
	beq a0, zero, label99
	j label96
label76:
	sh2add a2, a1, s1
	flw f11, 0(a2)
	sh2add a1, a1, s2
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(a2)
	flw f12, 4(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(a2)
	flw f12, 8(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(a2)
	flw f12, 12(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label77
	j label76
label101:
	sh2add a0, a0, s2
	flw f12, 0(a0)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 4(a0)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 8(a0)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 12(a0)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label92
	j label101
label103:
	sh2add a1, a1, s2
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 4(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 8(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 12(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label86
	j label103
label99:
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f10, f11, f10
pcrel1659:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1659)
	flw f11, 0(a0)
	fle.s a1, f10, f11
	flw f11, 4(a0)
	fle.s a0, f11, f10
	and a0, a1, a0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	lui t0, 293
	add t0, t0, sp
	ld ra, -112(t0)
	lui t0, 98
	add t0, t0, sp
	ld s1, -1408(t0)
	lui t0, 293
	add t0, t0, sp
	ld s2, -104(t0)
	lui t0, 195
	add t0, t0, sp
	ld s0, 1288(t0)
	lui t0, 293
	add t0, t0, sp
	addi sp, t0, -96
	ret
