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
	sd s2, 1288(t0)
	lui t0, 293
	add t0, t0, sp
	sd s0, -104(t0)
	lui t0, 98
	add t0, t0, sp
	sd s1, -1408(t0)
	lui t0, 293
	add t0, t0, sp
	sd ra, -112(t0)
	addi s2, sp, 0
	lui t0, 98
	add t0, t0, sp
	addi s0, t0, -1400
	lui t0, 195
	add t0, t0, sp
	addi s1, t0, 1296
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
	bge a0, a1, label210
	j label2
label210:
	mv a0, zero
	fmv.w.x f10, zero
	mv a1, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label215
	addiw a3, zero, 3
	addiw a4, zero, 2
	addiw a2, zero, 1
	li a5, 100000
	bge zero, a5, label30
	addiw a5, zero, 4
	li t2, 100000
	bge a5, t2, label14
	j label29
label215:
	fmv.w.x f10, zero
	mv a1, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label438
	addiw a3, zero, 3
	addiw a4, zero, 2
	addiw a2, zero, 1
	li a5, 100000
	bge zero, a5, label149
	addiw a5, zero, 4
	li t2, 100000
	bge a5, t2, label133
	j label148
label143:
	addw a3, a1, t1
	addw a4, a2, t1
	mulw a3, a3, a4
	srliw a4, a3, 31
	add a3, a3, a4
	sraiw a4, a3, 1
	addiw a3, t1, 1
	addw a4, a3, a4
	fcvt.s.w f11, a4
	slliw a4, t1, 2
	add a4, s2, a4
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	li a4, 100000
	bge a3, a4, label1209
	mv t1, a3
	j label143
label1209:
	mv t1, a3
	slliw a1, a1, 2
	add a1, s0, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label438
	addiw a3, a1, 3
	addiw a4, a1, 2
	addiw a2, a1, 1
	li a5, 100000
	bge t1, a5, label149
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label133
label148:
	addw t2, a1, t1
	addw t3, t1, a2
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 1
	addw t2, t4, t2
	fcvt.s.w f11, t2
	slliw t2, t1, 2
	add t2, s2, t2
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, t1, a4
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addiw t5, t1, 2
	addw t3, t5, t3
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, t1, a3
	mulw t4, t4, t3
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addiw t1, t1, 3
	addw t1, t1, t4
	fcvt.s.w f11, t1
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t1, a1, a5
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
	bge a5, t2, label133
	j label148
label149:
	slliw a1, a1, 2
	add a1, s0, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label438
	addiw a3, a1, 3
	addiw a4, a1, 2
	addiw a2, a1, 1
	li a5, 100000
	bge t1, a5, label149
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label133
	j label148
label133:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label136
	j label147
label14:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label18
	j label17
label18:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label21
label28:
	addiw t2, t1, 1
	addw t2, t2, a2
	addw t3, t1, a2
	mulw t2, t3, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	slliw t2, t1, 2
	add t2, s1, t2
	flw f12, 0(t2)
	flw f13, 4(t2)
	fdiv.s f11, f13, f11
	addw t4, a1, t1
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f13, t3
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, t3, a2
	addw t4, t1, a4
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, t3, a2
	addw t1, t1, a3
	mulw t1, t1, t3
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label21
	j label28
label136:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label139
	j label146
label139:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label143
label142:
	addiw t3, t1, 1
	addw t2, t3, a2
	addw t4, a2, t1
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 2
	addw t2, t4, t2
	fcvt.s.w f12, t2
	slliw t2, t1, 2
	add t2, s2, t2
	flw f11, 0(t2)
	flw f13, 4(t2)
	fdiv.s f12, f13, f12
	addw t5, a1, t1
	addw t6, t1, a2
	mulw t5, t5, t6
	srliw t6, t5, 31
	add t5, t5, t6
	sraiw t5, t5, 1
	addw t3, t3, t5
	fcvt.s.w f13, t3
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addw t3, t4, a2
	addw t4, a4, t1
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t3, t4
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, t3, a2
	addw t1, a3, t1
	mulw t1, t1, t3
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
	bge a5, t2, label143
	j label142
label21:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label286
	j label24
label286:
	mv a3, t1
	j label25
label24:
	addiw t2, t1, 1
	addw t2, t2, a2
	addw t3, a2, t1
	mulw t2, t3, t2
	srliw t3, t2, 31
	add t2, t2, t3
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	slliw t2, t1, 2
	add t2, s1, t2
	flw f12, 0(t2)
	flw f13, 4(t2)
	fdiv.s f11, f13, f11
	addw t3, a1, t1
	addw t4, t1, a2
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f13, t3
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, t3, a2
	addw t4, a4, t1
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, t3, a2
	addw t1, a3, t1
	mulw t1, t1, t3
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label286
	j label24
