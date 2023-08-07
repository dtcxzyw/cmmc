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
	sd s3, 24(sp)
	sd s5, 32(sp)
	sd s0, 40(sp)
	sd s4, 48(sp)
	sd s2, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	jal _sysy_starttime
	lui s3, 260096
pcrel1151:
	auipc a0, %pcrel_hi(vectorB)
	mv a5, zero
pcrel1152:
	auipc a1, %pcrel_hi(vectorA)
	lui s5, 258048
pcrel1153:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
pcrel1154:
	auipc a2, %pcrel_hi(Vectortm)
	addi s1, a0, %pcrel_lo(pcrel1151)
	addi s6, a1, %pcrel_lo(pcrel1152)
	addi s4, a4, %pcrel_lo(pcrel1153)
	mv a3, s6
	addi a1, a2, %pcrel_lo(pcrel1154)
	lui a2, 24
	addiw a0, a2, 1692
	li a2, 1000
	addi s0, a0, 4
	addi s2, s0, -16
	addi a4, s2, -16
.p2align 2
label2:
	fmv.w.x f10, s3
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
	bge a5, a4, label5
	addi a3, a3, 256
	j label2
label5:
	sh2add a4, a5, s6
	mv a3, zero
	fmv.w.x f10, s3
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
.p2align 2
label6:
	fmv.w.x f10, zero
	mv a5, a1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label13
	j label248
label68:
	li a0, 76
	jal _sysy_stoptime
	mv a1, zero
	mv a0, s6
	fmv.w.x f10, zero
.p2align 2
label69:
	flw f12, 0(a0)
	sh2add a2, a1, s1
	flw f14, 0(a2)
	flw f13, 4(a0)
	fmul.s f0, f12, f14
	flw f15, 4(a2)
	flw f12, 8(a0)
	fmul.s f14, f13, f15
	flw f13, 8(a2)
	fadd.s f11, f10, f0
	fmul.s f15, f12, f13
	fadd.s f10, f11, f14
	flw f14, 12(a0)
	flw f0, 12(a2)
	flw f13, 16(a0)
	fmul.s f12, f14, f0
	fadd.s f11, f10, f15
	flw f14, 16(a2)
	fmul.s f15, f13, f14
	fadd.s f10, f11, f12
	flw f12, 20(a0)
	flw f14, 20(a2)
	flw f13, 24(a0)
	fadd.s f11, f10, f15
	fmul.s f15, f12, f14
	flw f14, 24(a2)
	flw f12, 28(a0)
	fmul.s f0, f13, f14
	fadd.s f10, f11, f15
	flw f15, 28(a2)
	flw f13, 32(a0)
	fmul.s f14, f12, f15
	flw f15, 32(a2)
	fadd.s f11, f10, f0
	flw f12, 36(a0)
	fadd.s f10, f11, f14
	fmul.s f14, f13, f15
	flw f15, 36(a2)
	flw f13, 40(a0)
	fadd.s f11, f10, f14
	fmul.s f14, f12, f15
	flw f12, 40(a2)
	fmul.s f15, f13, f12
	fadd.s f10, f11, f14
	flw f14, 44(a0)
	flw f0, 44(a2)
	flw f13, 48(a0)
	fadd.s f11, f10, f15
	flw f15, 48(a2)
	fmul.s f10, f14, f0
	flw f14, 52(a0)
	fadd.s f12, f11, f10
	fmul.s f11, f13, f15
	flw f15, 52(a2)
	flw f13, 56(a0)
	fadd.s f10, f12, f11
	fmul.s f12, f14, f15
	flw f15, 56(a2)
	flw f14, 60(a0)
	fadd.s f11, f10, f12
	fmul.s f10, f13, f15
	flw f13, 60(a2)
	addiw a2, a1, 16
	fadd.s f12, f11, f10
	fmul.s f11, f14, f13
	fadd.s f10, f12, f11
	bge a2, s2, label74
	addi a0, a0, 64
	mv a1, a2
	j label69
