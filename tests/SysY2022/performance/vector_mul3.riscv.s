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
	addi sp, sp, -80
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
	jal _sysy_starttime
pcrel1030:
	auipc a1, %pcrel_hi(vectorA)
	lui s3, 258048
pcrel1031:
	auipc a2, %pcrel_hi(vectorB)
	lui s1, 260096
pcrel1032:
	auipc a0, %pcrel_hi(Vectortm)
	lui t0, 24
	mv a5, zero
	addi s5, a1, %pcrel_lo(pcrel1030)
	addi s4, a2, %pcrel_lo(pcrel1031)
	mv a3, s5
	addi a1, a0, %pcrel_lo(pcrel1032)
pcrel1033:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addiw a0, t0, 1693
	addi s2, a2, %pcrel_lo(pcrel1033)
	addi s0, a0, 3
	li a2, 1000
	addi a4, s0, -32
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
	bge a5, a4, label6
	addi a3, a3, 256
	j label2
label6:
	fmv.w.x f10, s1
	fsw f10, 256(a3)
	fsw f10, 260(a3)
	fsw f10, 264(a3)
	fsw f10, 268(a3)
	fsw f10, 272(a3)
	fsw f10, 276(a3)
	fsw f10, 280(a3)
	fsw f10, 284(a3)
	fsw f10, 288(a3)
	fsw f10, 292(a3)
	fsw f10, 296(a3)
	fsw f10, 300(a3)
	fsw f10, 304(a3)
	fsw f10, 308(a3)
	fsw f10, 312(a3)
	fsw f10, 316(a3)
	fsw f10, 320(a3)
	fsw f10, 324(a3)
	fsw f10, 328(a3)
	fsw f10, 332(a3)
	fsw f10, 336(a3)
	fsw f10, 340(a3)
	fsw f10, 344(a3)
	fsw f10, 348(a3)
	fsw f10, 352(a3)
	fsw f10, 356(a3)
	fsw f10, 360(a3)
	fsw f10, 364(a3)
	fsw f10, 368(a3)
	fsw f10, 372(a3)
	fsw f10, 376(a3)
	fsw f10, 380(a3)
	mv a3, zero
	j label7
.p2align 2
label963:
	addiw a3, a3, 1
	bge a3, a2, label76
.p2align 2
label7:
	fmv.w.x f10, zero
	mv a5, a1
	mv t5, zero
	mv t0, zero
	blt zero, s0, label14
	mv a5, s4
label973:
	fmv.w.x f10, zero
	mv t0, a1
	mv t4, zero
	mv a5, zero
	blt zero, s0, label93
	j label996
.p2align 2
label737:
	mv t4, s0
	mv a5, a4
	fsw f10, 0(t0)
	addi t0, t0, 4
	bge a4, s0, label968
.p2align 2
label93:
	addiw a4, a5, 1
	bge t4, s0, label94
	addiw t5, t4, 3
	bge t5, s0, label668
	sh2add t1, t4, s4
	addiw t2, a5, 2
	addiw t3, a5, 3
.p2align 2
label99:
	addw a7, a5, t4
	addw t6, a4, t4
	flw f14, 0(t1)
	mulw a6, a7, t6
	srliw s6, a6, 31
	add a7, a6, s6
	sraiw s7, a7, 1
	addw a6, a4, s7
	fcvt.s.w f12, a6
	addw a6, t2, t4
	fdiv.s f13, f14, f12
	mulw a7, t6, a6
	srliw s6, a7, 31
	add t6, a7, s6
	sraiw s7, t6, 1
	addw a7, a4, s7
	fadd.s f11, f10, f13
	flw f13, 4(t1)
	fcvt.s.w f10, a7
	addw a7, t3, t4
	fdiv.s f14, f13, f10
	mulw t6, a6, a7
	flw f13, 8(t1)
	srliw s6, t6, 31
	add a6, t6, s6
	sraiw a7, a6, 1
	addw a6, a5, t5
	addw t6, a4, a7
	addw a7, a4, t5
	fadd.s f12, f11, f14
	fcvt.s.w f11, t6
	mulw t6, a6, a7
	fdiv.s f14, f13, f11
	srliw t5, t6, 31
	flw f13, 12(t1)
	add s6, t6, t5
	addiw t5, t4, 7
	addiw t6, t4, 4
	sraiw a6, s6, 1
	addw a7, a4, a6
	fcvt.s.w f11, a7
	fadd.s f10, f12, f14
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t6, a0, label716
	addi t1, t1, 16
	mv t4, t6
	j label99
