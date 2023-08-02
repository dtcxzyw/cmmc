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
	addi sp, sp, -88
	li a0, 62
	sd ra, 0(sp)
	sd s6, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	sd s3, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	jal _sysy_starttime
	lui s4, 258048
	mv a4, zero
	lui s2, 260096
pcrel1149:
	auipc a1, %pcrel_hi(vectorA)
	lui a3, 24
	addi s6, a1, %pcrel_lo(pcrel1149)
	addiw a0, a3, 1692
pcrel1150:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	mv a2, s6
	addi s0, a0, 4
	addi s3, a1, %pcrel_lo(pcrel1150)
	addi s1, s0, -16
	li a1, 1000
	addi a3, s1, -16
.p2align 2
label2:
	fmv.w.x f10, s2
	addiw a4, a4, 64
	fsw f10, 0(a2)
	fsw f10, 4(a2)
	fsw f10, 8(a2)
	fsw f10, 12(a2)
	fsw f10, 16(a2)
	fsw f10, 20(a2)
	fsw f10, 24(a2)
	fsw f10, 28(a2)
	fsw f10, 32(a2)
	fsw f10, 36(a2)
	fsw f10, 40(a2)
	fsw f10, 44(a2)
	fsw f10, 48(a2)
	fsw f10, 52(a2)
	fsw f10, 56(a2)
	fsw f10, 60(a2)
	fsw f10, 64(a2)
	fsw f10, 68(a2)
	fsw f10, 72(a2)
	fsw f10, 76(a2)
	fsw f10, 80(a2)
	fsw f10, 84(a2)
	fsw f10, 88(a2)
	fsw f10, 92(a2)
	fsw f10, 96(a2)
	fsw f10, 100(a2)
	fsw f10, 104(a2)
	fsw f10, 108(a2)
	fsw f10, 112(a2)
	fsw f10, 116(a2)
	fsw f10, 120(a2)
	fsw f10, 124(a2)
	fsw f10, 128(a2)
	fsw f10, 132(a2)
	fsw f10, 136(a2)
	fsw f10, 140(a2)
	fsw f10, 144(a2)
	fsw f10, 148(a2)
	fsw f10, 152(a2)
	fsw f10, 156(a2)
	fsw f10, 160(a2)
	fsw f10, 164(a2)
	fsw f10, 168(a2)
	fsw f10, 172(a2)
	fsw f10, 176(a2)
	fsw f10, 180(a2)
	fsw f10, 184(a2)
	fsw f10, 188(a2)
	fsw f10, 192(a2)
	fsw f10, 196(a2)
	fsw f10, 200(a2)
	fsw f10, 204(a2)
	fsw f10, 208(a2)
	fsw f10, 212(a2)
	fsw f10, 216(a2)
	fsw f10, 220(a2)
	fsw f10, 224(a2)
	fsw f10, 228(a2)
	fsw f10, 232(a2)
	fsw f10, 236(a2)
	fsw f10, 240(a2)
	fsw f10, 244(a2)
	fsw f10, 248(a2)
	fsw f10, 252(a2)
	bge a4, a3, label6
	addi a2, a2, 256
	j label2
label6:
	sh2add a2, a4, s6
pcrel1151:
	auipc a3, %pcrel_hi(vectorB)
	fmv.w.x f10, s2
pcrel1152:
	auipc a4, %pcrel_hi(Vectortm)
	addi s5, a3, %pcrel_lo(pcrel1151)
	fsw f10, 0(a2)
	mv a3, zero
	fsw f10, 4(a2)
	fsw f10, 8(a2)
	fsw f10, 12(a2)
	fsw f10, 16(a2)
	fsw f10, 20(a2)
	fsw f10, 24(a2)
	fsw f10, 28(a2)
	fsw f10, 32(a2)
	fsw f10, 36(a2)
	fsw f10, 40(a2)
	fsw f10, 44(a2)
	fsw f10, 48(a2)
	fsw f10, 52(a2)
	fsw f10, 56(a2)
	fsw f10, 60(a2)
	fsw f10, 64(a2)
	fsw f10, 68(a2)
	fsw f10, 72(a2)
	fsw f10, 76(a2)
	fsw f10, 80(a2)
	fsw f10, 84(a2)
	fsw f10, 88(a2)
	fsw f10, 92(a2)
	fsw f10, 96(a2)
	fsw f10, 100(a2)
	fsw f10, 104(a2)
	fsw f10, 108(a2)
	fsw f10, 112(a2)
	fsw f10, 116(a2)
	fsw f10, 120(a2)
	fsw f10, 124(a2)
	addi a2, a4, %pcrel_lo(pcrel1152)
