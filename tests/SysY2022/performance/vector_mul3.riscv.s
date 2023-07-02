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
pcrel1672:
	auipc a0, %pcrel_hi(vectorA)
	addi s0, a0, %pcrel_lo(pcrel1672)
pcrel1673:
	auipc a0, %pcrel_hi(vectorB)
	addi s1, a0, %pcrel_lo(pcrel1673)
pcrel1674:
	auipc a0, %pcrel_hi(Vectortm)
	addi a0, a0, %pcrel_lo(pcrel1674)
	mv a2, zero
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
	addiw a2, a2, 16
	li a1, 100000
	bge a2, a1, label210
	j label2
label210:
	mv a1, zero
	fmv.w.x f10, zero
	mv a3, zero
	mv t2, zero
	li a2, 100000
	bge zero, a2, label215
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t1, 100000
	bge zero, t1, label30
	addiw t1, zero, 4
	li t3, 100000
	bge t1, t3, label14
	j label29
label215:
	fmv.w.x f10, zero
	mv a3, zero
	mv t2, zero
	li a2, 100000
	bge zero, a2, label438
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t1, 100000
	bge zero, t1, label130
	addiw t1, zero, 4
	li t3, 100000
	bge t1, t3, label137
	j label136
label29:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	sh2add t3, t2, s0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t5, t2, 1
	addw t5, a2, t5
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 2
	addw t4, a2, t4
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 3
	addw t4, a2, t4
	addw t2, a4, t2
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label14
	j label29
label30:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label215
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label30
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label14
	j label29
label137:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label140
	j label151
label146:
	addw a5, a3, a4
	addw t1, a2, a4
	mulw a5, a5, t1
	srliw t1, a5, 31
	add a5, a5, t1
	sraiw t1, a5, 1
	addiw a5, a4, 1
	addw t1, t1, a5
	fcvt.s.w f11, t1
	sh2add a4, a4, a0
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	li a4, 100000
	bge a5, a4, label1208
	mv a4, a5
	j label146
label1208:
	mv t2, a5
	sh2add a3, a3, s1
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label438
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label130
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label137
	j label136
label140:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label1187
	j label150
label1187:
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label1192
	j label149
label1192:
	mv a4, t1
	j label146
label149:
	addw t3, a3, t1
	addw t4, a2, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addiw t4, t1, 1
	addw t3, t3, t4
	fcvt.s.w f11, t3
	sh2add t3, t1, a0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t5, a2, t1
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t1, 2
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t5, a5, t1
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t1, 3
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t1, a4, t1
	mulw t1, t4, t1
	srliw t4, t1, 31
	add t1, t1, t4
	sraiw t1, t1, 1
	addw t1, t2, t1
	fcvt.s.w f11, t1
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label1192
	j label149
label14:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label17
	j label28
label17:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label238
	j label27
label238:
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label243
	j label26
label243:
	mv a4, t1
label23:
	addw a5, a3, a4
	addw t1, a2, a4
	mulw a5, a5, t1
	srliw t1, a5, 31
	add a5, a5, t1
	sraiw a5, a5, 1
	addw a5, a2, a5
	fcvt.s.w f11, a5
	sh2add a5, a4, s0
	flw f12, 0(a5)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw a4, a4, 1
	li a5, 100000
	bge a4, a5, label259
	j label23
label259:
	mv t2, a4
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label215
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label30
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label14
	j label29
label438:
	fmv.w.x f10, zero
	mv a3, zero
	mv t2, zero
	li a2, 100000
	bge zero, a2, label443
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t1, 100000
	bge zero, t1, label61
	addiw t1, zero, 4
	li t3, 100000
	bge t1, t3, label46
	j label45
label443:
	fmv.w.x f10, zero
	mv a3, zero
	mv t2, zero
	li a2, 100000
	bge zero, a2, label68
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t1, 100000
	bge zero, t1, label107
	addiw t1, zero, 4
	li t3, 100000
	bge t1, t3, label114
	j label113
label136:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addiw t5, t2, 1
	addw t3, t3, t5
	fcvt.s.w f11, t3
	sh2add t3, t2, a0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t6, t4, 31
	add t4, t4, t6
	sraiw t4, t4, 1
	addiw t6, t2, 2
	addw t4, t4, t6
	fcvt.s.w f11, t4
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a4, t2
	mulw t5, t5, t4
	srliw t6, t5, 31
	add t5, t5, t6
	sraiw t5, t5, 1
	addiw t2, t2, 3
	addw t2, t5, t2
	fcvt.s.w f11, t2
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t2, a3, t1
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, t1, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label137
	j label136
