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
.globl main
main:
.p2align 2
	addi sp, sp, -48
pcrel940:
	auipc a0, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a0, %pcrel_lo(pcrel940)
	sd s1, 16(sp)
pcrel941:
	auipc a0, %pcrel_hi(mean)
	sd s2, 24(sp)
	addi s1, a0, %pcrel_lo(pcrel941)
	sd s3, 32(sp)
pcrel942:
	auipc a0, %pcrel_hi(var)
	mv s3, zero
	addi s2, a0, %pcrel_lo(pcrel942)
	fsw f8, 40(sp)
label2:
	li a0, 1000
	bge s3, a0, label8
	li a2, 4000
	mul a1, s3, a2
	add a0, s0, a1
	jal getfarray
	li a1, 1000
	bne a0, a1, label4
	addiw s3, s3, 1
	j label2
label8:
	li a0, 42
	jal _sysy_starttime
	mv a0, zero
	fmv.w.x f10, zero
label9:
	li a1, 100
	bge a0, a1, label72
	mv a2, zero
	li a3, 1000
	blt zero, a3, label14
	j label76
label408:
	fmv.s f12, f10
	mv a2, zero
	j label34
.p2align 2
label21:
	sh2add a2, a1, s1
	li a3, 4000
	fmv.w.x f12, zero
	flw f11, 0(a2)
	mul a4, a1, a3
	mv a3, zero
	add a2, s0, a4
.p2align 2
label22:
	sh2add a4, a3, a2
	addiw a3, a3, 8
	flw f15, 0(a4)
	fsub.s f13, f15, f11
	flw f15, 4(a4)
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	fadd.s f12, f12, f14
	fmul.s f0, f13, f13
	flw f14, 8(a4)
	fsub.s f13, f14, f11
	flw f14, 12(a4)
	fadd.s f12, f12, f0
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	fadd.s f12, f12, f15
	fmul.s f0, f13, f13
	flw f15, 16(a4)
	fsub.s f13, f15, f11
	flw f15, 20(a4)
	fadd.s f12, f12, f0
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	flw f15, 24(a4)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	flw f15, 28(a4)
	li a4, 1000
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fadd.s f12, f12, f14
	blt a3, a4, label22
	lui a2, 280480
	fmv.w.x f14, zero
	fmv.w.x f13, a2
pcrel943:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fdiv.s f11, f12, f13
	addi a3, a2, %pcrel_lo(pcrel943)
	lui a2, 258048
	flw f12, 0(a3)
	fmv.w.x f13, a2
	fadd.s f11, f11, f12
	fmul.s f12, f11, f13
	fmv.s f13, f11
	fmul.s f15, f12, f12
pcrel944:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a3, %pcrel_lo(pcrel944)
	fsub.s f1, f15, f11
	fabs.s f0, f1
	flw f1, 4(a2)
	flt.s a3, f1, f0
	bne a3, zero, label30
	j label481
.p2align 2
label926:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	fsw f12, 0(a2)
	li a3, 1000
	blt a1, a3, label21
	j label408
label34:
	li a3, 1000
	blt a2, a3, label37
label502:
	addiw a0, a0, 1
	fmv.s f10, f12
	j label9
.p2align 2
label37:
	sh2add a1, a2, s2
	li a3, 4000
	sh2add a4, a2, s1
	flw f10, 0(a1)
	flw f11, 0(a4)
	mul a4, a2, a3
	mv a3, zero
	add a1, s0, a4
.p2align 2
label38:
	sh2add a4, a3, a1
	flw f14, 0(a4)
	addiw a3, a3, 8
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fadd.s f12, f12, f13
	fsw f13, 0(a4)
	flw f14, 4(a4)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 4(a4)
	fadd.s f12, f12, f13
	flw f14, 8(a4)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 8(a4)
	fadd.s f12, f12, f13
	flw f14, 12(a4)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 12(a4)
	fadd.s f12, f12, f13
	flw f14, 16(a4)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 16(a4)
	fadd.s f12, f12, f13
	flw f15, 20(a4)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 20(a4)
	fadd.s f12, f12, f13
	flw f14, 24(a4)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 24(a4)
	fadd.s f12, f12, f13
	flw f15, 28(a4)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 28(a4)
	fadd.s f12, f12, f13
	li a4, 1000
	blt a3, a4, label38
	addiw a2, a2, 1
	li a3, 1000
	blt a2, a3, label37
	j label502
