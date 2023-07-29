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
.p2align 2
	addi sp, sp, -24
	li a0, 62
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal _sysy_starttime
pcrel1092:
	auipc a1, %pcrel_hi(vectorA)
	addi s1, a1, %pcrel_lo(pcrel1092)
	mv a1, zero
.p2align 2
label2:
	sh2add a0, a1, s1
	lui a2, 260096
	addiw a1, a1, 64
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
	fsw f10, 64(a0)
	fsw f10, 68(a0)
	fsw f10, 72(a0)
	fsw f10, 76(a0)
	fsw f10, 80(a0)
	fsw f10, 84(a0)
	fsw f10, 88(a0)
	fsw f10, 92(a0)
	fsw f10, 96(a0)
	fsw f10, 100(a0)
	fsw f10, 104(a0)
	fsw f10, 108(a0)
	fsw f10, 112(a0)
	fsw f10, 116(a0)
	fsw f10, 120(a0)
	fsw f10, 124(a0)
	fsw f10, 128(a0)
	fsw f10, 132(a0)
	fsw f10, 136(a0)
	fsw f10, 140(a0)
	fsw f10, 144(a0)
	fsw f10, 148(a0)
	fsw f10, 152(a0)
	fsw f10, 156(a0)
	fsw f10, 160(a0)
	fsw f10, 164(a0)
	fsw f10, 168(a0)
	fsw f10, 172(a0)
	fsw f10, 176(a0)
	fsw f10, 180(a0)
	fsw f10, 184(a0)
	fsw f10, 188(a0)
	fsw f10, 192(a0)
	fsw f10, 196(a0)
	fsw f10, 200(a0)
	fsw f10, 204(a0)
	fsw f10, 208(a0)
	fsw f10, 212(a0)
	fsw f10, 216(a0)
	fsw f10, 220(a0)
	fsw f10, 224(a0)
	fsw f10, 228(a0)
	fsw f10, 232(a0)
	fsw f10, 236(a0)
	fsw f10, 240(a0)
	fsw f10, 244(a0)
	fsw f10, 248(a0)
	fsw f10, 252(a0)
	li a0, 99968
	blt a1, a0, label2
	sh2add a0, a1, s1
	lui a1, 260096
	fmv.w.x f10, a1
pcrel1093:
	auipc a1, %pcrel_hi(Vectortm)
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
	fsw f10, 64(a0)
	fsw f10, 68(a0)
	fsw f10, 72(a0)
	fsw f10, 76(a0)
	fsw f10, 80(a0)
	fsw f10, 84(a0)
	fsw f10, 88(a0)
	fsw f10, 92(a0)
	fsw f10, 96(a0)
	fsw f10, 100(a0)
	fsw f10, 104(a0)
	fsw f10, 108(a0)
	fsw f10, 112(a0)
	fsw f10, 116(a0)
	fsw f10, 120(a0)
	fsw f10, 124(a0)
pcrel1094:
	auipc a0, %pcrel_hi(vectorB)
	addi s0, a0, %pcrel_lo(pcrel1094)
	addi a0, a1, %pcrel_lo(pcrel1093)
	mv a1, zero
.p2align 2
label5:
	fmv.w.x f11, zero
	mv t1, zero
	mv a3, zero
	li a2, 100000
	blt zero, a2, label81
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label15
	mv a3, zero
	li a4, 100000
	blt zero, a4, label31
	li a3, 100000
	blt zero, a3, label47
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label60
.p2align 2
label15:
	li a3, 100000
	blt t2, a3, label16
	sh2add a3, a2, s0
	addiw a2, a2, 1
	fsw f11, 0(a3)
	li a3, 100000
	blt a2, a3, label15
	fmv.w.x f11, zero
	mv t1, zero
	mv a3, zero
	li a4, 100000
	blt zero, a4, label31
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label47
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label60
.p2align 2
label17:
	addiw a4, a2, 1
	addiw a5, a2, 2
	addiw t0, a2, 3
	addiw t1, a2, 4
	fmv.s f10, f11
