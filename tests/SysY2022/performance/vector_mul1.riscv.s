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
	sd s5, 8(sp)
	sd s0, 16(sp)
	sd s4, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	jal _sysy_starttime
pcrel970:
	auipc a1, %pcrel_hi(vectorA)
pcrel971:
	auipc a0, %pcrel_hi(vectorB)
pcrel972:
	auipc a2, %pcrel_hi(Vectortm)
	mv a5, zero
	lui s1, 260096
	lui s3, 258048
	addi s5, a1, %pcrel_lo(pcrel970)
	addi s4, a0, %pcrel_lo(pcrel971)
	mv a3, s5
	addi a1, a2, %pcrel_lo(pcrel972)
pcrel973:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	lui a2, 24
	addi s2, a0, %pcrel_lo(pcrel973)
	addiw s0, a2, 1696
	li a2, 1000
	addi a0, s0, -4
	addi a4, a0, -28
	j label2
.p2align 2
label5:
	addi a3, a3, 256
.p2align 2
label2:
	fmv.w.x f10, s1
	addiw a5, a5, 64
	fsw f10, 0(a3)
	fsw f10, 4(a3)
	fsw f10, 8(a3)
	fsw f10, 12(a3)
	fsw f10, 16(a3)
	fsw f10, 20(a3)
	fsw f10, 24(a3)
	fsw f10, 28(a3)
	fsw f10, 32(a3)
	fsw f10, 36(a3)
	fsw f10, 40(a3)
	fsw f10, 44(a3)
	fsw f10, 48(a3)
	fsw f10, 52(a3)
	fsw f10, 56(a3)
	fsw f10, 60(a3)
	fsw f10, 64(a3)
	fsw f10, 68(a3)
	fsw f10, 72(a3)
	fsw f10, 76(a3)
	fsw f10, 80(a3)
	fsw f10, 84(a3)
	fsw f10, 88(a3)
	fsw f10, 92(a3)
	fsw f10, 96(a3)
	fsw f10, 100(a3)
	fsw f10, 104(a3)
	fsw f10, 108(a3)
	fsw f10, 112(a3)
	fsw f10, 116(a3)
	fsw f10, 120(a3)
	fsw f10, 124(a3)
	fsw f10, 128(a3)
	fsw f10, 132(a3)
	fsw f10, 136(a3)
	fsw f10, 140(a3)
	fsw f10, 144(a3)
	fsw f10, 148(a3)
	fsw f10, 152(a3)
	fsw f10, 156(a3)
	fsw f10, 160(a3)
	fsw f10, 164(a3)
	fsw f10, 168(a3)
	fsw f10, 172(a3)
	fsw f10, 176(a3)
	fsw f10, 180(a3)
	fsw f10, 184(a3)
	fsw f10, 188(a3)
	fsw f10, 192(a3)
	fsw f10, 196(a3)
	fsw f10, 200(a3)
	fsw f10, 204(a3)
	fsw f10, 208(a3)
	fsw f10, 212(a3)
	fsw f10, 216(a3)
	fsw f10, 220(a3)
	fsw f10, 224(a3)
	fsw f10, 228(a3)
	fsw f10, 232(a3)
	fsw f10, 236(a3)
	fsw f10, 240(a3)
	fsw f10, 244(a3)
	fsw f10, 248(a3)
	fsw f10, 252(a3)
	blt a5, a4, label5
	sh2add a4, a5, s5
	mv a3, zero
	fsw f10, 0(a4)
	fsw f10, 4(a4)
	fsw f10, 8(a4)
	fsw f10, 12(a4)
	fsw f10, 16(a4)
	fsw f10, 20(a4)
	fsw f10, 24(a4)
	fsw f10, 28(a4)
	fsw f10, 32(a4)
	fsw f10, 36(a4)
	fsw f10, 40(a4)
	fsw f10, 44(a4)
	fsw f10, 48(a4)
	fsw f10, 52(a4)
	fsw f10, 56(a4)
	fsw f10, 60(a4)
	fsw f10, 64(a4)
	fsw f10, 68(a4)
	fsw f10, 72(a4)
	fsw f10, 76(a4)
	fsw f10, 80(a4)
	fsw f10, 84(a4)
	fsw f10, 88(a4)
	fsw f10, 92(a4)
	fsw f10, 96(a4)
	fsw f10, 100(a4)
	fsw f10, 104(a4)
	fsw f10, 108(a4)
	fsw f10, 112(a4)
	fsw f10, 116(a4)
	fsw f10, 120(a4)
	fsw f10, 124(a4)
	j label7