.p2align 2
label281:
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	bge a4, s0, label956
.p2align 2
label14:
	addiw a4, t0, 1
	bge t5, s0, label15
	addiw t1, t5, 3
	bge t1, s0, label260
	sh2add t1, t5, s5
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
.p2align 2
label30:
	addw a7, t0, t5
	addw t6, a4, t5
	flw f13, 0(t1)
	mulw a6, a7, t6
	srliw s7, a6, 31
	add s6, a6, s7
	sraiw a7, s6, 1
	addw a6, a4, a7
	fcvt.s.w f12, a6
	addw a6, t2, t5
	fdiv.s f14, f13, f12
	mulw a7, t6, a6
	flw f13, 4(t1)
	srliw s6, a7, 31
	add s7, a7, s6
	sraiw t6, s7, 1
	addw a7, a4, t6
	addw t6, t3, t5
	fcvt.s.w f12, a7
	mulw a7, a6, t6
	srliw s7, a7, 31
	add s6, a7, s7
	sraiw a6, s6, 1
	addw a7, a4, a6
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	fcvt.s.w f12, a7
	addw a7, t4, t5
	addiw t5, t5, 4
	mulw a6, t6, a7
	srliw s6, a6, 31
	add a7, a6, s6
	sraiw t6, a7, 1
	addw a6, a4, t6
	fadd.s f10, f11, f14
	flw f14, 8(t1)
	fdiv.s f13, f14, f12
	flw f14, 12(t1)
	fcvt.s.w f12, a6
	fadd.s f11, f10, f13
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge t5, a0, label328
	addi t1, t1, 16
	j label30
.p2align 2
label129:
	addi t1, t1, 4
.p2align 2
label125:
	addw t4, t0, t2
	addw t6, a4, t2
	flw f12, 0(t1)
	addiw t2, t2, 1
	mulw t3, t4, t6
	srliw a6, t3, 31
	add t5, t3, a6
	sraiw t4, t5, 1
	addw t3, t4, t2
	fcvt.s.w f11, t3
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	blt t2, s0, label129
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	bge a4, s0, label971
.p2align 2
label115:
	addiw a4, t0, 1
	bge t5, s0, label116
	addiw t1, t5, 3
	bge t1, s0, label749
	sh2add t1, t5, a1
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	j label131
.p2align 2
label135:
	addi t1, t1, 16
.p2align 2
label131:
	addw a7, t0, t5
	addw t6, a4, t5
	addiw s8, t5, 1
	mulw a6, a7, t6
	flw f13, 0(t1)
	srliw s7, a6, 31
	add s6, a6, s7
	sraiw a7, s6, 1
	addw a6, a7, s8
	addiw s8, t5, 2
	fcvt.s.w f12, a6
	addw a6, t2, t5
	fdiv.s f14, f13, f12
	mulw a7, t6, a6
	srliw s7, a7, 31
	add s6, a7, s7
	sraiw t6, s6, 1
	addw a7, t6, s8
	addiw s8, t5, 3
	addw t6, t3, t5
	fadd.s f11, f10, f14
	flw f14, 4(t1)
	fcvt.s.w f10, a7
	mulw a7, a6, t6
	fdiv.s f13, f14, f10
	srliw s7, a7, 31
	add s6, a7, s7
	sraiw a6, s6, 1
	addw a7, a6, s8
	fadd.s f12, f11, f13
	flw f13, 8(t1)
	fcvt.s.w f11, a7
	addw a7, t4, t5
	fdiv.s f14, f13, f11
	addiw t5, t5, 4
	mulw a6, t6, a7
	flw f13, 12(t1)
	srliw s6, a6, 31
	add a7, a6, s6
	sraiw t6, a7, 1
	addw a6, t6, t5
	fcvt.s.w f11, a6
	fadd.s f10, f12, f14
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	blt t5, a0, label135
	fmv.s f11, f10
	bge t5, s0, label972
.p2align 2
label124:
	sh2add t1, t5, a1
	mv t2, t5
	fmv.s f10, f11
	j label125
.p2align 2
label716:
	fmv.s f11, f10
	bge t6, s0, label966
.p2align 2
label109:
	sh2add t1, t6, s4
	mv t2, t6
	fmv.s f10, f11
