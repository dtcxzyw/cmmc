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
pcrel763:
	auipc a1, %pcrel_hi(vectorA)
	addi s0, a1, %pcrel_lo(pcrel763)
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
	blt a1, a0, label2
pcrel764:
	auipc a0, %pcrel_hi(vectorB)
pcrel765:
	auipc a1, %pcrel_hi(Vectortm)
	addi s1, a0, %pcrel_lo(pcrel764)
	addi a0, a1, %pcrel_lo(pcrel765)
	mv a1, zero
	fmv.w.x f10, zero
	mv t1, zero
	mv a3, zero
	li a2, 100000
	blt zero, a2, label11
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label26
	mv a3, zero
	li a4, 100000
	blt zero, a4, label88
	li a3, 100000
	blt zero, a3, label50
	li a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label67
label11:
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	blt t1, t0, label15
	mv a4, t1
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label11
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label26
	mv t1, zero
	mv a3, zero
	li a4, 100000
	blt zero, a4, label88
	li a3, 100000
	blt zero, a3, label50
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label67
label15:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label19
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
	flw f13, 4(t2)
	addiw t4, t1, 1
	fdiv.s f11, f12, f11
	addw t6, a2, t4
	mulw t3, t3, t6
	srliw t5, t3, 31
	add t4, t3, t5
	sraiw t3, t4, 1
	addw t5, a2, t3
	addiw t3, t1, 2
	addw t4, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	addw t5, a5, t1
	fdiv.s f12, f13, f11
	mulw t3, t4, t5
	srliw t4, t3, 31
	add t5, t3, t4
	sraiw t3, t5, 1
	addiw t5, t1, 3
	addw t4, a2, t3
	addw t3, a2, t5
	fcvt.s.w f11, t4
	addw t4, a4, t1
	mulw t1, t3, t4
	srliw t5, t1, 31
	add t4, t1, t5
	sraiw t3, t4, 1
	addw t1, a2, t3
	fadd.s f10, f10, f12
	flw f12, 8(t2)
	fdiv.s f13, f12, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fadd.s f10, f10, f13
	flw f13, 12(t2)
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	j label15
label88:
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	blt t1, t0, label92
	mv a4, t1
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a4, 100000
	blt a2, a4, label88
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label50
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label67
label19:
	addw a5, a3, t1
	addw t0, a2, t1
	mulw a4, a5, t0
	srliw a5, a4, 31
	add t0, a4, a5
	sh2add a5, t1, s0
	sraiw t2, t0, 1
	addiw t1, t1, 1
	addw a4, a2, t2
	flw f12, 0(a5)
	li a5, 100000
	fcvt.s.w f11, a4
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	blt t1, a5, label19
	li a4, 100000
	sh2add a3, a3, a0
	mv t1, a4
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label11
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label26
	mv t1, zero
	mv a3, zero
	blt zero, a4, label88
	li a3, 100000
	blt zero, a3, label50
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label67
label26:
	li a3, 100000
	blt t2, a3, label27
	sh2add a4, a2, s1
	addiw a2, a2, 1
	fsw f10, 0(a4)
	blt a2, a3, label26
	fmv.w.x f10, zero
	mv t1, zero
	mv a3, zero
	li a4, 100000
	blt zero, a4, label88
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label50
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label67
label220:
	addiw a4, a2, 1
	addiw a5, a2, 2
	addiw t0, a2, 3
	j label35
label31:
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
	li a4, 100000
	fcvt.s.w f11, t1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	blt a5, a4, label237
	li t2, 100000
	sh2add a4, a2, s1
	addiw a2, a2, 1
	fsw f10, 0(a4)
	li a3, 100000
	blt a2, a3, label26
	fmv.w.x f10, zero
	mv t1, zero
	mv a3, zero
	li a4, 100000
	blt zero, a4, label88
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label50
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label67
label237:
	mv a4, a5
	j label31
