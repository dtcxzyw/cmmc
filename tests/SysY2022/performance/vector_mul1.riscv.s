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
	li a0, 62
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal _sysy_starttime
pcrel742:
	auipc a1, %pcrel_hi(vectorA)
	addi s0, a1, %pcrel_lo(pcrel742)
	mv a1, zero
label2:
	sh2add a0, a1, s0
	lui a2, 260096
	addiw a1, a1, 16
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
	li a0, 100000
	bge a1, a0, label4
	j label2
label4:
	auipc a0, %pcrel_hi(vectorB)
pcrel743:
	auipc a1, %pcrel_hi(Vectortm)
	addi s1, a0, %pcrel_lo(label4)
	addi a0, a1, %pcrel_lo(pcrel743)
	mv a1, zero
	fmv.w.x f10, zero
	mv t1, zero
	mv a3, zero
	li a2, 100000
	bge zero, a2, label132
	li a4, 3
	li a5, 2
	li a2, 1
	li t0, 100000
	bge zero, t0, label12
	li t0, 4
	li t2, 100000
	bge t0, t2, label19
	j label18
label132:
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	bge zero, a3, label210
	li a4, 100000
	bge zero, a4, label39
	li a5, 4
	bge a5, a3, label220
	j label721
label18:
	addw t4, a3, t1
	addw t3, a2, t1
	mulw t2, t4, t3
	srliw t4, t2, 31
	add t5, t2, t4
	sraiw t2, t5, 1
	addw t4, a2, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	fcvt.s.w f11, t4
	addiw t4, t1, 1
	fdiv.s f11, f12, f11
	addw t5, a2, t4
	flw f12, 4(t2)
	mulw t3, t3, t5
	srliw t6, t3, 31
	add t4, t3, t6
	sraiw t5, t4, 1
	addw t3, a2, t5
	addw t5, a5, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f13, f12, f11
	addw t4, a2, t3
	mulw t3, t4, t5
	srliw t6, t3, 31
	add t4, t3, t6
	sraiw t3, t4, 1
	addiw t4, t1, 3
	addw t5, a2, t3
	addw t3, a2, t4
	fcvt.s.w f11, t5
	addw t5, a4, t1
	mulw t1, t3, t5
	srliw t6, t1, 31
	add t3, t1, t6
	sraiw t4, t3, 1
	addw t1, a2, t4
	fadd.s f10, f10, f13
	flw f13, 8(t2)
	fdiv.s f12, f13, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fadd.s f10, f10, f12
	flw f12, 12(t2)
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label19
	j label18
label12:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label132
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label12
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label19
	j label18
label210:
	fmv.w.x f10, zero
	mv t1, zero
	mv a3, zero
	li a4, 100000
	bge zero, a4, label294
	li a4, 3
	li a5, 2
	li a2, 1
	li t0, 100000
	bge zero, t0, label89
	li t0, 4
	li t2, 100000
	bge t0, t2, label96
	j label95
label294:
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	bge zero, a3, label66
	li a5, 4
	bge a5, a3, label52
	j label714
label63:
	sh2add a3, a2, s0
	addiw a2, a2, 1
	fsw f10, 0(a3)
	li a3, 100000
	bge a2, a3, label66
	bge t2, a3, label63
	addiw a5, t2, 4
	bge a5, a3, label52
	j label714
label66:
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label67
	fmv.w.x f10, zero
	mv t1, zero
	mv a3, zero
	li a2, 100000
	bge zero, a2, label132
	li a4, 3
	li a5, 2
	li a2, 1
	li t0, 100000
	bge zero, t0, label12
	li t0, 4
	li t2, 100000
	bge t0, t2, label19
	j label18
label220:
	addiw a3, a2, 1
	mv a4, t2
	j label36
