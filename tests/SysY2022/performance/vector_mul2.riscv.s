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
.globl main
main:
.p2align 2
	addi sp, sp, -24
	li a0, 62
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	jal _sysy_starttime
pcrel1080:
	auipc a1, %pcrel_hi(vectorA)
	addi s1, a1, %pcrel_lo(pcrel1080)
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
pcrel1081:
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
pcrel1082:
	auipc a0, %pcrel_hi(vectorB)
	addi s0, a0, %pcrel_lo(pcrel1082)
	addi a0, a1, %pcrel_lo(pcrel1081)
	mv a1, zero
.p2align 2
label5:
	fmv.w.x f11, zero
	mv t1, zero
	mv a3, zero
	j label7
.p2align 2
label835:
	sh2add a3, a3, a0
	fsw f11, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label81
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label15
	fmv.w.x f10, zero
	mv a3, zero
	li a4, 100000
	blt zero, a4, label69
	li a3, 100000
	blt zero, a3, label35
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label48
.p2align 2
label15:
	addiw a3, a2, 1
	li a4, 100000
	blt t1, a4, label16
	j label219
.p2align 2
label240:
	li t1, 100000
	sh2add a2, a2, s0
	fsw f11, 0(a2)
	mv a2, a3
	li a3, 100000
	blt a2, a3, label15
	fmv.w.x f10, zero
	mv t1, zero
	mv a3, zero
	li a4, 100000
	bge zero, a4, label1042
.p2align 2
label69:
	addiw a2, a3, 1
	li a4, 100000
	bge t1, a4, label761
	addiw a4, t1, 4
	li a5, 100000
	bge a4, a5, label766
	addiw a4, a3, 2
	addiw a5, a3, 3
	addiw t0, a3, 4
.p2align 2
label72:
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
	addw t4, a4, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t5, t3, 31
	add a6, t3, t5
	sraiw t6, a6, 1
	addw t3, a2, t6
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addw t3, a5, t1
	fdiv.s f13, f12, f11
	mulw t4, t4, t3
	flw f12, 8(t2)
	srliw t6, t4, 31
	add a6, t4, t6
	sraiw t5, a6, 1
	addw t4, a2, t5
	addw t5, t0, t1
	addiw t1, t1, 4
	mulw t3, t3, t5
	fcvt.s.w f11, t4
	srliw t4, t3, 31
	add t6, t3, t4
	sraiw t5, t6, 1
	addw t3, a2, t5
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fcvt.s.w f11, t3
	fadd.s f10, f10, f13
	flw f13, 12(t2)
	li t2, 99996
	fdiv.s f12, f13, f11
	fadd.s f11, f10, f12
	bge t1, t2, label812
	fmv.s f10, f11
	j label72
.p2align 2
label812:
	mv a4, t1
.p2align 2
label75:
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
	blt a4, a5, label75
	li t1, 100000
	sh2add a3, a3, a0
	fmv.s f10, f11
	fsw f11, 0(a3)
	mv a3, a2
	li a4, 100000
	blt a2, a4, label69
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label35
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label48
.p2align 2
label16:
	addiw a4, t1, 4
	li a5, 100000
	bge a4, a5, label17
	addiw a4, a2, 2
	addiw a5, a2, 3
	addiw t0, a2, 4
	fmv.s f10, f11
.p2align 2
label21:
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
	flw f12, 8(t2)
	addiw t6, t1, 3
	sraiw t4, t5, 1
	addw t5, t4, t6
	addw t4, t0, t1
	fcvt.s.w f11, t5
	addiw t1, t1, 4
	mulw t3, t3, t4
	srliw t5, t3, 31
	add t4, t3, t5
	sraiw t3, t4, 1
	addw t4, t3, t1
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fcvt.s.w f11, t4
	fadd.s f10, f10, f13
	flw f13, 12(t2)
	li t2, 99996
	fdiv.s f12, f13, f11
	fadd.s f11, f10, f12
	bge t1, t2, label17
	fmv.s f10, f11
	j label21
.p2align 2
label17:
	addw a5, a2, t1
	addw t2, a3, t1
	mulw a4, a5, t2
	srliw t0, a4, 31
	add t2, a4, t0
	addiw a4, t1, 1
	sraiw a5, t2, 1
	addw t0, a5, a4
	sh2add a5, t1, a0
	flw f12, 0(a5)
	fcvt.s.w f10, t0
	li a5, 100000
	fdiv.s f10, f12, f10
	fadd.s f11, f11, f10
	blt a4, a5, label241
	j label240
label48:
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
	j label49
.p2align 2
label81:
	addiw a2, a3, 1
	li a4, 100000
	blt t1, a4, label82
	j label835