.p2align 2
label110:
	addw t4, a5, t2
	addw t5, a4, t2
	flw f13, 0(t1)
	addiw t2, t2, 1
	mulw t3, t4, t5
	srliw a6, t3, 31
	add t6, t3, a6
	sraiw t5, t6, 1
	addw t4, a4, t5
	fcvt.s.w f11, t4
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t2, s0, label737
	addi t1, t1, 4
	j label110
.p2align 2
label328:
	fmv.s f11, f10
	bge t5, s0, label957
.p2align 2
label23:
	sh2add t1, t5, s5
	mv t2, t5
	fmv.s f10, f11
.p2align 2
label24:
	addw t4, t0, t2
	addw t6, a4, t2
	flw f12, 0(t1)
	addiw t2, t2, 1
	mulw t3, t4, t6
	srliw a6, t3, 31
	add t5, t3, a6
	sraiw t4, t5, 1
	addw t6, a4, t4
	fcvt.s.w f11, t6
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t2, s0, label281
	addi t1, t1, 4
	j label24
.p2align 2
label749:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	blt t5, s0, label124
	mv t5, s0
	mv t0, a4
	fsw f12, 0(a5)
	addi a5, a5, 4
	blt a4, s0, label115
	fmv.w.x f10, zero
	mv t0, a1
	mv t4, zero
	mv a5, zero
	blt zero, s0, label93
	j label996
.p2align 2
label260:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	blt t5, s0, label23
	mv t5, s0
	mv t0, a4
	fsw f12, 0(a5)
	addi a5, a5, 4
	blt a4, s0, label14
	fmv.w.x f10, zero
	mv a5, s4
	mv t5, zero
	mv t0, zero
	blt zero, s0, label115
	mv t0, a1
	mv t4, zero
	mv a5, zero
	j label996
.p2align 2
label116:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label115
	fmv.w.x f10, zero
	mv t0, a1
	mv t4, zero
	mv a5, zero
	blt zero, s0, label93
label996:
	fmv.w.x f10, zero
	mv t0, s5
	mv t4, zero
	mv a5, zero
	blt zero, s0, label53
	j label344
.p2align 2
label74:
	addi t1, t1, 4
.p2align 2
label70:
	addw t4, a5, t2
	addw t6, a4, t2
	flw f12, 0(t1)
	addiw t2, t2, 1
	mulw t3, t4, t6
	srliw t5, t3, 31
	add a6, t3, t5
	sraiw t4, a6, 1
	addw t3, t4, t2
	fcvt.s.w f11, t3
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	blt t2, s0, label74
	mv t4, s0
	mv a5, a4
	fsw f10, 0(t0)
	addi t0, t0, 4
	bge a4, s0, label963
.p2align 2
label53:
	addiw a4, a5, 1
	bge t4, s0, label54
	addiw t5, t4, 3
	bge t5, s0, label355
	sh2add t1, t4, a1
	addiw t2, a5, 2
	addiw t3, a5, 3
	j label59
.p2align 2
label64:
	addi t1, t1, 16
	mv t4, t6
.p2align 2
label59:
	addw a7, a5, t4
	addw a6, a4, t4
	flw f14, 0(t1)
	mulw t6, a7, a6
	srliw s6, t6, 31
	add s7, t6, s6
	addiw t6, t4, 1
	sraiw a7, s7, 1
	addiw s7, t4, 2
	addw s6, a7, t6
	addw t6, t2, t4
	mulw a7, a6, t6
	fcvt.s.w f12, s6
	srliw s6, a7, 31
	fdiv.s f13, f14, f12
	add s8, a7, s6
	sraiw a6, s8, 1
	addw a7, a6, s7
	addw s7, t3, t4
	mulw a6, t6, s7
	fadd.s f11, f10, f13
	flw f13, 4(t1)
	fcvt.s.w f10, a7
	srliw a7, a6, 31
	fdiv.s f14, f13, f10
	add s6, a6, a7
	addw a7, a4, t5
	sraiw t6, s6, 1
	addw a6, t5, t6
	addw t6, a5, t5
	fadd.s f12, f11, f14
	flw f14, 8(t1)
	fcvt.s.w f11, a6
	mulw a6, t6, a7
	fdiv.s f13, f14, f11
	addiw t6, t4, 4
	srliw s6, a6, 31
	add a7, a6, s6
	sraiw t5, a7, 1
	addw a6, t5, t6
	addiw t5, t4, 7
	fcvt.s.w f11, a6
	fadd.s f10, f12, f13
	flw f13, 12(t1)
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	blt t6, a0, label64
	fmv.s f11, f10
	bge t6, s0, label961
