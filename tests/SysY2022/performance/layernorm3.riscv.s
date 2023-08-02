.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1008981770
	.4byte	981668463
.bss
.align 8
a:
	.zero	4000000
.align 8
var:
	.zero	4000
.align 8
mean:
	.zero	4000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
pcrel1127:
	auipc a0, %pcrel_hi(a)
pcrel1128:
	auipc a2, %pcrel_hi(mean)
pcrel1129:
	auipc a1, %pcrel_hi(var)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a0, %pcrel_lo(pcrel1127)
	sd s6, 16(sp)
pcrel1130:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	lui s6, 258048
	sd s7, 24(sp)
	addi s7, a2, %pcrel_lo(pcrel1128)
	sd s8, 32(sp)
	addi s8, a1, %pcrel_lo(pcrel1129)
	sd s10, 40(sp)
	mv s10, zero
	sd s5, 48(sp)
	addi s5, a0, %pcrel_lo(pcrel1130)
	sd s0, 56(sp)
	li s0, 960
	sd s9, 64(sp)
	lui s9, 280480
	sd s4, 72(sp)
	li s4, 992
	sd s2, 80(sp)
	li s2, 1000
	sd s3, 88(sp)
	slli s3, s2, 2
	fsw f8, 96(sp)
label2:
	bge s10, s2, label8
	mul a1, s10, s3
	add a0, s1, a1
	jal getfarray
	beq a0, s2, label5
label6:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s7, 24(sp)
	ld s8, 32(sp)
	ld s10, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s9, 64(sp)
	ld s4, 72(sp)
	ld s2, 80(sp)
	ld s3, 88(sp)
	flw f8, 96(sp)
	addi sp, sp, 104
	ret
label5:
	addiw s10, s10, 1
	j label2
label8:
	li a0, 42
	jal _sysy_starttime
	mv a0, zero
	fmv.w.x f10, zero
label9:
	li a2, 100
	blt a0, a2, label73
	j label72
label408:
	fmv.s f12, f10
	mv a2, zero
	j label34
.p2align 2
label21:
	sh2add a3, a1, s7
	mul a4, a1, s3
	flw f11, 0(a3)
	fmv.w.x f12, zero
	add a2, s1, a4
	mv a3, zero
.p2align 2
label22:
	sh2add a4, a3, a2
	flw f0, 0(a4)
	addiw a3, a3, 16
	fsub.s f14, f0, f11
	flw f0, 4(a4)
	fmul.s f15, f14, f14
	fsub.s f14, f0, f11
	flw f0, 8(a4)
	fadd.s f13, f12, f15
	fmul.s f1, f14, f14
	fsub.s f15, f0, f11
	flw f0, 12(a4)
	fadd.s f12, f13, f1
	fmul.s f13, f15, f15
	fsub.s f15, f0, f11
	flw f0, 16(a4)
	fadd.s f14, f12, f13
	fmul.s f12, f15, f15
	fsub.s f15, f0, f11
	flw f0, 20(a4)
	fadd.s f13, f14, f12
	fmul.s f14, f15, f15
	fsub.s f15, f0, f11
	flw f0, 24(a4)
	flw f1, 28(a4)
	fadd.s f12, f13, f14
	fmul.s f13, f15, f15
	fsub.s f15, f0, f11
	fadd.s f14, f12, f13
	fmul.s f12, f15, f15
	fsub.s f15, f1, f11
	flw f1, 32(a4)
	fadd.s f13, f14, f12
	fmul.s f0, f15, f15
	fsub.s f14, f1, f11
	flw f1, 36(a4)
	fsub.s f15, f1, f11
	fadd.s f12, f13, f0
	fmul.s f0, f14, f14
	fadd.s f13, f12, f0
	flw f0, 40(a4)
	fmul.s f12, f15, f15
	fsub.s f15, f0, f11
	flw f0, 44(a4)
	fadd.s f14, f13, f12
	fmul.s f13, f15, f15
	fsub.s f15, f0, f11
	flw f0, 48(a4)
	fadd.s f12, f14, f13
	fmul.s f1, f15, f15
	fsub.s f14, f0, f11
	flw f15, 52(a4)
	fadd.s f13, f12, f1
	fmul.s f1, f14, f14
	fsub.s f14, f15, f11
	fadd.s f12, f13, f1
	fmul.s f0, f14, f14
	flw f1, 56(a4)
	fsub.s f14, f1, f11
	fadd.s f13, f12, f0
	flw f0, 60(a4)
	fmul.s f15, f14, f14
	fsub.s f14, f0, f11
	fadd.s f12, f13, f15
	fmul.s f13, f14, f14
	fadd.s f12, f12, f13
	blt a3, s4, label22
	sh2add a4, a3, a2
	flw f15, 0(a4)
	fsub.s f14, f15, f11
	flw f15, 4(a4)
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	flw f15, 8(a4)
	fadd.s f13, f12, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	flw f15, 12(a4)
	fadd.s f12, f13, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	flw f15, 16(a4)
	fadd.s f13, f12, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	flw f15, 20(a4)
	fadd.s f12, f13, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	flw f15, 24(a4)
	fadd.s f13, f12, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	flw f15, 28(a4)
	fadd.s f12, f13, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	fmv.w.x f15, s9
	fadd.s f13, f12, f0
	fmul.s f0, f14, f14
	fadd.s f12, f13, f0
	flw f13, 0(s5)
	fdiv.s f14, f12, f15
	fmv.w.x f15, s6
	fadd.s f11, f14, f13
	fmv.w.x f14, zero
	fmv.s f13, f11
	fmul.s f12, f11, f15
	fmul.s f15, f12, f12
	flw f2, 4(s5)
	fsub.s f1, f15, f11
	fabs.s f0, f1
	flt.s a2, f2, f0
	beq a2, zero, label562
