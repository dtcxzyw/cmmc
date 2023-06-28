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
	addi sp, t0, 16
	sd s1, 32(sp)
	sd s6, 48(sp)
	sd s7, 56(sp)
	sd s0, 64(sp)
	sd s5, 0(sp)
	sd s2, 8(sp)
	sd s3, 16(sp)
	lui t0, 293
	add t0, t0, sp
	sd s4, -40(t0)
	sd s8, 24(sp)
	lui t0, 195
	add t0, t0, sp
	sd s9, 1360(t0)
	lui t0, 293
	add t0, t0, sp
	sd s10, -24(t0)
	lui t0, 98
	add t0, t0, sp
	sd s11, -1336(t0)
	lui t0, 293
	add t0, t0, sp
	sd ra, -32(t0)
	addi s1, sp, 72
	lui t0, 98
	add t0, t0, sp
	addi s7, t0, -1328
	sd s7, 40(sp)
	lui t0, 195
	add t0, t0, sp
	addi s0, t0, 1368
	li a0, 62
	jal _sysy_starttime
	mv a0, zero
label2:
	slli a1, a0, 2
	add a1, s0, a1
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
	mv s6, zero
	li a2, 100000
	bge zero, a2, label220
	j label10
label220:
	fmv.w.x f10, zero
	mv a1, zero
	mv s6, zero
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
	addiw s2, a1, 4
	addiw s3, a1, 3
	addiw s4, a1, 2
	addiw a2, a1, 1
	li s5, 100000
	bge s6, s5, label30
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label15
	j label14
label15:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label19
label18:
	addiw s7, s6, 1
	addw s7, s7, a2
	addw s8, s6, a2
	mulw s7, s8, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f12, s7
	slliw s7, s6, 2
	add s7, s0, s7
	flw f11, 0(s7)
	flw f13, 4(s7)
	fdiv.s f12, f13, f12
	addw s9, a1, s6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f13, s8
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addiw s8, s6, 2
	addw s8, s8, a2
	addw s9, s6, s4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 3
	addw s8, s8, a2
	addw s9, s6, s3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 4
	addw s8, s8, a2
	addw s9, s6, s2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 5
	addw s8, s8, a2
	addw s9, s6, a7
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 6
	addw s8, s8, a2
	addw s9, s6, a6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 7
	addw s8, s8, a2
	addw s9, s6, t6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 8
	addw s8, s8, a2
	addw s9, s6, t5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 9
	addw s8, s8, a2
	addw s9, s6, t4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 10
	addw s8, s8, a2
	addw s9, s6, t3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 11
	addw s8, s8, a2
	addw s9, s6, t2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 12
	addw s8, s8, a2
	addw s9, s6, t1
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 13
	addw s8, s8, a2
	addw s9, s6, a5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 14
	addw s8, s8, a2
	addw s9, s6, a4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 15
	addw s8, s8, a2
	addw s6, s6, a3
	mulw s6, s6, s8
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, a2, s6
	fcvt.s.w f11, s6
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s6, s5
	addiw s5, s5, 16
	li s7, 100000
	bge s5, s7, label19
	j label18
label19:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label605
	j label22
label605:
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label785
	j label26
label983:
	fmv.w.x f10, zero
	mv a1, zero
	mv s8, zero
	li a2, 100000
	bge zero, a2, label988
	j label41
label988:
	fmv.w.x f10, zero
	mv a1, zero
	mv s6, zero
	li a2, 100000
	bge zero, a2, label68
	j label111
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
	addiw s2, a1, 4
	addiw s3, a1, 3
	addiw s4, a1, 2
	addiw a2, a1, 1
	addiw s5, a1, 16
	li s6, 100000
	bge s8, s6, label42
	addiw s6, s8, 16
	li s7, 100000
	bge s6, s7, label49
