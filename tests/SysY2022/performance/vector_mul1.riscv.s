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
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal _sysy_starttime
pcrel852:
	auipc a1, %pcrel_hi(vectorA)
	addi s0, a1, %pcrel_lo(pcrel852)
	mv a1, zero
.p2align 2
label2:
	sh2add a0, a1, s0
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
	sh2add a0, a1, s0
	lui a1, 260096
	fmv.w.x f10, a1
pcrel853:
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
pcrel854:
	auipc a0, %pcrel_hi(vectorB)
	addi s1, a0, %pcrel_lo(pcrel854)
	addi a0, a1, %pcrel_lo(pcrel853)
	mv a1, zero
.p2align 2
label5:
	fmv.w.x f11, zero
	mv t1, zero
	mv a3, zero
	li a2, 100000
	blt zero, a2, label11
	mv a2, zero
	li a4, 100000
	blt zero, a4, label76
	li a3, 100000
	blt zero, a3, label65
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label35
.p2align 2
label69:
	addiw t2, t1, 4
	addiw a4, a2, 2
	addiw a5, a2, 3
	addiw t0, a2, 4
	li t3, 100000
	blt t2, t3, label523
	j label794
.p2align 2
label11:
	addiw a2, a3, 1
	li a4, 100000
	blt t1, a4, label12
	sh2add a3, a3, a0
	fsw f11, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label11
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	blt zero, a4, label76
	li a3, 100000
	blt zero, a3, label65
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label35
.p2align 2
label216:
	mv a4, t1
	j label13
.p2align 2
label217:
	fmv.s f10, f11
	j label16
.p2align 2
label13:
	addw t0, a3, a4
	addw t1, a2, a4
	mulw a5, t0, t1
	srliw t2, a5, 31
	add t0, a5, t2
	sraiw t1, t0, 1
	sh2add t0, a4, s0
	addw a5, a2, t1
	addiw a4, a4, 1
	flw f12, 0(t0)
	fcvt.s.w f10, a5
	li a5, 100000
	fdiv.s f10, f12, f10
	fadd.s f11, f11, f10
	blt a4, a5, label13
	li t1, 100000
	sh2add a3, a3, a0
	fsw f11, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label11
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	li a4, 100000
	blt zero, a4, label76
	li a3, 100000
	blt zero, a3, label65
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label35
.p2align 2
label16:
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
	fcvt.s.w f11, t5
	flw f12, 0(t2)
	srliw t5, t3, 31
	flw f13, 4(t2)
	fdiv.s f11, f12, f11
	add t6, t3, t5
	sraiw t3, t6, 1
	addw t5, a2, t3
	addw t3, a5, t1
	mulw t4, t4, t3
	srliw t6, t4, 31
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	add t5, t4, t6
	fdiv.s f12, f13, f11
	sraiw a6, t5, 1
	flw f13, 8(t2)
	addw t4, a2, a6
	fcvt.s.w f11, t4
	addw t4, t0, t1
	mulw t3, t3, t4
	srliw t6, t3, 31
	add t4, t3, t6
	sraiw t5, t4, 1
	addw t3, a2, t5
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	fcvt.s.w f11, t3
	li t3, 100000
	fadd.s f10, f10, f12
	flw f12, 12(t2)
	addiw t2, t1, 8
	fdiv.s f13, f12, f11
	addiw t1, t1, 4
	fadd.s f11, f10, f13
	blt t2, t3, label217
	j label216
.p2align 2
label76:
	li a3, 100000
	blt t1, a3, label77
	sh2add a3, a2, s1
	addiw a2, a2, 1
	fsw f11, 0(a3)
	li a4, 100000
	blt a2, a4, label76
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label65
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label35
.p2align 2
label77:
	addiw t2, t1, 4
	addiw a3, a2, 1
	addiw a4, a2, 2
	addiw a5, a2, 3
	addiw t0, a2, 4
	li t3, 100000
	blt t2, t3, label596
	mv a4, t1
	j label81
.p2align 2
label596:
	fmv.s f10, f11
