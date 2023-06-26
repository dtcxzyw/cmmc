.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	3045472189
.text
.globl main
main:
	lui t0, 1048283
	add t0, t0, sp
	addi sp, t0, 24
	sd s2, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s1, 0(sp)
	sd s6, 8(sp)
	sd s7, 16(sp)
	lui t0, 293
	add t0, t0, sp
	sd s3, -64(t0)
	lui t0, 293
	add t0, t0, sp
	sd s4, -32(t0)
	lui t0, 195
	add t0, t0, sp
	sd s8, 1336(t0)
	lui t0, 293
	add t0, t0, sp
	sd s10, -40(t0)
	lui t0, 98
	add t0, t0, sp
	sd s9, -1360(t0)
	lui t0, 293
	add t0, t0, sp
	sd s11, -48(t0)
	lui t0, 293
	add t0, t0, sp
	sd ra, -56(t0)
	addi s2, sp, 48
	lui t0, 98
	add t0, t0, sp
	addi s0, t0, -1352
	lui t0, 195
	add t0, t0, sp
	addi s1, t0, 1344
	li a0, 62
	jal _sysy_starttime
	mv a0, zero
label2:
	slli a1, a0, 2
	add a1, s1, a1
	lui a2, 260096
	fmv.w.x f10, a2
	fsw f10, 0(a1)
	fsw f10, 4(a1)
	fsw f10, 8(a1)
	fsw f10, 12(a1)
	fsw f10, 16(a1)
	fsw f10, 20(a1)
	fsw f10, 24(a1)
	fsw f10, 28(a1)
	fsw f10, 32(a1)
	fsw f10, 36(a1)
	fsw f10, 40(a1)
	fsw f10, 44(a1)
	fsw f10, 48(a1)
	fsw f10, 52(a1)
	fsw f10, 56(a1)
	fsw f10, 60(a1)
	addiw a0, a0, 16
	li a1, 100000
	bge a0, a1, label215
	j label2
label215:
	mv a0, zero
	fmv.w.x f10, zero
	mv a1, zero
	mv s7, zero
	li a2, 100000
	bge zero, a2, label220
	j label10
label220:
	fmv.w.x f10, zero
	mv a1, zero
	mv s7, zero
	li a2, 100000
	bge zero, a2, label983
	j label134
label10:
	addiw a3, a1, 15
	addiw a4, a1, 14
	addiw a5, a1, 13
	addiw t1, a1, 12
	addiw t2, a1, 11
	addiw t3, a1, 10
	addiw t4, a1, 9
	addiw t5, a1, 8
	addiw t6, a1, 7
	addiw a6, a1, 6
	addiw a7, a1, 5
	addiw s3, a1, 4
	addiw s4, a1, 3
	addiw s5, a1, 2
	addiw a2, a1, 1
	li s6, 100000
	bge s7, s6, label30
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label15
	j label14
label30:
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label220
	j label10
label15:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label19
	j label18
label19:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label605
label29:
	slliw s8, s7, 2
	add s8, s1, s8
	flw f11, 0(s8)
	addw s10, a1, s7
	addw s9, s7, a2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, s10, a2
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addiw s10, s7, 1
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s9, s7, s5
	addiw s10, s7, 2
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s9, s7, s4
	addiw s10, s7, 3
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s9, s7, s3
	addiw s10, s7, 4
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s9, s7, a7
	addiw s10, s7, 5
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s9, s7, a6
	addiw s10, s7, 6
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s9, s7, t6
	addiw s10, s7, 7
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s9, s7, t5
	addiw s10, s7, 8
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, s7, t4
	addiw s10, s7, 9
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s9, s7, t3
	addiw s10, s7, 10
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s9, s7, t2
	addiw s10, s7, 11
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s9, s7, t1
	addiw s10, s7, 12
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s9, s7, a5
	addiw s10, s7, 13
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, s7, a4
	addiw s10, s7, 14
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s8, s7, a3
	addiw s7, s7, 15
	addw s7, s7, a2
	mulw s7, s8, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, a2
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label605
	j label29
label605:
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label610
	j label25
label610:
	mv a3, s6
	j label26