.p2align 2
label18:
	addw t5, a2, t2
	addw t4, a4, t2
	mulw t3, t5, t4
	srliw t5, t3, 31
	add t6, t3, t5
	addiw t5, t2, 1
	sraiw t3, t6, 1
	addw t6, t3, t5
	addw t5, a5, t2
	sh2add t3, t2, a0
	mulw t4, t4, t5
	flw f12, 0(t3)
	fcvt.s.w f11, t6
	flw f13, 4(t3)
	srliw t6, t4, 31
	fdiv.s f11, f12, f11
	add a6, t4, t6
	addiw t6, t2, 2
	sraiw t4, a6, 1
	addw a6, t4, t6
	addw t4, t0, t2
	mulw t5, t5, t4
	srliw t6, t5, 31
	fadd.s f10, f10, f11
	fcvt.s.w f11, a6
	add a6, t5, t6
	fdiv.s f12, f13, f11
	addiw t6, t2, 3
	sraiw t5, a6, 1
	addw a6, t5, t6
	addw t5, t1, t2
	fcvt.s.w f11, a6
	addiw t2, t2, 4
	mulw t4, t4, t5
	srliw t6, t4, 31
	add t5, t4, t6
	sraiw t4, t5, 1
	addw t5, t4, t2
	fadd.s f10, f10, f12
	flw f12, 8(t3)
	fdiv.s f13, f12, f11
	fcvt.s.w f11, t5
	fadd.s f10, f10, f13
	flw f13, 12(t3)
	li t3, 99996
	fdiv.s f12, f13, f11
	fadd.s f11, f10, f12
	bge t2, t3, label21
	fmv.s f10, f11
	j label18
.p2align 2
label21:
	addw a5, a2, t2
	addw t1, a3, t2
	mulw a4, a5, t1
	srliw t0, a4, 31
	add t1, a4, t0
	addiw a4, t2, 1
	sraiw a5, t1, 1
	addw t0, a5, a4
	sh2add a5, t2, a0
	flw f12, 0(a5)
	fcvt.s.w f10, t0
	li a5, 100000
	fdiv.s f10, f12, f10
	fadd.s f11, f11, f10
	blt a4, a5, label291
	li t2, 100000
	sh2add a3, a2, s0
	addiw a2, a2, 1
	fsw f11, 0(a3)
	li a3, 100000
	blt a2, a3, label15
	fmv.w.x f11, zero
	mv t1, zero
	mv a3, zero
	li a4, 100000
	blt zero, a4, label31
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label47
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label60
.p2align 2
label291:
	mv t2, a4
	j label21
.p2align 2
label47:
	li a3, 100000
	blt t2, a3, label51
	sh2add a3, a2, s1
	addiw a2, a2, 1
	fsw f11, 0(a3)
	li a3, 100000
	blt a2, a3, label47
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label60
.p2align 2
label51:
	addiw a4, t2, 4
	addiw a3, a2, 1
	li a5, 100000
	bge a4, a5, label52
	addiw a4, a2, 1
	addiw a5, a2, 2
	addiw t0, a2, 3
	addiw t1, a2, 4
	fmv.s f10, f11
	j label56
.p2align 2
label52:
	addw a5, a2, t2
	addw t0, a3, t2
	mulw a4, a5, t0
	srliw t1, a4, 31
	add t0, a4, t1
	addiw a4, t2, 1
	sraiw a5, t0, 1
	addw t0, a5, a4
	sh2add a5, t2, a0
	flw f12, 0(a5)
	fcvt.s.w f10, t0
	li a5, 100000
	fdiv.s f10, f12, f10
	fadd.s f11, f11, f10
	blt a4, a5, label406
	li t2, 100000
	sh2add a3, a2, s1
	addiw a2, a2, 1
	fsw f11, 0(a3)
	li a3, 100000
	blt a2, a3, label47
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label60
.p2align 2
label406:
	mv t2, a4
	j label52
