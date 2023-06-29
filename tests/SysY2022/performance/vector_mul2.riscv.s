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
	addi sp, t0, 16
	lui t0, 293
	add t0, t0, sp
	sd s1, -56(t0)
	sd s6, 32(sp)
	sd s7, 56(sp)
	sd s0, 40(sp)
	lui t0, 195
	add t0, t0, sp
	sd s5, 1344(t0)
	sd s2, 0(sp)
	sd s3, 48(sp)
	sd s4, 8(sp)
	sd s8, 16(sp)
	sd s9, 24(sp)
	lui t0, 293
	add t0, t0, sp
	sd s10, -24(t0)
	lui t0, 293
	add t0, t0, sp
	sd s11, -32(t0)
	lui t0, 293
	add t0, t0, sp
	sd ra, -40(t0)
	lui t0, 98
	add t0, t0, sp
	addi s1, t0, -1344
	addi s7, sp, 64
	lui t0, 293
	add t0, t0, sp
	sd s7, -48(t0)
	lui t0, 195
	add t0, t0, sp
	addi s0, t0, 1352
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
	bge a0, a1, label210
	j label2
label210:
	mv a0, zero
	fmv.w.x f10, zero
	mv a1, zero
	mv s6, zero
	li a2, 100000
	bge zero, a2, label215
	j label10
label215:
	fmv.w.x f10, zero
	mv a1, zero
	mv s6, zero
	li a2, 100000
	bge zero, a2, label978
	j label129
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
label14:
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
	bge s5, s7, label15
	j label14
label15:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label19
	j label18
label30:
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label215
	j label10
label978:
	fmv.w.x f10, zero
	mv a1, zero
	mv s6, zero
	li a2, 100000
	bge zero, a2, label983
	j label106
label983:
	fmv.w.x f10, zero
	mv a1, zero
	mv s6, zero
	li a2, 100000
	bge zero, a2, label45
	j label83
label45:
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label46
	fmv.w.x f10, zero
	mv a1, zero
	mv s6, zero
	li a2, 100000
	bge zero, a2, label215
	j label10
label46:
	li a0, 76
	jal _sysy_stoptime
	fmv.w.x f10, zero
	mv a0, zero
	addiw a1, zero, 16
	li a2, 100000
	bge a1, a2, label51
	j label50
label51:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label55
	j label54
label83:
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
	bge s6, s5, label103
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label88
	j label87
label88:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label92
	j label91
label92:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label1958
	j label95
label1958:
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label100
label99:
	addiw s8, s5, 1
	addw s7, s8, a2
	addw s9, a2, s5
	mulw s7, s9, s7
	srliw s9, s7, 31
	add s7, s7, s9
	sraiw s7, s7, 1
	addiw s9, s5, 2
	addw s7, s9, s7
	fcvt.s.w f12, s7
	slliw s7, s5, 2
	add s7, s1, s7
	flw f11, 0(s7)
	flw f13, 4(s7)
	fdiv.s f12, f13, f12
	addw s10, a1, s5
	addw s11, s5, a2
	mulw s10, s10, s11
	srliw s11, s10, 31
	add s10, s10, s11
	sraiw s10, s10, 1
	addw s8, s8, s10
	fcvt.s.w f13, s8
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
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
	bge s6, s7, label100
	j label99
label106:
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
	bge s6, s5, label107
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label113
	j label128
label129:
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
	bge s6, s5, label130
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label137
	j label136
label137:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label141
	j label140
label100:
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
	bge a3, a4, label2330
	mv s5, a3
	j label100
label2330:
	mv s6, a3
label103:
	slliw a1, a1, 2
	add a1, s0, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label45
	j label83
label113:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label117
	j label116
label117:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label2543
	j label127
label2543:
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label2548
	j label123
label2548:
	mv a3, s5
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
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a4, s7, a4
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw a3, a3, 1
	li a4, 100000
	bge a3, a4, label2740
	j label124
label2740:
	mv s6, a3
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label983
	j label106
label19:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label600
label29:
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
	bge s5, s7, label600
	j label29
label600:
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label605
	j label25
label605:
	mv a3, s5
	j label26
label25:
	addiw s7, s5, 1
	addw s7, s7, a2
	addw s8, a2, s5
	mulw s7, s8, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f12, s7
	slliw s7, s5, 2
	add s7, s0, s7
	flw f11, 0(s7)
	flw f13, 4(s7)
	fdiv.s f12, f13, f12
	addw s8, a1, s5
	addw s9, s5, a2
	mulw s8, s8, s9
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f13, s8
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
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
	bge s6, s7, label605
	j label25
label26:
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
	bge a3, a4, label797
	j label26
label797:
	mv s6, a3
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label215
	j label10
label18:
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
	bge s5, s7, label19
	j label18
label136:
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
	addw s8, s6, a4
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 14
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, a3
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s6, s6, 15
	addw s6, s6, s8
	fcvt.s.w f11, s6
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s6, a1, s5
	mulw s6, s9, s6
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
	bge s5, s7, label137
	j label136
label141:
	addiw s5, s6, 16
	li s7, 100000
	bge s5, s7, label3462
	j label151
label3462:
	mv s5, s6
	addiw s6, s6, 16
	li s7, 100000
	bge s6, s7, label148
label147:
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
	bge s6, s7, label148
	j label147
label148:
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
	bge a3, a4, label3659
	mv s5, a3
	j label148
label3659:
	mv s6, a3
	slliw a1, a1, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label978
	j label129
label151:
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
	bge s5, s7, label3462
	j label151
label140:
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
	bge s5, s7, label141
	j label140
label127:
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
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
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
	bge s5, s7, label2543
	j label127