.p2align 2
label78:
	addw t4, a2, t1
	addw t3, a3, t1
	addiw a6, t1, 2
	mulw t2, t4, t3
	srliw t5, t2, 31
	add t4, t2, t5
	addiw t5, t1, 1
	sraiw t2, t4, 1
	addw t4, t2, t5
	sh2add t2, t1, a0
	flw f12, 0(t2)
	fcvt.s.w f11, t4
	addw t4, a4, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t5, t3, 31
	add t6, t3, t5
	sraiw t3, t6, 1
	addw t5, t3, a6
	addw t3, a5, t1
	mulw t4, t4, t3
	srliw t6, t4, 31
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	add t5, t4, t6
	fdiv.s f13, f12, f11
	addiw t6, t1, 3
	sraiw t4, t5, 1
	addw t5, t4, t6
	addw t4, t0, t1
	fcvt.s.w f11, t5
	mulw t3, t3, t4
	srliw t6, t3, 31
	add t5, t3, t6
	addiw t3, t1, 4
	sraiw t4, t5, 1
	addiw t1, t1, 8
	addw t5, t4, t3
	fadd.s f10, f10, f13
	flw f13, 8(t2)
	fdiv.s f12, f13, f11
	flw f13, 12(t2)
	fcvt.s.w f11, t5
	li t2, 100000
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	fadd.s f11, f10, f12
	blt t1, t2, label643
	mv a4, t3
	j label81
.p2align 2
label643:
	fmv.s f10, f11
	mv t1, t3
	j label78
.p2align 2
label81:
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
	fcvt.s.w f10, t1
	fdiv.s f10, f12, f10
	fadd.s f11, f11, f10
	blt a5, a4, label659
	li t1, 100000
	sh2add a3, a2, s1
	addiw a2, a2, 1
	fsw f11, 0(a3)
	blt a2, a4, label76
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label65
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label35
.p2align 2
label659:
	mv a4, a5
	j label81
.p2align 2
label65:
	addiw a3, a2, 1
	li a4, 100000
	blt t1, a4, label69
	sh2add a2, a2, a0
	fsw f11, 0(a2)
	mv a2, a3
	li a3, 100000
	blt a2, a3, label65
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	blt zero, a3, label54
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label35
.p2align 2
label794:
	mv a4, t1
	j label70
.p2align 2
label523:
	fmv.s f10, f11
	j label73
.p2align 2
label70:
	addw t0, a2, a4
	addw t2, a3, a4
	mulw a5, t0, t2
	srliw t1, a5, 31
	add t0, a5, t1
	sraiw a5, t0, 1
	addw t1, a3, a5
	sh2add a5, a4, s1
	addiw a4, a4, 1
	flw f12, 0(a5)
	fcvt.s.w f10, t1
	li a5, 100000
	fdiv.s f10, f12, f10
	fadd.s f11, f11, f10
	blt a4, a5, label70
	li t1, 100000
	sh2add a2, a2, a0
	fsw f11, 0(a2)
	mv a2, a3
	li a3, 100000
	blt a2, a3, label65
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	blt zero, a3, label54
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label35
.p2align 2
label73:
	addw t4, a2, t1
	addw t3, a3, t1
	mulw t2, t4, t3
	srliw t4, t2, 31
	add t5, t2, t4
	sraiw t2, t5, 1
	addw t4, a3, t2
	sh2add t2, t1, s1
	flw f12, 0(t2)
	fcvt.s.w f11, t4
	addw t4, a4, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t5, t3, 31
	add t6, t3, t5
	sraiw t3, t6, 1
	addw t5, a3, t3
	addw t3, a5, t1
	mulw t4, t4, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	srliw t5, t4, 31
	fdiv.s f13, f12, f11
	add t6, t4, t5
	sraiw t4, t6, 1
	addw t5, a3, t4
	addw t4, t0, t1
	fcvt.s.w f11, t5
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t6, t3, t5
	sraiw t3, t6, 1
	addw t4, a3, t3
	li t3, 100000
	fadd.s f10, f10, f13
	flw f13, 8(t2)
	fdiv.s f12, f13, f11
	flw f13, 12(t2)
	fcvt.s.w f11, t4
	addiw t2, t1, 8
	addiw t1, t1, 4
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	fadd.s f11, f10, f12
	blt t2, t3, label523
	j label794
label35:
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
.p2align 2
label36:
	sh2add a1, a0, s0
	sh2add a2, a0, s1
	flw f11, 0(a1)
	flw f13, 0(a2)
	fmul.s f12, f11, f13
	flw f11, 4(a1)
	flw f13, 4(a2)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 8(a1)
	fadd.s f10, f10, f12
	flw f12, 8(a2)
	fmul.s f13, f11, f12
	flw f11, 12(a1)
	addiw a1, a0, 4
	fadd.s f10, f10, f13
	flw f13, 12(a2)
	addiw a2, a0, 8
	fmul.s f12, f11, f13
	li a0, 100000
	fadd.s f10, f10, f12
	blt a2, a0, label331
	sh2add a2, a1, s0
	sh2add a0, a1, s1
	flw f11, 0(a2)
	addiw a1, a1, 1
	flw f12, 0(a0)
	li a0, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	blt a1, a0, label39
	j label790