label35:
	addw t4, a2, t2
	addw t3, a4, t2
	mulw t1, t4, t3
	srliw t4, t1, 31
	add t5, t1, t4
	addiw t4, t2, 1
	sraiw t1, t5, 1
	addw t5, t1, t4
	addw t4, a5, t2
	sh2add t1, t2, a0
	mulw t3, t3, t4
	flw f12, 0(t1)
	fcvt.s.w f11, t5
	flw f13, 4(t1)
	srliw t5, t3, 31
	fdiv.s f11, f12, f11
	add t6, t3, t5
	addiw t5, t2, 2
	sraiw t3, t6, 1
	addw t6, t3, t5
	addw t3, t0, t2
	mulw t4, t4, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t6
	srliw t6, t4, 31
	fdiv.s f12, f13, f11
	add t5, t4, t6
	addiw t6, t2, 3
	sraiw t4, t5, 1
	addw t2, t4, t6
	addw t4, a2, a3
	fcvt.s.w f11, t2
	mulw t2, t3, t4
	srliw t3, t2, 31
	add t4, t2, t3
	sraiw t2, t4, 1
	addw t3, a3, t2
	li t2, 100000
	fadd.s f10, f10, f12
	flw f12, 8(t1)
	fdiv.s f13, f12, f11
	fcvt.s.w f11, t3
	fadd.s f10, f10, f13
	flw f13, 12(t1)
	addiw t1, a3, 4
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	blt t1, t2, label286
	mv a4, a3
	addiw a3, a2, 1
	j label31
label286:
	mv t2, a3
	mv a3, t1
	j label35
label92:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label95
	addw t4, a3, t1
	addw t3, a2, t1
	mulw t2, t4, t3
	srliw t5, t2, 31
	add t4, t2, t5
	sraiw t2, t4, 1
	addw t5, a2, t2
	sh2add t2, t1, s1
	flw f12, 0(t2)
	fcvt.s.w f11, t5
	addiw t5, t1, 1
	fdiv.s f11, f12, f11
	addw t4, a2, t5
	flw f12, 4(t2)
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t4, t3, t5
	sraiw t6, t4, 1
	addw t3, a2, t6
	addw t6, a5, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f13, f12, f11
	addw t4, a2, t3
	flw f12, 8(t2)
	mulw t3, t4, t6
	srliw t5, t3, 31
	add t4, t3, t5
	sraiw t3, t4, 1
	addw t4, a4, t1
	addw t5, a2, t3
	fcvt.s.w f11, t5
	addiw t5, t1, 3
	addw t3, a2, t5
	mulw t1, t3, t4
	srliw t5, t1, 31
	add t3, t1, t5
	sraiw t1, t3, 1
	addw t4, a2, t1
	mv t1, t0
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fcvt.s.w f11, t4
	fadd.s f10, f10, f13
	flw f13, 12(t2)
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	j label92
label95:
	addw a5, a3, t1
	addw t2, a2, t1
	mulw a4, a5, t2
	srliw t0, a4, 31
	add a5, a4, t0
	sraiw a4, a5, 1
	li a5, 100000
	addw t0, a2, a4
	sh2add a4, t1, s1
	addiw t1, t1, 1
	flw f12, 0(a4)
	fcvt.s.w f11, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	blt t1, a5, label95
	li a4, 100000
	sh2add a3, a3, a0
	mv t1, a4
	fsw f10, 0(a3)
	mv a3, a2
	blt a2, a4, label88
	fmv.w.x f10, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label50
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label67
label50:
	li a3, 100000
	blt t2, a3, label54
	sh2add a3, a2, s0
	addiw a2, a2, 1
	fsw f10, 0(a3)
	li a3, 100000
	blt a2, a3, label50
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label67
label692:
	mv a3, t2
	addiw a4, a2, 1
	j label63
label54:
	addiw a3, t2, 4
	li a4, 100000
	blt a3, a4, label55
	j label692
label359:
	addiw a4, a2, 1
label63:
	addw t0, a2, a3
	addw t1, a4, a3
	mulw a5, t0, t1
	srliw t2, a5, 31
	add t1, a5, t2
	addiw a5, a3, 1
	sraiw t0, t1, 1
	sh2add a3, a3, a0
	addw t1, t0, a5
	flw f12, 0(a3)
	li a3, 100000
	fcvt.s.w f11, t1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	blt a5, a3, label378
	li t2, 100000
	sh2add a3, a2, s0
	addiw a2, a2, 1
	fsw f10, 0(a3)
	li a3, 100000
	blt a2, a3, label50
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label67
label378:
	mv a3, a5
	j label63
label55:
	addiw a4, a2, 1
	addiw a5, a2, 2
	addiw t0, a2, 3