label128:
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
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
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
	bge s5, s7, label113
	j label128
label123:
	addiw s7, s5, 1
	addw s7, s7, a2
	addw s8, a2, s5
	mulw s7, s8, s7
	srliw s8, s7, 31
	add s7, s7, s8
	sraiw s7, s7, 1
	addw s7, a2, s7
	fcvt.s.w f12, s7
	slliw s8, s5, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add s7, s7, s8
	flw f11, 0(s7)
	flw f13, 4(s7)
	fdiv.s f12, f13, f12
	addw s8, a1, s5
	addw s9, s5, a2
	mulw s8, s8, s9
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addw s8, a2, s8
	fcvt.s.w f13, s8
	fdiv.s f11, f11, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
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
	bge s6, s7, label2548
	j label123
label116:
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
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
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
	bge s5, s7, label117
	j label116
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
	addw s8, s6, t4
	mulw s9, s9, s8
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
	addw s10, s6, t1
	mulw s8, s8, s10
	srliw s9, s8, 31
	add s8, s8, s9
	sraiw s8, s8, 1
	addiw s9, s6, 12
	addw s8, s9, s8
	fcvt.s.w f11, s8
	flw f12, 44(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, a5
	mulw s8, s10, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s10, s6, 13
	addw s8, s10, s8
	fcvt.s.w f11, s8
	flw f12, 48(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s8, s6, a4
	mulw s9, s9, s8
	srliw s10, s9, 31
	add s9, s9, s10
	sraiw s9, s9, 1
	addiw s10, s6, 14
	addw s9, s10, s9
	fcvt.s.w f11, s9
	flw f12, 52(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s9, s6, a3
	mulw s8, s8, s9
	srliw s10, s8, 31
	add s8, s8, s10
	sraiw s8, s8, 1
	addiw s6, s6, 15
	addw s6, s6, s8
	fcvt.s.w f11, s6
	flw f12, 56(s7)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw s6, a1, s5
	mulw s6, s9, s6
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
	bge s5, s7, label88
	j label87
label91:
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
	bge s5, s7, label92
	j label91
label95:
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
	bge s5, s7, label1958
	j label95
label130:
	slliw a1, a1, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label978
	j label129
label107:
	slliw a1, a1, 2
	add a1, s1, a1
	fsw f10, 0(a1)
	mv a1, a2
	li a2, 100000
	bge a1, a2, label983
	j label106
label55:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label59
	j label58
label59:
	slliw a1, a0, 2
	add a1, s0, a1
	flw f11, 0(a1)
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f11, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label1316
	fmv.s f10, f11
	j label59
label1316:
	fmv.w.x f10, zero
	mv a0, zero
	addiw a1, zero, 16
	li a2, 100000
	bge a1, a2, label65
label82:
	slliw a0, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
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
	bge a1, a2, label65
	j label82
label65:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label69
	j label68
label69:
	addiw a1, a0, 16
	li a2, 100000
	bge a1, a2, label72
label81:
	slliw a0, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
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
	bge a1, a2, label72
	j label81
label72:
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label75
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label75
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label75
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label75
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label75
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label75
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label75
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label75
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label75
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label75
label4505:
	slliw a1, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
	add a1, s7, a1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f10, f10, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label75
	j label4505
label75:
	fdiv.s f12, f11, f10
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f10, f10, f12
pcrel4507:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel4507)
	flw f11, 0(a1)
	flt.s a0, f11, f10
	flw f11, 4(a1)
	flt.s a1, f10, f11
	or a0, a0, a1
	beq a0, zero, label1423
	lui a0, 260096
	fmv.w.x f10, a0
	fmv.s f11, f12
	j label78
label1423:
	lui a0, 260096
	fmv.w.x f10, a0
	j label76
label78:
	fadd.s f10, f10, f11
	lui a0, 258048
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	fdiv.s f11, f12, f10
	fsub.s f13, f10, f11
pcrel4508:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel4508)
	flw f14, 0(a0)
	flt.s a1, f14, f13
	flw f14, 4(a0)
	flt.s a0, f13, f14
	or a0, a1, a0
	beq a0, zero, label76
	j label78
label68:
	slliw a0, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
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
	bge a1, a2, label69
	j label68
label58:
	slliw a2, a0, 2
	add a2, s0, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
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
	bge a1, a2, label59
	j label58
label54:
	slliw a2, a0, 2
	add a2, s0, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
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
	bge a1, a2, label55
	j label54
label50:
	slliw a2, a0, 2
	add a2, s0, a2
	flw f11, 0(a2)
	slliw a0, a0, 2
	lui t0, 293
	add t0, t0, sp
	ld s7, -48(t0)
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
	bge a1, a2, label51
	j label50
label76:
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f10, f10, f11
pcrel4509:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel4509)
	flw f11, 0(a1)
	fle.s a0, f10, f11
	flw f11, 4(a1)
	fle.s a1, f11, f10
	and a0, a0, a1
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	lui t0, 293
	add t0, t0, sp
	ld ra, -40(t0)
	lui t0, 293
	add t0, t0, sp
	ld s11, -32(t0)
	lui t0, 293
	add t0, t0, sp
	ld s10, -24(t0)
	ld s9, 24(sp)
	ld s8, 16(sp)
	ld s4, 8(sp)
	ld s3, 48(sp)
	ld s2, 0(sp)
	lui t0, 195
	add t0, t0, sp
	ld s5, 1344(t0)
	ld s0, 40(sp)
	ld s7, 56(sp)
	ld s6, 32(sp)
	lui t0, 293
	add t0, t0, sp
	ld s1, -56(t0)
	lui t0, 293
	add t0, t0, sp
	addi sp, t0, -16
	ret