.p2align 2
label69:
	sh2add t1, t6, a1
	mv t2, t6
	fmv.s f10, f11
	j label70
.p2align 2
label94:
	fsw f10, 0(t0)
	mv a5, a4
	addi t0, t0, 4
	blt a4, s0, label93
	fmv.w.x f10, zero
	mv t0, s5
	mv t4, zero
	mv a5, zero
	blt zero, s0, label53
label344:
	addiw a3, a3, 1
	blt a3, a2, label7
	j label76
.p2align 2
label15:
	fsw f10, 0(a5)
	mv t0, a4
	addi a5, a5, 4
	blt a4, s0, label14
	fmv.w.x f10, zero
	mv a5, s4
	mv t5, zero
	mv t0, zero
	blt zero, s0, label115
	j label973
.p2align 2
label54:
	fsw f10, 0(t0)
	mv a5, a4
	addi t0, t0, 4
	blt a4, s0, label53
	addiw a3, a3, 1
	blt a3, a2, label7
	j label76
.p2align 2
label668:
	fmv.w.x f12, zero
	fmv.s f11, f10
	mv t6, t4
	fmv.s f10, f12
	blt t4, s0, label109
	mv t4, s0
	mv a5, a4
	fsw f12, 0(t0)
	addi t0, t0, 4
	blt a4, s0, label93
	fmv.w.x f10, zero
	mv t0, s5
	mv t4, zero
	mv a5, zero
	blt zero, s0, label53
	j label344
.p2align 2
label355:
	fmv.w.x f12, zero
	fmv.s f11, f10
	mv t6, t4
	fmv.s f10, f12
	blt t4, s0, label69
	mv t4, s0
	mv a5, a4
	fsw f12, 0(t0)
	addi t0, t0, 4
	blt a4, s0, label53
	addiw a3, a3, 1
	blt a3, a2, label7
	j label76
.p2align 2
label972:
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	blt a4, s0, label115
	fmv.w.x f10, zero
	mv t0, a1
	mv t4, zero
	mv a5, zero
	blt zero, s0, label93
	mv t0, s5
	j label344
.p2align 2
label966:
	mv t4, s0
	mv a5, a4
	fsw f10, 0(t0)
	addi t0, t0, 4
	blt a4, s0, label93
	fmv.w.x f10, zero
	mv t0, s5
	mv t4, zero
	mv a5, zero
	blt zero, s0, label53
	addiw a3, a3, 1
	blt a3, a2, label7
	j label76
.p2align 2
label957:
	mv t5, s0
	mv t0, a4
	fsw f10, 0(a5)
	addi a5, a5, 4
	blt a4, s0, label14
	fmv.w.x f10, zero
	mv a5, s4
	mv t5, zero
	mv t0, zero
	blt zero, s0, label115
	mv t0, a1
	mv t4, zero
	mv a5, zero
	j label996
.p2align 2
label961:
	mv t4, s0
	mv a5, a4
	fsw f10, 0(t0)
	addi t0, t0, 4
	blt a4, s0, label53
	addiw a3, a3, 1
	blt a3, a2, label7
	j label76
.p2align 2
label971:
	fmv.w.x f10, zero
	mv t0, a1
	mv t4, zero
	mv a5, zero
	blt zero, s0, label93
	mv t0, s5
	j label344
.p2align 2
label968:
	fmv.w.x f10, zero
	mv t0, s5
	mv t4, zero
	mv a5, zero
	blt zero, s0, label53
	addiw a3, a3, 1
	blt a3, a2, label7
	j label76
.p2align 2
label956:
	fmv.w.x f10, zero
	mv a5, s4
	mv t5, zero
	mv t0, zero
	blt zero, s0, label115
	mv t0, a1
	mv t4, zero
	mv a5, zero
	j label996
label76:
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
	j label77
.p2align 2
label81:
	addi s5, s5, 64