label29:
	addw t4, a2, t2
	addw t3, a3, t2
	mulw t1, t4, t3
	srliw t5, t1, 31
	add t4, t1, t5
	addiw t5, t2, 1
	sraiw t1, t4, 1
	addw t4, t1, t5
	sh2add t1, t2, a0
	flw f12, 0(t1)
	fcvt.s.w f11, t4
	flw f13, 4(t1)
	addw t4, a4, t2
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t6, t3, t5
	addiw t5, t2, 2
	sraiw t3, t6, 1
	addw t6, t3, t5
	addw t3, t0, t2
	mulw t4, t4, t3
	srliw t5, t4, 31
	fadd.s f10, f10, f11
	fcvt.s.w f11, t6
	add t6, t4, t5
	fdiv.s f12, f13, f11
	addiw t5, t2, 3
	sraiw t4, t6, 1
	addw t2, t4, t5
	addw t4, a2, a5
	fcvt.s.w f11, t2
	mulw t2, t3, t4
	srliw t3, t2, 31
	add t4, t2, t3
	sraiw t2, t4, 1
	addw t3, a5, t2
	li t2, 100000
	fadd.s f10, f10, f12
	flw f12, 8(t1)
	fdiv.s f13, f12, f11
	fcvt.s.w f11, t3
	fadd.s f10, f10, f13
	flw f13, 12(t1)
	addiw t1, a5, 4
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t1, t2, label269
	mv t2, a5
	mv a5, t1
	j label29
label269:
	mv t2, a5
	j label220
label89:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a4, 100000
	bge a2, a4, label294
	addiw a4, a2, 3
	addiw a5, a2, 2
	addiw a2, a2, 1
	li t0, 100000
	bge t1, t0, label89
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label96
label95:
	addw t4, a3, t1
	addw t3, a2, t1
	mulw t2, t4, t3
	srliw t4, t2, 31
	add t5, t2, t4
	sraiw t2, t5, 1
	addw t4, a2, t2
	sh2add t2, t1, s1
	flw f12, 0(t2)
	fcvt.s.w f11, t4
	flw f13, 4(t2)
	addiw t4, t1, 1
	fdiv.s f11, f12, f11
	addw t5, a2, t4
	mulw t3, t3, t5
	srliw t4, t3, 31
	add t6, t3, t4
	sraiw t5, t6, 1
	addw t3, a2, t5
	addw t5, a5, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f12, f13, f11
	addw t4, a2, t3
	flw f13, 8(t2)
	mulw t3, t4, t5
	srliw t6, t3, 31
	add t5, t3, t6
	sraiw t4, t5, 1
	addiw t5, t1, 3
	addw t3, a2, t4
	addw t4, a4, t1
	fcvt.s.w f11, t3
	addw t3, a2, t5
	mulw t1, t3, t4
	srliw t3, t1, 31
	add t4, t1, t3
	sraiw t5, t4, 1
	addw t1, a2, t5
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	flw f13, 12(t2)
	fcvt.s.w f11, t1
	mv t1, t0
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label96
	j label95
label19:
	addw a5, a3, t1
	addw t0, a2, t1
	mulw a4, a5, t0
	srliw t2, a4, 31
	add a5, a4, t2
	sraiw a4, a5, 1
	addw t0, a2, a4
	sh2add a4, t1, s0
	addiw t1, t1, 1
	flw f12, 0(a4)
	fcvt.s.w f11, t0
	li a4, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge t1, a4, label12
	j label19
label36:
	addw t0, a2, a4
	addw t2, a3, a4
	mulw a5, t0, t2
	srliw t1, a5, 31
	add t2, a5, t1
	addiw a5, a4, 1
	sraiw t0, t2, 1
	sh2add a4, a4, a0
	addw t1, t0, a5
	flw f12, 0(a4)
	li t0, 100000
	fcvt.s.w f11, t1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a5, t0, label287
	mv a4, a5
	j label36
label287:
	mv t2, a5
label39:
	sh2add a3, a2, s1
	addiw a2, a2, 1
	fsw f10, 0(a3)
	li a3, 100000
	bge a2, a3, label210
	li a4, 100000
	bge t2, a4, label39
	addiw a5, t2, 4
	bge a5, a3, label220
	j label721
label96:
	addw a5, a3, t1
	addw t2, a2, t1
	mulw a4, a5, t2
	srliw t0, a4, 31
	add a5, a4, t0
	sraiw a4, a5, 1
	addw t0, a2, a4
	sh2add a4, t1, s1
	addiw t1, t1, 1
	flw f12, 0(a4)
	fcvt.s.w f11, t0
	li a4, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge t1, a4, label89
	j label96
label52:
	addiw a3, a2, 1
	mv a4, t2
label55:
	addw t0, a2, a4
	addw t1, a3, a4
	mulw a5, t0, t1
	srliw t2, a5, 31
	add t1, a5, t2
	addiw a5, a4, 1
	sraiw t0, t1, 1
	sh2add a4, a4, a0
	addw t1, t0, a5
	flw f12, 0(a4)
	li t0, 100000
	fcvt.s.w f11, t1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a5, t0, label325
	mv a4, a5
	j label55
