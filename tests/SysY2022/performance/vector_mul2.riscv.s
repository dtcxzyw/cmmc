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
	j label134
label220:
	fmv.w.x f10, zero
	mv a1, zero
	mv s7, zero
	li a2, 100000
	bge zero, a2, label225
	j label14
label225:
	fmv.w.x f10, zero
	mv a1, zero
	mv s7, zero
	li a2, 100000
	bge zero, a2, label960
	j label111
label960:
	fmv.w.x f10, zero
	mv a1, zero
	mv s7, zero
	li a2, 100000
	bge zero, a2, label45
	j label88
label45:
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label46
	fmv.w.x f10, zero
	mv a1, zero
	mv s7, zero
	li a2, 100000
	bge zero, a2, label220
	j label134
label46:
	li a0, 76
	jal _sysy_stoptime
	fmv.w.x f10, zero
	mv a0, zero
	addiw a1, zero, 16
	li a2, 100000
	bge a1, a2, label50
label87:
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
	bge a1, a2, label50
	j label87
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
label142:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label145
	j label156
label145:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label3257
	j label155
label3257:
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label3262
	j label154
label3262:
	mv a3, s6
label151:
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
	bge a3, a4, label3278
	j label151
label3278:
	mv s7, a3
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label220
	j label134
label154:
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
	bge s7, s8, label3262
	j label154
label155:
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
	bge s6, s8, label3257
	j label155
label88:
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
	bge s7, s6, label108
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label93
	j label92
label102:
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
	bge a3, a4, label1774
	mv s6, a3
	j label102
label1774:
	mv s7, a3
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label45
	j label88
label108:
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label45
	j label88
label156:
	slliw s8, s7, 2
	add s8, s1, s8
	flw f11, 0(s8)
	addw s10, s7, a1
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
	mulw s9, s10, s9
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
	bge s6, s8, label145
	j label156
label141:
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
	bge s6, s8, label142
	j label141
label14:
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
	bge s7, s6, label34
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label18
	j label33
label34:
	slliw a1, a1, 2
	add a1, s0, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label225
	j label14
label18:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label21
label32:
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
	addw s11, s7, t5
	mulw s9, s9, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 8
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 32(s8)
	addw s10, s7, t4
	mulw s9, s11, s10
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
	addw s11, s7, a5
	mulw s9, s9, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 13
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s10, s7, a4
	mulw s9, s11, s10
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
	bge s6, s8, label21
	j label32
label21:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label260
	j label24
label260:
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label28
	j label31
label24:
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
	bge s6, s8, label260
	j label24
label28:
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
	bge a3, a4, label456
	mv s6, a3
	j label28
label456:
	mv s7, a3
	slliw a1, a1, 2
	add a1, s0, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label225
	j label14
label31:
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
	bge s7, s8, label28
	j label31
label33:
	slliw s8, s7, 2
	add s8, s2, s8
	flw f11, 0(s8)
	addw s10, s7, a1
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
	addw s9, s7, t4
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 9
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 36(s8)
	addw s10, s7, t3
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 10
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 40(s8)
	addw s9, s7, t2
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 11
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 44(s8)
	addw s10, s7, t1
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addiw s11, s7, 12
	addw s9, s11, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 48(s8)
	addw s11, s7, a5
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 13
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 52(s8)
	addw s9, s7, a4
	mulw s10, s11, s9
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
	bge s6, s8, label18
	j label33
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
	j label118
label112:
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label960
	j label111
label119:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label122
	j label133
label122:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label2499
	j label132
label2499:
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label2504
	j label128
label2504:
	mv a3, s6
	j label129
label128:
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
	bge s7, s8, label2504
	j label128
label129:
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
	bge a3, a4, label2696
	j label129
label2696:
	mv s7, a3
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label960
	j label111
label132:
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
	bge s6, s8, label2499
	j label132
label133:
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
	bge s6, s8, label122
	j label133
label118:
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
	bge s6, s8, label119
	j label118
label93:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label96
label107:
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
	addw s9, s7, a6
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addiw s11, s7, 6
	addw s10, s11, s10
	fcvt.s.w f12, s10
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 24(s8)
	addw s10, s7, t6
	mulw s9, s9, s10
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
	addw s11, s7, a4
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 14
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, s7, a3
	mulw s10, s11, s9
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
	bge s6, s8, label96
	j label107
label96:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label1753
	j label106
label1753:
	mv s6, s7
	addiw s7, s7, 16
	li s8, 100000
	bge s7, s8, label102
	j label105
label92:
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
	addw s11, s7, a4
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s7, 14
	addw s9, s10, s9
	fcvt.s.w f12, s9
	fdiv.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 56(s8)
	addw s9, s7, a3
	mulw s10, s11, s9
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
	bge s6, s8, label93
	j label92
label106:
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
	bge s6, s8, label1753
	j label106
label105:
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
	bge s7, s8, label102
	j label105
label135:
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label220
	j label134
label50:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label53
label86:
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
	bge a1, a2, label53
	j label86
label53:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label56
label85:
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
	bge a1, a2, label56
	j label85
label56:
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
	bge a0, a1, label999
	fmv.s f10, f11
	j label56
label999:
	fmv.w.x f10, zero
	mv a0, zero
	addiw a1, zero, 16
	li a2, 100000
	bge a1, a2, label63
	j label62
label63:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label66
	j label84
label66:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label69
	j label83
label69:
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label72
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label72
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label72
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label72
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label72
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label72
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label72
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label72
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label72
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label72
label4479:
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label72
	j label4479
label72:
	fdiv.s f11, f11, f10
	lui a0, 260096
	fmv.w.x f10, a0
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4481:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4481)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label1105
pcrel4482:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4482)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label79
	j label1111
label1105:
	li a0, 1
	beq a0, zero, label79
	fadd.s f10, f10, f12
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4483:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4483)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label1105
pcrel4484:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4484)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label79
label1111:
	fadd.s f10, f10, f12
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4485:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4485)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label1105
pcrel4486:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4486)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label79
	j label1111
label4431:
	mv a0, zero
	j label80
label79:
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f10, f10, f11
pcrel4487:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4487)
	flw f11, 0(a0)
	flw f11, 0(a0)
	fle.s a0, f10, f11
	bne a0, zero, label1129
	j label4431
label84:
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
	bge a1, a2, label66
	j label84
label83:
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
	bge a1, a2, label69
	j label83
label62:
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
	bge a1, a2, label63
	j label62
label1129:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(label1129)
	flw f11, 4(a0)
	fle.s a0, f11, f10
label80:
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