.p2align 2
label30:
	flt.s a2, f11, f15
	bne a2, zero, label32
	fadd.s f14, f12, f13
	lui a2, 258048
	fmv.w.x f0, a2
	fmul.s f15, f14, f0
	fmv.s f14, f12
	fmv.s f12, f15
	fmul.s f15, f15, f15
pcrel945:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a3, %pcrel_lo(pcrel945)
	fsub.s f1, f15, f11
	fabs.s f0, f1
	flw f1, 4(a2)
	flt.s a3, f1, f0
	bne a3, zero, label30
	j label926
.p2align 2
label32:
	fadd.s f13, f12, f14
	lui a2, 258048
	fmv.w.x f0, a2
	fmul.s f15, f13, f0
	fmv.s f13, f12
	fmv.s f12, f15
	fmul.s f15, f15, f15
pcrel946:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a3, %pcrel_lo(pcrel946)
	fsub.s f1, f15, f11
	fabs.s f0, f1
	flw f1, 4(a2)
	flt.s a3, f1, f0
	bne a3, zero, label30
	sh2add a2, a1, s2
	addiw a1, a1, 1
	fsw f12, 0(a2)
	li a3, 1000
	blt a1, a3, label21
	j label408
label76:
	mv a1, zero
	j label19
.p2align 2
label14:
	li a1, 4000
	fmv.w.x f11, zero
	mul a4, a2, a1
	add a3, s0, a4
	mv a4, zero