.p2align 2
label7:
	fmv.w.x f10, zero
	mv a5, a2
	mv t5, zero
	mv t0, zero
	blt zero, s0, label14
	j label249
label51:
	li a0, 76
	jal _sysy_stoptime
	mv a1, zero
	mv a0, s6
	fmv.w.x f10, zero
.p2align 2
label52:
	flw f12, 0(a0)
	sh2add a2, a1, s5
	flw f14, 0(a2)
	flw f13, 4(a0)
	fmul.s f15, f12, f14
	flw f12, 4(a2)
	flw f14, 8(a0)
	fmul.s f0, f13, f12
	fadd.s f11, f10, f15
	flw f15, 8(a2)
	flw f13, 12(a0)
	fadd.s f10, f11, f0
	fmul.s f11, f14, f15
	flw f15, 12(a2)
	flw f14, 16(a0)
	fadd.s f12, f10, f11
	fmul.s f10, f13, f15
	flw f13, 16(a2)
	fmul.s f15, f14, f13
	fadd.s f11, f12, f10
	flw f12, 20(a0)
	flw f13, 20(a2)
	flw f14, 24(a0)
	fmul.s f0, f12, f13
	fadd.s f10, f11, f15
	flw f15, 24(a2)
	flw f13, 28(a0)
	fmul.s f12, f14, f15
	flw f15, 28(a2)
	fadd.s f11, f10, f0
	fmul.s f14, f13, f15
	fadd.s f10, f11, f12
	flw f12, 32(a0)
	flw f13, 32(a2)
	fmul.s f15, f12, f13
	fadd.s f11, f10, f14
	flw f14, 36(a0)
	flw f0, 36(a2)
	flw f13, 40(a0)
	fadd.s f10, f11, f15
	flw f15, 40(a2)
	fmul.s f11, f14, f0
	flw f14, 44(a0)
	fadd.s f12, f10, f11
	fmul.s f10, f13, f15
	flw f15, 44(a2)
	fmul.s f13, f14, f15
	fadd.s f11, f12, f10
	flw f12, 48(a0)
	flw f15, 48(a2)
	flw f14, 52(a0)
	fadd.s f10, f11, f13
	fmul.s f13, f12, f15
	flw f15, 52(a2)
	fmul.s f12, f14, f15
	fadd.s f11, f10, f13
	flw f13, 56(a0)
	flw f15, 56(a2)
	fmul.s f14, f13, f15
	fadd.s f10, f11, f12
	flw f12, 60(a0)
	flw f15, 60(a2)
	addiw a2, a1, 16
	fmul.s f13, f12, f15
	fadd.s f11, f10, f14
	fadd.s f10, f11, f13
	bge a2, s1, label56
	addi a0, a0, 64
	mv a1, a2
	j label52
.p2align 2
label81:
	addiw a4, t0, 1
	bge t5, s0, label82
	addiw t1, t5, 4
	blt t1, s0, label91
	j label731
.p2align 2
label745:
	mv t5, s0
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label81
	addiw a3, a3, 1
	blt a3, a1, label7
	j label51