.p2align 2
label930:
	addiw a3, a3, 1
	bge a3, a2, label86
.p2align 2
label7:
	fmv.w.x f10, zero
	mv a5, a1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label14
	mv a5, s4
label931:
	fmv.w.x f10, zero
	mv a5, a1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label62
	j label401
.p2align 2
label258:
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	bge a4, s0, label933
.p2align 2
label14:
	addiw a4, t0, 1
	bge t5, s0, label239
	addiw t1, t5, 4
	bge t1, s0, label244
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	sh2add t1, t5, s5
.p2align 2
label23:
	addw a7, t0, t5
	addw t6, a4, t5
	flw f14, 0(t1)
	mulw a6, a7, t6
	srliw s6, a6, 31
	add a7, a6, s6
	sraiw s7, a7, 1
	addw a6, a4, s7
	fcvt.s.w f12, a6
	addw a6, t2, t5
	fdiv.s f13, f14, f12
	mulw a7, t6, a6
	flw f14, 4(t1)
	srliw s7, a7, 31
	add s8, a7, s7
	sraiw s6, s8, 1
	addw t6, a4, s6
	fcvt.s.w f12, t6
	addw t6, t3, t5
	mulw a7, a6, t6
	srliw s6, a7, 31
	add a6, a7, s6
	addw s6, t4, t5
	sraiw s7, a6, 1
	addiw t5, t5, 4
	mulw a6, t6, s6
	addw a7, a4, s7
	fadd.s f11, f10, f13
	fdiv.s f13, f14, f12
	flw f14, 8(t1)
	fcvt.s.w f12, a7
	srliw a7, a6, 31
	add t6, a6, a7
	sraiw s6, t6, 1
	addw a6, a4, s6
	fadd.s f10, f11, f13
	fdiv.s f13, f14, f12
	fcvt.s.w f12, a6
	fadd.s f11, f10, f13
	flw f13, 12(t1)
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	bge t5, a0, label244
	addi t1, t1, 16
	j label23
.p2align 2
label395:
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	bge a4, s0, label926
.p2align 2
label38:
	addiw a4, t0, 1
	bge t5, s0, label39
	addiw t1, t5, 4
	bge t1, s0, label43
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	sh2add t1, t5, a1
.p2align 2
label45:
	addw a7, t0, t5
	addw a6, a4, t5
	flw f13, 0(t1)
	addiw s8, t5, 2
	mulw t6, a7, a6
	srliw s7, t6, 31
	add s6, t6, s7
	addiw t6, t5, 1
	sraiw a7, s6, 1
	addw s7, a7, t6
	addw t6, t2, t5
	mulw a7, a6, t6
	fcvt.s.w f12, s7
	srliw s6, a7, 31
	add s7, a7, s6
	fdiv.s f14, f13, f12
	sraiw a6, s7, 1
	flw f13, 4(t1)
	addw a7, a6, s8
	addw a6, t3, t5
	fcvt.s.w f12, a7
	mulw a7, t6, a6
	srliw s7, a7, 31
	add s6, a7, s7
	addiw a7, t5, 3
	sraiw t6, s6, 1
	addw s7, t6, a7
	addw a7, t4, t5
	addiw t5, t5, 4
	mulw t6, a6, a7
	srliw s6, t6, 31
	add a7, t6, s6
	sraiw a6, a7, 1
	addw t6, a6, t5
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	fcvt.s.w f12, s7
	fadd.s f10, f11, f14
	flw f14, 8(t1)
	fdiv.s f13, f14, f12
	flw f14, 12(t1)
	fcvt.s.w f12, t6
	fadd.s f11, f10, f13
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge t5, a0, label43
	addi t1, t1, 16
	j label45
.p2align 2
label244:
	sh2add t1, t5, s5