.p2align 2
label98:
	addiw a4, t0, 1
	bge t5, s0, label804
	addiw t1, t5, 4
	blt t1, s0, label100
	j label809
.p2align 2
label877:
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	blt a4, s0, label98
	addiw a3, a3, 1
	blt a3, a2, label6
	j label68
.p2align 2
label100:
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	sh2add t1, t5, a1
.p2align 2
label101:
	addw a7, t0, t5
	addw t6, a4, t5
	flw f14, 0(t1)
	addiw s9, t5, 3
	mulw a6, a7, t6
	srliw s7, a6, 31
	add s8, a6, s7
	addiw a6, t5, 1
	sraiw a7, s8, 1
	addw s7, a7, a6
	addw a6, t2, t5
	mulw a7, t6, a6
	fcvt.s.w f11, s7
	srliw s7, a7, 31
	fdiv.s f13, f14, f11
	add s8, a7, s7
	addiw a7, t5, 2
	sraiw t6, s8, 1
	addw s7, t6, a7
	addw t6, t3, t5
	mulw a7, a6, t6
	fadd.s f12, f10, f13
	flw f13, 4(t1)
	fcvt.s.w f10, s7
	srliw s7, a7, 31
	fdiv.s f14, f13, f10
	add s8, a7, s7
	flw f13, 8(t1)
	sraiw a6, s8, 1
	addw a7, a6, s9
	fadd.s f11, f12, f14
	fcvt.s.w f12, a7
	addw a7, t4, t5
	fdiv.s f14, f13, f12
	addiw t5, t5, 4
	mulw a6, t6, a7
	flw f12, 12(t1)
	srliw s7, a6, 31
	add a7, a6, s7
	sraiw t6, a7, 1
	addw a6, t6, t5
	fadd.s f10, f11, f14
	fcvt.s.w f11, a6
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t5, a0, label809
	addi t1, t1, 16
	j label101
label1112:
	fmv.w.x f10, zero
	mv a5, s6
	mv t5, zero
	mv t0, zero
	j label62
.p2align 2
label13:
	addiw a4, t0, 1
	bge t5, s0, label253
	addiw t1, t5, 4
	blt t1, s0, label21
	j label258
.p2align 2
label272:
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	blt a4, s0, label13
	fmv.w.x f10, zero
	mv a5, s1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label37
	mv a5, a1
	j label1112
label62:
	blt t0, s0, label98
	j label67
.p2align 2
label37:
	addiw a4, t0, 1
	bge t5, s0, label335
	addiw t1, t5, 4
	blt t1, s0, label45
	j label340
.p2align 2
label354:
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	blt a4, s0, label37
	fmv.w.x f10, zero
	mv a5, a1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label116
	mv a5, s6
	j label67
.p2align 2
label116:
	addiw a4, t0, 1
	bge t5, s0, label117
	addiw t1, t5, 4
	blt t1, s0, label127
	j label121
.p2align 2
label906:
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	blt a4, s0, label116
	fmv.w.x f10, zero
	mv a5, s6
	mv t5, zero
	mv t0, zero
	blt zero, s0, label98
	addiw a3, a3, 1
	blt a3, a2, label6
	j label68
.p2align 2
label340:
	sh2add t1, t5, a1
.p2align 2
label39:
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
	bge t5, s0, label354
	addi t1, t1, 4
	j label39
.p2align 2
label258:
	sh2add t1, t5, s6
.p2align 2
label15:
	addw t3, t0, t5
	addw t6, a4, t5
	flw f12, 0(t1)
	addiw t5, t5, 1
	mulw t2, t3, t6
	srliw a6, t2, 31
	add t4, t2, a6
	sraiw t6, t4, 1
	addw t3, a4, t6
	fcvt.s.w f11, t3
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t5, s0, label272
	addi t1, t1, 4
	j label15
.p2align 2
label809:
	sh2add t1, t5, a1
.p2align 2
label108:
	addw t3, t0, t5
	addw a6, a4, t5
	flw f13, 0(t1)
	addiw t5, t5, 1
	mulw t2, t3, a6
	srliw t6, t2, 31
	add t4, t2, t6
	sraiw t3, t4, 1
	addw t2, t3, t5
	fcvt.s.w f11, t2
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t5, s0, label877
	addi t1, t1, 4
	j label108
