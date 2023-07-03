.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	3045472189
.bss
.align 4
Vectortm:
	.zero	400000
.align 4
vectorB:
	.zero	400000
.align 4
vectorA:
	.zero	400000
.text
.globl main
main:
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	li a0, 62
	jal _sysy_starttime
	mv a2, zero
pcrel1669:
	auipc a0, %pcrel_hi(vectorA)
	addi s0, a0, %pcrel_lo(pcrel1669)
pcrel1670:
	auipc a0, %pcrel_hi(vectorB)
	addi s1, a0, %pcrel_lo(pcrel1670)
pcrel1671:
	auipc a0, %pcrel_hi(Vectortm)
	addi a0, a0, %pcrel_lo(pcrel1671)
label2:
	sh2add a1, a2, s0
	lui a3, 260096
	fmv.w.x f10, a3
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
	li a1, 100000
	addiw a2, a2, 16
	bge a2, a1, label210
	j label2
label210:
	mv a1, zero
	fmv.w.x f10, zero
	mv a3, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label215
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t0, 100000
	bge zero, t0, label30
	addiw t0, zero, 4
	li t2, 100000
	bge t0, t2, label15
	j label14
label215:
	fmv.w.x f10, zero
	mv a3, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label438
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t0, 100000
	bge zero, t0, label149
	addiw t0, zero, 4
	li t2, 100000
	bge t0, t2, label133
label148:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, a0
	flw f12, 0(t2)
	addw t4, a5, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t5, t3, 31
	add t3, t3, t5
	addiw t5, t1, 2
	sraiw t3, t3, 1
	addw t3, t3, t5
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addw t3, a4, t1
	fdiv.s f11, f12, f11
	addiw t1, t1, 3
	mulw t4, t4, t3
	flw f12, 8(t2)
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t1, t4, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	addw t1, a3, t0
	fdiv.s f11, f12, f11
	mulw t1, t3, t1
	flw f12, 12(t2)
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label133
	j label148
