.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	3045472189
.bss
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
	lui t0, 293
	add t0, t0, sp
	sd s3, -40(t0)
	sd s4, 16(sp)
	lui t0, 195
	add t0, t0, sp
	sd s8, 1360(t0)
	sd s10, 24(sp)
	lui t0, 98
	add t0, t0, sp
	sd s9, -1336(t0)
	lui t0, 293
	add t0, t0, sp
	sd s11, -24(t0)
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
	mv s7, zero
	li a2, 100000
	bge zero, a2, label220
	j label134
label220:
	fmv.w.x f10, zero
	mv a1, zero
	mv s6, zero
	li a2, 100000
	bge zero, a2, label225
	j label111
label225:
	fmv.w.x f10, zero
	mv a1, zero
	mv s6, zero
	li a2, 100000
	bge zero, a2, label230
	j label88
label230:
	fmv.w.x f10, zero
	mv a1, zero
	mv s6, zero
	li a2, 100000
	bge zero, a2, label22
	j label65
label22:
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label23
	fmv.w.x f10, zero
	mv a1, zero
	mv s7, zero
	li a2, 100000
	bge zero, a2, label220
	j label134
label23:
	li a0, 76
	jal _sysy_stoptime
	fmv.w.x f10, zero
	mv a0, zero
	addiw a1, zero, 16
	li a2, 100000
	bge a1, a2, label28
label27:
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
	bge a1, a2, label28
	j label27
label28:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label32
	j label31
label32:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label35
	j label64
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
	addiw s2, a1, 4
	addiw s3, a1, 3
	addiw s4, a1, 2
	addiw a2, a1, 1
	li s5, 100000
	bge s6, s5, label89
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label95
	j label110
label134:
	addiw a3, a1, 16
	addiw a4, a1, 15
	addiw a5, a1, 14
	addiw t1, a1, 13
	addiw t2, a1, 12
	addiw t3, a1, 11
	addiw t4, a1, 10
	addiw t5, a1, 9
	addiw t6, a1, 8
	addiw a6, a1, 7
	addiw a7, a1, 6
	addiw s2, a1, 5
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
	bge s6, s8, label146
	j label145
label146:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label149
	j label156
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
	bge s6, s5, label112
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label118
	j label133
label129:
	addw a3, a1, s5
	addw a4, a2, s5
	mulw a3, a3, a4
	srliw a4, a3, 31
	add a3, a3, a4
	sraiw a4, a3, 1
	addiw a3, s5, 1
	addw a4, a3, a4
	fcvt.s.w f11, a4
	slliw a4, s5, 2
	add a4, s1, a4
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	li a4, 100000
	bge a3, a4, label2738
	mv s5, a3
	j label129
label2738:
	mv s6, a3
	slliw a1, a1, 2
	ld s7, 40(sp)
	add a1, s7, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label225
	j label111
label65:
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
	bge s6, s5, label66
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label72
	j label87
label83:
	addw a3, a1, s5
	addw a4, a2, s5
	mulw a3, a3, a4
	srliw a4, a3, 31
	add a3, a3, a4
	sraiw a4, a3, 1
	addiw a3, s5, 1
	addw a4, a3, a4
	fcvt.s.w f11, a4
	slliw a4, s5, 2
	add a4, s1, a4
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	li a4, 100000
	bge a3, a4, label1236
	mv s5, a3
	j label83
label1236:
	mv s6, a3
	slliw a1, a1, 2
	add a1, s0, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label22
	j label65
label149:
	addiw s6, s7, 16
	li s8, 100000
	bge s6, s8, label3466
	j label152
label3466:
	mv a3, s7
label153:
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
	bge a3, a4, label3628
	j label153
label3628:
	mv s7, a3
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label220
	j label134
label118:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label122
	j label121
label122:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label2541
	j label132
label2541:
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label129
label128:
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
	bge s6, s7, label129
	j label128
label132:
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
	bge s5, s7, label2541
	j label132
label95:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label99
	j label98
label99:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label1783
	j label109
label1783:
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label1788
	j label105
label1788:
	mv a3, s5
	j label106
label105:
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
	bge s6, s7, label1788
	j label105
label106:
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
	bge a3, a4, label1980
	j label106
label1980:
	mv s6, a3
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label230
	j label88
label72:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label76
label75:
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
	bge s5, s7, label76
	j label75
label76:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label1039
	j label86
label1039:
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label83
	j label82
label86:
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
	bge s5, s7, label1039
	j label86