label25:
	slliw s8, s6, 2
	add s8, s1, s8
	flw f11, 0(s8)
	addw s9, a1, s6
	addw s10, s6, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addw s9, a2, s6
	addiw s10, s6, 1
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s9, s5, s6
	addiw s10, s6, 2
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s9, s4, s6
	addiw s10, s6, 3
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s9, s3, s6
	addiw s10, s6, 4
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s9, a7, s6
	addiw s10, s6, 5
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s9, a6, s6
	addiw s10, s6, 6
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s9, t6, s6
	addiw s10, s6, 7
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s9, t5, s6
	addiw s10, s6, 8
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, t4, s6
	addiw s10, s6, 9
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s9, t3, s6
	addiw s10, s6, 10
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s9, t2, s6
	addiw s10, s6, 11
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s9, t1, s6
	addiw s10, s6, 12
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s9, a5, s6
	addiw s10, s6, 13
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, a4, s6
	addiw s10, s6, 14
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s8, a3, s6
	addiw s6, s6, 15
	addw s6, s6, a2
	mulw s6, s8, s6
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, s6, a2
	fcvt.s.w f12, s6
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label610
	j label25
label26:
	slliw a4, a3, 2
	add a4, s1, a4
	flw f11, 0(a4)
	addw a4, a1, a3
	addw a5, a3, a2
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a4, a4, 1
	addw a4, a4, a2
	fcvt.s.w f12, a4
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a3, a3, 1
	li a4, 100000
	bge a3, a4, label802
	j label26
label802:
	mv s7, a3
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label220
	j label10
label18:
	slliw s8, s7, 2
	add s8, s1, s8
	flw f11, 0(s8)
	addw s10, a1, s7
	addw s9, s7, a2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, s10, a2
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addiw s10, s7, 1
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s9, s7, s5
	addiw s10, s7, 2
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s9, s7, s4
	addiw s10, s7, 3
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s9, s7, s3
	addiw s10, s7, 4
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s9, s7, a7
	addiw s10, s7, 5
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s9, s7, a6
	addiw s10, s7, 6
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s9, s7, t6
	addiw s10, s7, 7
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s9, s7, t5
	addiw s10, s7, 8
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, s7, t4
	addiw s10, s7, 9
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s9, s7, t3
	addiw s10, s7, 10
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s9, s7, t2
	addiw s10, s7, 11
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s9, s7, t1
	addiw s10, s7, 12
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s9, s7, a5
	addiw s10, s7, 13
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, s7, a4
	addiw s10, s7, 14
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s8, s7, a3
	addiw s7, s7, 15
	addw s7, s7, a2
	mulw s7, s8, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, a2
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label19
	j label18
label14:
	slliw s8, s7, 2
	add s8, s1, s8
	flw f11, 0(s8)
	addw s10, a1, s7
	addw s9, s7, a2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, s10, a2
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addiw s10, s7, 1
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s9, s7, s5
	addiw s10, s7, 2
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s9, s7, s4
	addiw s10, s7, 3
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s9, s7, s3
	addiw s10, s7, 4
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s9, s7, a7
	addiw s10, s7, 5
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s9, s7, a6
	addiw s10, s7, 6
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s9, s7, t6
	addiw s10, s7, 7
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s9, s7, t5
	addiw s10, s7, 8
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, s7, t4
	addiw s10, s7, 9
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s9, s7, t3
	addiw s10, s7, 10
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s9, s7, t2
	addiw s10, s7, 11
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s9, s7, t1
	addiw s10, s7, 12
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s9, s7, a5
	addiw s10, s7, 13
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, s7, a4
	addiw s10, s7, 14
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s8, s7, a3
	addiw s7, s7, 15
	addw s7, s7, a2
	mulw s7, s8, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, a2
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label15
	j label14
label983:
	fmv.w.x f10, zero
	mv a1, zero
	mv s7, zero
	li a2, 100000
	bge zero, a2, label988
	j label41
label988:
	fmv.w.x f10, zero
	mv a1, zero
	mv s7, zero
	li a2, 100000
	bge zero, a2, label68
	j label111
label68:
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label69
	fmv.w.x f10, zero
	mv a1, zero
	mv s7, zero
	li a2, 100000
	bge zero, a2, label220
	j label10