.p2align 2
label30:
	flt.s a2, f11, f15
	bne a2, zero, label31
	fadd.s f0, f12, f13
	fmv.s f14, f12
	fmv.w.x f1, s6
	fmul.s f15, f0, f1
	fmv.s f12, f15
	fmul.s f15, f15, f15
	flw f2, 4(s5)
	fsub.s f1, f15, f11
	fabs.s f0, f1
	flt.s a2, f2, f0
	bne a2, zero, label30
	j label1117
.p2align 2
label31:
	fadd.s f0, f12, f14
	fmv.s f13, f12
	fmv.w.x f1, s6
	fmul.s f15, f0, f1
	fmv.s f12, f15
	fmul.s f15, f15, f15
	flw f2, 4(s5)
	fsub.s f1, f15, f11
	fabs.s f0, f1
	flt.s a2, f2, f0
	bne a2, zero, label30
	sh2add a2, a1, s8
	addiw a1, a1, 1
	fsw f12, 0(a2)
	blt a1, s2, label21
	j label408
label34:
	blt a2, s2, label37
label583:
	addiw a0, a0, 1
	fmv.s f10, f12
	j label9
.p2align 2
label37:
	sh2add a1, a2, s8
	sh2add a4, a2, s7
	flw f10, 0(a1)
	mul a1, a2, s3
	flw f11, 0(a4)
	add a3, s1, a1
	mv a4, zero