label156:
	addiw s8, s7, 1
	addw s8, s8, a2
	addw s9, s7, a2
	mulw s8, s9, s8
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	slliw s8, s7, 2
	add s8, s0, s8
	flw f12, 0(s8)
	flw f13, 4(s8)
	fdiv.s f11, f13, f11
	addw s10, a1, s7
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f13, s9
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw s9, s7, 2
	addw s9, s9, a2
	addw s10, s7, s5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 8(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 3
	addw s9, s9, a2
	addw s10, s7, s4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 12(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 4
	addw s9, s9, a2
	addw s10, s7, s3
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 16(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 5
	addw s9, s9, a2
	addw s10, s7, s2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 20(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 6
	addw s9, s9, a2
	addw s10, s7, a7
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 24(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 7
	addw s9, s9, a2
	addw s10, s7, a6
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 28(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 8
	addw s9, s9, a2
	addw s10, s7, t6
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 32(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 9
	addw s9, s9, a2
	addw s10, s7, t5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 36(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 10
	addw s9, s9, a2
	addw s10, s7, t4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 40(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 11
	addw s9, s9, a2
	addw s10, s7, t3
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 44(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 12
	addw s9, s9, a2
	addw s10, s7, t2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 48(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 13
	addw s9, s9, a2
	addw s10, s7, t1
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 52(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 14
	addw s9, s9, a2
	addw s10, s7, a5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 56(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 15
	addw s9, s9, a2
	addw s7, s7, a4
	mulw s7, s7, s9
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f11, s7
	flw f12, 60(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label149
	j label156
label152:
	addw s8, a1, s7
	addw s9, a2, s7
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	slliw s8, s7, 2
	add s8, s0, s8
	flw f12, 0(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s5, s7
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 4(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s11, s4, s7
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 8(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s3, s7
	mulw s10, s11, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, a2, s10
	fcvt.s.w f11, s10
	flw f12, 12(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, s2, s7
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 16(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, a7, s7
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, a2, s10
	fcvt.s.w f11, s10
	flw f12, 20(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s11, a6, s7
	mulw s9, s9, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 24(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, t6, s7
	mulw s9, s11, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 28(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, t5, s7
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, a2, s10
	fcvt.s.w f11, s10
	flw f12, 32(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, t4, s7
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 36(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, t3, s7
	mulw s10, s10, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, a2, s10
	fcvt.s.w f11, s10
	flw f12, 40(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, t2, s7
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 44(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s11, t1, s7
	mulw s9, s10, s11
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 48(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, a5, s7
	mulw s10, s11, s9
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s10, a2, s10
	fcvt.s.w f11, s10
	flw f12, 52(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s10, a4, s7
	mulw s9, s9, s10
	srliw s11, s9, 31
	add s9, s9, s11
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 56(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s7, a3, s7
	mulw s7, s10, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f11, s7
	flw f12, 60(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label3466
	j label152
label145:
	addiw s8, s7, 1
	addw s8, s8, a2
	addw s9, s7, a2
	mulw s8, s9, s8
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	slliw s8, s7, 2
	add s8, s0, s8
	flw f12, 0(s8)
	flw f13, 4(s8)
	fdiv.s f11, f13, f11
	addw s10, a1, s7
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f13, s9
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw s9, s7, 2
	addw s9, s9, a2
	addw s10, s7, s5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 8(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 3
	addw s9, s9, a2
	addw s10, s7, s4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 12(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 4
	addw s9, s9, a2
	addw s10, s7, s3
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 16(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 5
	addw s9, s9, a2
	addw s10, s7, s2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 20(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 6
	addw s9, s9, a2
	addw s10, s7, a7
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 24(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 7
	addw s9, s9, a2
	addw s10, s7, a6
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 28(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 8
	addw s9, s9, a2
	addw s10, s7, t6
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 32(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 9
	addw s9, s9, a2
	addw s10, s7, t5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 36(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 10
	addw s9, s9, a2
	addw s10, s7, t4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 40(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 11
	addw s9, s9, a2
	addw s10, s7, t3
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 44(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 12
	addw s9, s9, a2
	addw s10, s7, t2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 48(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 13
	addw s9, s9, a2
	addw s10, s7, t1
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 52(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 14
	addw s9, s9, a2
	addw s10, s7, a5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 56(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 15
	addw s9, s9, a2
	addw s7, s7, a4
	mulw s7, s7, s9
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f11, s7
	flw f12, 60(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label146
	j label145
label141:
	addiw s8, s7, 1
	addw s8, s8, a2
	addw s9, s7, a2
	mulw s8, s9, s8
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f11, s8
	slliw s8, s7, 2
	add s8, s0, s8
	flw f12, 0(s8)
	flw f13, 4(s8)
	fdiv.s f11, f13, f11
	addw s10, a1, s7
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f13, s9
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw s9, s7, 2
	addw s9, s9, a2
	addw s10, s7, s5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 8(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 3
	addw s9, s9, a2
	addw s10, s7, s4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 12(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 4
	addw s9, s9, a2
	addw s10, s7, s3
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 16(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 5
	addw s9, s9, a2
	addw s10, s7, s2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 20(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 6
	addw s9, s9, a2
	addw s10, s7, a7
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 24(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 7
	addw s9, s9, a2
	addw s10, s7, a6
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 28(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 8
	addw s9, s9, a2
	addw s10, s7, t6
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 32(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 9
	addw s9, s9, a2
	addw s10, s7, t5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 36(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 10
	addw s9, s9, a2
	addw s10, s7, t4
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 40(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 11
	addw s9, s9, a2
	addw s10, s7, t3
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 44(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 12
	addw s9, s9, a2
	addw s10, s7, t2
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 48(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 13
	addw s9, s9, a2
	addw s10, s7, t1
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 52(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 14
	addw s9, s9, a2
	addw s10, s7, a5
	mulw s9, s10, s9
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addw s9, a2, s9
	fcvt.s.w f11, s9
	flw f12, 56(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw s9, s7, 15
	addw s9, s9, a2
	addw s7, s7, a4
	mulw s7, s7, s9
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f11, s7
	flw f12, 60(s8)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv s7, s6
	addiw s6, s6, 16
	li s8, 100000
	bge s6, s8, label142
	j label141
label133:
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
	addw s10, s6, a6
	mulw s8, s8, s10
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addiw s9, s6, 6
	addw s8, s9, s8
	fcvt.s.w f11, s8
	flw f12, 20(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, t6
	mulw s8, s10, s9
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
	addw s10, s6, t1
	mulw s8, s9, s10
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addiw s9, s6, 12
	addw s8, s9, s8
	fcvt.s.w f11, s8
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, a5
	mulw s9, s10, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 13
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, a4
	mulw s8, s8, s9
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
	bge s5, s7, label118
	j label133
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
	bge s5, s7, label122
	j label121
label109:
	addiw s7, s6, 1
	addw s7, s7, a2
	addw s8, s6, a2
	mulw s7, s8, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f12, s7
	slliw s9, s6, 2
	ld s7, 40(sp)
	add s7, s7, s9
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
	bge s5, s7, label1783
	j label109
label110:
	addiw s7, s6, 1
	addw s7, s7, a2
	addw s8, s6, a2
	mulw s7, s8, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f11, s7
	slliw s9, s6, 2
	ld s7, 40(sp)
	add s7, s7, s9
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
	bge s5, s7, label95
	j label110
label98:
	addiw s7, s6, 1
	addw s7, s7, a2
	addw s8, s6, a2
	mulw s7, s8, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f12, s7
	slliw s9, s6, 2
	ld s7, 40(sp)
	add s7, s7, s9
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
	bge s5, s7, label99
	j label98
label87:
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
	addw s10, s6, t5
	mulw s8, s9, s10
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addiw s9, s6, 8
	addw s8, s9, s8
	fcvt.s.w f11, s8
	flw f12, 28(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, t4
	mulw s9, s10, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 9
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 32(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, t3
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 10
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 36(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, t2
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 11
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 40(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, t1
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 12
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, a5
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 13
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, a4
	mulw s8, s8, s9
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
	bge s5, s7, label72
	j label87
label82:
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
	bge s6, s7, label83
	j label82
label135:
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label220
	j label134
label112:
	slliw a1, a1, 2
	ld s7, 40(sp)
	add a1, s7, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label225
	j label111
label89:
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label230
	j label88
label66:
	slliw a1, a1, 2
	add a1, s0, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label22
	j label65
label35:
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
	bge a0, a1, label465
	fmv.s f10, f11
	j label35
label465:
	fmv.w.x f10, zero
	mv a0, zero
	addiw a1, zero, 16
	li a2, 100000
	bge a1, a2, label42
label41:
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
	bge a1, a2, label42
	j label41
label42:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label45
	j label63
label45:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label49
label48:
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
	bge a1, a2, label49
	j label48
label49:
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label52
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label52
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label52
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label52
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label52
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label52
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label52
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label52
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label52
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label52
label4487:
	slliw a1, a0, 2
	ld s7, 40(sp)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label52
	j label4487
label52:
	fdiv.s f11, f11, f10
	lui a0, 260096
	fmv.w.x f10, a0
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4491:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4491)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label636
pcrel4492:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4492)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label58
	j label642
label636:
	li a0, 1
	beq a0, zero, label58
	fadd.s f10, f10, f12
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4493:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4493)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label636
pcrel4494:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4494)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label58
label642:
	fadd.s f10, f10, f12
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fdiv.s f12, f11, f10
	fsub.s f13, f10, f12
pcrel4495:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4495)
	flw f14, 0(a0)
	flw f14, 0(a0)
	flt.s a0, f14, f13
	bne a0, zero, label636
pcrel4496:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4496)
	flw f14, 4(a0)
	flt.s a0, f13, f14
	beq a0, zero, label58
	j label642
label63:
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
	bge a1, a2, label45
	j label63
label31:
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
	bge a1, a2, label32
	j label31
label64:
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
	bge a1, a2, label35
	j label64
label58:
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f10, f10, f11
pcrel4497:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4497)
	flw f11, 0(a0)
	flw f11, 0(a0)
	fle.s a0, f10, f11
	bne a0, zero, label656
	mv a0, zero
	j label59
label656:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(label656)
	flw f11, 4(a0)
	fle.s a0, f11, f10
label59:
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	lui t0, 293
	add t0, t0, sp
	ld ra, -32(t0)
	lui t0, 293
	add t0, t0, sp
	ld s11, -24(t0)
	lui t0, 98
	add t0, t0, sp
	ld s9, -1336(t0)
	ld s10, 24(sp)
	lui t0, 195
	add t0, t0, sp
	ld s8, 1360(t0)
	ld s4, 16(sp)
	lui t0, 293
	add t0, t0, sp
	ld s3, -40(t0)
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
