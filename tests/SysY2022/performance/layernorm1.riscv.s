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
	auipc a1, %pcrel_hi(mean)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a0, %pcrel_lo(pcrel1127)
	sd s6, 16(sp)
pcrel1129:
	auipc a0, %pcrel_hi(var)
	lui s6, 258048
	sd s7, 24(sp)
	addi s7, a1, %pcrel_lo(pcrel1128)
	sd s8, 32(sp)
	addi s8, a0, %pcrel_lo(pcrel1129)
	sd s10, 40(sp)
pcrel1130:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
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
	li a1, 100
	blt a0, a1, label73
	j label72
label408:
	fmv.s f12, f10
	mv a2, zero
	j label34
.p2align 2
label21:
	sh2add a2, a1, s7
	mul a3, a1, s3
	flw f11, 0(a2)
	fmv.w.x f12, zero
	add a2, s1, a3
	mv a3, zero
.p2align 2
label22:
	sh2add a4, a3, a2
	flw f15, 0(a4)
	addiw a3, a3, 16
	fsub.s f13, f15, f11
	flw f15, 4(a4)
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	flw f15, 8(a4)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	flw f15, 12(a4)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	flw f15, 16(a4)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	fadd.s f12, f12, f14
	fmul.s f0, f13, f13
	flw f14, 20(a4)
	fsub.s f13, f14, f11
	flw f14, 24(a4)
	fadd.s f12, f12, f0
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	fadd.s f12, f12, f15
	fmul.s f0, f13, f13
	flw f15, 28(a4)
	fsub.s f13, f15, f11
	flw f15, 32(a4)
	fadd.s f12, f12, f0
	flw f0, 36(a4)
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f0, f11
	fadd.s f12, f12, f14
	fmul.s f15, f13, f13
	flw f14, 40(a4)
	fsub.s f13, f14, f11
	flw f14, 44(a4)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 48(a4)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 52(a4)
	flw f0, 56(a4)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f0, f11
	fadd.s f12, f12, f15
	fmul.s f14, f13, f13
	flw f15, 60(a4)
	fsub.s f13, f15, f11
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fadd.s f12, f12, f14
	blt a3, s4, label22
	sh2add a2, a3, a2
	flw f14, 0(a2)
	fsub.s f13, f14, f11
	flw f14, 4(a2)
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 8(a2)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 12(a2)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 16(a2)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 20(a2)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 24(a2)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 28(a2)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 0(s5)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fmv.w.x f13, s9
	fadd.s f11, f12, f15
	fdiv.s f12, f11, f13
	fmv.w.x f13, s6
	fadd.s f11, f12, f14
	fmv.w.x f14, zero
	fmul.s f12, f11, f13
	fmv.s f13, f11
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
	fadd.s f14, f12, f13
	fmv.w.x f0, s6
	fmul.s f15, f14, f0
	fmv.s f14, f12
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
	fadd.s f13, f12, f14
	fmv.w.x f0, s6
	fmul.s f15, f13, f0
	fmv.s f13, f12
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
	mv a4, zero
	sh2add a3, a2, s7
	flw f10, 0(a1)
	mul a1, a2, s3
	flw f11, 0(a3)
	add a3, s1, a1