.p2align 2
label15:
	sh2add a1, a4, a3
	addiw a4, a4, 64
	flw f13, 0(a1)
	flw f14, 4(a1)
	fadd.s f12, f11, f13
	flw f13, 8(a1)
	fadd.s f11, f12, f14
	flw f14, 12(a1)
	fadd.s f12, f11, f13
	flw f13, 16(a1)
	fadd.s f11, f12, f14
	flw f14, 20(a1)
	flw f15, 24(a1)
	fadd.s f12, f11, f13
	flw f13, 28(a1)
	fadd.s f11, f12, f14
	flw f14, 32(a1)
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	flw f13, 36(a1)
	fadd.s f12, f11, f14
	flw f14, 40(a1)
	fadd.s f11, f12, f13
	fadd.s f12, f11, f14
	flw f11, 44(a1)
	fadd.s f13, f12, f11
	flw f12, 48(a1)
	fadd.s f11, f13, f12
	flw f13, 52(a1)
	fadd.s f12, f11, f13
	flw f11, 56(a1)
	fadd.s f13, f12, f11
	flw f12, 60(a1)
	fadd.s f11, f13, f12
	flw f13, 64(a1)
	flw f14, 68(a1)
	fadd.s f12, f11, f13
	flw f13, 72(a1)
	fadd.s f11, f12, f14
	fadd.s f12, f11, f13
	flw f11, 76(a1)
	fadd.s f13, f12, f11
	flw f12, 80(a1)
	fadd.s f11, f13, f12
	flw f13, 84(a1)
	fadd.s f12, f11, f13
	flw f11, 88(a1)
	fadd.s f13, f12, f11
	flw f12, 92(a1)
	fadd.s f11, f13, f12
	flw f13, 96(a1)
	fadd.s f12, f11, f13
	flw f11, 100(a1)
	fadd.s f13, f12, f11
	flw f12, 104(a1)
	flw f14, 108(a1)
	fadd.s f11, f13, f12
	fadd.s f13, f11, f14
	flw f11, 112(a1)
	fadd.s f12, f13, f11
	flw f13, 116(a1)
	flw f15, 120(a1)
	flw f14, 124(a1)
	fadd.s f11, f12, f13
	flw f13, 128(a1)
	fadd.s f12, f11, f15
	fadd.s f11, f12, f14
	fadd.s f12, f11, f13
	flw f11, 132(a1)
	fadd.s f13, f12, f11
	flw f12, 136(a1)
	flw f14, 140(a1)
	fadd.s f11, f13, f12
	flw f13, 144(a1)
	fadd.s f12, f11, f14
	flw f14, 148(a1)
	fadd.s f11, f12, f13
	flw f13, 152(a1)
	fadd.s f12, f11, f14
	flw f14, 156(a1)
	fadd.s f11, f12, f13
	flw f13, 160(a1)
	fadd.s f12, f11, f14
	flw f14, 164(a1)
	fadd.s f11, f12, f13
	flw f13, 168(a1)
	fadd.s f12, f11, f14
	flw f14, 172(a1)
	fadd.s f11, f12, f13
	flw f13, 176(a1)
	fadd.s f12, f11, f14
	flw f14, 180(a1)
	fadd.s f11, f12, f13
	flw f13, 184(a1)
	fadd.s f12, f11, f14
	flw f14, 188(a1)
	fadd.s f11, f12, f13
	flw f13, 192(a1)
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	flw f12, 196(a1)
	fadd.s f13, f11, f12
	flw f11, 200(a1)
	fadd.s f12, f13, f11
	flw f13, 204(a1)
	flw f14, 208(a1)
	fadd.s f11, f12, f13
	flw f13, 212(a1)
	fadd.s f12, f11, f14
	flw f14, 216(a1)
	fadd.s f11, f12, f13
	fadd.s f12, f11, f14
	flw f11, 220(a1)
	flw f14, 224(a1)
	fadd.s f13, f12, f11
	flw f12, 228(a1)
	fadd.s f11, f13, f14
	fadd.s f13, f11, f12
	flw f11, 232(a1)
	flw f14, 236(a1)
	fadd.s f12, f13, f11
	flw f13, 240(a1)
	fadd.s f11, f12, f14
	flw f14, 244(a1)
	flw f15, 248(a1)
	fadd.s f12, f11, f13
	flw f13, 252(a1)
	li a1, 960
	fadd.s f11, f12, f14
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	blt a4, a1, label15
	sh2add a1, a4, a3
	flw f12, 0(a1)
	flw f13, 4(a1)
	fadd.s f11, f11, f12
	flw f14, 8(a1)
	fadd.s f12, f11, f13
	flw f13, 12(a1)
	fadd.s f11, f12, f14
	fadd.s f12, f11, f13
	flw f11, 16(a1)
	fadd.s f13, f12, f11
	flw f12, 20(a1)
	fadd.s f11, f13, f12
	flw f13, 24(a1)
	flw f14, 28(a1)
	fadd.s f12, f11, f13
	flw f13, 32(a1)
	fadd.s f11, f12, f14
	flw f14, 36(a1)
	flw f15, 40(a1)
	fadd.s f12, f11, f13
	flw f13, 44(a1)
	fadd.s f11, f12, f14
	flw f14, 48(a1)
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	flw f13, 52(a1)
	fadd.s f12, f11, f14
	flw f14, 56(a1)
	fadd.s f11, f12, f13
	fadd.s f12, f11, f14
	flw f11, 60(a1)
	fadd.s f13, f12, f11
	flw f12, 64(a1)
	fadd.s f11, f13, f12
	flw f13, 68(a1)
	flw f14, 72(a1)
	fadd.s f12, f11, f13
	flw f13, 76(a1)
	fadd.s f11, f12, f14
	fadd.s f12, f11, f13
	flw f11, 80(a1)
	fadd.s f13, f12, f11
	flw f12, 84(a1)
	fadd.s f11, f13, f12
	flw f13, 88(a1)
	fadd.s f12, f11, f13
	flw f11, 92(a1)
	flw f14, 96(a1)
	fadd.s f13, f12, f11
	flw f12, 100(a1)
	fadd.s f11, f13, f14
	fadd.s f13, f11, f12
	flw f11, 104(a1)
	flw f14, 108(a1)
	fadd.s f12, f13, f11
	flw f13, 112(a1)
	fadd.s f11, f12, f14
	fadd.s f12, f11, f13
	flw f11, 116(a1)
	fadd.s f13, f12, f11
	flw f12, 120(a1)
	flw f14, 124(a1)
	fadd.s f11, f13, f12
	flw f13, 128(a1)
	fadd.s f12, f11, f14
	flw f14, 132(a1)
	fadd.s f11, f12, f13
	flw f13, 136(a1)
	fadd.s f12, f11, f14
	flw f14, 140(a1)
	fadd.s f11, f12, f13
	flw f13, 144(a1)
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	flw f12, 148(a1)
	fadd.s f13, f11, f12
	flw f11, 152(a1)
	fadd.s f12, f13, f11
	flw f13, 156(a1)
	lui a1, 280480
	fadd.s f11, f12, f13
	fmv.w.x f12, a1
	sh2add a1, a2, s1
	addiw a2, a2, 1
	fdiv.s f11, f11, f12
	fsw f11, 0(a1)
	li a3, 1000
	blt a2, a3, label14
	j label76