label331:
	mv a0, a1
	j label36
.p2align 2
label54:
	li a3, 100000
	blt t1, a3, label55
	sh2add a3, a2, s0
	addiw a2, a2, 1
	fsw f11, 0(a3)
	li a3, 100000
	blt a2, a3, label54
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label35
.p2align 2
label55:
	addiw t2, t1, 4
	addiw a3, a2, 1
	addiw a4, a2, 2
	addiw a5, a2, 3
	addiw t0, a2, 4
	li t3, 100000
	blt t2, t3, label442
	mv a4, t1
	j label59
.p2align 2
label442:
	fmv.s f10, f11
.p2align 2
label56:
	addw t4, a2, t1
	addw t3, a3, t1
	mulw t2, t4, t3
	srliw t5, t2, 31
	add t4, t2, t5
	addiw t5, t1, 1
	sraiw t2, t4, 1
	addw t4, t2, t5
	sh2add t2, t1, a0
	flw f12, 0(t2)
	fcvt.s.w f11, t4
	addw t4, a4, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t5, t3, 31
	add t6, t3, t5
	addiw t5, t1, 2
	sraiw t3, t6, 1
	addw t6, t3, t5
	addw t3, a5, t1
	mulw t4, t4, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t6
	srliw t6, t4, 31
	fdiv.s f13, f12, f11
	add t5, t4, t6
	addiw t6, t1, 3
	sraiw t4, t5, 1
	addw t5, t4, t6
	addw t4, t0, t1
	fcvt.s.w f11, t5
	mulw t3, t3, t4
	srliw t6, t3, 31
	add t5, t3, t6
	addiw t3, t1, 4
	sraiw t4, t5, 1
	addiw t1, t1, 8
	addw t5, t4, t3
	fadd.s f10, f10, f13
	flw f13, 8(t2)
	fdiv.s f12, f13, f11
	fcvt.s.w f11, t5
	fadd.s f10, f10, f12
	flw f12, 12(t2)
	li t2, 100000
	fdiv.s f13, f12, f11
	fadd.s f11, f10, f13
	blt t1, t2, label489
	mv a4, t3
	j label59
.p2align 2
label489:
	fmv.s f10, f11
	mv t1, t3
	j label56
.p2align 2
label59:
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
	fcvt.s.w f10, t1
	fdiv.s f10, f12, f10
	fadd.s f11, f11, f10
	blt a5, a4, label505
	li t1, 100000
	sh2add a3, a2, s0
	addiw a2, a2, 1
	fsw f11, 0(a3)
	li a3, 100000
	blt a2, a3, label54
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label35
.p2align 2
label505:
	mv a4, a5
	j label59
.p2align 2
label12:
	addiw t2, t1, 4
	addiw a4, a3, 2
	addiw a5, a3, 3
	addiw t0, a3, 4
	li t3, 100000
	blt t2, t3, label217
	j label216
label790:
	fmv.w.x f11, zero
	mv a0, zero
	j label42
label39:
	sh2add a2, a1, s0
	sh2add a0, a1, s1
	flw f11, 0(a2)
	addiw a1, a1, 1
	flw f12, 0(a0)
	li a0, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	blt a1, a0, label39
	j label790
.p2align 2
label42:
	sh2add a1, a0, s1
	li a2, 100000
	flw f12, 0(a1)
	fmul.s f13, f12, f12
	flw f12, 4(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 8(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 12(a1)
	addiw a1, a0, 8
	addiw a0, a0, 4
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	blt a1, a2, label42
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	bge a0, a1, label48
label45:
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	blt a0, a1, label45
label48:
	fdiv.s f10, f10, f11
	lui a0, 260096
pcrel855:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel855)
	flw f13, 0(a0)
	fsub.s f11, f12, f10
	flw f12, 4(a0)
	flt.s a1, f13, f11
	flt.s a0, f11, f12
	or a1, a1, a0
	bne a1, zero, label394
	lui a0, 260096
	fmv.w.x f11, a0
	j label52
label394:
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
.p2align 2
label49:
	fadd.s f11, f11, f12
	lui a0, 258048
pcrel856:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel856)
	flw f15, 0(a0)
	flw f14, 4(a0)
	fmul.s f11, f11, f13
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a0, f13, f14
	flt.s a1, f15, f13
	or a1, a1, a0
	bne a1, zero, label49
label52:
	lui a0, 260096
pcrel857:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel857)
	fsub.s f10, f11, f12
	flw f12, 0(a0)
	flw f11, 4(a0)
	fle.s a1, f10, f12
	fle.s a2, f11, f10
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