label325:
	mv t2, a5
	sh2add a3, a2, s0
	addiw a2, a2, 1
	fsw f10, 0(a3)
	li a3, 100000
	bge a2, a3, label66
	bge a5, a3, label63
	addiw a5, a5, 4
	bge a5, a3, label52
label714:
	addiw a3, a2, 1
	addiw a4, a2, 2
	addiw t0, a2, 3
label59:
	addw t4, a2, t2
	addw t3, a3, t2
	mulw t1, t4, t3
	srliw t4, t1, 31
	add t5, t1, t4
	addiw t4, t2, 1
	sraiw t1, t5, 1
	addw t5, t1, t4
	addw t4, a4, t2
	sh2add t1, t2, a0
	mulw t3, t3, t4
	flw f12, 0(t1)
	fcvt.s.w f11, t5
	srliw t5, t3, 31
	fdiv.s f11, f12, f11
	add t6, t3, t5
	flw f12, 4(t1)
	addiw t5, t2, 2
	sraiw t3, t6, 1
	addw t6, t3, t5
	addw t3, t0, t2
	addiw t2, t2, 3
	mulw t4, t4, t3
	srliw t5, t4, 31
	fadd.s f10, f10, f11
	fcvt.s.w f11, t6
	add t6, t4, t5
	fdiv.s f13, f12, f11
	sraiw t4, t6, 1
	flw f12, 8(t1)
	addw t5, t4, t2
	addw t4, a2, a5
	fcvt.s.w f11, t5
	mulw t2, t3, t4
	srliw t3, t2, 31
	add t4, t2, t3
	sraiw t2, t4, 1
	addw t3, a5, t2
	li t2, 100000
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	flw f12, 12(t1)
	fcvt.s.w f11, t3
	addiw t1, a5, 4
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t1, t2, label374
	mv t2, a5
	mv a5, t1
	j label59
label374:
	mv t2, a5
	addiw a3, a2, 1
	mv a4, a5
	j label55
label721:
	addiw a3, a2, 1
	addiw a4, a2, 2
	addiw t0, a2, 3
	j label29
label67:
	li a0, 76
	jal _sysy_stoptime
	mv a1, zero
	fmv.w.x f10, zero
	li a0, 4
	li a2, 100000
	bge a0, a2, label71
	j label87
label71:
	sh2add a0, a1, s0
	sh2add a2, a1, s1
	flw f11, 0(a0)
	addiw a1, a1, 1
	li a0, 100000
	flw f12, 0(a2)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a1, a0, label402
	j label71
label402:
	fmv.w.x f11, zero
	mv a1, zero
	li a0, 4
	li a2, 100000
	bge a0, a2, label77
label86:
	sh2add a1, a1, s1
	flw f12, 0(a1)
	fmul.s f13, f12, f12
	flw f12, 4(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 8(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 12(a1)
	mv a1, a0
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label77
	j label86
label87:
	sh2add a2, a1, s0
	sh2add a1, a1, s1
	flw f11, 0(a2)
	flw f12, 0(a1)
	fmul.s f13, f11, f12
	flw f11, 4(a2)
	flw f12, 4(a1)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 8(a2)
	flw f12, 8(a1)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 12(a2)
	flw f12, 12(a1)
	mv a1, a0
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label71
	j label87
label77:
	sh2add a0, a1, s1
	addiw a1, a1, 1
	flw f12, 0(a0)
	li a0, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	bge a1, a0, label80
	j label77
label80:
	fdiv.s f10, f10, f11
	lui a0, 260096
pcrel744:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel744)
	flw f13, 0(a0)
	fsub.s f11, f12, f10
	flw f12, 4(a0)
	flt.s a1, f13, f11
	flt.s a0, f11, f12
	or a1, a1, a0
	beq a1, zero, label434
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
	j label81
label434:
	lui a0, 260096
	fmv.w.x f11, a0
	j label84
label81:
	fadd.s f11, f11, f12
	lui a0, 258048
pcrel745:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel745)
	flw f15, 0(a0)
	flw f14, 4(a0)
	fmul.s f11, f11, f13
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a0, f13, f14
	flt.s a1, f15, f13
	or a1, a1, a0
	beq a1, zero, label84
	j label81
label84:
	lui a0, 260096
pcrel746:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel746)
	fsub.s f10, f11, f12
	flw f11, 0(a0)
	flw f12, 4(a0)
	fle.s a1, f10, f11
	fle.s a2, f12, f10
	and a0, a1, a2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