label27:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	sh2add t3, t2, s0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t5, t2, 1
	addw t5, a2, t5
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 2
	addw t4, a2, t4
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 3
	addw t4, a2, t4
	addw t2, a4, t2
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label238
	j label27
label28:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	sh2add t3, t2, s0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t5, t2, 1
	addw t5, a2, t5
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 2
	addw t4, a2, t4
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 3
	addw t4, a2, t4
	addw t2, a4, t2
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label17
	j label28
label26:
	addw t3, a3, t1
	addw t4, a2, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	sh2add t3, t1, s0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 1
	addw t4, a2, t4
	addw t5, a2, t1
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 2
	addw t4, a2, t4
	addw t5, a5, t1
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 3
	addw t4, a2, t4
	addw t1, a4, t1
	mulw t1, t4, t1
	srliw t4, t1, 31
	add t1, t1, t4
	sraiw t1, t1, 1
	addw t1, a2, t1
	fcvt.s.w f11, t1
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label243
	j label26
label151:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addiw t5, t2, 1
	addw t3, t3, t5
	fcvt.s.w f11, t3
	sh2add t3, t2, a0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t5, a2, t5
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t2, 2
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t2, 3
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t2, a4, t2
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, t1, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label140
	j label151
label68:
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label69
	fmv.w.x f10, zero
	mv a3, zero
	mv t2, zero
	li a2, 100000
	bge zero, a2, label215
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t1, 100000
	bge zero, t1, label30
	addiw t1, zero, 4
	li t3, 100000
	bge t1, t3, label14
	j label29
label69:
	li a0, 76
	jal _sysy_stoptime
	fmv.w.x f10, zero
	mv a1, zero
	addiw a0, zero, 4
	li a2, 100000
	bge a0, a2, label74
label73:
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
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label74
	j label73
label74:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label77
label105:
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
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label77
	j label105
label113:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addiw t5, t2, 1
	addw t3, t3, t5
	fcvt.s.w f11, t3
	sh2add t3, t2, a0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t6, t4, 31
	add t4, t4, t6
	sraiw t4, t4, 1
	addiw t6, t2, 2
	addw t4, t4, t6
	fcvt.s.w f11, t4
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a4, t2
	mulw t5, t5, t4
	srliw t6, t5, 31
	add t5, t5, t6
	sraiw t5, t5, 1
	addiw t2, t2, 3
	addw t2, t5, t2
	fcvt.s.w f11, t2
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t2, a3, t1
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, t1, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label114
	j label113
label150:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addiw t5, t2, 1
	addw t3, t3, t5
	fcvt.s.w f11, t3
	sh2add t3, t2, a0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t5, a2, t5
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t2, 2
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t2, 3
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t2, a4, t2
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, t1, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label1187
	j label150
label130:
	sh2add a3, a3, s1
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label438
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label130
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label137
	j label136
label45:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	sh2add t3, t2, s1
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t5, t2, 1
	addw t5, a2, t5
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 2
	addw t4, a2, t4
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 3
	addw t4, a2, t4
	addw t2, a4, t2
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label46
	j label45
label46:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label50
label49:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	sh2add t3, t2, s1
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t5, t2, 1
	addw t5, a2, t5
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 2
	addw t4, a2, t4
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 3
	addw t4, a2, t4
	addw t2, a4, t2
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label50
	j label49
label50:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label552
label60:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	sh2add t3, t2, s1
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t5, t2, 1
	addw t5, a2, t5
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 2
	addw t4, a2, t4
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t2, 3
	addw t4, a2, t4
	addw t2, a4, t2
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, a2, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label552
	j label60
label61:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label443
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label61
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label46
	j label45
label552:
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label557
	j label59
label557:
	mv a4, t1
label56:
	addw a5, a3, a4
	addw t1, a2, a4
	mulw a5, a5, t1
	srliw t1, a5, 31
	add a5, a5, t1
	sraiw a5, a5, 1
	addw a5, a2, a5
	fcvt.s.w f11, a5
	sh2add a5, a4, s1
	flw f12, 0(a5)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw a4, a4, 1
	li a5, 100000
	bge a4, a5, label573
	j label56
label573:
	mv t2, a4
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label443
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label61
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label46
	j label45