.p2align 2
label91:
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	sh2add t1, t5, a2
.p2align 2
label92:
	addw a7, t0, t5
	addw a6, a4, t5
	flw f13, 0(t1)
	mulw t6, a7, a6
	srliw s7, t6, 31
	add s8, t6, s7
	addiw t6, t5, 1
	sraiw a7, s8, 1
	addw s7, a7, t6
	addw t6, t2, t5
	mulw a7, a6, t6
	fcvt.s.w f12, s7
	srliw s8, a7, 31
	addiw s7, t5, 2
	add s9, a7, s8
	fdiv.s f14, f13, f12
	sraiw a6, s9, 1
	addiw s9, t5, 3
	addw a7, a6, s7
	addw a6, t3, t5
	fadd.s f11, f10, f14
	flw f14, 4(t1)
	fcvt.s.w f10, a7
	mulw a7, t6, a6
	fdiv.s f13, f14, f10
	srliw s7, a7, 31
	flw f14, 8(t1)
	add s8, a7, s7
	sraiw t6, s8, 1
	addw a7, t6, s9
	fadd.s f12, f11, f13
	fcvt.s.w f11, a7
	addw a7, t4, t5
	fdiv.s f13, f14, f11
	addiw t5, t5, 4
	mulw t6, a6, a7
	srliw s7, t6, 31
	add a7, t6, s7
	sraiw a6, a7, 1
	addw t6, a6, t5
	fcvt.s.w f11, t6
	fadd.s f10, f12, f13
	flw f12, 12(t1)
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t5, a0, label731
	addi t1, t1, 16
	j label92
.p2align 2
label14:
	addiw a4, t0, 1
	bge t5, s0, label254
	addiw t1, t5, 4
	blt t1, s0, label16
	j label259
.p2align 2
label322:
	mv t5, s0
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label14
	fmv.w.x f10, zero
	mv a5, s5
	mv t5, zero
	mv t0, zero
	blt zero, s0, label117
	mv a5, a2
	j label1119
.p2align 2
label259:
	sh2add t1, t5, s6
.p2align 2
label23:
	addw t3, t0, t5
	addw t6, a4, t5
	flw f13, 0(t1)
	addiw t5, t5, 1
	mulw t2, t3, t6
	srliw a6, t2, 31
	add t4, t2, a6
	sraiw t6, t4, 1
	addw t3, a4, t6
	fcvt.s.w f11, t3
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t5, s0, label322
	addi t1, t1, 4
	j label23
.p2align 2
label117:
	addiw a4, t0, 1
	bge t5, s0, label118
	addiw t1, t5, 4
	blt t1, s0, label122
	j label888
.p2align 2
label954:
	mv t5, s0
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label117
	fmv.w.x f10, zero
	mv a5, a2
	mv t5, zero
	mv t0, zero
	blt zero, s0, label99
	mv a5, s6
	j label50
.p2align 2
label99:
	addiw a4, t0, 1
	bge t5, s0, label100
	addiw t1, t5, 4
	blt t1, s0, label105
	j label104
.p2align 2
label876:
	mv t5, s0
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label99
	fmv.w.x f10, zero
	mv a5, s6
	mv t5, zero
	mv t0, zero
	blt zero, s0, label81
	addiw a3, a3, 1
	blt a3, a1, label7
	j label51
.p2align 2
label105:
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	sh2add t1, t5, s5
.p2align 2
label106:
	addw a7, t0, t5
	addw t6, a4, t5
	flw f14, 0(t1)
	mulw a6, a7, t6
	srliw s9, a6, 31
	add s7, a6, s9
	addw a6, t2, t5
	sraiw s8, s7, 1
	addw a7, a4, s8
	fcvt.s.w f12, a7
	mulw a7, t6, a6
	fdiv.s f13, f14, f12
	srliw s7, a7, 31
	add t6, a7, s7
	sraiw s8, t6, 1
	addw t6, t3, t5
	addw a7, a4, s8
	fcvt.s.w f12, a7
	mulw a7, a6, t6
	srliw s7, a7, 31
	add s9, a7, s7
	addw a7, t4, t5
	sraiw s8, s9, 1
	addiw t5, t5, 4
	addw a6, a4, s8
	fadd.s f11, f10, f13
	flw f13, 4(t1)
	fdiv.s f14, f13, f12
	flw f13, 8(t1)
	fcvt.s.w f12, a6
	mulw a6, t6, a7
	srliw s7, a6, 31
	add a7, a6, s7
	sraiw t6, a7, 1
	addw a6, a4, t6
	fadd.s f10, f11, f14
	fdiv.s f14, f13, f12
	fcvt.s.w f12, a6
	fadd.s f11, f10, f14
	flw f14, 12(t1)
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge t5, a0, label104
	addi t1, t1, 16
	j label106