.p2align 2
label38:
	sh2add a1, a4, a3
	addiw a4, a4, 16
	flw f13, 0(a1)
	fsub.s f15, f13, f11
	fdiv.s f14, f15, f10
	fadd.s f13, f12, f14
	fsw f14, 0(a1)
	flw f15, 4(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 4(a1)
	fadd.s f12, f13, f14
	flw f0, 8(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 8(a1)
	fadd.s f13, f12, f14
	flw f0, 12(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 12(a1)
	fadd.s f12, f13, f14
	flw f0, 16(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 16(a1)
	fadd.s f13, f12, f14
	flw f0, 20(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 20(a1)
	fadd.s f12, f13, f14
	flw f15, 24(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 24(a1)
	fadd.s f13, f12, f14
	flw f0, 28(a1)
	fsub.s f15, f0, f11
	fdiv.s f12, f15, f10
	fsw f12, 28(a1)
	fadd.s f14, f13, f12
	flw f15, 32(a1)
	fsub.s f0, f15, f11
	fdiv.s f13, f0, f10
	fsw f13, 32(a1)
	fadd.s f12, f14, f13
	flw f15, 36(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 36(a1)
	fadd.s f13, f12, f14
	flw f0, 40(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 40(a1)
	fadd.s f12, f13, f14
	flw f15, 44(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 44(a1)
	fadd.s f13, f12, f14
	flw f0, 48(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 48(a1)
	fadd.s f12, f13, f14
	flw f0, 52(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 52(a1)
	fadd.s f13, f12, f14
	flw f15, 56(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 56(a1)
	fadd.s f12, f13, f14
	flw f0, 60(a1)
	fsub.s f15, f0, f11
	fdiv.s f13, f15, f10
	fsw f13, 60(a1)
	fadd.s f12, f12, f13
	blt a4, s4, label38
	sh2add a1, a4, a3
	addiw a2, a2, 1
	flw f13, 0(a1)
	fsub.s f15, f13, f11
	fdiv.s f14, f15, f10
	fadd.s f13, f12, f14
	fsw f14, 0(a1)
	flw f0, 4(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 4(a1)
	fadd.s f12, f13, f14
	flw f0, 8(a1)
	fsub.s f15, f0, f11
	fdiv.s f13, f15, f10
	fsw f13, 8(a1)
	fadd.s f14, f12, f13
	flw f0, 12(a1)
	fsub.s f15, f0, f11
	fdiv.s f12, f15, f10
	fsw f12, 12(a1)
	fadd.s f13, f14, f12
	flw f0, 16(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 16(a1)
	fadd.s f12, f13, f14
	flw f0, 20(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 20(a1)
	fadd.s f13, f12, f14
	flw f15, 24(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 24(a1)
	fadd.s f12, f13, f14
	flw f15, 28(a1)
	fsub.s f0, f15, f11
	fdiv.s f13, f0, f10
	fsw f13, 28(a1)
	fadd.s f12, f12, f13
	blt a2, s2, label37
	j label583
label73:
	mv a2, zero
	blt zero, s2, label14
label76:
	mv a1, zero
	j label19
.p2align 2
label14:
	mul a1, a2, s3
	mv a4, zero
	fmv.w.x f11, zero
	add a3, s1, a1
.p2align 2
label15:
	sh2add a1, a4, a3
	flw f14, 0(a1)
	addiw a4, a4, 64
	flw f0, 4(a1)
	fadd.s f12, f11, f14
	flw f15, 8(a1)
	flw f1, 12(a1)
	fadd.s f13, f12, f0
	flw f0, 16(a1)
	fadd.s f14, f13, f15
	flw f15, 20(a1)
	fadd.s f11, f14, f1
	flw f14, 24(a1)
	fadd.s f12, f11, f0
	fadd.s f13, f12, f15
	flw f15, 28(a1)
	fadd.s f11, f13, f14
	flw f14, 32(a1)
	fadd.s f12, f11, f15
	flw f15, 36(a1)
	fadd.s f13, f12, f14
	flw f12, 40(a1)
	fadd.s f11, f13, f15
	flw f15, 44(a1)
	flw f0, 48(a1)
	fadd.s f14, f11, f12
	fadd.s f13, f14, f15
	flw f15, 52(a1)
	fadd.s f12, f13, f0
	flw f13, 56(a1)
	fadd.s f11, f12, f15
	flw f15, 60(a1)
	flw f0, 64(a1)
	fadd.s f14, f11, f13
	fadd.s f12, f14, f15
	flw f14, 68(a1)
	fadd.s f13, f12, f0
	flw f0, 72(a1)
	flw f15, 76(a1)
	fadd.s f11, f13, f14
	fadd.s f12, f11, f0
	flw f11, 80(a1)
	fadd.s f14, f12, f15
	flw f15, 84(a1)
	flw f0, 88(a1)
	fadd.s f13, f14, f11
	fadd.s f12, f13, f15
	flw f15, 92(a1)
	fadd.s f11, f12, f0
	flw f12, 96(a1)
	flw f0, 100(a1)
	fadd.s f14, f11, f15
	flw f15, 104(a1)
	fadd.s f13, f14, f12
	fadd.s f11, f13, f0
	flw f13, 108(a1)
	flw f0, 112(a1)
	fadd.s f12, f11, f15
	flw f15, 116(a1)
	fadd.s f14, f12, f13
	fadd.s f11, f14, f0
	flw f0, 120(a1)
	fadd.s f13, f11, f15
	flw f15, 124(a1)
	fadd.s f12, f13, f0
	flw f0, 128(a1)
	fadd.s f14, f12, f15
	flw f15, 132(a1)
	fadd.s f11, f14, f0
	flw f0, 136(a1)
	fadd.s f13, f11, f15
	flw f15, 140(a1)
	fadd.s f12, f13, f0
	flw f13, 144(a1)
	fadd.s f14, f12, f15
	flw f15, 148(a1)
	fadd.s f11, f14, f13
	flw f14, 152(a1)
	fadd.s f12, f11, f15
	flw f15, 156(a1)
	flw f0, 160(a1)
	fadd.s f13, f12, f14
	fadd.s f11, f13, f15
	flw f13, 164(a1)
	flw f15, 168(a1)
	fadd.s f12, f11, f0
	flw f0, 172(a1)
	fadd.s f14, f12, f13
	fadd.s f11, f14, f15
	flw f14, 176(a1)
	fadd.s f13, f11, f0
	flw f0, 180(a1)
	flw f15, 184(a1)
	fadd.s f12, f13, f14
	fadd.s f11, f12, f0
	flw f12, 188(a1)
	fadd.s f13, f11, f15
	flw f15, 192(a1)
	flw f0, 196(a1)
	fadd.s f14, f13, f12
	fadd.s f11, f14, f15
	flw f15, 200(a1)
	fadd.s f12, f11, f0
	flw f0, 204(a1)
	fadd.s f13, f12, f15
	flw f12, 208(a1)
	flw f15, 212(a1)
	fadd.s f14, f13, f0
	fadd.s f11, f14, f12
	flw f14, 216(a1)
	fadd.s f13, f11, f15
	flw f15, 220(a1)
	fadd.s f12, f13, f14
	flw f14, 224(a1)
	fadd.s f11, f12, f15
	flw f15, 228(a1)
	fadd.s f13, f11, f14
	flw f11, 232(a1)
	fadd.s f12, f13, f15
	flw f15, 236(a1)
	fadd.s f14, f12, f11
	flw f12, 240(a1)
	fadd.s f13, f14, f15
	flw f15, 244(a1)
	flw f0, 248(a1)
	fadd.s f11, f13, f12
	flw f13, 252(a1)
	fadd.s f14, f11, f15
	fadd.s f12, f14, f0
	fadd.s f11, f12, f13
	blt a4, s0, label15
	sh2add a1, a4, a3
	flw f12, 0(a1)
	flw f15, 4(a1)
	fadd.s f14, f11, f12
	flw f0, 8(a1)
	fadd.s f13, f14, f15
	flw f15, 12(a1)
	flw f14, 16(a1)
	fadd.s f12, f13, f0
	fadd.s f11, f12, f15
	flw f15, 20(a1)
	fadd.s f13, f11, f14
	flw f14, 24(a1)
	fadd.s f12, f13, f15
	flw f15, 28(a1)
	fadd.s f11, f12, f14
	flw f14, 32(a1)
	fadd.s f13, f11, f15
	flw f15, 36(a1)
	fadd.s f12, f13, f14
	flw f14, 40(a1)
	fadd.s f11, f12, f15
	flw f15, 44(a1)
	fadd.s f13, f11, f14
	flw f14, 48(a1)
	fadd.s f12, f13, f15
	flw f15, 52(a1)
	fadd.s f11, f12, f14
	flw f14, 56(a1)
	flw f0, 60(a1)
	fadd.s f13, f11, f15
	fadd.s f12, f13, f14
	flw f13, 64(a1)
	fadd.s f11, f12, f0
	flw f12, 68(a1)
	fadd.s f15, f11, f13
	flw f11, 72(a1)
	fadd.s f14, f15, f12
	flw f15, 76(a1)
	fadd.s f13, f14, f11
	flw f14, 80(a1)
	fadd.s f12, f13, f15
	flw f15, 84(a1)
	fadd.s f11, f12, f14
	flw f14, 88(a1)
	flw f0, 92(a1)
	fadd.s f13, f11, f15
	flw f15, 96(a1)
	fadd.s f12, f13, f14
	flw f14, 100(a1)
	fadd.s f11, f12, f0
	fadd.s f13, f11, f15
	flw f15, 104(a1)
	fadd.s f12, f13, f14
	flw f13, 108(a1)
	fadd.s f11, f12, f15
	flw f15, 112(a1)
	flw f0, 116(a1)
	fadd.s f14, f11, f13
	fadd.s f12, f14, f15
	flw f14, 120(a1)
	flw f15, 124(a1)
	fadd.s f13, f12, f0
	flw f0, 128(a1)
	fadd.s f11, f13, f14
	fadd.s f12, f11, f15
	flw f15, 132(a1)
	fadd.s f13, f12, f0
	flw f12, 136(a1)
	flw f0, 140(a1)
	fadd.s f14, f13, f15
	flw f15, 144(a1)
	fadd.s f11, f14, f12
	flw f14, 148(a1)
	fadd.s f13, f11, f0
	fadd.s f12, f13, f15
	flw f15, 152(a1)
	fadd.s f11, f12, f14
	flw f14, 156(a1)
	sh2add a1, a2, s7
	addiw a2, a2, 1
	fadd.s f13, f11, f15
	fmv.w.x f15, s9
	fadd.s f12, f13, f14
	fdiv.s f11, f12, f15
	fsw f11, 0(a1)
	blt a2, s2, label14
	j label76
label19:
	blt a1, s2, label21
	j label408
label72:
	fmv.s f8, f10
	mv a1, zero
label43:
	bge a1, s2, label46
	mul a4, a1, s3
	mv a3, zero
	fmv.s f10, f8
	add a2, s1, a4
.p2align 2
label48:
	sh2add a0, a3, a2
	addiw a3, a3, 64
	flw f13, 0(a0)
	flw f14, 4(a0)
	fadd.s f11, f10, f13
	flw f15, 8(a0)
	fadd.s f12, f11, f14
	flw f14, 12(a0)
	fadd.s f10, f12, f15
	flw f12, 16(a0)
	flw f15, 20(a0)
	fadd.s f13, f10, f14
	flw f14, 24(a0)
	fadd.s f11, f13, f12
	fadd.s f10, f11, f15
	flw f11, 28(a0)
	flw f15, 32(a0)
	fadd.s f13, f10, f14
	flw f14, 36(a0)
	fadd.s f12, f13, f11
	fadd.s f10, f12, f15
	flw f12, 40(a0)
	flw f15, 44(a0)
	fadd.s f11, f10, f14
	flw f14, 48(a0)
	fadd.s f13, f11, f12
	fadd.s f10, f13, f15
	flw f13, 52(a0)
	fadd.s f12, f10, f14
	flw f14, 56(a0)
	flw f15, 60(a0)
	flw f0, 64(a0)
	fadd.s f11, f12, f13
	fadd.s f10, f11, f14
	flw f14, 68(a0)
	fadd.s f12, f10, f15
	flw f15, 72(a0)
	fadd.s f13, f12, f0
	flw f12, 76(a0)
	fadd.s f11, f13, f14
	flw f14, 80(a0)
	fadd.s f10, f11, f15
	flw f15, 84(a0)
	fadd.s f13, f10, f12
	fadd.s f11, f13, f14
	flw f14, 88(a0)
	fadd.s f12, f11, f15
	flw f15, 92(a0)
	fadd.s f10, f12, f14
	flw f12, 96(a0)
	fadd.s f13, f10, f15
	flw f15, 100(a0)
	flw f14, 104(a0)
	fadd.s f11, f13, f12
	flw f13, 108(a0)
	fadd.s f10, f11, f15
	fadd.s f12, f10, f14
	flw f14, 112(a0)
	fadd.s f11, f12, f13
	flw f13, 116(a0)
	fadd.s f10, f11, f14
	flw f14, 120(a0)
	flw f15, 124(a0)
	fadd.s f12, f10, f13
	flw f13, 128(a0)
	fadd.s f11, f12, f14
	fadd.s f10, f11, f15
	flw f15, 132(a0)
	flw f14, 136(a0)
	fadd.s f12, f10, f13
	fadd.s f11, f12, f15
	flw f12, 140(a0)
	fadd.s f13, f11, f14
	flw f14, 144(a0)
	fadd.s f10, f13, f12
	flw f13, 148(a0)
	flw f15, 152(a0)
	fadd.s f11, f10, f14
	flw f14, 156(a0)
	fadd.s f12, f11, f13
	flw f13, 160(a0)
	fadd.s f10, f12, f15
	flw f15, 164(a0)
	fadd.s f11, f10, f14
	flw f14, 168(a0)
	fadd.s f12, f11, f13
	fadd.s f10, f12, f15
	flw f12, 172(a0)
	fadd.s f13, f10, f14
	flw f10, 176(a0)
	flw f15, 180(a0)
	fadd.s f11, f13, f12
	flw f13, 184(a0)
	fadd.s f14, f11, f10
	fadd.s f12, f14, f15
	flw f15, 188(a0)
	flw f14, 192(a0)
	fadd.s f10, f12, f13
	fadd.s f11, f10, f15
	flw f15, 196(a0)
	fadd.s f13, f11, f14
	flw f14, 200(a0)
	fadd.s f12, f13, f15
	flw f13, 204(a0)
	fadd.s f10, f12, f14
	flw f14, 208(a0)
	flw f15, 212(a0)
	fadd.s f11, f10, f13
	fadd.s f12, f11, f14
	flw f11, 216(a0)
	fadd.s f13, f12, f15
	flw f15, 220(a0)
	flw f14, 224(a0)
	fadd.s f10, f13, f11
	flw f13, 228(a0)
	fadd.s f12, f10, f15
	fadd.s f11, f12, f14
	flw f14, 232(a0)
	fadd.s f10, f11, f13
	flw f13, 236(a0)
	fadd.s f12, f10, f14
	flw f14, 240(a0)
	fadd.s f11, f12, f13
	flw f13, 244(a0)
	fadd.s f10, f11, f14
	flw f14, 248(a0)
	fadd.s f12, f10, f13
	flw f13, 252(a0)
	fadd.s f11, f12, f14
	fadd.s f10, f11, f13
	blt a3, s0, label48
	sh2add a0, a3, a2
	addiw a1, a1, 1
	flw f12, 0(a0)
	flw f14, 4(a0)
	fadd.s f11, f10, f12
	flw f10, 8(a0)
	fadd.s f13, f11, f14
	flw f14, 12(a0)
	fadd.s f12, f13, f10
	flw f13, 16(a0)
	fadd.s f11, f12, f14
	flw f14, 20(a0)
	fadd.s f10, f11, f13
	flw f13, 24(a0)
	flw f15, 28(a0)
	fadd.s f12, f10, f14
	flw f14, 32(a0)
	fadd.s f11, f12, f13
	fadd.s f10, f11, f15
	flw f15, 36(a0)
	fadd.s f13, f10, f14
	flw f14, 40(a0)
	fadd.s f12, f13, f15
	flw f13, 44(a0)
	fadd.s f11, f12, f14
	flw f14, 48(a0)
	fadd.s f10, f11, f13
	flw f13, 52(a0)
	fadd.s f12, f10, f14
	flw f14, 56(a0)
	fadd.s f11, f12, f13
	flw f13, 60(a0)
	fadd.s f10, f11, f14
	flw f14, 64(a0)
	fadd.s f12, f10, f13
	flw f13, 68(a0)
	fadd.s f11, f12, f14
	flw f14, 72(a0)
	fadd.s f10, f11, f13
	flw f13, 76(a0)
	fadd.s f12, f10, f14
	flw f14, 80(a0)
	fadd.s f11, f12, f13
	flw f13, 84(a0)
	fadd.s f10, f11, f14
	flw f14, 88(a0)
	fadd.s f12, f10, f13
	flw f13, 92(a0)
	fadd.s f11, f12, f14
	flw f12, 96(a0)
	fadd.s f10, f11, f13
	flw f11, 100(a0)
	fadd.s f14, f10, f12
	flw f10, 104(a0)
	fadd.s f13, f14, f11
	flw f14, 108(a0)
	fadd.s f12, f13, f10
	flw f13, 112(a0)
	fadd.s f11, f12, f14
	flw f14, 116(a0)
	fadd.s f10, f11, f13
	flw f13, 120(a0)
	flw f15, 124(a0)
	fadd.s f12, f10, f14
	flw f14, 128(a0)
	flw f0, 132(a0)
	fadd.s f11, f12, f13
	fadd.s f10, f11, f15
	flw f15, 136(a0)
	fadd.s f13, f10, f14
	flw f14, 140(a0)
	fadd.s f12, f13, f0
	flw f13, 144(a0)
	fadd.s f11, f12, f15
	fadd.s f10, f11, f14
	flw f14, 148(a0)
	fadd.s f12, f10, f13
	flw f13, 152(a0)
	fadd.s f11, f12, f14
	flw f12, 156(a0)
	fadd.s f10, f11, f13
	fadd.s f8, f10, f12
	j label43
.p2align 2
label1117:
	sh2add a2, a1, s8
	addiw a1, a1, 1
	fsw f12, 0(a2)
	blt a1, s2, label21
	j label408
label46:
	li a0, 95
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
	j label6
label562:
	sh2add a2, a1, s8
	addiw a1, a1, 1
	fsw f12, 0(a2)
	blt a1, s2, label21
	j label408