label69:
	li a0, 76
	jal _sysy_stoptime
	fmv.w.x f10, zero
	mv a0, zero
	addiw a1, zero, 16
	li a2, 100000
	bge a1, a2, label73
label110:
	slliw a2, a0, 2
	add a2, s1, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	add a0, s0, a0
	flw f12, 0(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(a2)
	flw f12, 4(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(a2)
	flw f12, 8(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(a2)
	flw f12, 12(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(a2)
	flw f12, 16(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(a2)
	flw f12, 20(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(a2)
	flw f12, 24(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(a2)
	flw f12, 28(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(a2)
	flw f12, 32(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(a2)
	flw f12, 36(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(a2)
	flw f12, 40(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(a2)
	flw f12, 44(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(a2)
	flw f12, 48(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(a2)
	flw f12, 52(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(a2)
	flw f12, 56(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(a2)
	flw f12, 60(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	mv a0, a1
	addiw a1, a1, 16
	li a2, 100000
	bge a1, a2, label73
	j label110
label111:
	addiw a3, a1, 15
	addiw a4, a1, 14
	addiw a5, a1, 13
	addiw t1, a1, 12
	addiw t2, a1, 11
	addiw t3, a1, 10
	addiw t4, a1, 9
	addiw t5, a1, 8
	addiw t6, a1, 7
	addiw a6, a1, 6
	addiw a7, a1, 5
	addiw s3, a1, 4
	addiw s4, a1, 3
	addiw s5, a1, 2
	addiw a2, a1, 1
	li s6, 100000
	bge s7, s6, label112
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label119
label118:
	slliw s8, s7, 2
	add s8, s2, s8
	flw f11, 0(s8)
	addw s9, a1, s7
	addw s10, s7, a2
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 1
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addw s9, s7, s5
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 2
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s10, s7, s4
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 3
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s11, s7, s3
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 4
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s9, s7, a7
	mulw s10, s11, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 5
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s11, s7, a6
	mulw s9, s9, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 6
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s10, s7, t6
	mulw s9, s11, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 7
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s9, s7, t5
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 8
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s10, s7, t4
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 9
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, s7, t3
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 10
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s11, s7, t2
	mulw s9, s9, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 11
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s10, s7, t1
	mulw s9, s11, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 12
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s9, s7, a5
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 13
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s10, s7, a4
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 14
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, s7, a3
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s7, s7, 15
	addw s7, s7, s10
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s7, a1, s6
	mulw s7, s9, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, s6
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label119
	j label118
label134:
	addiw a3, a1, 15
	addiw a4, a1, 14
	addiw a5, a1, 13
	addiw t1, a1, 12
	addiw t2, a1, 11
	addiw t3, a1, 10
	addiw t4, a1, 9
	addiw t5, a1, 8
	addiw t6, a1, 7
	addiw a6, a1, 6
	addiw a7, a1, 5
	addiw s3, a1, 4
	addiw s4, a1, 3
	addiw s5, a1, 2
	addiw a2, a1, 1
	li s6, 100000
	bge s7, s6, label135
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label142
	j label141
label41:
	addiw a3, a1, 15
	addiw a4, a1, 14
	addiw a5, a1, 13
	addiw t1, a1, 12
	addiw t2, a1, 11
	addiw t3, a1, 10
	addiw t4, a1, 9
	addiw t5, a1, 8
	addiw t6, a1, 7
	addiw a6, a1, 6
	addiw a7, a1, 5
	addiw s3, a1, 4
	addiw s4, a1, 3
	addiw s5, a1, 2
	addiw a2, a1, 1
	li s6, 100000
	bge s7, s6, label42
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label48
	j label63
label51:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label1025
	j label54
label1025:
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label1205
	j label58
label1205:
	mv a3, s6
label59:
	slliw a4, a3, 2
	add a4, s0, a4
	flw f11, 0(a4)
	addw a4, a1, a3
	addw a5, a3, a2
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a4, a4, 1
	addw a4, a4, a2
	fcvt.s.w f12, a4
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a3, a3, 1
	li a4, 100000
	bge a3, a4, label1397
	j label59
label1397:
	mv s7, a3
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label988
	j label41
label63:
	slliw s8, s7, 2
	add s8, s0, s8
	flw f11, 0(s8)
	addw s10, a1, s7
	addw s9, s7, a2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, s10, a2
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addiw s10, s7, 1
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s9, s7, s5
	addiw s10, s7, 2
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s9, s7, s4
	addiw s10, s7, 3
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s9, s7, s3
	addiw s10, s7, 4
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s9, s7, a7
	addiw s10, s7, 5
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s9, s7, a6
	addiw s10, s7, 6
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s9, s7, t6
	addiw s10, s7, 7
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s9, s7, t5
	addiw s10, s7, 8
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, s7, t4
	addiw s10, s7, 9
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s9, s7, t3
	addiw s10, s7, 10
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s9, s7, t2
	addiw s10, s7, 11
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s9, s7, t1
	addiw s10, s7, 12
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s9, s7, a5
	addiw s10, s7, 13
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, s7, a4
	addiw s10, s7, 14
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s8, s7, a3
	addiw s7, s7, 15
	addw s7, s7, a2
	mulw s7, s8, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, a2
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label48
	j label63
label48:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label51
label62:
	slliw s8, s7, 2
	add s8, s0, s8
	flw f11, 0(s8)
	addw s10, a1, s7
	addw s9, s7, a2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, s10, a2
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addiw s10, s7, 1
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s9, s7, s5
	addiw s10, s7, 2
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s9, s7, s4
	addiw s10, s7, 3
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s9, s7, s3
	addiw s10, s7, 4
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s9, s7, a7
	addiw s10, s7, 5
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s9, s7, a6
	addiw s10, s7, 6
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s9, s7, t6
	addiw s10, s7, 7
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s9, s7, t5
	addiw s10, s7, 8
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, s7, t4
	addiw s10, s7, 9
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s9, s7, t3
	addiw s10, s7, 10
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s9, s7, t2
	addiw s10, s7, 11
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s9, s7, t1
	addiw s10, s7, 12
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s9, s7, a5
	addiw s10, s7, 13
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, s7, a4
	addiw s10, s7, 14
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s8, s7, a3
	addiw s7, s7, 15
	addw s7, s7, a2
	mulw s7, s8, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, a2
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label51
	j label62
label141:
	slliw s8, s7, 2
	add s8, s2, s8
	flw f11, 0(s8)
	addw s10, a1, s7
	addw s9, s7, a2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 1
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addw s10, s7, s5
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 2
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s9, s7, s4
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 3
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s10, s7, s3
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 4
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s9, s7, a7
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 5
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s10, s7, a6
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 6
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s9, s7, t6
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 7
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s10, s7, t5
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 8
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s11, s7, t4
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 9
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, s7, t3
	mulw s10, s11, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 10
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s10, s7, t2
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 11
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s11, s7, t1
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 12
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s9, s7, a5
	mulw s10, s11, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 13
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s10, s7, a4
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 14
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, s7, a3
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s7, s7, 15
	addw s7, s7, s10
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s7, a1, s6
	mulw s7, s9, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, s6
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label142
	j label141
label142:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label145
	j label156
label145:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label3271
	j label155
label3271:
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label151
	j label154
label155:
	slliw s8, s7, 2
	add s8, s2, s8
	flw f11, 0(s8)
	addw s10, a1, s7
	addw s9, s7, a2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s11, s10, 1
	addiw s10, s7, 1
	addw s11, s10, s11
	fcvt.s.w f12, s11
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 2
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s10, s7, s5
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 3
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s10, s7, s4
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 4
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s10, s7, s3
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 5
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s10, s7, a7
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 6
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s10, s7, a6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 7
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s10, s7, t6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 8
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s10, s7, t5
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 9
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s10, s7, t4
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 10
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s10, s7, t3
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 11
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s10, s7, t2
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 12
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s10, s7, t1
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 13
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s10, s7, a5
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 14
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s10, s7, a4
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 15
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s7, s7, a3
	addw s8, s9, a2
	mulw s7, s7, s8
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, s6
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label3271
	j label155
label151:
	slliw a3, s6, 2
	add a3, s2, a3
	flw f11, 0(a3)
	addw a4, a1, s6
	addiw a3, s6, 1
	addw a5, s6, a2
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a4, a4, 1
	addw a4, a3, a4
	fcvt.s.w f12, a4
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	li a4, 100000
	bge a3, a4, label3292
	mv s6, a3
	j label151
label3292:
	mv s7, a3
	slliw a1, a1, 2
	add a1, s0, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label983
	j label134
label154:
	slliw s8, s6, 2
	add s8, s2, s8
	flw f11, 0(s8)
	addw s9, a1, s6
	addw s10, s6, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 1
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addw s10, a2, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 2
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s10, s5, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 3
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s10, s4, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 4
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s10, s3, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 5
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s10, a7, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 6
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s10, a6, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 7
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s10, t6, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 8
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s10, t5, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 9
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s10, t4, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 10
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s10, t3, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 11
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s10, t2, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 12
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s10, t1, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 13
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s10, a5, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 14
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s10, a4, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 15
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s6, a3, s6
	addw s8, s9, a2
	mulw s6, s6, s8
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, s6, s7
	fcvt.s.w f12, s6
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label151
	j label154
label156:
	slliw s8, s7, 2
	add s8, s2, s8
	flw f11, 0(s8)
	addw s9, a1, s7
	addw s10, s7, a2
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 1
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addw s9, s7, s5
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 2
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s10, s7, s4
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 3
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s9, s7, s3
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 4
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s10, s7, a7
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 5
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s11, s7, a6
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 6
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s9, s7, t6
	mulw s10, s11, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 7
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s10, s7, t5
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 8
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s11, s7, t4
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 9
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, s7, t3
	mulw s10, s11, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 10
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s10, s7, t2
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 11
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s11, s7, t1
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 12
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s9, s7, a5
	mulw s10, s11, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 13
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s10, s7, a4
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 14
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, s7, a3
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s7, s7, 15
	addw s7, s7, s10
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s7, a1, s6
	mulw s7, s9, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, s6
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label145
	j label156
label54:
	slliw s8, s7, 2
	add s8, s0, s8
	flw f11, 0(s8)
	addw s10, a1, s7
	addw s9, s7, a2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, s10, a2
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addiw s10, s7, 1
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s9, s7, s5
	addiw s10, s7, 2
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s9, s7, s4
	addiw s10, s7, 3
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s9, s7, s3
	addiw s10, s7, 4
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s9, s7, a7
	addiw s10, s7, 5
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s9, s7, a6
	addiw s10, s7, 6
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s9, s7, t6
	addiw s10, s7, 7
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s9, s7, t5
	addiw s10, s7, 8
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, s7, t4
	addiw s10, s7, 9
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s9, s7, t3
	addiw s10, s7, 10
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s9, s7, t2
	addiw s10, s7, 11
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s9, s7, t1
	addiw s10, s7, 12
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s9, s7, a5
	addiw s10, s7, 13
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, s7, a4
	addiw s10, s7, 14
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s8, s7, a3
	addiw s7, s7, 15
	addw s7, s7, a2
	mulw s7, s8, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, a2
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label1025
	j label54
label58:
	slliw s8, s6, 2
	add s8, s0, s8
	flw f11, 0(s8)
	addw s9, a1, s6
	addw s10, s6, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addw s9, a2, s6
	addiw s10, s6, 1
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s9, s5, s6
	addiw s10, s6, 2
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s9, s4, s6
	addiw s10, s6, 3
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s9, s3, s6
	addiw s10, s6, 4
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s9, a7, s6
	addiw s10, s6, 5
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s9, a6, s6
	addiw s10, s6, 6
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s9, t6, s6
	addiw s10, s6, 7
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s9, t5, s6
	addiw s10, s6, 8
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, t4, s6
	addiw s10, s6, 9
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s9, t3, s6
	addiw s10, s6, 10
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s9, t2, s6
	addiw s10, s6, 11
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s9, t1, s6
	addiw s10, s6, 12
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s9, a5, s6
	addiw s10, s6, 13
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, a4, s6
	addiw s10, s6, 14
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, s9, a2
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s8, a3, s6
	addiw s6, s6, 15
	addw s6, s6, a2
	mulw s6, s8, s6
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, s6, a2
	fcvt.s.w f12, s6
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label1205
	j label58
label119:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label122
	j label133
label122:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label2541
	j label125
label2541:
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label130
	j label129
label125:
	slliw s8, s7, 2
	add s8, s2, s8
	flw f11, 0(s8)
	addw s10, a1, s7
	addw s9, s7, a2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s11, s10, 1
	addiw s10, s7, 1
	addw s11, s10, s11
	fcvt.s.w f12, s11
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addw s10, s10, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 2
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s10, s7, s5
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 3
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s10, s7, s4
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 4
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s10, s7, s3
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 5
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s10, s7, a7
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 6
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s10, s7, a6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 7
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s10, s7, t6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 8
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s10, s7, t5
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 9
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s10, s7, t4
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 10
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s10, s7, t3
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 11
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s10, s7, t2
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 12
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s10, s7, t1
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 13
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s10, s7, a5
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 14
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s10, s7, a4
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s7, 15
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s7, s7, a3
	addw s8, s9, a2
	mulw s7, s7, s8
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, s6
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label2541
	j label125
label129:
	slliw s8, s6, 2
	add s8, s2, s8
	flw f11, 0(s8)
	addw s9, a1, s6
	addw s10, s6, a2
	mulw s9, s9, s10
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 1
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addw s10, a2, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 2
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s10, s5, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 3
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s10, s4, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 4
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s10, s3, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 5
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s10, a7, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 6
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s10, a6, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 7
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s10, t6, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 8
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s10, t5, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 9
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s10, t4, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 10
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s10, t3, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 11
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s10, t2, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 12
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s10, t1, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 13
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s10, a5, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 14
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s10, a4, s6
	addw s9, s9, a2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s10, s9, 1
	addiw s9, s6, 15
	addw s10, s9, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s6, a3, s6
	addw s8, s9, a2
	mulw s6, s6, s8
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, s6, s7
	fcvt.s.w f12, s6
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label130
	j label129
label130:
	slliw a3, s6, 2
	add a3, s2, a3
	flw f11, 0(a3)
	addw a4, a1, s6
	addiw a3, s6, 1
	addw a5, s6, a2
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a4, a4, 1
	addw a4, a3, a4
	fcvt.s.w f12, a4
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	li a4, 100000
	bge a3, a4, label2913
	mv s6, a3
	j label130
label2913:
	mv s7, a3
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label68
	j label111
label133:
	slliw s8, s7, 2
	add s8, s2, s8
	flw f11, 0(s8)
	addw s10, a1, s7
	addw s9, s7, a2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 1
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(s8)
	addw s10, s7, s5
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 2
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(s8)
	addw s9, s7, s4
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 3
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(s8)
	addw s10, s7, s3
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 4
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(s8)
	addw s9, s7, a7
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 5
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(s8)
	addw s10, s7, a6
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 6
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s9, s7, t6
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 7
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(s8)
	addw s10, s7, t5
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 8
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s11, s7, t4
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 9
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s9, s7, t3
	mulw s10, s11, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 10
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s10, s7, t2
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 11
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s9, s7, t1
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 12
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s10, s7, a5
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 13
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s9, s7, a4
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 14
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s10, s7, a3
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s7, s7, 15
	addw s7, s7, s9
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(s8)
	addw s7, a1, s6
	mulw s7, s10, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, s7, s6
	fcvt.s.w f12, s7
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label122
	j label133
label135:
	slliw a1, a1, 2
	add a1, s0, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label983
	j label134
label42:
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label988
	j label41
label112:
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label68
	j label111
label73:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label76
label109:
	slliw a2, a0, 2
	add a2, s1, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	add a0, s0, a0
	flw f12, 0(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(a2)
	flw f12, 4(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(a2)
	flw f12, 8(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(a2)
	flw f12, 12(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(a2)
	flw f12, 16(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(a2)
	flw f12, 20(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(a2)
	flw f12, 24(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(a2)
	flw f12, 28(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(a2)
	flw f12, 32(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(a2)
	flw f12, 36(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(a2)
	flw f12, 40(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(a2)
	flw f12, 44(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(a2)
	flw f12, 48(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(a2)
	flw f12, 52(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(a2)
	flw f12, 56(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(a2)
	flw f12, 60(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	mv a0, a1
	addiw a1, a1, 16
	li a2, 100000
	bge a1, a2, label76
	j label109
label76:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label80
label79:
	slliw a2, a0, 2
	add a2, s1, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	add a0, s0, a0
	flw f12, 0(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(a2)
	flw f12, 4(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(a2)
	flw f12, 8(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(a2)
	flw f12, 12(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 16(a2)
	flw f12, 16(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 20(a2)
	flw f12, 20(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(a2)
	flw f12, 24(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 28(a2)
	flw f12, 28(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(a2)
	flw f12, 32(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(a2)
	flw f12, 36(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(a2)
	flw f12, 40(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(a2)
	flw f12, 44(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(a2)
	flw f12, 48(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(a2)
	flw f12, 52(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(a2)
	flw f12, 56(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 60(a2)
	flw f12, 60(a0)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	mv a0, a1
	addiw a1, a1, 16
	li a2, 100000
	bge a1, a2, label80
	j label79
label80:
	slliw a1, a0, 2
	add a1, s1, a1
	flw f11, 0(a1)
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f11, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label1883
	fmv.s f10, f11
	j label80
label1883:
	fmv.w.x f10, zero
	mv a0, zero
	addiw a1, zero, 16
	li a2, 100000
	bge a1, a2, label87
	j label86
label87:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label90
	j label108
label90:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label93
label107:
	slliw a0, a0, 2
	add a0, s0, a0
	flw f12, 0(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 4(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 8(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 12(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 16(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 20(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 24(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 28(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 32(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 36(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 40(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 44(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 48(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 52(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 56(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 60(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	mv a0, a1
	addiw a1, a1, 16
	li a2, 100000
	bge a1, a2, label93
	j label107
label93:
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label96
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label96
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label96
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label96
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label96
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label96
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label96
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label96
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label96
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label96
label4480:
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label96
	j label4480
label96:
	fdiv.s f11, f11, f10
	lui a0, 260096
	fmv.w.x f10, a0
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4482:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4482)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label1989
pcrel4483:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4483)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label102
	j label1995
label1989:
	li a0, 1
	beq a0, zero, label102
	fadd.s f10, f10, f12
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4484:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4484)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label1989
pcrel4485:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4485)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label102
label1995:
	fadd.s f10, f10, f12
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4486:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4486)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label1989
pcrel4487:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4487)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label102
	j label1995
label108:
	slliw a0, a0, 2
	add a0, s0, a0
	flw f12, 0(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 4(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 8(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 12(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 16(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 20(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 24(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 28(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 32(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 36(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 40(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 44(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 48(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 52(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 56(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 60(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	mv a0, a1
	addiw a1, a1, 16
	li a2, 100000
	bge a1, a2, label90
	j label108
label86:
	slliw a0, a0, 2
	add a0, s0, a0
	flw f12, 0(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 4(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 8(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 12(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 16(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 20(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 24(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 28(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 32(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 36(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 40(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 44(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 48(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 52(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 56(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	flw f12, 60(a0)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	mv a0, a1
	addiw a1, a1, 16
	li a2, 100000
	bge a1, a2, label87
	j label86
label102:
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f10, f10, f11
pcrel4488:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4488)
	flw f11, 0(a0)
	flw f11, 0(a0)
	fle.s a0, f10, f11
	bne a0, zero, label103
	mv a0, zero
	j label104
label103:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(label103)
	flw f11, 4(a0)
	fle.s a0, f11, f10
label104:
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	lui t0, 293
	add t0, t0, sp
	ld ra, -56(t0)
	lui t0, 293
	add t0, t0, sp
	ld s11, -48(t0)
	lui t0, 98
	add t0, t0, sp
	ld s9, -1360(t0)
	lui t0, 293
	add t0, t0, sp
	ld s10, -40(t0)
	lui t0, 195
	add t0, t0, sp
	ld s8, 1336(t0)
	lui t0, 293
	add t0, t0, sp
	ld s4, -32(t0)
	lui t0, 293
	add t0, t0, sp
	ld s3, -64(t0)
	ld s7, 16(sp)
	ld s6, 8(sp)
	ld s1, 0(sp)
	ld s5, 40(sp)
	ld s0, 32(sp)
	ld s2, 24(sp)
	lui t0, 293
	add t0, t0, sp
	addi sp, t0, -24
	ret