label25:
	addw a4, a1, a3
	addw a5, a2, a3
	mulw a4, a4, a5
	srliw a5, a4, 31
	add a4, a4, a5
	sraiw a4, a4, 1
	addw a4, a2, a4
	fcvt.s.w f11, a4
	slliw a4, a3, 2
	add a4, s1, a4
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw a3, a3, 1
	li a4, 100000
	bge a3, a4, label346
	j label25
label346:
	mv t1, a3
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label215
	addiw a3, a1, 3
	addiw a4, a1, 2
	addiw a2, a1, 1
	li a5, 100000
	bge t1, a5, label30
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label14
	j label29
label146:
	addiw t3, t1, 1
	addw t2, t3, a2
	addw t5, t1, a2
	mulw t2, t5, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 2
	addw t2, t4, t2
	fcvt.s.w f12, t2
	slliw t2, t1, 2
	add t2, s2, t2
	flw f11, 0(t2)
	flw f13, 4(t2)
	fdiv.s f12, f13, f12
	addw t6, a1, t1
	mulw t5, t6, t5
	srliw t6, t5, 31
	add t5, t5, t6
	sraiw t5, t5, 1
	addw t3, t3, t5
	fcvt.s.w f13, t3
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addw t3, t4, a2
	addw t4, t1, a4
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t3, t4
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, t3, a2
	addw t1, t1, a3
	mulw t1, t1, t3
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
	bge a5, t2, label139
	j label146
label147:
	addiw t3, t1, 1
	addw t2, t3, a2
	addw t5, t1, a2
	mulw t2, t5, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 2
	addw t2, t4, t2
	fcvt.s.w f12, t2
	slliw t2, t1, 2
	add t2, s2, t2
	flw f11, 0(t2)
	flw f13, 4(t2)
	fdiv.s f12, f13, f12
	addw t6, a1, t1
	mulw t5, t6, t5
	srliw t6, t5, 31
	add t5, t5, t6
	sraiw t5, t5, 1
	addw t3, t3, t5
	fcvt.s.w f13, t3
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addw t3, t4, a2
	addw t4, t1, a4
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t3, t4
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, t3, a2
	addw t1, t1, a3
	mulw t1, t1, t3
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
	bge a5, t2, label136
	j label147
label17:
	addiw t2, t1, 1
	addw t2, t2, a2
	addw t3, t1, a2
	mulw t2, t3, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f12, t2
	slliw t2, t1, 2
	add t2, s1, t2
	flw f11, 0(t2)
	flw f13, 4(t2)
	fdiv.s f12, f13, f12
	addw t4, a1, t1
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f13, t3
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addiw t3, t1, 2
	addw t3, t3, a2
	addw t4, t1, a4
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, t3, a2
	addw t1, t1, a3
	mulw t1, t1, t3
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label18
	j label17
label29:
	addiw t2, t1, 1
	addw t2, t2, a2
	addw t3, t1, a2
	mulw t2, t3, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	slliw t2, t1, 2
	add t2, s1, t2
	flw f12, 0(t2)
	flw f13, 4(t2)
	fdiv.s f11, f13, f11
	addw t4, a1, t1
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f13, t3
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, t3, a2
	addw t4, t1, a4
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, t3, a2
	addw t1, t1, a3
	mulw t1, t1, t3
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label14
	j label29
label438:
	fmv.w.x f10, zero
	mv a1, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label443
	addiw a3, zero, 3
	addiw a4, zero, 2
	addiw a2, zero, 1
	li a5, 100000
	bge zero, a5, label107
	addiw a5, zero, 4
	li t2, 100000
	bge a5, t2, label114
	j label113
label443:
	fmv.w.x f10, zero
	mv a1, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label45
	addiw a3, zero, 3
	addiw a4, zero, 2
	addiw a2, zero, 1
	li a5, 100000
	bge zero, a5, label84
	addiw a5, zero, 4
	li t2, 100000
	bge a5, t2, label91
	j label90
label45:
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label46
	fmv.w.x f10, zero
	mv a1, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label215
	addiw a3, zero, 3
	addiw a4, zero, 2
	addiw a2, zero, 1
	li a5, 100000
	bge zero, a5, label30
	addiw a5, zero, 4
	li t2, 100000
	bge a5, t2, label14
	j label29
label46:
	li a0, 76
	jal _sysy_stoptime
	fmv.w.x f10, zero
	mv a0, zero
	addiw a1, zero, 4
	li a2, 100000
	bge a1, a2, label51
	j label50
label51:
	addiw a1, a0, 4
	li a2, 100000
	bge a1, a2, label55
	j label54
