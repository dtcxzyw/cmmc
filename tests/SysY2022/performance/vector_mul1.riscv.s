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
pcrel753:
	auipc a1, %pcrel_hi(vectorA)
	addi s0, a1, %pcrel_lo(pcrel753)
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
pcrel754:
	auipc a1, %pcrel_hi(Vectortm)
	addi s1, a0, %pcrel_lo(label4)
	addi a0, a1, %pcrel_lo(pcrel754)
	mv a1, zero
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	bge zero, a3, label122
	li a4, 3
	li a5, 2
	li a3, 1
	li t0, 100000
	bge zero, t0, label19
	li t0, 4
	li t1, 100000
	bge t0, t1, label16
	j label15
label122:
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	bge zero, a3, label200
	li a4, 4
	li a5, 3
	li t0, 2
	li a3, 1
	li t1, 100000
	bge zero, t1, label34
	li t1, 4
	li t3, 100000
	bge t1, t3, label30
	j label33
label200:
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	bge zero, a3, label285
	li a4, 3
	li a5, 2
	li a3, 1
	li t0, 100000
	bge zero, t0, label86
	li t0, 4
	li t1, 100000
	bge t0, t1, label82
	j label85
label15:
	addw t4, a2, t2
	addw t3, a3, t2
	mulw t1, t4, t3
	srliw t5, t1, 31
	add t6, t1, t5
	sraiw t4, t6, 1
	addiw t1, t4, 1
	addw t4, a5, t2
	addw t5, a2, t1
	mulw t3, t3, t4
	sh2add t1, t2, s0
	fcvt.s.w f11, t5
	addw t2, a4, t2
	flw f12, 0(t1)
	srliw t5, t3, 31
	flw f13, 4(t1)
	add a6, t3, t5
	fdiv.s f11, f12, f11
	sraiw t3, a6, 1
	addiw t6, t3, 1
	mulw t3, t4, t2
	addw t5, a2, t6
	srliw t4, t3, 31
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	add t5, t3, t4
	fdiv.s f12, f13, f11
	sraiw t6, t5, 1
	addiw t4, t6, 1
	addw t3, a2, t4
	fcvt.s.w f11, t3
	addw t3, a2, t0
	mulw t2, t2, t3
	srliw t5, t2, 31
	add t3, t2, t5
	sraiw t4, t3, 1
	addiw t2, t4, 1
	addw t3, a2, t2
	mv t2, t0
	fadd.s f10, f10, f12
	flw f12, 8(t1)
	fdiv.s f13, f12, f11
	flw f12, 12(t1)
	fcvt.s.w f11, t3
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	addiw t0, t0, 4
	li t1, 100000
	bge t0, t1, label16
	j label15
label285:
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	bge zero, a3, label56
	li a4, 4
	li a5, 3
	li t0, 2
	li a3, 1
	li t1, 100000
	bge zero, t1, label46
	li t1, 4
	li t3, 100000
	bge t1, t3, label53
	j label52
label56:
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label57
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	bge zero, a3, label122
	li a4, 3
	li a5, 2
	li a3, 1
	li t0, 100000
	bge zero, t0, label19
	li t0, 4
	li t1, 100000
	bge t0, t1, label16
	j label15
label16:
	addiw a4, t2, 1
	addw t1, a2, t2
	addw t0, a2, a4
	mulw a5, t0, t1
	srliw t0, a5, 31
	add t3, a5, t0
	sraiw t1, t3, 1
	addiw a5, t1, 1
	addw t0, a2, a5
	sh2add a5, t2, s0
	flw f12, 0(a5)
	fcvt.s.w f11, t0
	li a5, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a4, a5, label194
	mv t2, a4
	j label16
label194:
	mv t2, a4
label19:
	sh2add a2, a2, a0
	fsw f10, 0(a2)
	mv a2, a3
	li a3, 100000
	bge a2, a3, label122
	addiw a4, a2, 3
	addiw a5, a2, 2
	addiw a3, a2, 1
	li t0, 100000
	bge t2, t0, label19
	addiw t0, t2, 4
	li t1, 100000
	bge t0, t1, label16
	j label15