.p2align 2
label16:
	addw t3, t0, t5
	addw a6, a4, t5
	flw f12, 0(t1)
	addiw t5, t5, 1
	mulw t2, t3, a6
	srliw t4, t2, 31
	add t6, t2, t4
	sraiw a6, t6, 1
	addw t3, a4, a6
	fcvt.s.w f11, t3
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t5, s0, label258
	addi t1, t1, 4
	j label16
.p2align 2
label43:
	sh2add t1, t5, a1
.p2align 2
label51:
	addw t3, t0, t5
	addw a6, a4, t5
	flw f12, 0(t1)
	addiw t5, t5, 1
	mulw t2, t3, a6
	srliw t6, t2, 31
	add t4, t2, t6
	sraiw t3, t4, 1
	addw t2, t3, t5
	fcvt.s.w f11, t2
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t5, s0, label395
	addi t1, t1, 4
	j label51
.p2align 2
label477:
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	bge a4, s0, label928
.p2align 2
label62:
	addiw a4, t0, 1
	bge t5, s0, label63
	addiw t4, t5, 4
	bge t4, s0, label412
	addiw t1, t0, 2
	addiw t2, t0, 3
	addiw t3, t0, 4
	j label68
.p2align 2
label459:
	mv t5, t4
	mv t4, t6
.p2align 2
label68:
	addw a7, t0, t5
	addw a6, a4, t5
	mulw t6, a7, a6
	srliw s6, t6, 31
	add a7, t6, s6
	sh2add t6, t5, s4
	sraiw s8, a7, 1
	flw f14, 0(t6)
	addw a7, t1, t5
	addw s7, a4, s8
	mulw s6, a6, a7
	fcvt.s.w f12, s7
	srliw s7, s6, 31
	fdiv.s f13, f14, f12
	add a6, s6, s7
	flw f14, 4(t6)
	sraiw s9, a6, 1
	addw a6, t2, t5
	addw s8, a4, s9
	mulw s6, a7, a6
	fcvt.s.w f12, s8
	srliw s9, s6, 31
	add s8, s6, s9
	sraiw s7, s8, 1
	addw a7, a4, s7
	addw s7, t3, t5
	fadd.s f11, f10, f13
	fdiv.s f13, f14, f12
	fcvt.s.w f12, a7
	mulw a7, a6, s7
	srliw s6, a7, 31
	add t5, a7, s6
	sraiw s7, t5, 1
	addw a6, a4, s7
	fadd.s f10, f11, f13
	flw f13, 8(t6)
	fdiv.s f14, f13, f12
	fcvt.s.w f12, a6
	fadd.s f11, f10, f14
	flw f14, 12(t6)
	addiw t6, t4, 4
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	blt t6, s0, label459
	sh2add t1, t4, s4
.p2align 2
label74:
	addw t3, t0, t4
	addw t5, a4, t4
	flw f12, 0(t1)
	addiw t4, t4, 1
	mulw t2, t3, t5
	srliw a6, t2, 31
	add t6, t2, a6
	sraiw t5, t6, 1
	addw t3, a4, t5
	fcvt.s.w f11, t3
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t4, s0, label477
	addi t1, t1, 4
	j label74