label67:
	addiw a3, a3, 1
	blt a3, a2, label6
	j label68
.p2align 2
label117:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label116
	fmv.w.x f10, zero
	mv a5, s6
	mv t5, zero
	mv t0, zero
	blt zero, s0, label98
	j label67
label1107:
	fmv.w.x f10, zero
	mv a5, s6
	mv t5, zero
	mv t0, zero
	blt zero, s0, label98
	j label67
.p2align 2
label335:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label37
	fmv.w.x f10, zero
	mv a5, a1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label116
	j label1107
.p2align 2
label253:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label13
	fmv.w.x f10, zero
	mv a5, s1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label37
	j label1104
.p2align 2
label804:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label98
	addiw a3, a3, 1
	blt a3, a2, label6
	j label68
label74:
	sh2add a0, a2, s6
	addiw a1, a1, 28
	sh2add a3, a2, s1
	flw f12, 0(a0)
	flw f13, 0(a3)
	flw f14, 4(a0)
	fmul.s f0, f12, f13
	flw f15, 4(a3)
	flw f13, 8(a0)
	fmul.s f12, f14, f15
	flw f15, 8(a3)
	flw f14, 12(a0)
	fadd.s f11, f10, f0
	fadd.s f10, f11, f12
	fmul.s f11, f13, f15
	flw f15, 12(a3)
	flw f13, 16(a0)
	fadd.s f12, f10, f11
	fmul.s f10, f14, f15
	flw f14, 16(a3)
	fmul.s f15, f13, f14
	fadd.s f11, f12, f10
	flw f12, 20(a0)
	flw f0, 20(a3)
	flw f13, 24(a0)
	fmul.s f14, f12, f0
	fadd.s f10, f11, f15
	flw f15, 24(a3)
	fadd.s f11, f10, f14
	flw f14, 28(a0)
	fmul.s f10, f13, f15
	flw f15, 28(a3)
	flw f13, 32(a0)
	fadd.s f12, f11, f10
	fmul.s f11, f14, f15
	flw f14, 32(a3)
	fmul.s f0, f13, f14
	fadd.s f10, f12, f11
	flw f12, 36(a0)
	flw f15, 36(a3)
	flw f13, 40(a0)
	fmul.s f14, f12, f15
	fadd.s f11, f10, f0
	flw f15, 40(a3)
	flw f12, 44(a0)
	sh2add a0, a1, s6
	fadd.s f10, f11, f14
	fmul.s f14, f13, f15
	flw f13, 44(a3)
	fadd.s f11, f10, f14
	fmul.s f14, f12, f13
	fadd.s f10, f11, f14
label75:
	flw f11, 0(a0)
	sh2add a2, a1, s1
	addiw a1, a1, 1
	flw f12, 0(a2)
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	bge a1, s0, label79
	addi a0, a0, 4
	j label75
label79:
	fmv.w.x f11, zero
	mv a0, s1
	mv a1, zero
.p2align 2
label80:
	flw f14, 0(a0)
	addiw a2, a1, 16
	flw f13, 4(a0)
	fmul.s f0, f14, f14
	fmul.s f15, f13, f13
	flw f14, 8(a0)
	flw f13, 12(a0)
	fadd.s f12, f11, f0
	fmul.s f0, f14, f14
	flw f14, 16(a0)
	fadd.s f11, f12, f15
	fmul.s f15, f13, f13
	fmul.s f13, f14, f14
	fadd.s f12, f11, f0
	fadd.s f11, f12, f15
	flw f15, 20(a0)
	fmul.s f0, f15, f15
	fadd.s f12, f11, f13
	flw f13, 24(a0)
	flw f15, 28(a0)
	fmul.s f14, f13, f13
	fmul.s f1, f15, f15
	fadd.s f11, f12, f0
	fadd.s f12, f11, f14
	flw f14, 32(a0)
	flw f15, 36(a0)
	fmul.s f0, f14, f14
	fmul.s f14, f15, f15
	fadd.s f13, f12, f1
	fadd.s f11, f13, f0
	flw f0, 40(a0)
	fmul.s f15, f0, f0
	fadd.s f12, f11, f14
	flw f14, 44(a0)
	fmul.s f0, f14, f14
	fadd.s f13, f12, f15
	flw f15, 48(a0)
	flw f14, 52(a0)
	fmul.s f1, f15, f15
	fadd.s f11, f13, f0
	flw f13, 56(a0)
	fmul.s f0, f14, f14
	flw f14, 60(a0)
	fmul.s f15, f13, f13
	fmul.s f13, f14, f14
	fadd.s f12, f11, f1
	fadd.s f11, f12, f0
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	bge a2, s2, label84
	addi a0, a0, 64
	mv a1, a2
	j label80
