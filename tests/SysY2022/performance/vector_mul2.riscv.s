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
pcrel1658:
	auipc a0, %pcrel_hi(vectorA)
	addi s0, a0, %pcrel_lo(pcrel1658)
pcrel1659:
	auipc a0, %pcrel_hi(vectorB)
	addi s1, a0, %pcrel_lo(pcrel1659)
pcrel1660:
	auipc a0, %pcrel_hi(Vectortm)
	addi a0, a0, %pcrel_lo(pcrel1660)
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
	bge t1, t3, label15
	j label14
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
	bge t1, t3, label136
	j label151
label15:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label18
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
	bge t1, t3, label15
	j label14
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
	bge zero, t1, label107
	addiw t1, zero, 4
	li t3, 100000
	bge t1, t3, label113
	j label128
label443:
	fmv.w.x f10, zero
	mv a3, zero
	mv t2, zero
	li a2, 100000
	bge zero, a2, label45
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t1, 100000
	bge zero, t1, label84
	addiw t1, zero, 4
	li t3, 100000
	bge t1, t3, label91
	j label90
label45:
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label46
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
	bge t1, t3, label15
	j label14
label46:
	li a0, 76
	jal _sysy_stoptime
	fmv.w.x f10, zero
	mv a1, zero
	addiw a0, zero, 4
	li a2, 100000
	bge a0, a2, label51
	j label50
label51:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label55
	j label54
label136:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label140
label139:
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
	j label139
label140:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label1189
	j label143
label1189:
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label1237
	j label147
label1237:
	mv a4, t1
label148:
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
	bge a5, a4, label1297
	mv a4, a5
	j label148
label1297:
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
	bge t1, t3, label136
	j label151
label14:
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
	bge t1, t3, label15
	j label14
label25:
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
	bge a4, a5, label346
	j label25
label346:
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
	bge t1, t3, label15
	j label14
label90:
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
	bge t1, t3, label91
	j label90
label102:
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
	bge a5, a4, label861
	mv a4, a5
	j label102
label861:
	mv t2, a5
	sh2add a3, a3, s0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label45
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label84
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label91
	j label90
label18:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label281
	j label28
label281:
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label286
	j label24
label286:
	mv a4, t1
	j label25
label24:
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
	bge t2, t3, label286
	j label24
label113:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label116
	j label127
label116:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label928
	j label119
label928:
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label976
	j label126
label119:
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
	bge t1, t3, label928
	j label119
label976:
	mv a4, t1
	j label123
label126:
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
	bge t2, t3, label976
	j label126
label123:
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
	bge a4, a5, label992
	j label123
label992:
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
	bge t2, t1, label107
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label113
	j label128
label91:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label95
label94:
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
	bge t1, t3, label95
	j label94
label95:
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label796
	j label105
label796:
	mv t1, t2
	addiw t2, t2, 4
	li t3, 100000
	bge t2, t3, label801
	j label101
label801:
	mv a4, t1
	j label102
label105:
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
	bge t1, t3, label796
	j label105
label147:
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
	bge t2, t3, label1237
	j label147
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
	bge t1, t3, label136
	j label151
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
	bge t1, t3, label136
	j label151
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
	bge t1, t3, label281
	j label28
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
	bge t1, t3, label18
	j label29
label143:
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
	bge t1, t3, label1189
	j label143
label128:
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
	bge t1, t3, label113
	j label128
label127:
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
	bge t1, t3, label116
	j label127
label107:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label443
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label107
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label113
	j label128
label101:
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
	bge t2, t3, label801
	j label101
label84:
	sh2add a3, a3, s0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label45
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label84
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label91
	j label90
label54:
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
	bge a0, a2, label55
	j label54
label55:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label521
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
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label521
	j label82
label521:
	mv a0, a1
	sh2add a1, a1, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label534
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label534
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label534
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label534
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label534
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label534
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label534
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label534
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label534
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label534
	j label1653
label534:
	fmv.w.x f11, zero
	mv a1, zero
	addiw a0, zero, 4
	li a2, 100000
	bge a0, a2, label64
label81:
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
	bge a0, a2, label64
	j label81
label1653:
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label534
	j label1653
label64:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label545
	j label67
label545:
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label71
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
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label71
	j label80
label71:
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label74
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label74
label1654:
	sh2add a1, a0, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 1
	li a1, 100000
	bge a0, a1, label74
	j label1654
label74:
	fdiv.s f10, f10, f11
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f11, f11, f10
pcrel1661:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1661)
	flw f12, 0(a0)
	flt.s a1, f12, f11
	flw f12, 4(a0)
	flt.s a0, f11, f12
	or a0, a1, a0
	beq a0, zero, label593
	lui a0, 260096
	fmv.w.x f11, a0
	fmv.s f12, f10
	j label75
label593:
	lui a0, 260096
	fmv.w.x f11, a0
	j label78
label75:
	fadd.s f11, f11, f12
	lui a0, 258048
	fmv.w.x f12, a0
	fmul.s f11, f11, f12
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
pcrel1662:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1662)
	flw f14, 0(a0)
	flt.s a1, f14, f13
	flw f14, 4(a0)
	flt.s a0, f13, f14
	or a0, a1, a0
	beq a0, zero, label78
	j label75
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
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	mv a1, a0
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label545
	j label67
label50:
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
	bge a0, a2, label51
	j label50
label78:
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f10, f11, f10
pcrel1663:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1663)
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
