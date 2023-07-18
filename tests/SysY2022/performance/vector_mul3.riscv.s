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
pcrel749:
	auipc a1, %pcrel_hi(vectorA)
	addi s0, a1, %pcrel_lo(pcrel749)
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
pcrel750:
	auipc a1, %pcrel_hi(Vectortm)
	addi s1, a0, %pcrel_lo(label4)
	addi a0, a1, %pcrel_lo(pcrel750)
	mv a1, zero
	fmv.w.x f10, zero
	mv t2, zero
	mv a3, zero
	li a2, 100000
	bge zero, a2, label132
	li a4, 4
	li a5, 3
	li t0, 2
	li a2, 1
	li t1, 100000
	bge zero, t1, label12
	li t1, 4
	li t3, 100000
	bge t1, t3, label19
	j label18
label132:
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	bge zero, a3, label206
	li a4, 100000
	bge zero, a4, label39
	li a5, 4
	bge a5, a3, label28
label717:
	addiw a3, a2, 1
	addiw a4, a2, 2
	addiw t0, a2, 3
	j label35
label206:
	fmv.w.x f10, zero
	mv t2, zero
	mv a3, zero
	li a4, 100000
	bge zero, a4, label290
	li a4, 4
	li a5, 3
	li t0, 2
	li a2, 1
	li t1, 100000
	bge zero, t1, label89
	li t1, 4
	li t3, 100000
	bge t1, t3, label95
	j label98
label39:
	sh2add a3, a2, s1
	addiw a2, a2, 1
	fsw f10, 0(a3)
	li a3, 100000
	bge a2, a3, label206
	li a4, 100000
	bge t2, a4, label39
	addiw a5, t2, 4
	bge a5, a3, label28
	j label717
label290:
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	bge zero, a3, label50
	li a5, 4
	bge a5, a3, label77
	j label709
label12:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label132
	addiw a4, a3, 4
	addiw a5, a3, 3
	addiw t0, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label12
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label19
	j label18
label50:
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label51
	fmv.w.x f10, zero
	mv t2, zero
	mv a3, zero
	li a2, 100000
	bge zero, a2, label132
	li a4, 4
	li a5, 3
	li t0, 2
	li a2, 1
	li t1, 100000
	bge zero, t1, label12
	li t1, 4
	li t3, 100000
	bge t1, t3, label19
label18:
	addw t5, a3, t2
	addw t4, a2, t2
	mulw t3, t5, t4
	srliw t6, t3, 31
	add t5, t3, t6
	sraiw t3, t5, 1
	addw t5, t0, t2
	addw t6, a2, t3
	mulw t4, t4, t5
	sh2add t3, t2, s0
	srliw a6, t4, 31
	fcvt.s.w f11, t6
	flw f12, 0(t3)
	add t6, t4, a6
	fdiv.s f11, f12, f11
	sraiw t4, t6, 1
	flw f12, 4(t3)
	addw a6, a2, t4
	addw t4, a5, t2
	mulw t5, t5, t4
	fadd.s f10, f10, f11
	fcvt.s.w f11, a6
	srliw a6, t5, 31
	fdiv.s f13, f12, f11
	add a7, t5, a6
	flw f12, 8(t3)
	sraiw t6, a7, 1
	addw t5, a2, t6
	fcvt.s.w f11, t5
	addw t5, a4, t2
	mulw t2, t4, t5
	srliw t6, t2, 31
	add t4, t2, t6
	sraiw t2, t4, 1
	addw t5, a2, t2
	mv t2, t1
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	flw f12, 12(t3)
	fcvt.s.w f11, t5
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label19
	j label18
label19:
	addw a5, a3, t2
	addw t0, a2, t2
	mulw a4, a5, t0
	srliw a5, a4, 31
	add t1, a4, a5
	sh2add a5, t2, s0
	sraiw t0, t1, 1
	addiw t2, t2, 1
	addw a4, a2, t0
	flw f12, 0(a5)
	fcvt.s.w f11, a4
	li a4, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge t2, a4, label202
	j label19
label202:
	li t2, 100000
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label132
	addiw a4, a3, 4
	addiw a5, a3, 3
	addiw t0, a3, 2
	addiw a2, a3, 1
	li t1, 100000
	bge t2, t1, label12
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label19
	j label18