.p2align 2
label888:
	sh2add t1, t5, a2
.p2align 2
label129:
	addw t3, t0, t5
	addw t4, a4, t5
	flw f13, 0(t1)
	addiw t5, t5, 1
	mulw t2, t3, t4
	srliw a6, t2, 31
	add t6, t2, a6
	sraiw t3, t6, 1
	addw t2, t3, t5
	fcvt.s.w f11, t2
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t5, s0, label954
	addi t1, t1, 4
	j label129
.p2align 2
label104:
	sh2add t1, t5, s5
.p2align 2
label112:
	addw t3, t0, t5
	addw t6, a4, t5
	flw f13, 0(t1)
	addiw t5, t5, 1
	mulw t2, t3, t6
	srliw a6, t2, 31
	add t4, t2, a6
	sraiw t6, t4, 1
	addw t3, a4, t6
	fcvt.s.w f11, t3
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t5, s0, label876
	addi t1, t1, 4
	j label112
.p2align 2
label731:
	sh2add t1, t5, a2
.p2align 2
label86:
	addw t3, t0, t5
	addw t4, a4, t5
	flw f12, 0(t1)
	addiw t5, t5, 1
	mulw t2, t3, t4
	srliw t6, t2, 31
	add a6, t2, t6
	sraiw t3, a6, 1
	addw t2, t3, t5
	fcvt.s.w f11, t2
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t5, s0, label745
	addi t1, t1, 4
	j label86
label1119:
	fmv.w.x f10, zero
	mv a5, s6
	mv t5, zero
	mv t0, zero
	blt zero, s0, label81
	j label50
.p2align 2
label118:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label117
	fmv.w.x f10, zero
	mv a5, a2
	mv t5, zero
	mv t0, zero
	blt zero, s0, label99
	j label1119
label50:
	addiw a3, a3, 1
	blt a3, a1, label7
	j label51
.p2align 2
label100:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label99
	fmv.w.x f10, zero
	mv a5, s6
	mv t5, zero
	mv t0, zero
	blt zero, s0, label81
	j label50
.p2align 2
label82:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label81
	addiw a3, a3, 1
	blt a3, a1, label7
	j label51
.p2align 2
label254:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label14
	fmv.w.x f10, zero
	mv a5, s5
	mv t5, zero
	mv t0, zero
	blt zero, s0, label117
	j label1108
label56:
	sh2add a0, a2, s6
	addiw a1, a1, 28
	sh2add a3, a2, s5
	flw f12, 0(a0)
	flw f15, 0(a3)
	flw f13, 4(a0)
	fmul.s f14, f12, f15
	flw f15, 4(a3)
	flw f12, 8(a0)
	fadd.s f11, f10, f14
	fmul.s f14, f13, f15
	flw f15, 8(a3)
	flw f13, 12(a0)
	fadd.s f10, f11, f14
	fmul.s f14, f12, f15
	flw f15, 12(a3)
	fmul.s f12, f13, f15
	fadd.s f11, f10, f14
	flw f14, 16(a0)
	flw f15, 16(a3)
	fmul.s f13, f14, f15
	fadd.s f10, f11, f12
	flw f12, 20(a0)
	flw f14, 20(a3)
	fmul.s f15, f12, f14
	fadd.s f11, f10, f13
	flw f13, 24(a0)
	flw f14, 24(a3)
	flw f12, 28(a0)
	fadd.s f10, f11, f15
	fmul.s f15, f13, f14
	flw f14, 28(a3)
	flw f13, 32(a0)
	fadd.s f11, f10, f15
	fmul.s f15, f12, f14
	flw f14, 32(a3)
	flw f12, 36(a0)
	flw f0, 36(a3)
	fadd.s f10, f11, f15
	fmul.s f15, f13, f14
	flw f13, 40(a0)
	fmul.s f14, f12, f0
	flw f0, 40(a3)
	flw f12, 44(a0)
	sh2add a0, a1, s6
	fadd.s f11, f10, f15
	fmul.s f15, f13, f0
	fadd.s f10, f11, f14
	flw f14, 44(a3)
	fmul.s f13, f12, f14
	fadd.s f11, f10, f15
	fadd.s f10, f11, f13