label86:
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
.p2align 2
label87:
	flw f12, 0(s5)
	sh2add a1, a0, s4
	flw f14, 0(a1)
	addiw a0, a0, 16
	flw f13, 4(s5)
	fmul.s f0, f12, f14
	flw f15, 4(a1)
	flw f12, 8(s5)
	fmul.s f14, f13, f15
	flw f15, 8(a1)
	fadd.s f11, f10, f0
	fmul.s f13, f12, f15
	fadd.s f10, f11, f14
	flw f14, 12(s5)
	flw f15, 12(a1)
	fadd.s f11, f10, f13
	flw f13, 16(s5)
	fmul.s f10, f14, f15
	flw f15, 16(a1)
	flw f14, 20(s5)
	fadd.s f12, f11, f10
	fmul.s f11, f13, f15
	flw f15, 20(a1)
	flw f13, 24(s5)
	fadd.s f10, f12, f11
	fmul.s f12, f14, f15
	flw f14, 24(a1)
	fmul.s f15, f13, f14
	fadd.s f11, f10, f12
	flw f12, 28(s5)
	flw f0, 28(a1)
	flw f13, 32(s5)
	fmul.s f14, f12, f0
	fadd.s f10, f11, f15
	flw f15, 32(a1)
	fadd.s f11, f10, f14
	flw f14, 36(s5)
	fmul.s f10, f13, f15
	flw f15, 36(a1)
	flw f13, 40(s5)
	fadd.s f12, f11, f10
	fmul.s f11, f14, f15
	flw f14, 40(a1)
	fmul.s f15, f13, f14
	fadd.s f10, f12, f11
	flw f12, 44(s5)
	flw f0, 44(a1)
	flw f13, 48(s5)
	fmul.s f14, f12, f0
	fadd.s f11, f10, f15
	flw f0, 48(a1)
	flw f12, 52(s5)
	fmul.s f15, f13, f0
	fadd.s f10, f11, f14
	flw f14, 52(a1)
	flw f13, 56(s5)
	fadd.s f11, f10, f15
	fmul.s f15, f12, f14
	flw f14, 56(a1)
	flw f12, 60(s5)
	fadd.s f10, f11, f15
	fmul.s f15, f13, f14
	flw f14, 60(a1)
	fmul.s f13, f12, f14
	fadd.s f11, f10, f15
	fadd.s f10, f11, f13
	bge a0, s0, label590
	addi s5, s5, 64
	j label87
label590:
	fmv.w.x f11, zero
	mv a0, zero
.p2align 2
label93:
	flw f14, 0(s4)
	addiw a0, a0, 16
	flw f13, 4(s4)
	fmul.s f0, f14, f14
	fmul.s f15, f13, f13
	flw f14, 8(s4)
	flw f13, 12(s4)
	fadd.s f12, f11, f0
	fmul.s f0, f14, f14
	flw f14, 16(s4)
	fadd.s f11, f12, f15
	fmul.s f15, f13, f13
	flw f13, 20(s4)
	fadd.s f12, f11, f0
	fmul.s f0, f14, f14
	flw f14, 24(s4)
	fadd.s f11, f12, f15
	fmul.s f15, f13, f13
	fadd.s f12, f11, f0
	fmul.s f0, f14, f14
	fadd.s f11, f12, f15
	flw f15, 28(s4)
	flw f14, 32(s4)
	fmul.s f1, f15, f15
	flw f15, 36(s4)
	fadd.s f13, f11, f0
	fmul.s f0, f14, f14
	fmul.s f14, f15, f15
	fadd.s f12, f13, f1
	flw f13, 40(s4)
	fmul.s f15, f13, f13
	fadd.s f11, f12, f0
	fadd.s f12, f11, f14
	flw f14, 44(s4)
	fmul.s f13, f14, f14
	fadd.s f11, f12, f15
	flw f15, 48(s4)
	flw f14, 52(s4)
	fmul.s f1, f15, f15
	fmul.s f0, f14, f14
	flw f15, 56(s4)
	fadd.s f12, f11, f13
	fadd.s f13, f12, f1
	fmul.s f1, f15, f15
	fadd.s f11, f13, f0
	flw f13, 60(s4)
	fmul.s f14, f13, f13
	fadd.s f12, f11, f1
	fadd.s f11, f12, f14
	bge a0, s0, label98
	addi s4, s4, 64
	j label93
.p2align 2
label39:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label38
	fmv.w.x f10, zero
	mv a5, a1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label62
label401:
	fmv.w.x f10, zero
	mv a5, s5
	mv t5, zero
	mv t0, zero
	blt zero, s0, label103
	j label85
.p2align 2
label740:
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	bge a4, s0, label930
.p2align 2
label103:
	addiw a4, t0, 1
	bge t5, s0, label104
	addiw t4, t5, 4
	bge t4, s0, label108
	addiw t1, t0, 2
	addiw t2, t0, 3
	addiw t3, t0, 4
	j label115
.p2align 2
label791:
	mv t5, t4
	mv t4, t6