label35:
	addw t4, a2, t2
	addw t3, a3, t2
	addiw t5, t2, 1
	mulw t1, t4, t3
	srliw t4, t1, 31
	add t6, t1, t4
	sraiw t1, t6, 1
	addiw t6, t2, 2
	addw t4, t1, t5
	sh2add t1, t2, a0
	flw f12, 0(t1)
	fcvt.s.w f11, t4
	flw f13, 4(t1)
	addw t4, a4, t2
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	srliw t5, t3, 31
	add a6, t3, t5
	sraiw t3, a6, 1
	addw t5, t3, t6
	addw t3, t0, t2
	addiw t2, t2, 3
	mulw t4, t4, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	srliw t5, t4, 31
	fdiv.s f12, f13, f11
	add t6, t4, t5
	flw f13, 8(t1)
	sraiw t4, t6, 1
	addw t5, t4, t2
	addw t4, a2, a5
	fcvt.s.w f11, t5
	mulw t2, t3, t4
	srliw t3, t2, 31
	add t4, t2, t3
	sraiw t2, t4, 1
	addw t3, a5, t2
	li t2, 100000
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	fcvt.s.w f11, t3
	fadd.s f10, f10, f12
	flw f12, 12(t1)
	addiw t1, a5, 4
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t1, t2, label282
	mv t2, a5
	mv a5, t1
	j label35
label282:
	mv t2, a5
	addiw a3, a2, 1
	mv a4, a5
	j label31
label95:
	addw a5, a3, t2
	addw t0, a2, t2
	mulw a4, a5, t0
	srliw a5, a4, 31
	add t0, a4, a5
	sraiw a4, t0, 1
	addw a5, a2, a4
	sh2add a4, t2, s1
	addiw t2, t2, 1
	flw f12, 0(a4)
	fcvt.s.w f11, a5
	li a4, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge t2, a4, label539
	j label95
label539:
	li t2, 100000
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a4, 100000
	bge a2, a4, label290
	addiw a4, a2, 4
	addiw a5, a2, 3
	addiw t0, a2, 2
	addiw a2, a2, 1
	li t1, 100000
	bge t2, t1, label89
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label95
label98:
	addw t5, a3, t2
	addw t4, a2, t2
	mulw t3, t5, t4
	srliw t5, t3, 31
	add t6, t3, t5
	sraiw t3, t6, 1
	addw t5, a2, t3
	sh2add t3, t2, s1
	flw f12, 0(t3)
	fcvt.s.w f11, t5
	addw t5, t0, t2
	fdiv.s f11, f12, f11
	mulw t4, t4, t5
	flw f12, 4(t3)
	srliw a7, t4, 31
	add a6, t4, a7
	sraiw t6, a6, 1
	addw t4, a2, t6
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t2
	fdiv.s f13, f12, f11
	mulw t5, t5, t4
	flw f12, 8(t3)
	srliw t6, t5, 31
	add a7, t5, t6
	sraiw a6, a7, 1
	addw t5, a2, a6
	fcvt.s.w f11, t5
	addw t5, a4, t2
	mulw t2, t4, t5
	srliw t4, t2, 31
	add t5, t2, t4
	sraiw t6, t5, 1
	addw t2, a2, t6
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fcvt.s.w f11, t2
	mv t2, t1
	fadd.s f10, f10, f13
	flw f13, 12(t3)
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	addiw t1, t1, 4
	li t3, 100000
	bge t1, t3, label95
	j label98
label89:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a4, 100000
	bge a2, a4, label290
	addiw a4, a2, 4
	addiw a5, a2, 3
	addiw t0, a2, 2
	addiw a2, a2, 1
	li t1, 100000
	bge t2, t1, label89
	addiw t1, t2, 4
	li t3, 100000
	bge t1, t3, label95
	j label98
label31:
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
	bge a5, t0, label233
	mv a4, a5
	j label31
label233:
	li t2, 100000
	sh2add a3, a2, s1
	addiw a2, a2, 1
	fsw f10, 0(a3)
	li a3, 100000
	bge a2, a3, label206
	li a4, 100000
	bge t2, a4, label39
	addiw a5, t2, 4
	bge a5, a3, label28
	j label717