.p2align 2
label57:
	flw f11, 0(a0)
	sh2add a2, a1, s5
	addiw a1, a1, 1
	flw f12, 0(a2)
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	bge a1, s0, label536
	addi a0, a0, 4
	j label57
label536:
	fmv.w.x f11, zero
	mv a0, s5
	mv a1, zero
.p2align 2
label63:
	flw f13, 0(a0)
	addiw a2, a1, 16
	flw f14, 4(a0)
	fmul.s f15, f13, f13
	fmul.s f1, f14, f14
	flw f13, 8(a0)
	flw f14, 12(a0)
	fmul.s f0, f13, f13
	flw f13, 16(a0)
	fadd.s f12, f11, f15
	fmul.s f15, f14, f14
	fmul.s f14, f13, f13
	fadd.s f11, f12, f1
	fadd.s f12, f11, f0
	fadd.s f11, f12, f15
	flw f15, 20(a0)
	fmul.s f13, f15, f15
	fadd.s f12, f11, f14
	flw f14, 24(a0)
	fmul.s f15, f14, f14
	fadd.s f11, f12, f13
	flw f13, 28(a0)
	flw f14, 32(a0)
	fmul.s f0, f13, f13
	flw f13, 36(a0)
	fadd.s f12, f11, f15
	fmul.s f15, f14, f14
	flw f14, 40(a0)
	fadd.s f11, f12, f0
	fmul.s f0, f13, f13
	flw f13, 44(a0)
	fmul.s f1, f13, f13
	fadd.s f12, f11, f15
	fmul.s f15, f14, f14
	flw f14, 48(a0)
	flw f13, 52(a0)
	fadd.s f11, f12, f0
	fmul.s f0, f14, f14
	flw f14, 56(a0)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	flw f13, 60(a0)
	fadd.s f11, f12, f1
	fadd.s f12, f11, f0
	fmul.s f0, f14, f14
	fmul.s f14, f13, f13
	fadd.s f11, f12, f15
	fadd.s f12, f11, f0
	fadd.s f11, f12, f14
	bge a2, s1, label67
	addi a0, a0, 64
	mv a1, a2
	j label63
label67:
	sh2add a0, a2, s5
	addiw a1, a1, 28
	flw f13, 0(a0)
	flw f14, 4(a0)
	fmul.s f15, f13, f13
	fmul.s f0, f14, f14
	fadd.s f12, f11, f15
	flw f15, 8(a0)
	flw f14, 12(a0)
	fmul.s f1, f15, f15
	fmul.s f2, f14, f14
	flw f15, 16(a0)
	fadd.s f13, f12, f0
	flw f14, 20(a0)
	fmul.s f0, f15, f15
	fmul.s f15, f14, f14
	fadd.s f11, f13, f1
	fadd.s f12, f11, f2
	fadd.s f13, f12, f0
	flw f0, 24(a0)
	fmul.s f14, f0, f0
	fadd.s f11, f13, f15
	flw f15, 28(a0)
	fmul.s f1, f15, f15
	fadd.s f12, f11, f14
	flw f14, 32(a0)
	fmul.s f0, f14, f14
	fadd.s f13, f12, f1
	flw f12, 36(a0)
	flw f14, 40(a0)
	fmul.s f15, f12, f12
	fadd.s f11, f13, f0
	fmul.s f0, f14, f14
	fadd.s f13, f11, f15
	flw f15, 44(a0)
	sh2add a0, a1, s5
	fmul.s f14, f15, f15
	fadd.s f12, f13, f0
	fadd.s f11, f12, f14
.p2align 2
label68:
	flw f12, 0(a0)
	addiw a1, a1, 1
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	bge a1, s0, label73
	addi a0, a0, 4
	j label68
label73:
	fdiv.s f10, f10, f11
	fmv.w.x f13, s2
	flw f11, 0(s3)
	fsub.s f12, f13, f10
	flw f13, 4(s3)
	flt.s a0, f11, f12
	flt.s a2, f12, f13
	or a1, a0, a2
	beq a1, zero, label683
	fmv.w.x f11, s2
	fmv.s f12, f10
	j label76