.p2align 2
label56:
	addw t5, a2, t2
	addw t4, a4, t2
	mulw t3, t5, t4
	srliw t5, t3, 31
	add t6, t3, t5
	addiw t5, t2, 1
	sraiw t3, t6, 1
	addw t6, t3, t5
	addw t5, a5, t2
	sh2add t3, t2, a0
	mulw t4, t4, t5
	flw f12, 0(t3)
	fcvt.s.w f11, t6
	srliw a6, t4, 31
	flw f13, 4(t3)
	add t6, t4, a6
	fdiv.s f11, f12, f11
	addiw a6, t2, 2
	sraiw t4, t6, 1
	addw t6, t4, a6
	addiw a6, t2, 3
	addw t4, t0, t2
	mulw t5, t5, t4
	fadd.s f10, f10, f11
	fcvt.s.w f11, t6
	srliw t6, t5, 31
	fdiv.s f12, f13, f11
	add a7, t5, t6
	flw f13, 8(t3)
	sraiw t5, a7, 1
	addw t6, t5, a6
	addw t5, t1, t2
	fcvt.s.w f11, t6
	addiw t2, t2, 4
	mulw t4, t4, t5
	srliw t6, t4, 31
	add t5, t4, t6
	sraiw t4, t5, 1
	addw t5, t4, t2
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	fcvt.s.w f11, t5
	fadd.s f10, f10, f12
	flw f12, 12(t3)
	li t3, 99996
	fdiv.s f13, f12, f11
	fadd.s f11, f10, f13
	bge t2, t3, label52
	fmv.s f10, f11
	j label56