label73:
	sh2add a3, a2, s0
	addiw a2, a2, 1
	fsw f10, 0(a3)
	li a3, 100000
	bge a2, a3, label50
	bge t2, a3, label73
	addiw a5, t2, 4
	bge a5, a3, label77
	j label709
label28:
	addiw a3, a2, 1
	mv a4, t2
	j label31
label77:
	addiw a3, a2, 1
	mv a4, t2
label80:
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
	bge a5, t0, label458
	mv a4, a5
	j label80
label458:
	li t2, 100000
	sh2add a3, a2, s0
	addiw a2, a2, 1
	fsw f10, 0(a3)
	li a3, 100000
	bge a2, a3, label50
	bge t2, a3, label73
	addiw a5, t2, 4
	bge a5, a3, label77
label709:
	addiw a3, a2, 1
	addiw a4, a2, 2
	addiw t0, a2, 3
label84:
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
	srliw t6, t3, 31
	add t5, t3, t6
	addiw t6, t2, 2
	sraiw t3, t5, 1
	addw t5, t3, t6
	addw t3, t0, t2
	addiw t2, t2, 3
	mulw t4, t4, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	srliw t5, t4, 31
	fdiv.s f12, f13, f11
	add t6, t4, t5
	flw f13, 8(t1)
	sraiw t4, t6, 1
	addw t5, t4, t2
	fcvt.s.w f11, t5
	addw t5, a2, a5
	mulw t2, t3, t5
	srliw t4, t2, 31
	add t3, t2, t4
	sraiw t5, t3, 1
	addw t2, a5, t5
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	fcvt.s.w f11, t2
	li t2, 100000
	fadd.s f10, f10, f12
	flw f12, 12(t1)
	addiw t1, a5, 4
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t1, t2, label507
	mv t2, a5
	mv a5, t1
	j label84
label507:
	mv t2, a5
	addiw a3, a2, 1
	mv a4, a5
	j label80
label51:
	li a0, 76
	jal _sysy_stoptime
	mv a1, zero
	fmv.w.x f10, zero
	li a0, 4
	li a2, 100000
	bge a0, a2, label56
label55:
	sh2add a2, a1, s0
	sh2add a1, a1, s1
	flw f11, 0(a2)
	flw f13, 0(a1)
	fmul.s f12, f11, f13
	flw f11, 4(a2)
	fadd.s f10, f10, f12
	flw f12, 4(a1)
	fmul.s f13, f11, f12
	flw f11, 8(a2)
	flw f12, 8(a1)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 12(a2)
	fadd.s f10, f10, f13
	flw f13, 12(a1)
	mv a1, a0
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label56
	j label55
label56:
	sh2add a2, a1, s0
	sh2add a0, a1, s1
	flw f11, 0(a2)
	addiw a1, a1, 1
	flw f12, 0(a0)
	li a0, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a1, a0, label345
	j label56
label345:
	fmv.w.x f11, zero
	mv a1, zero
	li a0, 4
	li a2, 100000
	bge a0, a2, label63
label62:
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
	bge a0, a2, label63
	j label62
label63:
	sh2add a0, a1, s1
	addiw a1, a1, 1
	flw f12, 0(a0)
	li a0, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	bge a1, a0, label66
	j label63
label66:
	fdiv.s f10, f10, f11
	lui a0, 260096
pcrel751:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel751)
	flw f13, 0(a0)
	fsub.s f11, f12, f10
	flw f12, 4(a0)
	flt.s a1, f13, f11
	flt.s a0, f11, f12
	or a1, a1, a0
	beq a1, zero, label394
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
	j label69
label394:
	lui a0, 260096
	fmv.w.x f11, a0
label67:
	lui a0, 260096
pcrel752:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel752)
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
label69:
	fadd.s f11, f11, f12
	lui a0, 258048
pcrel753:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel753)
	flw f15, 0(a0)
	flw f14, 4(a0)
	fmul.s f11, f11, f13
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a2, f13, f14
	flt.s a1, f15, f13
	or a0, a1, a2
	beq a0, zero, label67
	j label69