label84:
	sh2add a0, a2, s1
	addiw a1, a1, 28
	flw f13, 0(a0)
	flw f14, 4(a0)
	fmul.s f0, f13, f13
	fmul.s f15, f14, f14
	flw f13, 8(a0)
	fmul.s f14, f13, f13
	fadd.s f12, f11, f0
	fadd.s f11, f12, f15
	flw f15, 12(a0)
	fmul.s f13, f15, f15
	fadd.s f12, f11, f14
	flw f14, 16(a0)
	fmul.s f15, f14, f14
	fadd.s f11, f12, f13
	flw f13, 20(a0)
	fmul.s f14, f13, f13
	fadd.s f12, f11, f15
	flw f15, 24(a0)
	fmul.s f13, f15, f15
	fadd.s f11, f12, f14
	flw f14, 28(a0)
	fmul.s f15, f14, f14
	fadd.s f12, f11, f13
	flw f13, 32(a0)
	flw f14, 36(a0)
	fmul.s f0, f13, f13
	flw f13, 40(a0)
	fadd.s f11, f12, f15
	fmul.s f15, f14, f14
	flw f14, 44(a0)
	sh2add a0, a1, s1
	fadd.s f12, f11, f0
	fmul.s f0, f13, f13
	fmul.s f13, f14, f14
	fadd.s f11, f12, f15
	fadd.s f12, f11, f0
	fadd.s f11, f12, f13
label85:
	flw f12, 0(a0)
	addiw a1, a1, 1
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	bge a1, s0, label89
	addi a0, a0, 4
	j label85
label89:
	fdiv.s f10, f10, f11
	fmv.w.x f13, s3
	flw f11, 0(s4)
	fsub.s f12, f13, f10
	flw f13, 4(s4)
	flt.s a0, f11, f12
	flt.s a2, f12, f13
	or a1, a0, a2
	beq a1, zero, label761
	fmv.w.x f11, s3
	fmv.s f12, f10
	j label92
label90:
	fmv.w.x f12, s3
	flw f13, 0(s4)
	fsub.s f10, f11, f12
	flw f11, 4(s4)
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
	ld s3, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s4, 48(sp)
	ld s2, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label92:
	fadd.s f14, f11, f12
	fmv.w.x f15, s5
	fmul.s f11, f14, f15
	flw f15, 0(s4)
	flw f14, 4(s4)
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a2, f13, f14
	flt.s a0, f15, f13
	or a1, a0, a2
	bne a1, zero, label92
	j label90
.p2align 2
label248:
	fmv.w.x f10, zero
	mv a5, s1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label37
label1104:
	fmv.w.x f10, zero
	mv a5, a1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label116
	j label1112