label19:
	li a3, 1000
	blt a1, a3, label21
	j label408
label72:
	fmv.s f8, f10
	mv a1, zero
label43:
	li a2, 1000
	bge a1, a2, label46
	li a3, 4000
	fmv.s f10, f8
	mul a0, a1, a3
	mv a3, zero
	add a2, s0, a0
.p2align 2
label48:
	sh2add a0, a3, a2
	addiw a3, a3, 64
	flw f11, 0(a0)
	flw f13, 4(a0)
	fadd.s f10, f10, f11
	flw f12, 8(a0)
	fadd.s f11, f10, f13
	fadd.s f10, f11, f12
	flw f11, 12(a0)
	fadd.s f12, f10, f11
	flw f10, 16(a0)
	flw f13, 20(a0)
	fadd.s f11, f12, f10
	flw f12, 24(a0)
	fadd.s f10, f11, f13
	fadd.s f11, f10, f12
	flw f10, 28(a0)
	fadd.s f12, f11, f10
	flw f11, 32(a0)
	flw f13, 36(a0)
	fadd.s f10, f12, f11
	flw f12, 40(a0)
	fadd.s f11, f10, f13
	flw f13, 44(a0)
	fadd.s f10, f11, f12
	flw f12, 48(a0)
	fadd.s f11, f10, f13
	flw f13, 52(a0)
	fadd.s f10, f11, f12
	flw f12, 56(a0)
	fadd.s f11, f10, f13
	flw f13, 60(a0)
	fadd.s f10, f11, f12
	flw f12, 64(a0)
	fadd.s f11, f10, f13
	flw f13, 68(a0)
	fadd.s f10, f11, f12
	flw f12, 72(a0)
	fadd.s f11, f10, f13
	flw f13, 76(a0)
	fadd.s f10, f11, f12
	flw f12, 80(a0)
	fadd.s f11, f10, f13
	flw f13, 84(a0)
	fadd.s f10, f11, f12
	flw f12, 88(a0)
	fadd.s f11, f10, f13
	flw f13, 92(a0)
	fadd.s f10, f11, f12
	flw f12, 96(a0)
	fadd.s f11, f10, f13
	flw f13, 100(a0)
	fadd.s f10, f11, f12
	flw f12, 104(a0)
	fadd.s f11, f10, f13
	flw f13, 108(a0)
	fadd.s f10, f11, f12
	flw f12, 112(a0)
	flw f14, 116(a0)
	fadd.s f11, f10, f13
	flw f13, 120(a0)
	fadd.s f10, f11, f12
	flw f12, 124(a0)
	fadd.s f11, f10, f14
	fadd.s f10, f11, f13
	flw f13, 128(a0)
	fadd.s f11, f10, f12
	flw f12, 132(a0)
	fadd.s f10, f11, f13
	flw f13, 136(a0)
	fadd.s f11, f10, f12
	flw f12, 140(a0)
	fadd.s f10, f11, f13
	flw f13, 144(a0)
	fadd.s f11, f10, f12
	flw f12, 148(a0)
	fadd.s f10, f11, f13
	flw f13, 152(a0)
	fadd.s f11, f10, f12
	flw f12, 156(a0)
	fadd.s f10, f11, f13
	flw f13, 160(a0)
	flw f14, 164(a0)
	fadd.s f11, f10, f12
	flw f12, 168(a0)
	fadd.s f10, f11, f13
	fadd.s f11, f10, f14
	fadd.s f10, f11, f12
	flw f11, 172(a0)
	fadd.s f12, f10, f11
	flw f10, 176(a0)
	fadd.s f11, f12, f10
	flw f12, 180(a0)
	flw f14, 184(a0)
	flw f13, 188(a0)
	fadd.s f10, f11, f12
	flw f12, 192(a0)
	fadd.s f11, f10, f14
	fadd.s f10, f11, f13
	flw f13, 196(a0)
	fadd.s f11, f10, f12
	flw f12, 200(a0)
	fadd.s f10, f11, f13
	flw f13, 204(a0)
	fadd.s f11, f10, f12
	flw f12, 208(a0)
	fadd.s f10, f11, f13
	flw f13, 212(a0)
	fadd.s f11, f10, f12
	flw f12, 216(a0)
	fadd.s f10, f11, f13
	flw f13, 220(a0)
	fadd.s f11, f10, f12
	flw f12, 224(a0)
	fadd.s f10, f11, f13
	flw f13, 228(a0)
	fadd.s f11, f10, f12
	flw f12, 232(a0)
	fadd.s f10, f11, f13
	flw f13, 236(a0)
	fadd.s f11, f10, f12
	flw f12, 240(a0)
	fadd.s f10, f11, f13
	flw f13, 244(a0)
	fadd.s f11, f10, f12
	flw f12, 248(a0)
	fadd.s f10, f11, f13
	flw f13, 252(a0)
	li a0, 960
	fadd.s f11, f10, f12
	fadd.s f10, f11, f13
	blt a3, a0, label48
	sh2add a0, a3, a2
	addiw a1, a1, 1
	flw f11, 0(a0)
	flw f13, 4(a0)
	fadd.s f10, f10, f11
	flw f12, 8(a0)
	fadd.s f11, f10, f13
	flw f13, 12(a0)
	fadd.s f10, f11, f12
	flw f12, 16(a0)
	fadd.s f11, f10, f13
	flw f13, 20(a0)
	fadd.s f10, f11, f12
	flw f12, 24(a0)
	fadd.s f11, f10, f13
	flw f13, 28(a0)
	fadd.s f10, f11, f12
	flw f12, 32(a0)
	fadd.s f11, f10, f13
	flw f13, 36(a0)
	fadd.s f10, f11, f12
	flw f12, 40(a0)
	flw f14, 44(a0)
	fadd.s f11, f10, f13
	flw f13, 48(a0)
	fadd.s f10, f11, f12
	flw f12, 52(a0)
	fadd.s f11, f10, f14
	flw f14, 56(a0)
	fadd.s f10, f11, f13
	flw f13, 60(a0)
	fadd.s f11, f10, f12
	flw f12, 64(a0)
	fadd.s f10, f11, f14
	fadd.s f11, f10, f13
	flw f13, 68(a0)
	flw f14, 72(a0)
	fadd.s f10, f11, f12
	flw f12, 76(a0)
	fadd.s f11, f10, f13
	flw f13, 80(a0)
	fadd.s f10, f11, f14
	fadd.s f11, f10, f12
	flw f12, 84(a0)
	fadd.s f10, f11, f13
	flw f13, 88(a0)
	fadd.s f11, f10, f12
	flw f12, 92(a0)
	fadd.s f10, f11, f13
	flw f13, 96(a0)
	fadd.s f11, f10, f12
	flw f12, 100(a0)
	fadd.s f10, f11, f13
	flw f13, 104(a0)
	flw f14, 108(a0)
	fadd.s f11, f10, f12
	flw f12, 112(a0)
	fadd.s f10, f11, f13
	flw f13, 116(a0)
	fadd.s f11, f10, f14
	flw f14, 120(a0)
	fadd.s f10, f11, f12
	flw f12, 124(a0)
	fadd.s f11, f10, f13
	flw f13, 128(a0)
	fadd.s f10, f11, f14
	fadd.s f11, f10, f12
	flw f12, 132(a0)
	fadd.s f10, f11, f13
	flw f13, 136(a0)
	fadd.s f11, f10, f12
	flw f12, 140(a0)
	fadd.s f10, f11, f13
	flw f13, 144(a0)
	fadd.s f11, f10, f12
	flw f12, 148(a0)
	fadd.s f10, f11, f13
	flw f13, 152(a0)
	fadd.s f11, f10, f12
	fadd.s f10, f11, f13
	flw f11, 156(a0)
	fadd.s f8, f10, f11
	j label43
label4:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	flw f8, 40(sp)
	addi sp, sp, 48
	ret
label46:
	li a0, 95
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
	j label4
label481:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	fsw f12, 0(a2)
	li a3, 1000
	blt a1, a3, label21
	j label408