label14:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	addiw t4, t1, 1
	fdiv.s f11, f12, f11
	addw t4, a2, t4
	flw f12, 4(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	addw t4, a5, t1
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label15
	j label14
label18:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	addiw t4, t1, 1
	fdiv.s f11, f12, f11
	addw t4, a2, t4
	flw f12, 4(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	addw t4, a5, t1
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label19
	j label18
label19:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label324
	j label29
label324:
	mv t0, t1
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label329
	j label28
label329:
	mv a4, t0
label25:
	addw a5, a3, a4
	addw t0, a2, a4
	mulw a5, a5, t0
	srliw t0, a5, 31
	add a5, a5, t0
	sraiw a5, a5, 1
	addw a5, a2, a5
	fcvt.s.w f11, a5
	sh2add a5, a4, s0
	flw f12, 0(a5)
	li a5, 100000
	addiw a4, a4, 1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a4, a5, label345
	j label25
label345:
	mv t1, a4
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label215
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label30
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label15
	j label14
label28:
	addw t2, a3, t0
	addw t3, a2, t0
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	sh2add t2, t0, s0
	flw f12, 0(t2)
	addw t4, a2, t0
	addiw t3, t0, 1
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 4(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	addw t4, a5, t0
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t0, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t0, 3
	fdiv.s f11, f12, f11
	addw t0, a4, t0
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t0, t3, t0
	srliw t3, t0, 31
	add t0, t0, t3
	sraiw t0, t0, 1
	addw t0, a2, t0
	fadd.s f10, f10, f11
	fcvt.s.w f11, t0
	mv t0, t1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label329
	j label28
label133:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label136
	j label147
label136:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label1144
	j label146
label1144:
	mv t0, t1
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label1149
	j label145
label1149:
	mv a4, t0
label142:
	addw a5, a3, a4
	addw t0, a2, a4
	mulw a5, a5, t0
	srliw t0, a5, 31
	add a5, a5, t0
	sraiw t0, a5, 1
	addiw a5, a4, 1
	sh2add a4, a4, a0
	addw t0, t0, a5
	flw f12, 0(a4)
	li a4, 100000
	fcvt.s.w f11, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a5, a4, label1165
	mv a4, a5
	j label142
label1165:
	mv t1, a5
	sh2add a3, a3, s1
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label438
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label149
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label133
	j label148
label145:
	addw t2, a3, t0
	addw t3, a2, t0
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	addiw t3, t0, 1
	sraiw t2, t2, 1
	addw t2, t2, t3
	fcvt.s.w f11, t2
	sh2add t2, t0, a0
	flw f12, 0(t2)
	addw t4, a2, t0
	addw t3, a2, t3
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t0, 2
	addw t4, t4, t3
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t0
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t0, 3
	addw t0, a4, t0
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t0, t3, t0
	srliw t3, t0, 31
	add t0, t0, t3
	sraiw t0, t0, 1
	addw t0, t1, t0
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t0
	mv t0, t1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label1149
	j label145
label147:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, a0
	flw f12, 0(t2)
	addw t4, a2, t4
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 2
	addw t4, t4, t3
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t1, a4, t1
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label136
	j label147
label29:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	addiw t4, t1, 1
	fdiv.s f11, f12, f11
	addw t4, a2, t4
	flw f12, 4(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	addw t4, a5, t1
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label324
	j label29
label15:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label19
	j label18
label30:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label215
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label30
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label15
	j label14
label438:
	fmv.w.x f10, zero
	mv a3, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label443
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t0, 100000
	bge zero, t0, label107
	addiw t0, zero, 4
	li t2, 100000
	bge t0, t2, label114
	j label113
label443:
	fmv.w.x f10, zero
	mv a3, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label45
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t0, 100000
	bge zero, t0, label84
	addiw t0, zero, 4
	li t2, 100000
	bge t0, t2, label91
	j label90
label45:
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label46
	fmv.w.x f10, zero
	mv a3, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label215
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t0, 100000
	bge zero, t0, label30
	addiw t0, zero, 4
	li t2, 100000
	bge t0, t2, label15
	j label14
label46:
	li a0, 76
	jal _sysy_stoptime
	mv a1, zero
	fmv.w.x f10, zero
	addiw a0, zero, 4
	li a2, 100000
	bge a0, a2, label50
	j label82
label113:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s1
	flw f12, 0(t2)
	addiw t4, t1, 1
	fdiv.s f11, f12, f11
	addw t4, a2, t4
	flw f12, 4(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	addw t4, a5, t1
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label114
	j label113
label149:
	sh2add a3, a3, s1
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label438
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label149
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label133
	j label148
label146:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, a0
	flw f12, 0(t2)
	addw t4, a2, t4
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 2
	addw t4, t4, t3
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t1, a4, t1
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label1144
	j label146
label114:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label117
	j label128
label117:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label971
	j label120
label971:
	mv t0, t1
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label1019
	j label127
label1019:
	mv a4, t0
label124:
	addw a5, a3, a4
	addw t0, a2, a4
	mulw a5, a5, t0
	srliw t0, a5, 31
	add a5, a5, t0
	sraiw a5, a5, 1
	addw a5, a2, a5
	fcvt.s.w f11, a5
	sh2add a5, a4, s1
	flw f12, 0(a5)
	li a5, 100000
	addiw a4, a4, 1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a4, a5, label1035
	j label124
label1035:
	mv t1, a4
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label443
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label107
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label114
	j label113
label120:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s1
	flw f12, 0(t2)
	addiw t4, t1, 1
	fdiv.s f11, f12, f11
	addw t4, a2, t4
	flw f12, 4(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	addw t4, a5, t1
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label971
	j label120
label127:
	addw t2, a3, t0
	addw t3, a2, t0
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	sh2add t2, t0, s1
	flw f12, 0(t2)
	addw t4, a2, t0
	addiw t3, t0, 1
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 4(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	addw t4, a5, t0
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t0, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t0, 3
	fdiv.s f11, f12, f11
	addw t0, a4, t0
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t0, t3, t0
	srliw t3, t0, 31
	add t0, t0, t3
	sraiw t0, t0, 1
	addw t0, a2, t0
	fadd.s f10, f10, f11
	fcvt.s.w f11, t0
	mv t0, t1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label1019
	j label127
label128:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	sh2add t2, t1, s1
	flw f12, 0(t2)
	addiw t4, t1, 1
	fdiv.s f11, f12, f11
	addw t4, a2, t4
	flw f12, 4(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	addw t4, a5, t1
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label117
	j label128
label107:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label443
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label107
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label114
	j label113
label91:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label95
	j label94
label95:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label796
	j label105
label796:
	mv t0, t1
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label801
	j label101
label801:
	mv a4, t0
label102:
	addw a5, a3, a4
	addw t0, a2, a4
	mulw a5, a5, t0
	srliw t0, a5, 31
	add a5, a5, t0
	sraiw t0, a5, 1
	addiw a5, a4, 1
	sh2add a4, a4, a0
	addw t0, t0, a5
	flw f12, 0(a4)
	li a4, 100000
	fcvt.s.w f11, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a5, a4, label861
	mv a4, a5
	j label102
label861:
	mv t1, a5
	sh2add a3, a3, s0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label45
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label84
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label91
	j label90
label105:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, a0
	flw f12, 0(t2)
	addw t4, a2, t4
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 2
	addw t4, t4, t3
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t1, a4, t1
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label796
	j label105
label94:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, a0
	flw f12, 0(t2)
	addw t4, a2, t4
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 2
	addw t4, t4, t3
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t1, a4, t1
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label95
	j label94
label101:
	addw t2, a3, t0
	addw t3, a2, t0
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	addiw t3, t0, 1
	sraiw t2, t2, 1
	addw t2, t2, t3
	fcvt.s.w f11, t2
	sh2add t2, t0, a0
	flw f12, 0(t2)
	addw t4, a2, t0
	addw t3, a2, t3
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t0, 2
	addw t4, t4, t3
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t0
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t0, 3
	addw t0, a4, t0
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t0, t3, t0
	srliw t3, t0, 31
	add t0, t0, t3
	sraiw t0, t0, 1
	addw t0, t1, t0
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t0
	mv t0, t1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label801
	j label101
label90:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	fcvt.s.w f11, t2
	sh2add t2, t1, a0
	flw f12, 0(t2)
	addw t4, a5, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t5, t3, 31
	add t3, t3, t5
	addiw t5, t1, 2
	sraiw t3, t3, 1
	addw t3, t3, t5
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addw t3, a4, t1
	fdiv.s f11, f12, f11
	addiw t1, t1, 3
	mulw t4, t4, t3
	flw f12, 8(t2)
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t1, t4, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	addw t1, a3, t0
	fdiv.s f11, f12, f11
	mulw t1, t3, t1
	flw f12, 12(t2)
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label91
	j label90
label84:
	sh2add a3, a3, s0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label45
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label84
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label91
	j label90
label50:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label53
	j label81
label53:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label469
	j label56
label469:
	mv a0, a1
	sh2add a1, a1, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label508
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label508
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label508
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label508
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label508
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label508
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label508
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label508
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label508
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label508
label1664:
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label508
	j label1664
label508:
	fmv.w.x f11, zero
	mv a1, zero
	addiw a0, zero, 4
	li a2, 100000
	bge a0, a2, label64
	j label63
label64:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label536
	j label67
label81:
	sh2add a2, a1, s0
	flw f11, 0(a2)
	sh2add a1, a1, s1
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
	mv a1, a0
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label53
	j label81
label82:
	sh2add a2, a1, s0
	flw f11, 0(a2)
	sh2add a1, a1, s1
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
	mv a1, a0
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label50
	j label82
label536:
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label71
	j label80
label67:
	sh2add a1, a1, s1
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
	mv a1, a0
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label536
	j label67
label71:
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label74
label1665:
	sh2add a1, a0, s1
	flw f12, 0(a1)
	li a1, 100000
	addiw a0, a0, 1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label74
	j label1665
label74:
	fdiv.s f10, f10, f11
	lui a0, 260096
	fmv.w.x f11, a0
pcrel1672:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1672)
	flw f12, 0(a0)
	fsub.s f11, f11, f10
	flt.s a1, f12, f11
	flw f12, 4(a0)
	flt.s a0, f11, f12
	or a0, a1, a0
	beq a0, zero, label584
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
	j label75
label584:
	lui a0, 260096
	fmv.w.x f11, a0
	j label78
label75:
	fadd.s f11, f11, f12
	lui a0, 258048
	fmv.w.x f12, a0
pcrel1673:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1673)
	flw f14, 0(a0)
	fmul.s f11, f11, f12
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a1, f14, f13
	flw f14, 4(a0)
	flt.s a0, f13, f14
	or a0, a1, a0
	beq a0, zero, label78
	j label75
label63:
	sh2add a1, a1, s1
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
	mv a1, a0
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label64
	j label63
label80:
	sh2add a0, a0, s1
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
	mv a0, a1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label71
	j label80
label56:
	sh2add a2, a1, s0
	flw f11, 0(a2)
	sh2add a1, a1, s1
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
	mv a1, a0
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label469
	j label56
label78:
	lui a0, 260096
	fmv.w.x f10, a0
pcrel1674:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fsub.s f10, f11, f10
	addi a0, a0, %pcrel_lo(pcrel1674)
	flw f11, 0(a0)
	fle.s a1, f10, f11
	flw f11, 4(a0)
	fle.s a0, f11, f10
	and a0, a1, a0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