label56:
	addw t4, a2, t2
	addw t3, a4, t2
	addiw a6, t2, 2
	mulw t1, t4, t3
	srliw t4, t1, 31
	add t5, t1, t4
	addiw t4, t2, 1
	sraiw t1, t5, 1
	addw t5, t1, t4
	addw t4, a5, t2
	sh2add t1, t2, a0
	mulw t3, t3, t4
	flw f12, 0(t1)
	fcvt.s.w f11, t5
	srliw t5, t3, 31
	fdiv.s f11, f12, f11
	add t6, t3, t5
	flw f12, 4(t1)
	sraiw t3, t6, 1
	addw t5, t3, a6
	addw t3, t0, t2
	mulw t4, t4, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	srliw t5, t4, 31
	fdiv.s f13, f12, f11
	add t6, t4, t5
	addiw t5, t2, 3
	sraiw t4, t6, 1
	addw t2, t4, t5
	addw t4, a2, a3
	fcvt.s.w f11, t2
	mulw t2, t3, t4
	srliw t3, t2, 31
	add t4, t2, t3
	sraiw t2, t4, 1
	addw t3, a3, t2
	li t2, 100000
	fadd.s f10, f10, f13
	flw f13, 8(t1)
	fdiv.s f12, f13, f11
	fcvt.s.w f11, t3
	fadd.s f10, f10, f12
	flw f12, 12(t1)
	addiw t1, a3, 4
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t1, t2, label359
	mv t2, a3
	mv a3, t1
	j label56
label27:
	addiw a3, t2, 4
	li a4, 100000
	blt a3, a4, label220
	mv a4, t2
	addiw a3, a2, 1
	j label31
label5:
	fmv.w.x f10, zero
	mv t1, zero
	mv a3, zero
	li a2, 100000
	blt zero, a2, label11
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label26
	mv a3, zero
	li a4, 100000
	blt zero, a4, label88
	li a3, 100000
	blt zero, a3, label50
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
label67:
	li a0, 76
	jal _sysy_stoptime
	mv a1, zero
	fmv.w.x f10, zero
label68:
	addiw a0, a1, 4
	li a2, 100000
	blt a0, a2, label87
	sh2add a0, a1, s0
	sh2add a2, a1, s1
	flw f11, 0(a0)
	addiw a1, a1, 1
	li a0, 100000
	flw f12, 0(a2)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	blt a1, a0, label71
	fmv.w.x f11, zero
	mv a1, zero
	li a0, 4
	li a2, 100000
	blt a0, a2, label77
	mv a0, s1
	li a1, 1
	flw f12, 0(s1)
	li a0, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	blt a1, a0, label78
label81:
	fdiv.s f10, f10, f11
	lui a0, 260096
pcrel766:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel766)
	flw f13, 0(a0)
	fsub.s f11, f12, f10
	flw f12, 4(a0)
	flt.s a1, f13, f11
	flt.s a0, f11, f12
	or a1, a1, a0
	bne a1, zero, label451
	lui a0, 260096
	fmv.w.x f11, a0
	j label85
label451:
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
	j label82
label85:
	lui a0, 260096
pcrel767:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel767)
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
	fadd.s f10, f10, f13
	flw f13, 12(a1)
	mv a1, a0
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	j label68
label74:
	addiw a0, a1, 4
	li a2, 100000
	blt a0, a2, label77
	sh2add a0, a1, s1
	addiw a1, a1, 1
	flw f12, 0(a0)
	li a0, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	blt a1, a0, label78
	j label81
label77:
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
	j label74
label71:
	sh2add a0, a1, s0
	sh2add a2, a1, s1
	flw f11, 0(a0)
	addiw a1, a1, 1
	li a0, 100000
	flw f12, 0(a2)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	blt a1, a0, label71
	fmv.w.x f11, zero
	mv a1, zero
	li a0, 4
	li a2, 100000
	blt a0, a2, label77
	mv a0, s1
	li a1, 1
	flw f12, 0(s1)
	li a0, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	bge a1, a0, label81
label78:
	sh2add a0, a1, s1
	addiw a1, a1, 1
	flw f12, 0(a0)
	li a0, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	blt a1, a0, label78
	j label81
label82:
	fadd.s f11, f11, f12
	lui a0, 258048
pcrel768:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel768)
	flw f15, 0(a0)
	flw f14, 4(a0)
	fmul.s f11, f11, f13
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a2, f13, f14
	flt.s a1, f15, f13
	or a0, a1, a2
	bne a0, zero, label82
	j label85