label59:
	addw t3, a3, t1
	addw t4, a2, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fcvt.s.w f11, t3
	sh2add t3, t1, s1
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 1
	addw t4, a2, t4
	addw t5, a2, t1
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 2
	addw t4, a2, t4
	addw t5, a5, t1
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t4, a2, t4
	fcvt.s.w f11, t4
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t4, t1, 3
	addw t4, a2, t4
	addw t1, a4, t1
	mulw t1, t4, t1
	srliw t4, t1, 31
	add t1, t1, t4
	sraiw t1, t1, 1
	addw t1, a2, t1
	fcvt.s.w f11, t1
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label557
	j label59
label107:
	sh2add a3, a3, s0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label68
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label107
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label114
	j label113
label114:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label117
	j label128
label117:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label971
	j label120
label971:
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label1019
	j label127
label120:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addiw t5, t2, 1
	addw t3, t3, t5
	fcvt.s.w f11, t3
	sh2add t3, t2, a0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t5, a2, t5
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t2, 2
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t2, 3
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t2, a4, t2
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, t1, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label971
	j label120
label128:
	addw t3, a3, t2
	addw t4, a2, t2
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t3, t3, t5
	sraiw t3, t3, 1
	addiw t5, t2, 1
	addw t3, t3, t5
	fcvt.s.w f11, t3
	sh2add t3, t2, a0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t5, a2, t5
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t2, 2
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t5, a5, t2
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t2, 3
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t2, a4, t2
	mulw t2, t4, t2
	srliw t4, t2, 31
	add t2, t2, t4
	sraiw t2, t2, 1
	addw t2, t1, t2
	fcvt.s.w f11, t2
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t2, t1
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label117
	j label128
label127:
	addw t3, a3, t1
	addw t4, a2, t1
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addiw t4, t1, 1
	addw t3, t3, t4
	fcvt.s.w f11, t3
	sh2add t3, t1, a0
	flw f12, 0(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t5, a2, t1
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t1, 2
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 4(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t5, a5, t1
	mulw t4, t4, t5
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t5, t4, 1
	addiw t4, t1, 3
	addw t5, t5, t4
	fcvt.s.w f11, t5
	flw f12, 8(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addw t4, a2, t4
	addw t1, a4, t1
	mulw t1, t4, t1
	srliw t4, t1, 31
	add t1, t1, t4
	sraiw t1, t1, 1
	addw t1, t2, t1
	fcvt.s.w f11, t1
	flw f12, 12(t3)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label1019
	j label127
label1019:
	mv a4, t1
label124:
	addw a5, a3, a4
	addw t1, a2, a4
	mulw a5, a5, t1
	srliw t1, a5, 31
	add a5, a5, t1
	sraiw t1, a5, 1
	addiw a5, a4, 1
	addw t1, t1, a5
	fcvt.s.w f11, t1
	sh2add a4, a4, a0
	flw f12, 0(a4)
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	li a4, 100000
	bge a5, a4, label1035
	mv a4, a5
	j label124
label1035:
	mv t2, a5
	sh2add a3, a3, s0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label68
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label107
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label114
	j label113
label77:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label713
	j label104
label713:
	mv a0, a1
	sh2add a1, a1, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label726
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label726
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label726
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label726
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label726
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label726
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label726
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label726
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label726
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label726
label1665:
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label726
	j label1665
label726:
	fmv.w.x f11, zero
	mv a1, zero
	addiw a0, zero, 4
	li a2, 100000
	bge a0, a2, label87
label86:
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
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label87
	j label86
label87:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label754
	j label103
label754:
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label94
label93:
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
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label94
	j label93
label94:
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label97
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label97
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label97
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label97
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label97
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label97
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label97
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label97
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label97
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label97
label1667:
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label97
	j label1667
label97:
	fdiv.s f10, f10, f11
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f11, f11, f10
pcrel1675:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1675)
	flw f12, 0(a0)
	flt.s a1, f12, f11
	flw f12, 4(a0)
	flt.s a0, f11, f12
	or a0, a1, a0
	beq a0, zero, label802
	lui a0, 260096
	fmv.w.x f11, a0
	fmv.s f12, f10
	j label98
label802:
	lui a0, 260096
	fmv.w.x f11, a0
	j label101
label98:
	fadd.s f11, f11, f12
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f11, f11, f12
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
pcrel1676:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1676)
	flw f14, 0(a0)
	flt.s a1, f14, f13
	flw f14, 4(a0)
	flt.s a0, f13, f14
	or a0, a1, a0
	beq a0, zero, label101
	j label98
label103:
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
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label754
	j label103
label104:
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
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label713
	j label104
label101:
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f10, f11, f10
pcrel1677:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1677)
	flw f11, 0(a0)
	fle.s a1, f10, f11
	flw f11, 4(a0)
	fle.s a0, f11, f10
	and a0, a1, a0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