label33:
	addw t4, a2, t2
	addw t5, a3, t2
	addw a6, t0, t2
	mulw t3, t4, t5
	srliw t6, t3, 31
	add t4, t3, t6
	sraiw t3, t4, 1
	addiw t5, t3, 1
	sh2add t3, t2, a0
	addw t4, t2, t5
	flw f12, 0(t3)
	flw f13, 4(t3)
	fcvt.s.w f11, t4
	addiw t4, t2, 1
	fdiv.s f11, f12, f11
	addw t6, a2, t4
	mulw t5, t6, a6
	srliw t6, t5, 31
	add a6, t5, t6
	sraiw a7, a6, 1
	addw a6, a5, t2
	addiw t5, a7, 2
	addw t6, t2, t5
	addiw t5, t2, 2
	fadd.s f10, f10, f11
	fcvt.s.w f11, t6
	addw t6, a2, t5
	fdiv.s f12, f13, f11
	mulw t5, t6, a6
	flw f13, 8(t3)
	srliw t6, t5, 31
	add a6, t5, t6
	sraiw a7, a6, 1
	addiw a6, t2, 3
	addiw t6, a7, 2
	addw t5, t4, t6
	addw t6, a4, t2
	fcvt.s.w f11, t5
	addw t5, a2, a6
	mulw t2, t5, t6
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw t2, t6, 1
	addiw t5, t2, 3
	mv t2, t1
	addw t4, t4, t5
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	fcvt.s.w f11, t4
	fadd.s f10, f10, f12
	flw f12, 12(t3)
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label30
	j label33
label30:
	addw a5, a2, t2
	addw t0, a3, t2
	mulw a4, a5, t0
	srliw a5, a4, 31
	add t0, a4, a5
	sraiw a4, t0, 1
	addiw t1, a4, 1
	sh2add a4, t2, a0
	addw a5, t2, t1
	flw f12, 0(a4)
	addiw t2, t2, 1
	li a4, 100000
	fcvt.s.w f11, a5
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge t2, a4, label34
	j label30
label34:
	sh2add a2, a2, s1
	fsw f10, 0(a2)
	mv a2, a3
	li a3, 100000
	bge a2, a3, label200
	addiw a4, a2, 4
	addiw a5, a2, 3
	addiw t0, a2, 2
	addiw a3, a2, 1
	li t1, 100000
	bge t2, t1, label34
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label30
	j label33
label85:
	addw t4, a2, t2
	addw t3, a3, t2
	mulw t1, t4, t3
	srliw t6, t1, 31
	add t4, t1, t6
	sraiw t5, t4, 1
	addiw t1, t5, 1
	addw t4, a2, t1
	sh2add t1, t2, s1
	flw f12, 0(t1)
	fcvt.s.w f11, t4
	addw t4, a5, t2
	fdiv.s f11, f12, f11
	addw t2, a4, t2
	mulw t3, t3, t4
	flw f12, 4(t1)
	srliw a6, t3, 31
	add t5, t3, a6
	sraiw t6, t5, 1
	addiw a6, t6, 1
	addw t3, a2, a6
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	mulw t3, t4, t2
	fdiv.s f13, f12, f11
	srliw t6, t3, 31
	flw f12, 8(t1)
	add t5, t3, t6
	sraiw t4, t5, 1
	addiw t3, t4, 1
	addw t5, a2, t3
	addw t3, a2, t0
	mulw t2, t2, t3
	fcvt.s.w f11, t5
	srliw t4, t2, 31
	add t3, t2, t4
	sraiw t2, t3, 1
	addiw t4, t2, 1
	mv t2, t0
	addw t3, a2, t4
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	flw f12, 12(t1)
	fcvt.s.w f11, t3
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	addiw t0, t0, 4
	li t1, 100000
	bge t0, t1, label82
	j label85
label86:
	sh2add a2, a2, a0
	fsw f10, 0(a2)
	mv a2, a3
	li a3, 100000
	bge a2, a3, label285
	addiw a4, a2, 3
	addiw a5, a2, 2
	addiw a3, a2, 1
	li t0, 100000
	bge t2, t0, label86
	addiw t0, t2, 4
	li t1, 100000
	bge t0, t1, label82
	j label85
label82:
	addiw a4, t2, 1
	addw t1, a2, t2
	addw t0, a2, a4
	mulw a5, t0, t1
	srliw t3, a5, 31
	add t0, a5, t3
	sraiw a5, t0, 1
	addiw t1, a5, 1
	sh2add a5, t2, s1
	addw t0, a2, t1
	flw f12, 0(a5)
	li a5, 100000
	fcvt.s.w f11, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a4, a5, label533
	mv t2, a4
	j label82