label74:
	fmv.w.x f12, s2
	flw f13, 0(s3)
	fsub.s f10, f11, f12
	flw f11, 4(s3)
	fle.s a1, f10, f13
	fle.s a2, f11, f10
	and a0, a1, a2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label76:
	fadd.s f14, f11, f12
	fmv.w.x f15, s4
	fmul.s f11, f14, f15
	flw f14, 0(s3)
	flw f15, 4(s3)
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a2, f13, f15
	flt.s a0, f14, f13
	or a1, a0, a2
	bne a1, zero, label76
	j label74
.p2align 2
label249:
	fmv.w.x f10, zero
	mv a5, s5
	mv t5, zero
	mv t0, zero
	blt zero, s0, label117
label1108:
	fmv.w.x f10, zero
	mv a5, a2
	mv t5, zero
	mv t0, zero
	blt zero, s0, label99
	j label1119
.p2align 2
label16:
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	sh2add t1, t5, s6
.p2align 2
label17:
	addw a7, t0, t5
	addw t6, a4, t5
	flw f14, 0(t1)
	mulw a6, a7, t6
	srliw s7, a6, 31
	add a7, a6, s7
	sraiw s8, a7, 1
	addw a6, a4, s8
	fcvt.s.w f12, a6
	addw a6, t2, t5
	fdiv.s f13, f14, f12
	mulw a7, t6, a6
	srliw s7, a7, 31
	add s8, a7, s7
	sraiw t6, s8, 1
	addw a7, a4, t6
	addw t6, t3, t5
	fadd.s f11, f10, f13
	flw f13, 4(t1)
	fcvt.s.w f10, a7
	mulw a7, a6, t6
	fdiv.s f14, f13, f10
	srliw s7, a7, 31
	flw f13, 8(t1)
	add a6, a7, s7
	addw s7, t4, t5
	sraiw s8, a6, 1
	addiw t5, t5, 4
	mulw a6, t6, s7
	addw a7, a4, s8
	fadd.s f12, f11, f14
	fcvt.s.w f11, a7
	srliw a7, a6, 31
	fdiv.s f14, f13, f11
	add s8, a6, a7
	sraiw t6, s8, 1
	addw a6, a4, t6
	fcvt.s.w f11, a6
	fadd.s f10, f12, f14
	flw f12, 12(t1)
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t5, a0, label259
	addi t1, t1, 16
	j label17
label683:
	fmv.w.x f11, s2
	j label74
.p2align 2
label122:
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	sh2add t1, t5, a2
.p2align 2
label123:
	addw a7, t0, t5
	addw a6, a4, t5
	flw f13, 0(t1)
	mulw t6, a7, a6
	srliw s8, t6, 31
	add s7, t6, s8
	addiw t6, t5, 1
	sraiw a7, s7, 1
	addw s8, a7, t6
	addw t6, t2, t5
	mulw a7, a6, t6
	fcvt.s.w f12, s8
	srliw s7, a7, 31
	add s8, a7, s7
	fdiv.s f14, f13, f12
	addiw a7, t5, 2
	sraiw a6, s8, 1
	addw s7, a6, a7
	addw a6, t3, t5
	mulw a7, t6, a6
	fcvt.s.w f12, s7
	srliw s8, a7, 31
	add s7, a7, s8
	addiw a7, t5, 3
	sraiw t6, s7, 1
	addw s8, t6, a7
	addw a7, t4, t5
	addiw t5, t5, 4
	mulw t6, a6, a7
	srliw s7, t6, 31
	add a7, t6, s7
	sraiw a6, a7, 1
	addw t6, a6, t5
	fadd.s f11, f10, f14
	flw f14, 4(t1)
	fdiv.s f13, f14, f12
	flw f14, 8(t1)
	fcvt.s.w f12, s8
	fadd.s f10, f11, f13
	fdiv.s f13, f14, f12
	flw f14, 12(t1)
	fcvt.s.w f12, t6
	fadd.s f11, f10, f13
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge t5, a0, label888
	addi t1, t1, 16
	j label123