.p2align 2
label83:
	addw t0, a3, a4
	addw t1, a2, a4
	mulw a5, t0, t1
	srliw t2, a5, 31
	add t1, a5, t2
	sraiw t0, t1, 1
	addw a5, a2, t0
	sh2add t0, a4, s1
	addiw a4, a4, 1
	flw f12, 0(t0)
	fcvt.s.w f10, a5
	li a5, 100000
	fdiv.s f10, f12, f10
	fadd.s f11, f11, f10
	blt a4, a5, label83
	li t1, 100000
	sh2add a3, a3, a0
	fsw f11, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label81
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label15
	fmv.w.x f10, zero
	mv a3, zero
	li a4, 100000
	blt zero, a4, label69
	li a3, 100000
	blt zero, a3, label35
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label48
.p2align 2
label82:
	addiw a4, t1, 4
	li a5, 100000
	bge a4, a5, label840
	addiw a4, a3, 2
	addiw a5, a3, 3
	addiw t0, a3, 4
	fmv.s f10, f11
.p2align 2
label87:
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
	addw t4, a4, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw a6, t3, 31
	add t6, t3, a6
	sraiw t5, t6, 1
	addw t3, a2, t5
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addw t3, a5, t1
	fdiv.s f13, f12, f11
	mulw t4, t4, t3
	srliw t6, t4, 31
	add t5, t4, t6
	sraiw t4, t5, 1
	addw t6, a2, t4
	addw t4, t0, t1
	addiw t1, t1, 4
	mulw t3, t3, t4
	fcvt.s.w f11, t6
	srliw t5, t3, 31
	add t6, t3, t5
	sraiw t3, t6, 1
	addw t4, a2, t3
	fadd.s f10, f10, f13
	flw f13, 8(t2)
	fdiv.s f12, f13, f11
	fcvt.s.w f11, t4
	fadd.s f10, f10, f12
	flw f12, 12(t2)
	li t2, 99996
	fdiv.s f13, f12, f11
	fadd.s f11, f10, f13
	bge t1, t2, label840
	fmv.s f10, f11
	j label87
.p2align 2
label840:
	mv a4, t1
	j label83
.p2align 2
label35:
	addiw a3, a2, 1
	li a4, 100000
	blt t1, a4, label36
	j label305
.p2align 2
label326:
	li t1, 100000
	sh2add a2, a2, s1
	fsw f11, 0(a2)
	mv a2, a3
	li a3, 100000
	blt a2, a3, label35
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label48
.p2align 2
label36:
	addiw a4, t1, 4
	li a5, 100000
	bge a4, a5, label37
	addiw a4, a2, 2
	addiw a5, a2, 3
	addiw t0, a2, 4
	fmv.s f10, f11
.p2align 2
label41:
	addw t4, a2, t1
	addw t3, a3, t1
	addiw t6, t1, 2
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
	add a6, t3, t5
	sraiw t3, a6, 1
	addw t5, t3, t6
	addw t3, a5, t1
	mulw t4, t4, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	srliw t5, t4, 31
	fdiv.s f13, f12, f11
	add t6, t4, t5
	addiw t5, t1, 3
	sraiw t4, t6, 1
	addw t6, t4, t5
	addw t5, t0, t1
	fcvt.s.w f11, t6
	addiw t1, t1, 4
	mulw t3, t3, t5
	srliw t4, t3, 31
	add t5, t3, t4
	sraiw t3, t5, 1
	addw t4, t3, t1
	fadd.s f10, f10, f13
	flw f13, 8(t2)
	fdiv.s f12, f13, f11
	fcvt.s.w f11, t4
	fadd.s f10, f10, f12
	flw f12, 12(t2)
	li t2, 99996
	fdiv.s f13, f12, f11
	fadd.s f11, f10, f13
	bge t1, t2, label37
	fmv.s f10, f11
	j label41
.p2align 2
label37:
	addw a5, a2, t1
	addw t2, a3, t1
	mulw a4, a5, t2
	srliw t0, a4, 31
	add t2, a4, t0
	addiw a4, t1, 1
	sraiw a5, t2, 1
	addw t0, a5, a4
	sh2add a5, t1, a0
	flw f12, 0(a5)
	fcvt.s.w f10, t0
	li a5, 100000
	fdiv.s f10, f12, f10
	fadd.s f11, f11, f10
	blt a4, a5, label327
	j label326