.p2align 2
label21:
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	sh2add t1, t5, s6
.p2align 2
label22:
	addw a7, t0, t5
	addw t6, a4, t5
	flw f13, 0(t1)
	mulw a6, a7, t6
	srliw s8, a6, 31
	add s7, a6, s8
	sraiw a7, s7, 1
	addw a6, a4, a7
	fcvt.s.w f12, a6
	addw a6, t2, t5
	fdiv.s f14, f13, f12
	mulw a7, t6, a6
	flw f13, 4(t1)
	srliw s7, a7, 31
	add s8, a7, s7
	sraiw t6, s8, 1
	addw a7, a4, t6
	addw t6, t3, t5
	fcvt.s.w f12, a7
	mulw a7, a6, t6
	srliw s7, a7, 31
	add a6, a7, s7
	sraiw s8, a6, 1
	addw a7, a4, s8
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	fcvt.s.w f12, a7
	addw a7, t4, t5
	addiw t5, t5, 4
	mulw a6, t6, a7
	srliw s7, a6, 31
	add a7, a6, s7
	sraiw s8, a7, 1
	addw t6, a4, s8
	fadd.s f10, f11, f14
	flw f14, 8(t1)
	fdiv.s f13, f14, f12
	fcvt.s.w f12, t6
	fadd.s f11, f10, f13
	flw f13, 12(t1)
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	bge t5, a0, label258
	addi t1, t1, 16
	j label22
label761:
	fmv.w.x f11, s3
	j label90
.p2align 2
label127:
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	sh2add t1, t5, s1
.p2align 2
label128:
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
	flw f14, 4(t1)
	srliw s7, a7, 31
	add s8, a7, s7
	sraiw s9, s8, 1
	addw t6, a4, s9
	fadd.s f11, f10, f13
	fcvt.s.w f10, t6
	addw t6, t3, t5
	fdiv.s f13, f14, f10
	mulw a7, a6, t6
	flw f14, 8(t1)
	srliw s7, a7, 31
	add a6, a7, s7
	sraiw s8, a6, 1
	addw a7, a4, s8
	fadd.s f12, f11, f13
	fcvt.s.w f11, a7
	addw a7, t4, t5
	fdiv.s f13, f14, f11
	addiw t5, t5, 4
	mulw a6, t6, a7
	srliw s8, a6, 31
	add s7, a6, s8
	sraiw a7, s7, 1
	addw t6, a4, a7
	fcvt.s.w f11, t6
	fadd.s f10, f12, f13
	flw f12, 12(t1)
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t5, a0, label121
	addi t1, t1, 16
	j label128
.p2align 2
label121:
	sh2add t1, t5, s1
.p2align 2
label122:
	addw t3, t0, t5
	addw a6, a4, t5
	flw f13, 0(t1)
	addiw t5, t5, 1
	mulw t2, t3, a6
	srliw t6, t2, 31
	add t4, t2, t6
	sraiw t3, t4, 1
	addw a6, a4, t3
	fcvt.s.w f11, a6
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t5, s0, label906
	addi t1, t1, 4
	j label122
.p2align 2
label45:
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	sh2add t1, t5, a1
.p2align 2
label46:
	addw a7, t0, t5
	addw t6, a4, t5
	addiw s8, t5, 1
	mulw a6, a7, t6
	flw f13, 0(t1)
	srliw s7, a6, 31
	add s9, a6, s7
	addiw s7, t5, 2
	sraiw a7, s9, 1
	addw a6, a7, s8
	fcvt.s.w f12, a6
	addw a6, t2, t5
	fdiv.s f14, f13, f12
	mulw a7, t6, a6
	flw f13, 4(t1)
	srliw s9, a7, 31
	add s8, a7, s9
	sraiw t6, s8, 1
	addw a7, t6, s7
	addw t6, t3, t5
	fcvt.s.w f12, a7
	mulw a7, a6, t6
	srliw s8, a7, 31
	add s7, a7, s8
	addiw a7, t5, 3
	sraiw a6, s7, 1
	addw s7, t4, t5
	addw s8, a6, a7
	addiw t5, t5, 4
	mulw a6, t6, s7
	srliw a7, a6, 31
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	flw f13, 8(t1)
	fcvt.s.w f12, s8
	add s8, a6, a7
	sraiw t6, s8, 1
	addw a6, t6, t5
	fadd.s f10, f11, f14
	fdiv.s f14, f13, f12
	fcvt.s.w f12, a6
	fadd.s f11, f10, f14
	flw f14, 12(t1)
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge t5, a0, label340
	addi t1, t1, 16
	j label46