label60:
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
.p2align 2
label61:
	sh2add a1, a0, s1
	sh2add a2, a0, s0
	flw f11, 0(a1)
	flw f12, 0(a2)
	fmul.s f13, f11, f12
	flw f11, 4(a1)
	flw f12, 4(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 8(a1)
	fadd.s f10, f10, f13
	flw f13, 8(a2)
	fmul.s f12, f11, f13
	flw f11, 12(a1)
	fadd.s f10, f10, f12
	flw f12, 12(a2)
	fmul.s f13, f11, f12
	flw f11, 16(a1)
	flw f12, 16(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 20(a1)
	fadd.s f10, f10, f13
	flw f13, 20(a2)
	fmul.s f12, f11, f13
	flw f11, 24(a1)
	fadd.s f10, f10, f12
	flw f12, 24(a2)
	fmul.s f13, f11, f12
	flw f11, 28(a1)
	flw f12, 28(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 32(a1)
	flw f12, 32(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 36(a1)
	fadd.s f10, f10, f13
	flw f13, 36(a2)
	fmul.s f12, f11, f13
	flw f11, 40(a1)
	flw f13, 40(a2)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 44(a1)
	fadd.s f10, f10, f12
	flw f12, 44(a2)
	fmul.s f13, f11, f12
	flw f11, 48(a1)
	fadd.s f10, f10, f13
	flw f13, 48(a2)
	fmul.s f12, f11, f13
	flw f11, 52(a1)
	flw f13, 52(a2)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 56(a1)
	fadd.s f10, f10, f12
	flw f12, 56(a2)
	fmul.s f13, f11, f12
	flw f11, 60(a1)
	addiw a1, a0, 16
	flw f12, 60(a2)
	li a2, 99984
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	bge a1, a2, label64
	mv a0, a1
	j label61
label64:
	sh2add a2, a1, s1
	flw f11, 0(a2)
	sh2add a1, a1, s0
	flw f13, 0(a1)
	fmul.s f12, f11, f13
	flw f11, 4(a2)
	flw f13, 4(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 8(a2)
	flw f13, 8(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 12(a2)
	flw f13, 12(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 16(a2)
	fadd.s f10, f10, f12
	flw f12, 16(a1)
	fmul.s f13, f11, f12
	flw f11, 20(a2)
	fadd.s f10, f10, f13
	flw f13, 20(a1)
	fmul.s f12, f11, f13
	flw f11, 24(a2)
	fadd.s f10, f10, f12
	flw f12, 24(a1)
	fmul.s f13, f11, f12
	flw f11, 28(a2)
	fadd.s f10, f10, f13
	flw f13, 28(a1)
	fmul.s f12, f11, f13
	flw f11, 32(a2)
	fadd.s f10, f10, f12
	flw f12, 32(a1)
	fmul.s f13, f11, f12
	flw f11, 36(a2)
	fadd.s f10, f10, f13
	flw f13, 36(a1)
	fmul.s f12, f11, f13
	flw f11, 40(a2)
	flw f13, 40(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 44(a2)
	flw f13, 44(a1)
	addiw a1, a0, 28
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	j label65
.p2align 2
label81:
	addiw a2, a3, 1
	li a4, 100000
	blt t1, a4, label82
	sh2add a3, a3, a0
	fsw f11, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label81
	fmv.w.x f11, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label15
	mv t1, zero
	mv a3, zero
	blt zero, a4, label31
	li a3, 100000
	blt zero, a3, label47
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label60
.p2align 2
label87:
	addw t0, a3, a4
	addw t2, a2, a4
	mulw a5, t0, t2
	srliw t1, a5, 31
	add t0, a5, t1
	sraiw a5, t0, 1
	addw t1, a2, a5
	sh2add a5, a4, s1
	addiw a4, a4, 1
	flw f12, 0(a5)
	fcvt.s.w f10, t1
	li a5, 100000
	fdiv.s f10, f12, f10
	fadd.s f11, f11, f10
	blt a4, a5, label87
	li t1, 100000
	sh2add a3, a3, a0
	fsw f11, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label81
	fmv.w.x f11, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label15
	mv t1, zero
	mv a3, zero
	li a4, 100000
	blt zero, a4, label31
	li a3, 100000
	blt zero, a3, label47
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label60
.p2align 2
label31:
	addiw a2, a3, 1
	li a4, 100000
	blt t1, a4, label35
	sh2add a3, a3, a0
	fsw f11, 0(a3)
	mv a3, a2
	blt a2, a4, label31
	fmv.w.x f11, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label47
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label60
.p2align 2
label35:
	addiw a4, t1, 4
	li a5, 100000
	blt a4, a5, label36
	j label1036
.p2align 2
label40:
	addw t0, a3, a4
	addw t1, a2, a4
	mulw a5, t0, t1
	srliw t2, a5, 31
	add t0, a5, t2
	sraiw a5, t0, 1
	addw t1, a2, a5
	sh2add a5, a4, s0
	addiw a4, a4, 1
	flw f12, 0(a5)
	fcvt.s.w f10, t1
	li a5, 100000
	fdiv.s f10, f12, f10
	fadd.s f11, f11, f10
	blt a4, a5, label40
	li t1, 100000
	sh2add a3, a3, a0
	fsw f11, 0(a3)
	mv a3, a2
	li a4, 100000
	blt a2, a4, label31
	fmv.w.x f11, zero
	mv t2, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label47
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label60
.p2align 2
label1036:
	mv a4, t1
	j label40
.p2align 2
label36:
	addiw a4, a3, 2
	addiw a5, a3, 3
	addiw t0, a3, 4
	fmv.s f10, f11
.p2align 2
label37:
	addw t4, a3, t1
	addw t3, a2, t1
	mulw t2, t4, t3
	srliw t5, t2, 31
	add t4, t2, t5
	sraiw t2, t4, 1
	addw t4, a4, t1
	addw t5, a2, t2
	mulw t3, t3, t4
	sh2add t2, t1, s0
	srliw t6, t3, 31
	fcvt.s.w f11, t5
	flw f12, 0(t2)
	add t5, t3, t6
	fdiv.s f11, f12, f11
	sraiw t3, t5, 1
	flw f12, 4(t2)
	addw t6, a2, t3
	addw t3, a5, t1
	mulw t4, t4, t3
	srliw t5, t4, 31
	fadd.s f10, f10, f11
	fcvt.s.w f11, t6
	add t6, t4, t5
	fdiv.s f13, f12, f11
	sraiw t4, t6, 1
	flw f12, 8(t2)
	addw t5, a2, t4
	fcvt.s.w f11, t5
	addw t5, t0, t1
	addiw t1, t1, 4
	mulw t3, t3, t5
	srliw t4, t3, 31
	add t5, t3, t4
	sraiw t3, t5, 1
	addw t4, a2, t3
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	flw f12, 12(t2)
	fcvt.s.w f11, t4
	li t2, 99996
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fadd.s f11, f10, f13
	bge t1, t2, label1036
	fmv.s f10, f11
	j label37
.p2align 2
label82:
	addiw a4, t1, 4
	li a5, 100000
	blt a4, a5, label83
.p2align 2
label844:
	mv a4, t1
	j label87
.p2align 2
label83:
	addiw a4, a3, 2
	addiw a5, a3, 3
	addiw t0, a3, 4
	fmv.s f10, f11
.p2align 2
label84:
	addw t4, a3, t1
	addw t3, a2, t1
	mulw t2, t4, t3
	srliw t5, t2, 31
	add t4, t2, t5
	sraiw t2, t4, 1
	addw t4, a4, t1
	addw t5, a2, t2
	mulw t3, t3, t4
	sh2add t2, t1, s1
	fcvt.s.w f11, t5
	flw f12, 0(t2)
	srliw t5, t3, 31
	fdiv.s f11, f12, f11
	add t6, t3, t5
	flw f12, 4(t2)
	sraiw t3, t6, 1
	addw t5, a2, t3
	addw t3, a5, t1
	mulw t4, t4, t3
	srliw t6, t4, 31
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	add t5, t4, t6
	fdiv.s f13, f12, f11
	sraiw t4, t5, 1
	addw t6, a2, t4
	addw t4, t0, t1
	fcvt.s.w f11, t6
	addiw t1, t1, 4
	mulw t3, t3, t4
	srliw t6, t3, 31
	add t5, t3, t6
	sraiw t3, t5, 1
	addw t4, a2, t3
	fadd.s f10, f10, f13
	flw f13, 8(t2)
	fdiv.s f12, f13, f11
	flw f13, 12(t2)
	fcvt.s.w f11, t4
	li t2, 99996
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	fadd.s f11, f10, f12
	bge t1, t2, label844
	fmv.s f10, f11
	j label84
.p2align 2
label16:
	addiw a4, t2, 4
	addiw a3, a2, 1
	li a5, 100000
	blt a4, a5, label17
	j label21
label65:
	sh2add a0, a1, s1
	sh2add a2, a1, s0
	flw f11, 0(a0)
	addiw a1, a1, 1
	li a0, 100000
	flw f12, 0(a2)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	blt a1, a0, label65
	fmv.w.x f11, zero
	mv a0, zero
.p2align 2
label68:
	sh2add a1, a0, s0
	li a2, 99984
	flw f12, 0(a1)
	fmul.s f13, f12, f12
	flw f12, 4(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 8(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 12(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 16(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 20(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 24(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 28(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 32(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 36(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 40(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 44(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 48(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 52(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 56(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 60(a1)
	addiw a1, a0, 16
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	bge a1, a2, label71
	mv a0, a1
	j label68
label71:
	sh2add a1, a1, s0
	addiw a0, a0, 28
	flw f12, 0(a1)
	fmul.s f13, f12, f12
	flw f12, 4(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 8(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 12(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 16(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 20(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 24(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 28(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 32(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 36(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 40(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 44(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
label72:
	sh2add a1, a0, s0
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	blt a0, a1, label72
	fdiv.s f10, f10, f11
	lui a0, 260096
pcrel1095:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel1095)
	fsub.s f11, f12, f10
	flw f12, 0(a0)
	flw f13, 4(a0)
	flt.s a1, f12, f11
	flt.s a0, f11, f13
	or a1, a1, a0
	bne a1, zero, label800
	lui a0, 260096
	fmv.w.x f11, a0
	j label79
label800:
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
	j label76
label79:
	lui a0, 260096
pcrel1096:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel1096)
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
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label76:
	fadd.s f11, f11, f12
	lui a0, 258048
pcrel1097:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel1097)
	flw f15, 0(a0)
	flw f14, 4(a0)
	fmul.s f11, f11, f13
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a2, f13, f14
	flt.s a1, f15, f13
	or a0, a1, a2
	bne a0, zero, label76
	j label79