.p2align 2
label38:
	sh2add a1, a4, a3
	addiw a4, a4, 16
	flw f15, 0(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fadd.s f12, f12, f13
	fsw f13, 0(a1)
	flw f14, 4(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 4(a1)
	fadd.s f12, f12, f13
	flw f15, 8(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 8(a1)
	fadd.s f12, f12, f13
	flw f15, 12(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 12(a1)
	fadd.s f12, f12, f13
	flw f15, 16(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 16(a1)
	fadd.s f12, f12, f13
	flw f15, 20(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 20(a1)
	fadd.s f12, f12, f13
	flw f14, 24(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 24(a1)
	fadd.s f12, f12, f13
	flw f15, 28(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 28(a1)
	fadd.s f12, f12, f13
	flw f14, 32(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 32(a1)
	fadd.s f12, f12, f13
	flw f14, 36(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 36(a1)
	fadd.s f12, f12, f13
	flw f15, 40(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 40(a1)
	fadd.s f12, f12, f13
	flw f14, 44(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 44(a1)
	fadd.s f12, f12, f13
	flw f15, 48(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 48(a1)
	fadd.s f12, f12, f13
	flw f15, 52(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 52(a1)
	fadd.s f12, f12, f13
	flw f14, 56(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 56(a1)
	fadd.s f12, f12, f13
	flw f15, 60(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 60(a1)
	fadd.s f12, f12, f13
	blt a4, s4, label38
	sh2add a1, a4, a3
	addiw a2, a2, 1
	flw f15, 0(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fadd.s f12, f12, f13
	fsw f13, 0(a1)
	flw f15, 4(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 4(a1)
	fadd.s f12, f12, f13
	flw f15, 8(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 8(a1)
	fadd.s f12, f12, f13
	flw f15, 12(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 12(a1)
	fadd.s f12, f12, f13
	flw f15, 16(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 16(a1)
	fadd.s f12, f12, f13
	flw f15, 20(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 20(a1)
	fadd.s f12, f12, f13
	flw f14, 24(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 24(a1)
	fadd.s f12, f12, f13
	flw f13, 28(a1)
	fsub.s f11, f13, f11
	fdiv.s f10, f11, f10
	fsw f10, 28(a1)
	fadd.s f12, f12, f10
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
	flw f12, 0(a1)
	addiw a4, a4, 64
	flw f13, 4(a1)
	fadd.s f11, f11, f12
	fadd.s f12, f11, f13
	flw f11, 8(a1)
	fadd.s f13, f12, f11
	flw f12, 12(a1)
	fadd.s f11, f13, f12
	flw f13, 16(a1)
	fadd.s f12, f11, f13
	flw f11, 20(a1)
	fadd.s f13, f12, f11
	flw f12, 24(a1)
	fadd.s f11, f13, f12
	flw f13, 28(a1)
	flw f14, 32(a1)
	flw f15, 36(a1)
	fadd.s f12, f11, f13
	flw f13, 40(a1)
	fadd.s f11, f12, f14
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	flw f12, 44(a1)
	fadd.s f13, f11, f12
	flw f11, 48(a1)
	fadd.s f12, f13, f11
	flw f13, 52(a1)
	flw f14, 56(a1)
	fadd.s f11, f12, f13
	flw f13, 60(a1)
	flw f15, 64(a1)
	fadd.s f12, f11, f14
	flw f14, 68(a1)
	fadd.s f11, f12, f13
	flw f13, 72(a1)
	fadd.s f12, f11, f15
	fadd.s f11, f12, f14
	fadd.s f12, f11, f13
	flw f11, 76(a1)
	fadd.s f13, f12, f11
	flw f12, 80(a1)
	fadd.s f11, f13, f12
	flw f13, 84(a1)
	flw f14, 88(a1)
	fadd.s f12, f11, f13
	flw f13, 92(a1)
	flw f15, 96(a1)
	fadd.s f11, f12, f14
	flw f14, 100(a1)
	fadd.s f12, f11, f13
	flw f13, 104(a1)
	fadd.s f11, f12, f15
	fadd.s f12, f11, f14
	flw f14, 108(a1)
	flw f15, 112(a1)
	fadd.s f11, f12, f13
	flw f13, 116(a1)
	fadd.s f12, f11, f14
	flw f14, 120(a1)
	fadd.s f11, f12, f15
	fadd.s f12, f11, f13
	flw f13, 124(a1)
	fadd.s f11, f12, f14
	flw f14, 128(a1)
	fadd.s f12, f11, f13
	flw f13, 132(a1)
	fadd.s f11, f12, f14
	flw f14, 136(a1)
	fadd.s f12, f11, f13
	flw f13, 140(a1)
	fadd.s f11, f12, f14
	flw f14, 144(a1)
	fadd.s f12, f11, f13
	fadd.s f11, f12, f14
	flw f12, 148(a1)
	fadd.s f13, f11, f12
	flw f11, 152(a1)
	fadd.s f12, f13, f11
	flw f13, 156(a1)
	flw f14, 160(a1)
	fadd.s f11, f12, f13
	flw f13, 164(a1)
	fadd.s f12, f11, f14
	flw f14, 168(a1)
	flw f15, 172(a1)
	fadd.s f11, f12, f13
	flw f13, 176(a1)
	fadd.s f12, f11, f14
	flw f14, 180(a1)
	fadd.s f11, f12, f15
	fadd.s f12, f11, f13
	flw f13, 184(a1)
	fadd.s f11, f12, f14
	fadd.s f12, f11, f13
	flw f11, 188(a1)
	fadd.s f13, f12, f11
	flw f12, 192(a1)
	flw f14, 196(a1)
	fadd.s f11, f13, f12
	flw f13, 200(a1)
	fadd.s f12, f11, f14
	flw f14, 204(a1)
	fadd.s f11, f12, f13
	flw f13, 208(a1)
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	flw f12, 212(a1)
	fadd.s f13, f11, f12
	flw f11, 216(a1)
	flw f14, 220(a1)
	fadd.s f12, f13, f11
	flw f13, 224(a1)
	fadd.s f11, f12, f14
	flw f14, 228(a1)
	fadd.s f12, f11, f13
	fadd.s f11, f12, f14
	flw f12, 232(a1)
	fadd.s f13, f11, f12
	flw f11, 236(a1)
	fadd.s f12, f13, f11
	flw f13, 240(a1)
	fadd.s f11, f12, f13
	flw f12, 244(a1)
	fadd.s f13, f11, f12
	flw f11, 248(a1)
	fadd.s f12, f13, f11
	flw f13, 252(a1)
	fadd.s f11, f12, f13
	blt a4, s0, label15
	sh2add a1, a4, a3
	flw f12, 0(a1)
	flw f14, 4(a1)
	fadd.s f11, f11, f12
	flw f13, 8(a1)
	fadd.s f12, f11, f14
	flw f14, 12(a1)
	fadd.s f11, f12, f13
	flw f13, 16(a1)
	fadd.s f12, f11, f14
	flw f14, 20(a1)
	fadd.s f11, f12, f13
	flw f13, 24(a1)
	fadd.s f12, f11, f14
	flw f14, 28(a1)
	fadd.s f11, f12, f13
	flw f13, 32(a1)
	fadd.s f12, f11, f14
	flw f14, 36(a1)
	fadd.s f11, f12, f13
	flw f13, 40(a1)
	fadd.s f12, f11, f14
	flw f14, 44(a1)
	fadd.s f11, f12, f13
	flw f13, 48(a1)
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	flw f12, 52(a1)
	fadd.s f13, f11, f12
	flw f11, 56(a1)
	fadd.s f12, f13, f11
	flw f13, 60(a1)
	fadd.s f11, f12, f13
	flw f12, 64(a1)
	fadd.s f13, f11, f12
	flw f11, 68(a1)
	fadd.s f12, f13, f11
	flw f13, 72(a1)
	flw f14, 76(a1)
	fadd.s f11, f12, f13
	flw f13, 80(a1)
	fadd.s f12, f11, f14
	flw f14, 84(a1)
	fadd.s f11, f12, f13
	flw f13, 88(a1)
	fadd.s f12, f11, f14
	flw f14, 92(a1)
	fadd.s f11, f12, f13
	flw f13, 96(a1)
	fadd.s f12, f11, f14
	flw f14, 100(a1)
	fadd.s f11, f12, f13
	flw f13, 104(a1)
	fadd.s f12, f11, f14
	flw f14, 108(a1)
	fadd.s f11, f12, f13
	flw f13, 112(a1)
	fadd.s f12, f11, f14
	flw f14, 116(a1)
	fadd.s f11, f12, f13
	flw f13, 120(a1)
	fadd.s f12, f11, f14
	flw f14, 124(a1)
	flw f15, 128(a1)
	fadd.s f11, f12, f13
	flw f13, 132(a1)
	fadd.s f12, f11, f14
	flw f14, 136(a1)
	fadd.s f11, f12, f15
	fadd.s f12, f11, f13
	flw f13, 140(a1)
	fadd.s f11, f12, f14
	flw f14, 144(a1)
	fadd.s f12, f11, f13
	flw f13, 148(a1)
	fadd.s f11, f12, f14
	flw f14, 152(a1)
	fadd.s f12, f11, f13
	flw f13, 156(a1)
	sh2add a1, a2, s7
	addiw a2, a2, 1
	fadd.s f11, f12, f14
	fmv.w.x f14, s9
	fadd.s f12, f11, f13
	fdiv.s f11, f12, f14
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
	flw f11, 0(a0)
	flw f12, 4(a0)
	fadd.s f10, f10, f11
	flw f13, 8(a0)
	fadd.s f11, f10, f12
	flw f12, 12(a0)
	fadd.s f10, f11, f13
	flw f13, 16(a0)
	fadd.s f11, f10, f12
	flw f12, 20(a0)
	fadd.s f10, f11, f13
	flw f13, 24(a0)
	fadd.s f11, f10, f12
	flw f12, 28(a0)
	fadd.s f10, f11, f13
	flw f13, 32(a0)
	fadd.s f11, f10, f12
	flw f12, 36(a0)
	fadd.s f10, f11, f13
	fadd.s f11, f10, f12
	flw f10, 40(a0)
	flw f13, 44(a0)
	fadd.s f12, f11, f10
	flw f11, 48(a0)
	fadd.s f10, f12, f13
	fadd.s f12, f10, f11
	flw f10, 52(a0)
	fadd.s f11, f12, f10
	flw f12, 56(a0)
	flw f13, 60(a0)
	flw f14, 64(a0)
	fadd.s f10, f11, f12
	flw f12, 68(a0)
	fadd.s f11, f10, f13
	flw f13, 72(a0)
	fadd.s f10, f11, f14
	fadd.s f11, f10, f12
	flw f12, 76(a0)
	flw f14, 80(a0)
	fadd.s f10, f11, f13
	flw f13, 84(a0)
	fadd.s f11, f10, f12
	flw f12, 88(a0)
	fadd.s f10, f11, f14
	flw f14, 92(a0)
	fadd.s f11, f10, f13
	flw f13, 96(a0)
	fadd.s f10, f11, f12
	flw f12, 100(a0)
	fadd.s f11, f10, f14
	fadd.s f10, f11, f13
	flw f13, 104(a0)
	fadd.s f11, f10, f12
	flw f12, 108(a0)
	fadd.s f10, f11, f13
	flw f13, 112(a0)
	fadd.s f11, f10, f12
	flw f12, 116(a0)
	fadd.s f10, f11, f13
	fadd.s f11, f10, f12
	flw f10, 120(a0)
	fadd.s f12, f11, f10
	flw f11, 124(a0)
	flw f13, 128(a0)
	fadd.s f10, f12, f11
	flw f12, 132(a0)
	fadd.s f11, f10, f13
	flw f13, 136(a0)
	fadd.s f10, f11, f12
	flw f12, 140(a0)
	fadd.s f11, f10, f13
	fadd.s f10, f11, f12
	flw f11, 144(a0)
	fadd.s f12, f10, f11
	flw f10, 148(a0)
	flw f13, 152(a0)
	fadd.s f11, f12, f10
	flw f12, 156(a0)
	fadd.s f10, f11, f13
	fadd.s f11, f10, f12
	flw f10, 160(a0)
	fadd.s f12, f11, f10
	flw f11, 164(a0)
	flw f13, 168(a0)
	fadd.s f10, f12, f11
	flw f12, 172(a0)
	fadd.s f11, f10, f13
	fadd.s f10, f11, f12
	flw f11, 176(a0)
	fadd.s f12, f10, f11
	flw f10, 180(a0)
	flw f13, 184(a0)
	fadd.s f11, f12, f10
	flw f12, 188(a0)
	fadd.s f10, f11, f13
	flw f13, 192(a0)
	fadd.s f11, f10, f12
	flw f12, 196(a0)
	fadd.s f10, f11, f13
	flw f13, 200(a0)
	fadd.s f11, f10, f12
	flw f12, 204(a0)
	fadd.s f10, f11, f13
	fadd.s f11, f10, f12
	flw f10, 208(a0)
	fadd.s f12, f11, f10
	flw f11, 212(a0)
	flw f13, 216(a0)
	fadd.s f10, f12, f11
	flw f12, 220(a0)
	fadd.s f11, f10, f13
	flw f13, 224(a0)
	fadd.s f10, f11, f12
	flw f12, 228(a0)
	fadd.s f11, f10, f13
	flw f13, 232(a0)
	fadd.s f10, f11, f12
	flw f12, 236(a0)
	fadd.s f11, f10, f13
	flw f13, 240(a0)
	fadd.s f10, f11, f12
	flw f12, 244(a0)
	fadd.s f11, f10, f13
	flw f13, 248(a0)
	fadd.s f10, f11, f12
	flw f12, 252(a0)
	fadd.s f11, f10, f13
	fadd.s f10, f11, f12
	blt a3, s0, label48
	sh2add a0, a3, a2
	addiw a1, a1, 1
	flw f12, 0(a0)
	flw f13, 4(a0)
	fadd.s f11, f10, f12
	flw f12, 8(a0)
	fadd.s f10, f11, f13
	flw f13, 12(a0)
	fadd.s f11, f10, f12
	flw f12, 16(a0)
	fadd.s f10, f11, f13
	flw f13, 20(a0)
	fadd.s f11, f10, f12
	flw f12, 24(a0)
	fadd.s f10, f11, f13
	flw f13, 28(a0)
	fadd.s f11, f10, f12
	flw f12, 32(a0)
	fadd.s f10, f11, f13
	flw f13, 36(a0)
	fadd.s f11, f10, f12
	flw f12, 40(a0)
	fadd.s f10, f11, f13
	flw f13, 44(a0)
	fadd.s f11, f10, f12
	flw f12, 48(a0)
	fadd.s f10, f11, f13
	flw f13, 52(a0)
	fadd.s f11, f10, f12
	flw f12, 56(a0)
	fadd.s f10, f11, f13
	flw f13, 60(a0)
	fadd.s f11, f10, f12
	flw f12, 64(a0)
	fadd.s f10, f11, f13
	flw f13, 68(a0)
	fadd.s f11, f10, f12
	flw f12, 72(a0)
	fadd.s f10, f11, f13
	flw f13, 76(a0)
	fadd.s f11, f10, f12
	flw f12, 80(a0)
	fadd.s f10, f11, f13
	flw f13, 84(a0)
	fadd.s f11, f10, f12
	flw f12, 88(a0)
	fadd.s f10, f11, f13
	flw f13, 92(a0)
	fadd.s f11, f10, f12
	flw f12, 96(a0)
	fadd.s f10, f11, f13
	flw f13, 100(a0)
	fadd.s f11, f10, f12
	flw f12, 104(a0)
	fadd.s f10, f11, f13
	flw f13, 108(a0)
	fadd.s f11, f10, f12
	flw f12, 112(a0)
	fadd.s f10, f11, f13
	flw f13, 116(a0)
	fadd.s f11, f10, f12
	flw f12, 120(a0)
	fadd.s f10, f11, f13
	flw f13, 124(a0)
	fadd.s f11, f10, f12
	flw f12, 128(a0)
	fadd.s f10, f11, f13
	flw f13, 132(a0)
	fadd.s f11, f10, f12
	flw f12, 136(a0)
	fadd.s f10, f11, f13
	flw f13, 140(a0)
	fadd.s f11, f10, f12
	flw f12, 144(a0)
	fadd.s f10, f11, f13
	flw f13, 148(a0)
	fadd.s f11, f10, f12
	flw f12, 152(a0)
	fadd.s f10, f11, f13
	fadd.s f11, f10, f12
	flw f10, 156(a0)
	fadd.s f8, f11, f10
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