label91:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label95
label94:
	addiw t3, t1, 1
	addw t2, t3, a2
	addw t5, t1, a2
	mulw t2, t5, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 2
	addw t2, t4, t2
	fcvt.s.w f11, t2
	slliw t2, t1, 2
	add t2, s2, t2
	flw f12, 0(t2)
	flw f13, 4(t2)
	fdiv.s f11, f13, f11
	addw t6, a1, t1
	mulw t5, t6, t5
	srliw t6, t5, 31
	add t5, t5, t6
	sraiw t5, t5, 1
	addw t3, t3, t5
	fcvt.s.w f13, t3
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addw t3, t4, a2
	addw t4, t1, a4
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t3, t4
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, t3, a2
	addw t1, t1, a3
	mulw t1, t1, t3
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
	bge a5, t2, label95
	j label94
label95:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label98
	j label105
label113:
	addiw t2, t1, 1
	addw t2, t2, a2
	addw t3, t1, a2
	mulw t2, t3, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	slliw t2, t1, 2
	add t2, s0, t2
	flw f12, 0(t2)
	flw f13, 4(t2)
	fdiv.s f11, f13, f11
	addw t4, a1, t1
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f13, t3
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, t3, a2
	addw t4, t1, a4
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, t3, a2
	addw t1, t1, a3
	mulw t1, t1, t3
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label114
	j label113
label114:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label117
label128:
	addiw t2, t1, 1
	addw t2, t2, a2
	addw t3, t1, a2
	mulw t2, t3, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	slliw t2, t1, 2
	add t2, s0, t2
	flw f12, 0(t2)
	flw f13, 4(t2)
	fdiv.s f11, f13, f11
	addw t4, a1, t1
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f13, t3
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, t3, a2
	addw t4, t1, a4
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, t3, a2
	addw t1, t1, a3
	mulw t1, t1, t3
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label117
	j label128