label48:
	addiw s7, s8, 1
	addw s7, s7, a2
	addw s9, s8, a2
	mulw s7, s9, s7
	srliw s10, s7, 31
	add s7, s7, s10
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f12, s7
	slliw s10, s8, 2
	ld s7, 40(sp)
	add s7, s7, s10
	flw f11, 0(s7)
	flw f13, 4(s7)
	fdiv.s f12, f13, f12
	addw s10, a1, s8
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f13, s9
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addiw s9, s8, 2
	addw s9, s9, a2
	addw s10, s8, s4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 3
	addw s9, s9, a2
	addw s10, s8, s3
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 4
	addw s9, s9, a2
	addw s10, s8, s2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 5
	addw s9, s9, a2
	addw s10, s8, a7
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 6
	addw s9, s9, a2
	addw s10, s8, a6
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 7
	addw s9, s9, a2
	addw s10, s8, t6
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 8
	addw s9, s9, a2
	addw s10, s8, t5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 9
	addw s9, s9, a2
	addw s10, s8, t4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 10
	addw s9, s9, a2
	addw s10, s8, t3
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 11
	addw s9, s9, a2
	addw s10, s8, t2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 12
	addw s9, s9, a2
	addw s10, s8, t1
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 13
	addw s9, s9, a2
	addw s10, s8, a5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 14
	addw s9, s9, a2
	addw s10, s8, a4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 15
	addw s9, s9, a2
	addw s8, s8, a3
	mulw s8, s8, s9
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s8, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label49
	j label48
label49:
	addiw s6, s8, 16
	li s7, 100000
	bge s6, s7, label52
label63:
	addiw s7, s8, 1
	addw s7, s7, a2
	addw s9, s8, a2
	mulw s7, s9, s7
	srliw s10, s7, 31
	add s7, s7, s10
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f12, s7
	slliw s10, s8, 2
	ld s7, 40(sp)
	add s7, s7, s10
	flw f11, 0(s7)
	flw f13, 4(s7)
	fdiv.s f12, f13, f12
	addw s10, a1, s8
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f13, s9
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addiw s9, s8, 2
	addw s9, s9, a2
	addw s10, s8, s4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 3
	addw s9, s9, a2
	addw s10, s8, s3
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 4
	addw s9, s9, a2
	addw s10, s8, s2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 5
	addw s9, s9, a2
	addw s10, s8, a7
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 6
	addw s9, s9, a2
	addw s10, s8, a6
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 7
	addw s9, s9, a2
	addw s10, s8, t6
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 8
	addw s9, s9, a2
	addw s10, s8, t5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 9
	addw s9, s9, a2
	addw s10, s8, t4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 10
	addw s9, s9, a2
	addw s10, s8, t3
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 11
	addw s9, s9, a2
	addw s10, s8, t2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 12
	addw s9, s9, a2
	addw s10, s8, t1
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 13
	addw s9, s9, a2
	addw s10, s8, a5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 14
	addw s9, s9, a2
	addw s10, s8, a4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s8, 15
	addw s9, s9, a2
	addw s8, s8, a3
	mulw s8, s8, s9
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s8, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label52
	j label63
label68:
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label69
	fmv.w.x f10, zero
	mv a1, zero
	mv s6, zero
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
	bge a1, a2, label74
	j label73
label74:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label78
	j label77
label78:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label81
label110:
	slliw a2, a0, 2
	add a2, s0, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	ld s7, 40(sp)
	add a0, s7, a0
	flw f12, 0(a0)
	flw f13, 4(a2)
	flw f14, 4(a0)
	fmul.s f13, f13, f14
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fadd.s f10, f10, f13
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
	bge a1, a2, label81
	j label110
label27:
	addw a4, a1, a3
	addw a5, a2, a3
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a4, a4, 1
	addw a4, a2, a4
	fcvt.s.w f11, a4
	slliw a4, a3, 2
	add a4, s0, a4
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw a3, a3, 1
	li a4, 100000
	bge a3, a4, label977
	j label27
label977:
	mv s6, a3
label30:
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label220
	j label10
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
	addiw s2, a1, 4
	addiw s3, a1, 3
	addiw s4, a1, 2
	addiw a2, a1, 1
	li s5, 100000
	bge s6, s5, label135
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label141
	j label156