.p2align 2
label7:
	li a2, 100000
	blt a3, a2, label81
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label15
	fmv.w.x f10, zero
	mv a3, zero
	li a4, 100000
	blt zero, a4, label69
	li a3, 100000
	blt zero, a3, label35
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label48
.p2align 2
label49:
	sh2add a1, a0, s1
	sh2add a2, a0, s0
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
	flw f12, 12(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 16(a1)
	fadd.s f10, f10, f13
	flw f13, 16(a2)
	fmul.s f12, f11, f13
	flw f11, 20(a1)
	flw f13, 20(a2)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 24(a1)
	flw f13, 24(a2)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 28(a1)
	flw f13, 28(a2)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 32(a1)
	flw f13, 32(a2)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 36(a1)
	flw f13, 36(a2)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 40(a1)
	fadd.s f10, f10, f12
	flw f12, 40(a2)
	fmul.s f13, f11, f12
	flw f11, 44(a1)
	fadd.s f10, f10, f13
	flw f13, 44(a2)
	fmul.s f12, f11, f13
	flw f11, 48(a1)
	flw f13, 48(a2)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 52(a1)
	fadd.s f10, f10, f12
	flw f12, 52(a2)
	fmul.s f13, f11, f12
	flw f11, 56(a1)
	flw f12, 56(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 60(a1)
	addiw a1, a0, 16
	flw f12, 60(a2)
	li a2, 99984
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	bge a1, a2, label52
	mv a0, a1
	j label49
label52:
	sh2add a2, a1, s1
	flw f11, 0(a2)
	sh2add a1, a1, s0
	flw f12, 0(a1)
	fmul.s f13, f11, f12
	flw f11, 4(a2)
	fadd.s f10, f10, f13
	flw f13, 4(a1)
	fmul.s f12, f11, f13
	flw f11, 8(a2)
	flw f13, 8(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 12(a2)
	fadd.s f10, f10, f12
	flw f12, 12(a1)
	fmul.s f13, f11, f12
	flw f11, 16(a2)
	fadd.s f10, f10, f13
	flw f13, 16(a1)
	fmul.s f12, f11, f13
	flw f11, 20(a2)
	flw f13, 20(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 24(a2)
	flw f13, 24(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 28(a2)
	flw f13, 28(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 32(a2)
	fadd.s f10, f10, f12
	flw f12, 32(a1)
	fmul.s f13, f11, f12
	flw f11, 36(a2)
	flw f12, 36(a1)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 40(a2)
	flw f12, 40(a1)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 44(a2)
	fadd.s f10, f10, f13
	flw f13, 44(a1)
	addiw a1, a0, 28
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
label53:
	sh2add a0, a1, s1
	sh2add a2, a1, s0
	flw f11, 0(a0)
	addiw a1, a1, 1
	li a0, 100000
	flw f12, 0(a2)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	blt a1, a0, label53
	fmv.w.x f11, zero
	mv a0, zero
.p2align 2
label56:
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
	bge a1, a2, label59
	mv a0, a1
	j label56
label59:
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
label60:
	sh2add a1, a0, s0
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	blt a0, a1, label60
	fdiv.s f10, f10, f11
	lui a0, 260096
pcrel1083:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel1083)
	fsub.s f11, f12, f10
	flw f12, 0(a0)
	flw f13, 4(a0)
	flt.s a1, f12, f11
	flt.s a0, f11, f13
	or a1, a1, a0
	beq a1, zero, label721
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
.p2align 2
label66:
	fadd.s f11, f11, f12
	lui a0, 258048
pcrel1084:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel1084)
	flw f15, 0(a0)
	flw f14, 4(a0)
	fmul.s f11, f11, f13
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a2, f13, f14
	flt.s a1, f15, f13
	or a0, a1, a2
	bne a0, zero, label66
	j label64
.p2align 2
label219:
	sh2add a2, a2, s0
	fsw f11, 0(a2)
	mv a2, a3
	li a3, 100000
	blt a2, a3, label15
	fmv.w.x f10, zero
	mv t1, zero
	mv a3, zero
	li a4, 100000
	blt zero, a4, label69
	fmv.w.x f11, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label35
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label48
.p2align 2
label1042:
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label35
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label48
.p2align 2
label761:
	fmv.s f11, f10
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a4, 100000
	blt a2, a4, label69
	fmv.w.x f11, zero
	mv t1, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label35
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label48
.p2align 2
label305:
	sh2add a2, a2, s1
	fsw f11, 0(a2)
	mv a2, a3
	li a3, 100000
	blt a2, a3, label35
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label48
.p2align 2
label721:
	lui a0, 260096
	fmv.w.x f11, a0
label64:
	lui a0, 260096
pcrel1085:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel1085)
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
.p2align 2
label327:
	mv t1, a4
	j label37
.p2align 2
label766:
	mv a4, t1
	fmv.s f11, f10
	j label75
.p2align 2
label241:
	mv t1, a4
	j label17