label90:
	addw t2, a1, t1
	addw t3, t1, a2
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 1
	addw t2, t4, t2
	fcvt.s.w f11, t2
	slliw t2, t1, 2
	add t2, s2, t2
	flw f12, 0(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, t1, a4
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addiw t5, t1, 2
	addw t3, t5, t3
	fcvt.s.w f11, t3
	flw f12, 4(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, t1, a3
	mulw t4, t4, t3
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addiw t1, t1, 3
	addw t1, t1, t4
	fcvt.s.w f11, t1
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t1, a1, a5
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
	bge a5, t2, label91
	j label90
label102:
	addw a3, a1, t1
	addw a4, a2, t1
	mulw a3, a3, a4
	srliw a4, a3, 31
	add a3, a3, a4
	sraiw a4, a3, 1
	addiw a3, t1, 1
	addw a4, a3, a4
	fcvt.s.w f11, a4
	slliw a4, t1, 2
	add a4, s2, a4
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	li a4, 100000
	bge a3, a4, label861
	mv t1, a3
	j label102
label861:
	mv t1, a3
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label45
	addiw a3, a1, 3
	addiw a4, a1, 2
	addiw a2, a1, 1
	li a5, 100000
	bge t1, a5, label84
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label91
	j label90
label117:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label121
label120:
	addiw t2, t1, 1
	addw t2, t2, a2
	addw t3, t1, a2
	mulw t2, t3, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f12, t2
	slliw t2, t1, 2
	add t2, s0, t2
	flw f11, 0(t2)
	flw f13, 4(t2)
	fdiv.s f12, f13, f12
	addw t4, a1, t1
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f13, t3
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addiw t3, t1, 2
	addw t3, t3, a2
	addw t4, t1, a4
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, t3, a2
	addw t1, t1, a3
	mulw t1, t1, t3
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
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
	bge a5, t2, label1019
	j label127
label98:
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label102
label101:
	addiw t3, t1, 1
	addw t2, t3, a2
	addw t4, a2, t1
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 2
	addw t2, t4, t2
	fcvt.s.w f12, t2
	slliw t2, t1, 2
	add t2, s2, t2
	flw f11, 0(t2)
	flw f13, 4(t2)
	fdiv.s f12, f13, f12
	addw t5, a1, t1
	addw t6, t1, a2
	mulw t5, t5, t6
	srliw t6, t5, 31
	add t5, t5, t6
	sraiw t5, t5, 1
	addw t3, t3, t5
	fcvt.s.w f13, t3
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addw t3, t4, a2
	addw t4, a4, t1
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t3, t4
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, t3, a2
	addw t1, a3, t1
	mulw t1, t1, t3
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
	bge a5, t2, label102
	j label101
label30:
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label215
	addiw a3, a1, 3
	addiw a4, a1, 2
	addiw a2, a1, 1
	li a5, 100000
	bge t1, a5, label30
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label14
	j label29
label127:
	addiw t2, t1, 1
	addw t2, t2, a2
	addw t3, a2, t1
	mulw t2, t3, t2
	srliw t3, t2, 31
	add t2, t2, t3
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	slliw t2, t1, 2
	add t2, s0, t2
	flw f12, 0(t2)
	flw f13, 4(t2)
	fdiv.s f11, f13, f11
	addw t3, a1, t1
	addw t4, t1, a2
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f13, t3
	fdiv.s f12, f12, f13
	fadd.s f10, f10, f12
	fadd.s f10, f10, f11
	addiw t3, t1, 2
	addw t3, t3, a2
	addw t4, a4, t1
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t3, t1, 3
	addw t3, t3, a2
	addw t1, a3, t1
	mulw t1, t1, t3
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fcvt.s.w f11, t1
	flw f12, 12(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, a5
	addiw a5, a5, 4
	li t2, 100000
	bge a5, t2, label1019
	j label127
label107:
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label443
	addiw a3, a1, 3
	addiw a4, a1, 2
	addiw a2, a1, 1
	li a5, 100000
	bge t1, a5, label107
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label114
	j label113
label1019:
	mv a3, t1
label124:
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
	bge a3, a4, label1035
	j label124
label1035:
	mv t1, a3
	slliw a1, a1, 2
	add a1, s2, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label443
	addiw a3, a1, 3
	addiw a4, a1, 2
	addiw a2, a1, 1
	li a5, 100000
	bge t1, a5, label107
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label114
	j label113
label84:
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label45
	addiw a3, a1, 3
	addiw a4, a1, 2
	addiw a2, a1, 1
	li a5, 100000
	bge t1, a5, label84
	addiw a5, t1, 4
	li t2, 100000
	bge a5, t2, label91
	j label90
label105:
	addiw t3, t1, 1
	addw t2, t3, a2
	addw t5, t1, a2
	mulw t2, t5, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addiw t4, t1, 2
	addw t2, t4, t2
	fcvt.s.w f12, t2
	slliw t2, t1, 2
	add t2, s2, t2
	flw f11, 0(t2)
	flw f13, 4(t2)
	fdiv.s f12, f13, f12
	addw t6, a1, t1
	mulw t5, t6, t5
	srliw t6, t5, 31
	add t5, t5, t6
	sraiw t5, t5, 1
	addw t3, t3, t5
	fcvt.s.w f13, t3
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	addw t3, t4, a2
	addw t4, t1, a4
	mulw t3, t4, t3
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t4, t3, t4
	fcvt.s.w f11, t4
	flw f12, 8(t2)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t3, t3, a2
	addw t1, t1, a3
	mulw t1, t1, t3
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
	bge a5, t2, label98
	j label105
label54:
	slliw a2, a0, 2
	add a2, s1, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	add a0, s0, a0
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
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label55
	j label54
label55:
	addiw a1, a0, 4
	li a2, 100000
	bge a1, a2, label58
	j label82
label58:
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
	bge a0, a1, label534
	fmv.s f10, f11
	j label58
label534:
	fmv.w.x f10, zero
	mv a0, zero
	addiw a1, zero, 4
	li a2, 100000
	bge a1, a2, label64
label81:
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
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label64
	j label81
label64:
	addiw a1, a0, 4
	li a2, 100000
	bge a1, a2, label67
label80:
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
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label67
	j label80
label67:
	addiw a1, a0, 4
	li a2, 100000
	bge a1, a2, label70
label79:
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
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label70
	j label79
label70:
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label73
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label73
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label73
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label73
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label73
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label73
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label73
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label73
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label73
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label73
label1644:
	slliw a1, a0, 2
	add a1, s0, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label73
	j label1644
label73:
	fdiv.s f12, f11, f10
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f10, f10, f12
pcrel1646:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel1646)
	flw f11, 0(a1)
	flt.s a0, f11, f10
	flw f11, 4(a1)
	flt.s a1, f10, f11
	or a0, a0, a1
	beq a0, zero, label576
	lui a0, 260096
	fmv.w.x f10, a0
	fmv.s f11, f12
	j label74
label576:
	lui a0, 260096
	fmv.w.x f10, a0
	j label77
label74:
	fadd.s f10, f10, f11
	lui a0, 258048
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	fdiv.s f11, f12, f10
	fsub.s f13, f10, f11
pcrel1647:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel1647)
	flw f14, 0(a1)
	flt.s a0, f14, f13
	flw f14, 4(a1)
	flt.s a1, f13, f14
	or a0, a0, a1
	beq a0, zero, label77
	j label74
label77:
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f10, f10, f11
pcrel1648:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1648)
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
	ld s0, -104(t0)
	lui t0, 195
	add t0, t0, sp
	ld s2, 1288(t0)
	lui t0, 293
	add t0, t0, sp
	addi sp, t0, -96
	ret
label82:
	slliw a2, a0, 2
	add a2, s1, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	add a0, s0, a0
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
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label58
	j label82
label50:
	slliw a2, a0, 2
	add a2, s1, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	add a0, s0, a0
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
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label51
	j label50