label151:
	addw a4, a1, a3
	addw a5, a2, a3
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a5, a4, 1
	addiw a4, a3, 1
	addw a5, a4, a5
	fcvt.s.w f11, a5
	slliw a3, a3, 2
	add a3, s1, a3
	flw f12, 0(a3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	li a3, 100000
	bge a4, a3, label3293
	mv a3, a4
	j label151
label3293:
	mv s6, a4
	slliw a1, a1, 2
	ld s7, 40(sp)
	add a1, s7, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label983
	j label134
label156:
	addw s7, a1, s6
	addw s8, s6, a2
	mulw s7, s7, s8
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addiw s9, s6, 1
	addw s7, s9, s7
	fcvt.s.w f11, s7
	slliw s7, s6, 2
	add s7, s1, s7
	flw f12, 0(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, s4
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 2
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 4(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, s3
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 3
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, s2
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 4
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, a7
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 5
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, a6
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 6
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, t6
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 7
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, t5
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 8
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s6, t4
	mulw s8, s9, s10
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addiw s9, s6, 9
	addw s8, s9, s8
	fcvt.s.w f11, s8
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, t3
	mulw s9, s10, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 10
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, t2
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 11
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, t1
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 12
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s6, a5
	mulw s8, s8, s10
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addiw s9, s6, 13
	addw s8, s9, s8
	fcvt.s.w f11, s8
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, a4
	mulw s8, s10, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 14
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, a3
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s6, s6, 15
	addw s6, s6, s9
	fcvt.s.w f11, s6
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s6, a1, s5
	mulw s6, s8, s6
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, s5, s6
	fcvt.s.w f11, s6
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s6, s5
	addiw s5, s5, 16
	li s7, 100000
	bge s5, s7, label141
	j label156
label52:
	addiw s6, s8, 16
	li s7, 100000
	bge s6, s7, label1201
	j label62
label1201:
	mv s5, s8
	addiw s6, s8, 16
	li s7, 100000
	bge s6, s7, label1206
	j label58
label1206:
	mv a3, s5
	j label59
label58:
	addiw s7, s5, 1
	addw s7, s7, a2
	addw s8, a2, s5
	mulw s7, s8, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f11, s7
	slliw s8, s5, 2
	ld s7, 40(sp)
	add s7, s7, s8
	flw f12, 0(s7)
	flw f13, 4(s7)
	fdiv.s f11, f13, f11
	addw s8, a1, s5
	addw s9, s5, a2
	mulw s8, s8, s9
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f13, s8
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw s8, s5, 2
	addw s8, s8, a2
	addw s9, s4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 3
	addw s8, s8, a2
	addw s9, s3, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 4
	addw s8, s8, a2
	addw s9, s2, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 5
	addw s8, s8, a2
	addw s9, a7, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 6
	addw s8, s8, a2
	addw s9, a6, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 7
	addw s8, s8, a2
	addw s9, t6, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 8
	addw s8, s8, a2
	addw s9, t5, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 9
	addw s8, s8, a2
	addw s9, t4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 10
	addw s8, s8, a2
	addw s9, t3, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 11
	addw s8, s8, a2
	addw s9, t2, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 12
	addw s8, s8, a2
	addw s9, t1, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 13
	addw s8, s8, a2
	addw s9, a5, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 14
	addw s8, s8, a2
	addw s9, a4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 15
	addw s8, s8, a2
	addw s5, a3, s5
	mulw s5, s5, s8
	srliw s8, s5, 31
	add s5, s5, s8
	sraiw s5, s5, 1
	addw s5, a2, s5
	fcvt.s.w f11, s5
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label1206
	j label58
label59:
	addw a4, a1, a3
	addw a5, a2, a3
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a4, a4, 1
	addw a4, a2, a4
	fcvt.s.w f11, a4
	slliw a4, a3, 2
	ld s7, 40(sp)
	add a4, s7, a4
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw a3, a3, 1
	li a4, 100000
	bge a3, a4, label1398
	j label59
label1398:
	mv s8, a3
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label988
	j label41
label62:
	addw s7, a1, s8
	addw s9, s8, a2
	mulw s7, s7, s9
	srliw s10, s7, 31
	add s7, s7, s10
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f11, s7
	slliw s10, s8, 2
	ld s7, 40(sp)
	add s7, s7, s10
	flw f12, 0(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s11, s8, s4
	mulw s9, s9, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 4(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s8, s3
	mulw s9, s11, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s8, s2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, a2, s10
	fcvt.s.w f11, s10
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s8, a7
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s8, a6
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, a2, s10
	fcvt.s.w f11, s10
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s8, t6
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s8, t5
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, a2, s10
	fcvt.s.w f11, s10
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s8, t4
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s8, t3
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, a2, s10
	fcvt.s.w f11, s10
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s8, t2
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s8, t1
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, a2, s10
	fcvt.s.w f11, s10
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s8, a5
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s11, s8, a4
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s8, a3
	mulw s10, s11, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, a2, s10
	fcvt.s.w f11, s10
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s8, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label1201
	j label62
label141:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label144
label155:
	addiw s8, s6, 1
	addw s7, s8, a2
	addw s10, s6, a2
	mulw s7, s10, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addiw s9, s6, 2
	addw s7, s9, s7
	fcvt.s.w f12, s7
	slliw s7, s6, 2
	add s7, s1, s7
	flw f11, 0(s7)
	flw f13, 4(s7)
	fdiv.s f12, f13, f12
	addw s11, a1, s6
	mulw s10, s11, s10
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s8, s8, s10
	fcvt.s.w f13, s8
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addw s8, s9, a2
	addw s9, s6, s4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 3
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, s3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 4
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, s2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 5
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a7
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 6
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 7
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 8
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 9
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 10
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 11
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 12
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t1
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 13
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 14
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 15
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s6, s6, a3
	mulw s6, s6, s8
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, s5, s6
	fcvt.s.w f11, s6
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s6, s5
	addiw s5, s5, 16
	li s7, 100000
	bge s5, s7, label144
	j label155
label144:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label3096
	j label154
label3096:
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label3101
	j label150
label3101:
	mv a3, s5
	j label151
label150:
	addiw s8, s5, 1
	addw s7, s8, a2
	addw s9, a2, s5
	mulw s7, s9, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addiw s9, s5, 2
	addw s7, s9, s7
	fcvt.s.w f11, s7
	slliw s7, s5, 2
	add s7, s1, s7
	flw f12, 0(s7)
	flw f13, 4(s7)
	fdiv.s f11, f13, f11
	addw s10, a1, s5
	addw s11, s5, a2
	mulw s10, s10, s11
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s8, s8, s10
	fcvt.s.w f13, s8
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addw s8, s9, a2
	addw s9, s4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 3
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s3, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 4
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s2, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 5
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, a7, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 6
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, a6, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 7
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t6, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 8
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t5, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 9
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 10
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t3, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 11
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t2, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 12
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t1, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 13
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, a5, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 14
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, a4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 15
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s5, a3, s5
	mulw s5, s5, s8
	srliw s8, s5, 31
	add s5, s5, s8
	sraiw s5, s5, 1
	addw s5, s6, s5
	fcvt.s.w f11, s5
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label3101
	j label150
label154:
	addiw s8, s6, 1
	addw s7, s8, a2
	addw s10, s6, a2
	mulw s7, s10, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addiw s9, s6, 2
	addw s7, s9, s7
	fcvt.s.w f12, s7
	slliw s7, s6, 2
	add s7, s1, s7
	flw f11, 0(s7)
	flw f13, 4(s7)
	fdiv.s f12, f13, f12
	addw s11, a1, s6
	mulw s10, s11, s10
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s8, s8, s10
	fcvt.s.w f13, s8
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addw s8, s9, a2
	addw s9, s6, s4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 3
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, s3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 4
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, s2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 5
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a7
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 6
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 7
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 8
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 9
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 10
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 11
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 12
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t1
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 13
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 14
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 15
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s6, s6, a3
	mulw s6, s6, s8
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, s5, s6
	fcvt.s.w f11, s6
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s6, s5
	addiw s5, s5, 16
	li s7, 100000
	bge s5, s7, label3096
	j label154
label22:
	addiw s7, s6, 1
	addw s7, s7, a2
	addw s8, s6, a2
	mulw s7, s8, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f12, s7
	slliw s7, s6, 2
	add s7, s0, s7
	flw f11, 0(s7)
	flw f13, 4(s7)
	fdiv.s f12, f13, f12
	addw s9, a1, s6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f13, s8
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addiw s8, s6, 2
	addw s8, s8, a2
	addw s9, s6, s4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 3
	addw s8, s8, a2
	addw s9, s6, s3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 4
	addw s8, s8, a2
	addw s9, s6, s2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 5
	addw s8, s8, a2
	addw s9, s6, a7
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 6
	addw s8, s8, a2
	addw s9, s6, a6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 7
	addw s8, s8, a2
	addw s9, s6, t6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 8
	addw s8, s8, a2
	addw s9, s6, t5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 9
	addw s8, s8, a2
	addw s9, s6, t4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 10
	addw s8, s8, a2
	addw s9, s6, t3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 11
	addw s8, s8, a2
	addw s9, s6, t2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 12
	addw s8, s8, a2
	addw s9, s6, t1
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 13
	addw s8, s8, a2
	addw s9, s6, a5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 14
	addw s8, s8, a2
	addw s9, s6, a4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 15
	addw s8, s8, a2
	addw s6, s6, a3
	mulw s6, s6, s8
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, a2, s6
	fcvt.s.w f11, s6
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s6, s5
	addiw s5, s5, 16
	li s7, 100000
	bge s5, s7, label605
	j label22
label785:
	mv a3, s5
	j label27
label26:
	addiw s7, s5, 1
	addw s7, s7, a2
	addw s8, a2, s5
	mulw s7, s8, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f11, s7
	slliw s7, s5, 2
	add s7, s0, s7
	flw f12, 0(s7)
	flw f13, 4(s7)
	fdiv.s f11, f13, f11
	addw s8, a1, s5
	addw s9, s5, a2
	mulw s8, s8, s9
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f13, s8
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw s8, s5, 2
	addw s8, s8, a2
	addw s9, s4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 3
	addw s8, s8, a2
	addw s9, s3, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 4
	addw s8, s8, a2
	addw s9, s2, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 5
	addw s8, s8, a2
	addw s9, a7, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 6
	addw s8, s8, a2
	addw s9, a6, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 7
	addw s8, s8, a2
	addw s9, t6, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 8
	addw s8, s8, a2
	addw s9, t5, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 9
	addw s8, s8, a2
	addw s9, t4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 10
	addw s8, s8, a2
	addw s9, t3, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 11
	addw s8, s8, a2
	addw s9, t2, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 12
	addw s8, s8, a2
	addw s9, t1, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 13
	addw s8, s8, a2
	addw s9, a5, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 14
	addw s8, s8, a2
	addw s9, a4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s5, 15
	addw s8, s8, a2
	addw s5, a3, s5
	mulw s5, s5, s8
	srliw s8, s5, 31
	add s5, s5, s8
	sraiw s5, s5, 1
	addw s5, a2, s5
	fcvt.s.w f11, s5
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label785
	j label26
label14:
	addiw s7, s6, 1
	addw s7, s7, a2
	addw s8, s6, a2
	mulw s7, s8, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f11, s7
	slliw s7, s6, 2
	add s7, s0, s7
	flw f12, 0(s7)
	flw f13, 4(s7)
	fdiv.s f11, f13, f11
	addw s9, a1, s6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f13, s8
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw s8, s6, 2
	addw s8, s8, a2
	addw s9, s6, s4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 3
	addw s8, s8, a2
	addw s9, s6, s3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 4
	addw s8, s8, a2
	addw s9, s6, s2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 5
	addw s8, s8, a2
	addw s9, s6, a7
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 6
	addw s8, s8, a2
	addw s9, s6, a6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 7
	addw s8, s8, a2
	addw s9, s6, t6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 8
	addw s8, s8, a2
	addw s9, s6, t5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 9
	addw s8, s8, a2
	addw s9, s6, t4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 10
	addw s8, s8, a2
	addw s9, s6, t3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 11
	addw s8, s8, a2
	addw s9, s6, t2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 12
	addw s8, s8, a2
	addw s9, s6, t1
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 13
	addw s8, s8, a2
	addw s9, s6, a5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 14
	addw s8, s8, a2
	addw s9, s6, a4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s8, s6, 15
	addw s8, s8, a2
	addw s6, s6, a3
	mulw s6, s6, s8
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, a2, s6
	fcvt.s.w f11, s6
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s6, s5
	addiw s5, s5, 16
	li s7, 100000
	bge s5, s7, label15
	j label14
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
	addiw s2, a1, 4
	addiw s3, a1, 3
	addiw s4, a1, 2
	addiw a2, a1, 1
	li s5, 100000
	bge s6, s5, label131
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label115
	j label130
label131:
	slliw a1, a1, 2
	add a1, s0, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label68
	j label111
label115:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label118
label129:
	addiw s8, s6, 1
	addw s7, s8, a2
	addw s10, s6, a2
	mulw s7, s10, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addiw s9, s6, 2
	addw s7, s9, s7
	fcvt.s.w f11, s7
	slliw s7, s6, 2
	add s7, s1, s7
	flw f12, 0(s7)
	flw f13, 4(s7)
	fdiv.s f11, f13, f11
	addw s11, a1, s6
	mulw s10, s11, s10
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s8, s8, s10
	fcvt.s.w f13, s8
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addw s8, s9, a2
	addw s9, s6, s4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 3
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, s3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 4
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, s2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 5
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a7
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 6
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 7
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 8
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 9
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 10
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 11
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 12
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t1
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 13
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 14
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 15
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s6, s6, a3
	mulw s6, s6, s8
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, s5, s6
	fcvt.s.w f11, s6
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s6, s5
	addiw s5, s5, 16
	li s7, 100000
	bge s5, s7, label118
	j label129
label118:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label2350
	j label121
label2350:
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label2530
	j label125
label121:
	addiw s8, s6, 1
	addw s7, s8, a2
	addw s10, s6, a2
	mulw s7, s10, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addiw s9, s6, 2
	addw s7, s9, s7
	fcvt.s.w f11, s7
	slliw s7, s6, 2
	add s7, s1, s7
	flw f12, 0(s7)
	flw f13, 4(s7)
	fdiv.s f11, f13, f11
	addw s11, a1, s6
	mulw s10, s11, s10
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s8, s8, s10
	fcvt.s.w f13, s8
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addw s8, s9, a2
	addw s9, s6, s4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 3
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, s3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 4
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, s2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 5
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a7
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 6
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 7
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t6
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 8
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 9
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 10
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t3
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 11
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t2
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 12
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, t1
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 13
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 14
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s6, a4
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s6, 15
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s6, s6, a3
	mulw s6, s6, s8
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, s5, s6
	fcvt.s.w f11, s6
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s6, s5
	addiw s5, s5, 16
	li s7, 100000
	bge s5, s7, label2350
	j label121
label2530:
	mv a3, s5
	j label126
label125:
	addiw s8, s5, 1
	addw s7, s8, a2
	addw s9, a2, s5
	mulw s7, s9, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addiw s9, s5, 2
	addw s7, s9, s7
	fcvt.s.w f11, s7
	slliw s7, s5, 2
	add s7, s1, s7
	flw f12, 0(s7)
	flw f13, 4(s7)
	fdiv.s f11, f13, f11
	addw s10, a1, s5
	addw s11, s5, a2
	mulw s10, s10, s11
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s8, s8, s10
	fcvt.s.w f13, s8
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addw s8, s9, a2
	addw s9, s4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 3
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s3, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 4
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, s2, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 5
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, a7, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 6
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, a6, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 7
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t6, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 8
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t5, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 9
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 10
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t3, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 11
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t2, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 12
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, t1, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 13
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, a5, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 14
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s9, a4, s5
	mulw s8, s9, s8
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s9, s8, 1
	addiw s8, s5, 15
	addw s9, s8, s9
	fcvt.s.w f11, s9
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s8, a2
	addw s5, a3, s5
	mulw s5, s5, s8
	srliw s8, s5, 31
	add s5, s5, s8
	sraiw s5, s5, 1
	addw s5, s6, s5
	fcvt.s.w f11, s5
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label2530
	j label125
label126:
	addw a4, a1, a3
	addw a5, a2, a3
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a5, a4, 1
	addiw a4, a3, 1
	addw a5, a4, a5
	fcvt.s.w f11, a5
	slliw a3, a3, 2
	add a3, s1, a3
	flw f12, 0(a3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	li a3, 100000
	bge a4, a3, label2722
	mv a3, a4
	j label126
label2722:
	mv s6, a4
	slliw a1, a1, 2
	add a1, s0, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label68
	j label111
label130:
	addw s7, a1, s6
	addw s8, s6, a2
	mulw s7, s7, s8
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addiw s9, s6, 1
	addw s7, s9, s7
	fcvt.s.w f11, s7
	slliw s7, s6, 2
	add s7, s1, s7
	flw f12, 0(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, s4
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 2
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 4(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, s3
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 3
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 8(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s6, s2
	mulw s8, s8, s10
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addiw s9, s6, 4
	addw s8, s9, s8
	fcvt.s.w f11, s8
	flw f12, 12(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, a7
	mulw s8, s10, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 5
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 16(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, a6
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 6
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, t6
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 7
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 24(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, t5
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 8
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, t4
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 9
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, t3
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 10
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, t2
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 11
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, t1
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 12
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, a5
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 13
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s6, a4
	mulw s8, s9, s10
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addiw s9, s6, 14
	addw s8, s9, s8
	fcvt.s.w f11, s8
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, a3
	mulw s9, s10, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s6, s6, 15
	addw s6, s6, s9
	fcvt.s.w f11, s6
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s6, a1, s5
	mulw s6, s8, s6
	srliw s8, s6, 31
	add s6, s6, s8
	sraiw s6, s6, 1
	addw s6, s5, s6
	fcvt.s.w f11, s6
	flw f12, 60(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s6, s5
	addiw s5, s5, 16
	li s7, 100000
	bge s5, s7, label115
	j label130
label135:
	slliw a1, a1, 2
	ld s7, 40(sp)
	add a1, s7, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label983
	j label134
label42:
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label988
	j label41
label81:
	slliw a1, a0, 2
	add a1, s0, a1
	flw f11, 0(a1)
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f11, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label1953
	fmv.s f10, f11
	j label81
label1953:
	fmv.w.x f10, zero
	mv a0, zero
	addiw a1, zero, 16
	li a2, 100000
	bge a1, a2, label88
	j label87
label88:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label91
label109:
	slliw a0, a0, 2
	ld s7, 40(sp)
	add a0, s7, a0
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
	bge a1, a2, label91
	j label109
label91:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label95
label94:
	slliw a0, a0, 2
	ld s7, 40(sp)
	add a0, s7, a0
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
	bge a1, a2, label95
	j label94
label95:
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label98
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label98
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label98
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label98
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label98
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label98
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label98
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label98
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label98
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label98
label4492:
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label98
	j label4492
label98:
	fdiv.s f11, f11, f10
	lui a0, 260096
	fmv.w.x f10, a0
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4495:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4495)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label2124
pcrel4496:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4496)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label105
	j label2130
label2124:
	li a0, 1
	beq a0, zero, label105
	fadd.s f10, f10, f12
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4497:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4497)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label2124
pcrel4498:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4498)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label105
	j label2130
label4449:
	mv a0, zero
	j label106
label105:
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f10, f10, f11
pcrel4499:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4499)
	flw f11, 0(a0)
	flw f11, 0(a0)
	fle.s a0, f10, f11
	bne a0, zero, label2148
	j label4449
label2148:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(label2148)
	flw f11, 4(a0)
	fle.s a0, f11, f10
label106:
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	lui t0, 293
	add t0, t0, sp
	ld ra, -32(t0)
	lui t0, 98
	add t0, t0, sp
	ld s11, -1336(t0)
	lui t0, 293
	add t0, t0, sp
	ld s10, -24(t0)
	lui t0, 195
	add t0, t0, sp
	ld s9, 1360(t0)
	ld s8, 24(sp)
	lui t0, 293
	add t0, t0, sp
	ld s4, -40(t0)
	ld s3, 16(sp)
	ld s2, 8(sp)
	ld s5, 0(sp)
	ld s0, 64(sp)
	ld s7, 56(sp)
	ld s6, 48(sp)
	ld s1, 32(sp)
	lui t0, 293
	add t0, t0, sp
	addi sp, t0, -16
	ret
label2130:
	fadd.s f10, f10, f12
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4500:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4500)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label2124
pcrel4501:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4501)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label105
	j label2130
label87:
	slliw a0, a0, 2
	ld s7, 40(sp)
	add a0, s7, a0
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
	bge a1, a2, label88
	j label87
label77:
	slliw a2, a0, 2
	add a2, s0, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	ld s7, 40(sp)
	add a0, s7, a0
	flw f12, 0(a0)
	flw f13, 4(a2)
	flw f14, 4(a0)
	fmul.s f13, f13, f14
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fadd.s f10, f10, f13
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
	bge a1, a2, label78
	j label77
label73:
	slliw a2, a0, 2
	add a2, s0, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	ld s7, 40(sp)
	add a0, s7, a0
	flw f12, 0(a0)
	flw f13, 4(a2)
	flw f14, 4(a0)
	fmul.s f13, f13, f14
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	fadd.s f10, f10, f13
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
	bge a1, a2, label74
	j label73
