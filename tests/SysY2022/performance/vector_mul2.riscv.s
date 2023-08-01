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
pcrel572:
	auipc a1, %pcrel_hi(vectorA)
	addi s1, a1, %pcrel_lo(pcrel572)
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
pcrel573:
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
pcrel574:
	auipc a0, %pcrel_hi(vectorB)
	addi s0, a0, %pcrel_lo(pcrel574)
	addi a0, a1, %pcrel_lo(pcrel573)
	mv a1, zero
.p2align 2
label5:
	fmv.w.x f10, zero
	mv a4, zero
	mv a3, zero
	li a2, 100000
	blt zero, a2, label64
	j label186
.p2align 2
label549:
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label38
.p2align 2
label64:
	addiw a2, a3, 1
	li a5, 100000
	bge a4, a5, label449
.p2align 2
label65:
	addw t0, a3, a4
	addw t1, a2, a4
	mulw a5, t0, t1
	srliw t0, a5, 31
	add t1, a5, t0
	sh2add t0, a4, s1
	sraiw t2, t1, 1
	addiw a4, a4, 1
	addw a5, a2, t2
	flw f12, 0(t0)
	fcvt.s.w f11, a5
	li a5, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	blt a4, a5, label65
	li a4, 100000
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label64
	fmv.w.x f10, zero
	mv a4, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label15
	mv a3, zero
	bge zero, a5, label536
.p2align 2
label26:
	addiw a2, a3, 1
	li a5, 100000
	blt a4, a5, label27
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	blt a2, a5, label26
	j label546
.p2align 2
label27:
	addw t0, a3, a4
	addw t1, a2, a4
	mulw a5, t0, t1
	srliw t0, a5, 31
	add t1, a5, t0
	sraiw a5, t1, 1
	addw t0, a2, a5
	sh2add a5, a4, s0
	addiw a4, a4, 1
	flw f12, 0(a5)
	fcvt.s.w f11, t0
	li a5, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	blt a4, a5, label27
	li a4, 100000
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	blt a2, a5, label26
	fmv.w.x f10, zero
	mv a4, zero
	mv a3, zero
	li a2, 100000
	blt zero, a2, label57
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label38
.p2align 2
label57:
	addiw a2, a3, 1
	li a5, 100000
	bge a4, a5, label426
.p2align 2
label58:
	addw t0, a3, a4
	addw t1, a2, a4
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
	blt a5, a4, label443
	sh2add a3, a3, s1
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label57
	j label549
.p2align 2
label443:
	mv a4, a5
	j label58
.p2align 2
label15:
	addiw a3, a2, 1
	li a5, 100000
	blt a4, a5, label16
	j label197
.p2align 2
label213:
	li a4, 100000
	sh2add a2, a2, s0
	fsw f10, 0(a2)
	mv a2, a3
	li a3, 100000
	blt a2, a3, label15
	fmv.w.x f10, zero
	mv a4, zero
	mv a3, zero
	li a5, 100000
	blt zero, a5, label26
	li a2, 100000
	blt zero, a2, label57
	j label538
.p2align 2
label16:
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
	bge a5, a4, label213
	mv a4, a5
	j label16
label186:
	fmv.w.x f10, zero
	mv a4, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label15
label191:
	fmv.w.x f10, zero
	mv a4, zero
	mv a3, zero
	li a5, 100000
	blt zero, a5, label26
label536:
	fmv.w.x f10, zero
	mv a4, zero
	mv a3, zero
	li a2, 100000
	blt zero, a2, label57
	j label538
.p2align 2
label197:
	sh2add a2, a2, s0
	fsw f10, 0(a2)
	mv a2, a3
	li a3, 100000
	blt a2, a3, label15
	fmv.w.x f10, zero
	mv a4, zero
	mv a3, zero
	li a5, 100000
	blt zero, a5, label26
	j label536
.p2align 2
label449:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label64
	fmv.w.x f10, zero
	mv a4, zero
	mv a2, zero
	li a3, 100000
	blt zero, a3, label15
	j label191
.p2align 2
label426:
	sh2add a3, a3, s1
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	blt a3, a2, label57
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
label38:
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
.p2align 2
label39:
	sh2add a1, a0, s1
	sh2add a2, a0, s0
	flw f11, 0(a1)
	addiw a0, a0, 8
	flw f12, 0(a2)
	fmul.s f13, f11, f12
	flw f11, 4(a1)
	fadd.s f10, f10, f13
	flw f13, 4(a2)
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
	flw f12, 16(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 20(a1)
	flw f12, 20(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 24(a1)
	flw f12, 24(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	flw f11, 28(a1)
	li a1, 99992
	flw f12, 28(a2)
	fadd.s f10, f10, f13
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	blt a0, a1, label39
.p2align 2
label42:
	sh2add a2, a0, s1
	sh2add a1, a0, s0
	flw f11, 0(a2)
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	blt a0, a1, label42
	fmv.w.x f11, zero
	mv a0, zero
.p2align 2
label45:
	sh2add a1, a0, s0
	addiw a0, a0, 8
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
	li a1, 99992
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	blt a0, a1, label45
.p2align 2
label48:
	sh2add a1, a0, s0
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	blt a0, a1, label48
	fdiv.s f10, f10, f11
	lui a0, 260096
pcrel575:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel575)
	flw f13, 0(a0)
	fsub.s f11, f12, f10
	flw f12, 4(a0)
	flt.s a1, f13, f11
	flt.s a2, f11, f12
	or a0, a1, a2
	beq a0, zero, label386
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
	j label54
label52:
	lui a0, 260096
pcrel576:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel576)
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
label54:
	fadd.s f11, f11, f12
	lui a0, 258048
pcrel577:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel577)
	flw f15, 0(a0)
	flw f14, 4(a0)
	fmul.s f11, f11, f13
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a0, f13, f14
	flt.s a1, f15, f13
	or a1, a1, a0
	bne a1, zero, label54
	j label52
label538:
	addiw a1, a1, 1
	li a2, 1000
	blt a1, a2, label5
	j label38
label546:
	fmv.w.x f10, zero
	mv a4, zero
	mv a3, zero
	li a2, 100000
	blt zero, a2, label57
	j label538
label386:
	lui a1, 260096
	fmv.w.x f11, a1
	j label52