.p2align 2
label77:
	sh2add a1, a0, s4
	flw f12, 0(s5)
	addiw a0, a0, 16
	flw f13, 0(a1)
	flw f14, 4(s5)
	fmul.s f15, f12, f13
	flw f0, 4(a1)
	flw f13, 8(s5)
	fadd.s f11, f10, f15
	flw f15, 8(a1)
	fmul.s f10, f14, f0
	flw f14, 12(s5)
	fadd.s f12, f11, f10
	fmul.s f11, f13, f15
	flw f15, 12(a1)
	flw f13, 16(s5)
	fadd.s f10, f12, f11
	fmul.s f12, f14, f15
	flw f15, 16(a1)
	fmul.s f14, f13, f15
	fadd.s f11, f10, f12
	flw f12, 20(s5)
	flw f15, 20(a1)
	fmul.s f13, f12, f15
	fadd.s f10, f11, f14
	flw f14, 24(s5)
	flw f15, 24(a1)
	fadd.s f11, f10, f13
	flw f13, 28(s5)
	fmul.s f10, f14, f15
	flw f15, 28(a1)
	fmul.s f14, f13, f15
	fadd.s f12, f11, f10
	flw f11, 32(s5)
	flw f15, 32(a1)
	fmul.s f13, f11, f15
	fadd.s f10, f12, f14
	flw f14, 36(s5)
	flw f15, 36(a1)
	fadd.s f12, f10, f13
	flw f13, 40(s5)
	fmul.s f10, f14, f15
	flw f14, 40(a1)
	fmul.s f15, f13, f14
	fadd.s f11, f12, f10
	flw f12, 44(s5)
	flw f14, 44(a1)
	flw f13, 48(s5)
	flw f0, 48(a1)
	fadd.s f10, f11, f15
	fmul.s f15, f12, f14
	flw f14, 52(s5)
	fadd.s f11, f10, f15
	flw f15, 52(a1)
	fmul.s f10, f13, f0
	flw f13, 56(s5)
	fadd.s f12, f11, f10
	fmul.s f11, f14, f15
	flw f14, 56(a1)
	fmul.s f15, f13, f14
	fadd.s f10, f12, f11
	flw f12, 60(s5)
	flw f14, 60(a1)
	fmul.s f13, f12, f14
	fadd.s f11, f10, f15
	fadd.s f10, f11, f13
	blt a0, s0, label81
	fmv.w.x f11, zero
	mv a0, zero
	j label83
.p2align 2
label92:
	addi s4, s4, 64
.p2align 2
label83:
	flw f13, 0(s4)
	addiw a0, a0, 16
	flw f14, 4(s4)
	fmul.s f15, f13, f13
	fmul.s f0, f14, f14
	flw f13, 8(s4)
	flw f14, 12(s4)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	flw f13, 16(s4)
	fadd.s f11, f12, f0
	fmul.s f0, f14, f14
	flw f14, 20(s4)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	flw f13, 24(s4)
	fadd.s f11, f12, f0
	fmul.s f0, f14, f14
	flw f14, 28(s4)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	flw f13, 32(s4)
	fadd.s f11, f12, f0
	fmul.s f0, f14, f14
	flw f14, 36(s4)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	fadd.s f11, f12, f0
	fmul.s f0, f14, f14
	fadd.s f12, f11, f15
	flw f15, 40(s4)
	flw f14, 44(s4)
	fmul.s f1, f15, f15
	fmul.s f15, f14, f14
	fadd.s f13, f12, f0
	fadd.s f11, f13, f1
	flw f13, 48(s4)
	fmul.s f14, f13, f13
	fadd.s f12, f11, f15
	flw f15, 52(s4)
	fmul.s f1, f15, f15
	fadd.s f11, f12, f14
	flw f14, 56(s4)
	flw f15, 60(s4)
	fmul.s f0, f14, f14
	fmul.s f14, f15, f15
	fadd.s f13, f11, f1
	fadd.s f12, f13, f0
	fadd.s f11, f12, f14
	blt a0, s0, label92
	fdiv.s f10, f10, f11
	flw f14, 0(s2)
	fmv.w.x f13, s1
	flw f11, 4(s2)
	fsub.s f12, f13, f10
	flt.s a2, f12, f11
	flt.s a0, f14, f12
	or a1, a0, a2
	beq a1, zero, label620
	fmv.w.x f11, s1
.p2align 2
label90:
	fdiv.s f12, f10, f11
	fmv.w.x f14, s3
	fadd.s f13, f11, f12
	fmul.s f11, f13, f14
	flw f13, 0(s2)
	flw f14, 4(s2)
	fdiv.s f15, f10, f11
	fsub.s f12, f11, f15
	flt.s a1, f12, f14
	flt.s a0, f13, f12
	or a2, a0, a1
	bne a2, zero, label90
label88:
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
	addi sp, sp, 80
	ret
label620:
	fmv.w.x f11, s1
	j label88
