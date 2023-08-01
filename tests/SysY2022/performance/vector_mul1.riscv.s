.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	3045472189
.bss
.align 8
Vectortm:
	.zero	400000
.align 8
vectorB:
	.zero	400000
.align 8
vectorA:
	.zero	400000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -64
	li a0, 62
	sd ra, 0(sp)
	sd s4, 8(sp)
	sd s3, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s5, 40(sp)
	sd s0, 48(sp)
	sd s2, 56(sp)
	jal _sysy_starttime
	li a2, 1000
	lui s6, 258048
	li a0, 99996
	mv a4, zero
	lui s3, 260096
pcrel1088:
	auipc a1, %pcrel_hi(vectorA)
	addi s0, a0, 4
	addi s4, a1, %pcrel_lo(pcrel1088)
	addi s2, s0, -16
pcrel1089:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, s2, -16
	addi s5, a1, %pcrel_lo(pcrel1089)
.p2align 2
label2:
	sh2add a1, a4, s4
	fmv.w.x f10, s3
	addiw a4, a4, 64
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
	fsw f10, 64(a1)
	fsw f10, 68(a1)
	fsw f10, 72(a1)
	fsw f10, 76(a1)
	fsw f10, 80(a1)
	fsw f10, 84(a1)
	fsw f10, 88(a1)
	fsw f10, 92(a1)
	fsw f10, 96(a1)
	fsw f10, 100(a1)
	fsw f10, 104(a1)
	fsw f10, 108(a1)
	fsw f10, 112(a1)
	fsw f10, 116(a1)
	fsw f10, 120(a1)
	fsw f10, 124(a1)
	fsw f10, 128(a1)
	fsw f10, 132(a1)
	fsw f10, 136(a1)
	fsw f10, 140(a1)
	fsw f10, 144(a1)
	fsw f10, 148(a1)
	fsw f10, 152(a1)
	fsw f10, 156(a1)
	fsw f10, 160(a1)
	fsw f10, 164(a1)
	fsw f10, 168(a1)
	fsw f10, 172(a1)
	fsw f10, 176(a1)
	fsw f10, 180(a1)
	fsw f10, 184(a1)
	fsw f10, 188(a1)
	fsw f10, 192(a1)
	fsw f10, 196(a1)
	fsw f10, 200(a1)
	fsw f10, 204(a1)
	fsw f10, 208(a1)
	fsw f10, 212(a1)
	fsw f10, 216(a1)
	fsw f10, 220(a1)
	fsw f10, 224(a1)
	fsw f10, 228(a1)
	fsw f10, 232(a1)
	fsw f10, 236(a1)
	fsw f10, 240(a1)
	fsw f10, 244(a1)
	fsw f10, 248(a1)
	fsw f10, 252(a1)
	blt a4, a3, label2
	sh2add a1, a4, s4
	mv a3, zero
pcrel1090:
	auipc a4, %pcrel_hi(Vectortm)
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
	fsw f10, 64(a1)
	fsw f10, 68(a1)
	fsw f10, 72(a1)
	fsw f10, 76(a1)
	fsw f10, 80(a1)
	fsw f10, 84(a1)
	fsw f10, 88(a1)
	fsw f10, 92(a1)
	fsw f10, 96(a1)
	fsw f10, 100(a1)
	fsw f10, 104(a1)
	fsw f10, 108(a1)
	fsw f10, 112(a1)
	fsw f10, 116(a1)
	fsw f10, 120(a1)
	fsw f10, 124(a1)
pcrel1091:
	auipc a1, %pcrel_hi(vectorB)
	addi s1, a1, %pcrel_lo(pcrel1091)
	addi a1, a4, %pcrel_lo(pcrel1090)
.p2align 2
label5:
	fmv.w.x f10, zero
	mv t3, zero
	mv a5, zero
	blt zero, s0, label11
	j label208
.p2align 2
label59:
	addiw a4, a5, 1
	bge t3, s0, label60
	addiw t0, t3, 4
	blt t0, s0, label67
	j label64
.p2align 2
label476:
	mv t3, s0
	sh2add a5, a5, s4
	fsw f10, 0(a5)
	mv a5, a4
	blt a4, s0, label59
	addiw a3, a3, 1
	blt a3, a2, label5