label533:
	mv t2, a4
	sh2add a2, a2, a0
	fsw f10, 0(a2)
	mv a2, a3
	li a3, 100000
	bge a2, a3, label285
	addiw a4, a2, 3
	addiw a5, a2, 2
	addiw a3, a2, 1
	li t0, 100000
	bge t2, t0, label86
	addiw t0, t2, 4
	li t1, 100000
	bge t0, t1, label82
	j label85
label46:
	sh2add a2, a2, s0
	fsw f10, 0(a2)
	mv a2, a3
	li a3, 100000
	bge a2, a3, label56
	addiw a4, a2, 4
	addiw a5, a2, 3
	addiw t0, a2, 2
	addiw a3, a2, 1
	li t1, 100000
	bge t2, t1, label46
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label53
label52:
	addw t4, a2, t2
	addw t5, a3, t2
	addw a6, t0, t2
	mulw t3, t4, t5
	srliw t4, t3, 31
	add t5, t3, t4
	sraiw t6, t5, 1
	addiw t3, t6, 1
	addw t4, t2, t3
	sh2add t3, t2, a0
	flw f12, 0(t3)
	fcvt.s.w f11, t4
	addiw t4, t2, 1
	fdiv.s f11, f12, f11
	addw t6, a2, t4
	flw f12, 4(t3)
	mulw t5, t6, a6
	srliw a7, t5, 31
	add a6, t5, a7
	sraiw t6, a6, 1
	addw a6, a5, t2
	addiw a7, t6, 2
	addw t5, t2, a7
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	addiw t5, t2, 2
	fdiv.s f13, f12, f11
	addw t6, a2, t5
	flw f12, 8(t3)
	mulw t5, t6, a6
	srliw a7, t5, 31
	add t6, t5, a7
	sraiw a6, t6, 1
	addw t6, a4, t2
	addiw a7, a6, 2
	addiw a6, t2, 3
	addw t5, t4, a7
	fcvt.s.w f11, t5
	addw t5, a2, a6
	mulw t2, t5, t6
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw a6, t6, 1
	addiw t5, a6, 3
	addw t2, t4, t5
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	flw f12, 12(t3)
	fcvt.s.w f11, t2
	mv t2, t1
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label53
	j label52
label53:
	addw a5, a2, t2
	addw t0, a3, t2
	mulw a4, a5, t0
	srliw a5, a4, 31
	add t1, a4, a5
	sraiw t0, t1, 1
	addiw a5, t0, 1
	addw a4, t2, a5
	sh2add a5, t2, a0
	addiw t2, t2, 1
	flw f12, 0(a5)
	fcvt.s.w f11, a4
	li a4, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge t2, a4, label46
	j label53
label57:
	li a0, 76
	jal _sysy_stoptime
	mv a1, zero
	fmv.w.x f10, zero
	li a0, 4
	li a2, 100000
	bge a0, a2, label62
label61:
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
	fadd.s f10, f10, f13
	flw f13, 8(a1)
	fmul.s f12, f11, f13
	flw f11, 12(a2)
	flw f13, 12(a1)
	mv a1, a0
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label62
	j label61
label62:
	sh2add a0, a1, s0
	sh2add a2, a1, s1
	flw f11, 0(a0)
	addiw a1, a1, 1
	li a0, 100000
	flw f12, 0(a2)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a1, a0, label420
	j label62
label420:
	fmv.w.x f11, zero
	mv a1, zero
	li a0, 4
	li a2, 100000
	bge a0, a2, label69
label68:
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
	bge a0, a2, label69
	j label68
label69:
	sh2add a0, a1, s1
	addiw a1, a1, 1
	flw f12, 0(a0)
	li a0, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	bge a1, a0, label72
	j label69
label72:
	fdiv.s f10, f10, f11
	lui a0, 260096
pcrel755:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel755)
	flw f13, 0(a0)
	fsub.s f11, f12, f10
	flw f12, 4(a0)
	flt.s a1, f13, f11
	flt.s a0, f11, f12
	or a1, a1, a0
	beq a1, zero, label469
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
	j label73
label469:
	lui a0, 260096
	fmv.w.x f11, a0
label76:
	lui a0, 260096
pcrel756:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel756)
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
label73:
	fadd.s f11, f11, f12
	lui a0, 258048
pcrel757:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel757)
	flw f14, 0(a0)
	flw f15, 4(a0)
	fmul.s f11, f11, f13
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a0, f13, f15
	flt.s a1, f14, f13
	or a1, a1, a0
	beq a1, zero, label76
	j label73