.p2align 2
label115:
	addw a7, t0, t5
	addw a6, a4, t5
	mulw t6, a7, a6
	srliw s6, t6, 31
	add s7, t6, s6
	addiw t6, t5, 1
	sraiw a7, s7, 1
	addiw s7, t5, 2
	addw s6, a7, t6
	addw a7, t1, t5
	sh2add t6, t5, a1
	flw f13, 0(t6)
	fcvt.s.w f12, s6
	mulw s6, a6, a7
	fdiv.s f14, f13, f12
	srliw s9, s6, 31
	add s8, s6, s9
	sraiw a6, s8, 1
	addw s6, a6, s7
	addiw s7, t5, 3
	addw a6, t2, t5
	fcvt.s.w f12, s6
	mulw s6, a7, a6
	srliw s8, s6, 31
	add s9, s6, s8
	sraiw a7, s9, 1
	addw s6, a7, s7
	fadd.s f11, f10, f14
	flw f14, 4(t6)
	fdiv.s f13, f14, f12
	fcvt.s.w f12, s6
	addw s6, t3, t5
	mulw a7, a6, s6
	srliw t5, a7, 31
	add s7, a7, t5
	sraiw s6, s7, 1
	addw a6, t4, s6
	fadd.s f10, f11, f13
	flw f13, 8(t6)
	fdiv.s f14, f13, f12
	flw f13, 12(t6)
	fcvt.s.w f12, a6
	addiw t6, t4, 4
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	blt t6, s0, label791
	sh2add t1, t4, a1
.p2align 2
label109:
	addw t3, t0, t4
	addw a6, a4, t4
	flw f13, 0(t1)
	addiw t4, t4, 1
	mulw t2, t3, a6
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw t3, t6, 1
	addw t2, t3, t4
	fcvt.s.w f11, t2
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t4, s0, label740
	addi t1, t1, 4
	j label109
.p2align 2
label108:
	sh2add t1, t5, a1
	mv t4, t5
	j label109
.p2align 2
label63:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label62
	fmv.w.x f10, zero
	mv a5, s5
	mv t5, zero
	mv t0, zero
	blt zero, s0, label103
label85:
	addiw a3, a3, 1
	blt a3, a2, label7
	j label86
.p2align 2
label104:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label103
	addiw a3, a3, 1
	blt a3, a2, label7
	j label86
.p2align 2
label239:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label14
	fmv.w.x f10, zero
	mv a5, s4
	mv t5, zero
	mv t0, zero
	blt zero, s0, label38
	j label931
.p2align 2
label933:
	fmv.w.x f10, zero
	mv a5, s4
	mv t5, zero
	mv t0, zero
	blt zero, s0, label38
	mv a5, a1
	j label401
.p2align 2
label926:
	fmv.w.x f10, zero
	mv a5, a1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label62
	mv a5, s5
	j label85
.p2align 2
label928:
	fmv.w.x f10, zero
	mv a5, s5
	mv t5, zero
	mv t0, zero
	blt zero, s0, label103
	addiw a3, a3, 1
	blt a3, a2, label7
	j label86
label98:
	fdiv.s f10, f10, f11
	fmv.w.x f13, s1
	flw f11, 0(s2)
	fsub.s f12, f13, f10
	flw f13, 4(s2)
	flt.s a0, f11, f12
	flt.s a2, f12, f13
	or a1, a0, a2
	beq a1, zero, label677
	fmv.w.x f11, s1
.p2align 2
label99:
	fdiv.s f12, f10, f11
	fmv.w.x f14, s3
	fadd.s f13, f11, f12
	fmul.s f11, f13, f14
	flw f14, 0(s2)
	flw f13, 4(s2)
	fdiv.s f15, f10, f11
	fsub.s f12, f11, f15
	flt.s a2, f12, f13
	flt.s a0, f14, f12
	or a1, a0, a2
	bne a1, zero, label99
label101:
	fmv.w.x f12, s1
	flw f13, 0(s2)
	fsub.s f10, f11, f12
	flw f11, 4(s2)
	fle.s a1, f10, f13
	fle.s a2, f11, f10
	and a0, a1, a2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s4, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label412:
	sh2add t1, t5, s4
	mv t4, t5
	j label74
label677:
	fmv.w.x f11, s1
	j label101