label72:
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
.p2align 2
label73:
	sh2add a1, a0, s4
	sh2add a2, a0, s1
	flw f11, 0(a1)
	flw f12, 0(a2)
	fmul.s f13, f11, f12
	flw f11, 4(a1)
	flw f12, 4(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 8(a1)
	flw f12, 8(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 12(a1)
	fadd.s f10, f10, f13
	flw f13, 12(a2)
	fmul.s f12, f11, f13
	flw f11, 16(a1)
	fadd.s f10, f10, f12
	flw f12, 16(a2)
	fmul.s f13, f11, f12
	flw f11, 20(a1)
	flw f12, 20(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 24(a1)
	fadd.s f10, f10, f13
	flw f13, 24(a2)
	fmul.s f12, f11, f13
	flw f11, 28(a1)
	fadd.s f10, f10, f12
	flw f12, 28(a2)
	fmul.s f13, f11, f12
	flw f11, 32(a1)
	fadd.s f10, f10, f13
	flw f13, 32(a2)
	fmul.s f12, f11, f13
	flw f11, 36(a1)
	fadd.s f10, f10, f12
	flw f12, 36(a2)
	fmul.s f13, f11, f12
	flw f11, 40(a1)
	flw f12, 40(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 44(a1)
	flw f12, 44(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 48(a1)
	flw f12, 48(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 52(a1)
	flw f12, 52(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 56(a1)
	flw f12, 56(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 60(a1)
	addiw a1, a0, 16
	fadd.s f10, f10, f13
	flw f13, 60(a2)
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	bge a1, s2, label76
	mv a0, a1
	j label73
.p2align 2
label64:
	addw t1, a5, t3
	addw t4, a4, t3
	mulw t0, t1, t4
	srliw t2, t0, 31
	add t4, t0, t2
	addiw t0, t3, 1
	sraiw t1, t4, 1
	addw t2, t1, t0
	sh2add t1, t3, a1
	flw f12, 0(t1)
	fcvt.s.w f11, t2
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge t0, s0, label476
	mv t3, t0
	j label64
.p2align 2
label67:
	addiw t0, a5, 2
	addiw t1, a5, 3
	addiw t2, a5, 4
.p2align 2
label68:
	addw t6, a5, t3
	addw t5, a4, t3
	addiw a7, t3, 1
	mulw t4, t6, t5
	srliw t6, t4, 31
	add a6, t4, t6
	sraiw t4, a6, 1
	addw t6, t4, a7
	sh2add t4, t3, a1
	flw f12, 0(t4)
	fcvt.s.w f11, t6
	addw t6, t0, t3
	fdiv.s f11, f12, f11
	mulw t5, t5, t6
	flw f12, 4(t4)
	srliw a7, t5, 31
	add a6, t5, a7
	addiw a7, t3, 2
	sraiw t5, a6, 1
	addw a6, t5, a7
	addw t5, t1, t3
	mulw t6, t6, t5
	fadd.s f10, f10, f11
	fcvt.s.w f11, a6
	srliw a6, t6, 31
	fdiv.s f13, f12, f11
	add a7, t6, a6
	flw f12, 8(t4)
	addiw a6, t3, 3
	sraiw t6, a7, 1
	addw a7, t6, a6
	addw t6, t2, t3
	fcvt.s.w f11, a7
	addiw t3, t3, 4
	mulw t5, t5, t6
	srliw a6, t5, 31
	add t6, t5, a6
	sraiw t5, t6, 1
	addw t6, t5, t3
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fcvt.s.w f11, t6
	fadd.s f10, f10, f13
	flw f13, 12(t4)
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	blt t3, a0, label68
	j label64
.p2align 2
label11:
	addiw a4, a5, 1
	bge t3, s0, label214
	addiw t1, t3, 4
	blt t1, s0, label16
.p2align 2
label219:
	mv t0, t3
.p2align 2
label13:
	addw t2, a5, t0
	addw t3, a4, t0
	mulw t1, t2, t3
	srliw t4, t1, 31
	add t3, t1, t4
	sraiw t2, t3, 1
	addw t1, a4, t2
	sh2add t2, t0, s4
	addiw t0, t0, 1
	flw f12, 0(t2)
	fcvt.s.w f11, t1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	blt t0, s0, label13
	mv t3, s0
	sh2add a5, a5, a1
	fsw f10, 0(a5)
	mv a5, a4
	blt a4, s0, label11
	j label1057
.p2align 2
label16:
	addiw t0, a5, 2
	addiw t1, a5, 3
	addiw t2, a5, 4
.p2align 2
label17:
	addw t6, a5, t3
	addw t5, a4, t3
	mulw t4, t6, t5
	srliw t6, t4, 31
	add a6, t4, t6
	sraiw t4, a6, 1
	addw t6, a4, t4
	sh2add t4, t3, s4
	flw f12, 0(t4)
	fcvt.s.w f11, t6
	addw t6, t0, t3
	fdiv.s f11, f12, f11
	mulw t5, t5, t6
	flw f12, 4(t4)
	srliw a7, t5, 31
	add a6, t5, a7
	sraiw t5, a6, 1
	addw a7, a4, t5
	addw t5, t1, t3
	mulw t6, t6, t5
	fadd.s f10, f10, f11
	fcvt.s.w f11, a7
	srliw a7, t6, 31
	fdiv.s f13, f12, f11
	add a6, t6, a7
	flw f12, 8(t4)
	sraiw t6, a6, 1
	addw a7, a4, t6
	addw t6, t2, t3
	fcvt.s.w f11, a7
	addiw t3, t3, 4
	mulw t5, t5, t6
	srliw a6, t5, 31
	add t6, t5, a6
	sraiw t5, t6, 1
	addw a6, a4, t5
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	flw f12, 12(t4)
	fcvt.s.w f11, a6
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	blt t3, a0, label17
	j label219
label76:
	sh2add a2, a1, s4
	flw f11, 0(a2)
	sh2add a1, a1, s1
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
	flw f13, 16(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 20(a2)
	fadd.s f10, f10, f12
	flw f12, 20(a1)
	fmul.s f13, f11, f12
	flw f11, 24(a2)
	fadd.s f10, f10, f13
	flw f13, 24(a1)
	fmul.s f12, f11, f13
	flw f11, 28(a2)
	flw f13, 28(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 32(a2)
	flw f13, 32(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 36(a2)
	fadd.s f10, f10, f12
	flw f12, 36(a1)
	fmul.s f13, f11, f12
	flw f11, 40(a2)
	fadd.s f10, f10, f13
	flw f13, 40(a1)
	fmul.s f12, f11, f13
	flw f11, 44(a2)
	flw f13, 44(a1)
	addiw a1, a0, 28
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
.p2align 2
label77:
	sh2add a0, a1, s4
	sh2add a2, a1, s1
	flw f11, 0(a0)
	addiw a1, a1, 1
	flw f12, 0(a2)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	blt a1, s0, label77
	fmv.w.x f11, zero
	mv a0, zero
.p2align 2
label80:
	sh2add a1, a0, s1
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
	bge a1, s2, label83
	mv a0, a1
	j label80
.p2align 2
label60:
	sh2add a5, a5, s4
	fsw f10, 0(a5)
	mv a5, a4
	blt a4, s0, label59
	addiw a3, a3, 1
	blt a3, a2, label5
	j label72
.p2align 2
label214:
	sh2add a5, a5, a1
	fsw f10, 0(a5)
	mv a5, a4
	blt a4, s0, label11
	fmv.w.x f10, zero
	mv t3, zero
	mv a5, zero
	bge zero, s0, label1045
.p2align 2
label27:
	addiw a4, a5, 1
	bge t3, s0, label293
	addiw t0, t3, 4
	blt t0, s0, label29
	j label33
.p2align 2
label363:
	mv t3, s0
	sh2add a5, a5, s1
	fsw f10, 0(a5)
	mv a5, a4
	blt a4, s0, label27
	fmv.w.x f10, zero
	mv t3, zero
	mv a5, zero
	blt zero, s0, label43
	j label1049
.p2align 2
label29:
	addiw t0, a5, 2
	addiw t1, a5, 3
	addiw t2, a5, 4
.p2align 2
label30:
	addw t6, a5, t3
	addw t5, a4, t3
	addiw a6, t3, 1
	mulw t4, t6, t5
	srliw t6, t4, 31
	add a7, t4, t6
	sraiw t4, a7, 1
	addw t6, t4, a6
	sh2add t4, t3, a1
	flw f12, 0(t4)
	fcvt.s.w f11, t6
	addw t6, t0, t3
	fdiv.s f11, f12, f11
	mulw t5, t5, t6
	flw f12, 4(t4)
	srliw a7, t5, 31
	add a6, t5, a7
	addiw a7, t3, 2
	sraiw t5, a6, 1
	addw a6, t5, a7
	addw t5, t1, t3
	mulw t6, t6, t5
	srliw a7, t6, 31
	fadd.s f10, f10, f11
	fcvt.s.w f11, a6
	add a6, t6, a7
	fdiv.s f13, f12, f11
	addiw a7, t3, 3
	sraiw t6, a6, 1
	addw a6, t6, a7
	addw t6, t2, t3
	fcvt.s.w f11, a6
	addiw t3, t3, 4
	mulw t5, t5, t6
	srliw a6, t5, 31
	add t6, t5, a6
	sraiw t5, t6, 1
	addw t6, t5, t3
	fadd.s f10, f10, f13
	flw f13, 8(t4)
	fdiv.s f12, f13, f11
	fcvt.s.w f11, t6
	fadd.s f10, f10, f12
	flw f12, 12(t4)
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	blt t3, a0, label30
.p2align 2
label33:
	addw t1, a5, t3
	addw t2, a4, t3
	mulw t0, t1, t2
	srliw t4, t0, 31
	add t2, t0, t4
	addiw t0, t3, 1
	sraiw t1, t2, 1
	addw t2, t1, t0
	sh2add t1, t3, a1
	flw f12, 0(t1)
	fcvt.s.w f11, t2
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge t0, s0, label363
	mv t3, t0
	j label33
.p2align 2
label43:
	addiw a4, a5, 1
	bge t3, s0, label44
	addiw t1, t3, 4
	blt t1, s0, label48
.p2align 2
label382:
	mv t0, t3
	j label52
.p2align 2
label48:
	addiw t0, a5, 2
	addiw t1, a5, 3
	addiw t2, a5, 4
.p2align 2
label49:
	addw t6, a5, t3
	addw t5, a4, t3
	mulw t4, t6, t5
	srliw t6, t4, 31
	add a6, t4, t6
	sraiw t4, a6, 1
	addw t6, a4, t4
	sh2add t4, t3, s1
	flw f12, 0(t4)
	fcvt.s.w f11, t6
	addw t6, t0, t3
	fdiv.s f11, f12, f11
	mulw t5, t5, t6
	flw f12, 4(t4)
	srliw a7, t5, 31
	add a6, t5, a7
	sraiw a7, a6, 1
	addw t5, a4, a7
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	addw t5, t1, t3
	fdiv.s f13, f12, f11
	mulw t6, t6, t5
	flw f12, 8(t4)
	srliw a6, t6, 31
	add a7, t6, a6
	sraiw a6, a7, 1
	addw t6, a4, a6
	addw a6, t2, t3
	addiw t3, t3, 4
	mulw t5, t5, a6
	fcvt.s.w f11, t6
	srliw t6, t5, 31
	add a6, t5, t6
	sraiw t5, a6, 1
	addw t6, a4, t5
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fcvt.s.w f11, t6
	fadd.s f10, f10, f13
	flw f13, 12(t4)
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	blt t3, a0, label49
	j label382
.p2align 2
label52:
	addw t2, a5, t0
	addw t3, a4, t0
	mulw t1, t2, t3
	srliw t2, t1, 31
	add t3, t1, t2
	sraiw t1, t3, 1
	addw t2, a4, t1
	sh2add t1, t0, s1
	addiw t0, t0, 1
	flw f12, 0(t1)
	fcvt.s.w f11, t2
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	blt t0, s0, label52
	mv t3, s0
	sh2add a5, a5, a1
	fsw f10, 0(a5)
	mv a5, a4
	blt a4, s0, label43
	fmv.w.x f10, zero
	mv t3, zero
	mv a5, zero
	blt zero, s0, label59
	addiw a3, a3, 1
	blt a3, a2, label5
	j label72
label1049:
	addiw a3, a3, 1
	blt a3, a2, label5
	j label72
.p2align 2
label44:
	sh2add a5, a5, a1
	fsw f10, 0(a5)
	mv a5, a4
	blt a4, s0, label43
	fmv.w.x f10, zero
	mv t3, zero
	mv a5, zero
	blt zero, s0, label59
	j label1049
label1047:
	fmv.w.x f10, zero
	mv t3, zero
	mv a5, zero
	blt zero, s0, label59
	j label1049
.p2align 2
label293:
	sh2add a5, a5, s1
	fsw f10, 0(a5)
	mv a5, a4
	blt a4, s0, label27
	fmv.w.x f10, zero
	mv t3, zero
	mv a5, zero
	blt zero, s0, label43
	j label1047
.p2align 2
label1057:
	fmv.w.x f10, zero
	mv t3, zero
	mv a5, zero
	blt zero, s0, label27
	j label1047
label83:
	sh2add a1, a1, s1
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
.p2align 2
label84:
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	blt a0, s0, label84
	fdiv.s f10, f10, f11
	flw f13, 0(s5)
	fmv.w.x f12, s3
	fsub.s f11, f12, f10
	flw f12, 4(s5)
	flt.s a0, f13, f11
	flt.s a1, f11, f12
	or a0, a0, a1
	beq a0, zero, label869
	fmv.w.x f11, s3
	fmv.s f12, f10
.p2align 2
label88:
	fadd.s f12, f11, f12
	flw f15, 0(s5)
	fmv.w.x f13, s6
	flw f14, 4(s5)
	fmul.s f11, f12, f13
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a1, f13, f14
	flt.s a0, f15, f13
	or a0, a0, a1
	bne a0, zero, label88
label91:
	fmv.w.x f12, s3
	fsub.s f10, f11, f12
	flw f11, 0(s5)
	flw f12, 4(s5)
	fle.s a0, f10, f11
	fle.s a1, f12, f10
	and a0, a0, a1
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	ld s2, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
label208:
	fmv.w.x f10, zero
	mv t3, zero
	mv a5, zero
	blt zero, s0, label27
label1045:
	fmv.w.x f10, zero
	mv t3, zero
	mv a5, zero
	blt zero, s0, label43
	j label1047
label869:
	fmv.w.x f11, s3
	j label91
