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
	addi sp, sp, -112
pcrel1132:
	auipc a0, %pcrel_hi(a)
pcrel1133:
	auipc a1, %pcrel_hi(mean)
	sd ra, 0(sp)
	sd s6, 8(sp)
	addi s6, a0, %pcrel_lo(pcrel1132)
	sd s1, 16(sp)
pcrel1134:
	auipc a0, %pcrel_hi(var)
	li s1, 1000
	sd s7, 24(sp)
	addi s7, a1, %pcrel_lo(pcrel1133)
	sd s9, 32(sp)
	addi s9, a0, %pcrel_lo(pcrel1134)
	sd s10, 40(sp)
pcrel1135:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	mv s10, s6
	sd s11, 48(sp)
	mv s11, zero
	sd s4, 56(sp)
	addi s4, a0, %pcrel_lo(pcrel1135)
	sd s5, 64(sp)
	lui s5, 258048
	sd s0, 72(sp)
	li s0, 960
	sd s8, 80(sp)
	lui s8, 280480
	sd s3, 88(sp)
	li s3, 992
	sd s2, 96(sp)
	slli s2, s1, 2
	fsw f8, 104(sp)
label2:
	bge s11, s1, label9
	mv a0, s10
	jal getfarray
	bne a0, s1, label5
	addiw s11, s11, 1
	add s10, s10, s2
	j label2
label73:
	li a0, 95
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
label5:
	ld ra, 0(sp)
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s7, 24(sp)
	ld s9, 32(sp)
	ld s10, 40(sp)
	ld s11, 48(sp)
	ld s4, 56(sp)
	ld s5, 64(sp)
	ld s0, 72(sp)
	ld s8, 80(sp)
	ld s3, 88(sp)
	ld s2, 96(sp)
	flw f8, 104(sp)
	addi sp, sp, 112
	ret
label9:
	li a0, 42
	jal _sysy_starttime
	mv a0, zero
	fmv.w.x f10, zero
	j label10
label272:
	addiw a0, a0, 1
	fmv.s f10, f12
label10:
	li a1, 100
	bge a0, a1, label93
	mv a2, s6
	mv a3, s7
	mv a4, zero
	blt zero, s1, label54
	j label18
.p2align 2
label60:
	sh2add a1, a5, a2
	addiw a4, a4, 1
	add a2, a2, s2
	flw f14, 0(a1)
	flw f15, 4(a1)
	fadd.s f12, f11, f14
	flw f14, 8(a1)
	fadd.s f13, f12, f15
	flw f15, 12(a1)
	fadd.s f11, f13, f14
	flw f14, 16(a1)
	fadd.s f12, f11, f15
	flw f15, 20(a1)
	flw f0, 24(a1)
	fadd.s f13, f12, f14
	fadd.s f11, f13, f15
	flw f13, 28(a1)
	fadd.s f14, f11, f0
	flw f0, 32(a1)
	flw f15, 36(a1)
	fadd.s f12, f14, f13
	fadd.s f11, f12, f0
	flw f12, 40(a1)
	fadd.s f14, f11, f15
	flw f15, 44(a1)
	fadd.s f13, f14, f12
	flw f14, 48(a1)
	fadd.s f11, f13, f15
	flw f13, 52(a1)
	fadd.s f12, f11, f14
	flw f11, 56(a1)
	fadd.s f15, f12, f13
	flw f12, 60(a1)
	fadd.s f14, f15, f11
	flw f15, 64(a1)
	fadd.s f13, f14, f12
	flw f14, 68(a1)
	fadd.s f11, f13, f15
	flw f15, 72(a1)
	fadd.s f12, f11, f14
	flw f14, 76(a1)
	fadd.s f13, f12, f15
	flw f15, 80(a1)
	fadd.s f11, f13, f14
	flw f14, 84(a1)
	flw f0, 88(a1)
	fadd.s f12, f11, f15
	flw f15, 92(a1)
	fadd.s f13, f12, f14
	flw f14, 96(a1)
	fadd.s f11, f13, f0
	fadd.s f12, f11, f15
	flw f15, 100(a1)
	flw f0, 104(a1)
	fadd.s f13, f12, f14
	fadd.s f11, f13, f15
	flw f15, 108(a1)
	flw f13, 112(a1)
	fadd.s f14, f11, f0
	fadd.s f12, f14, f15
	flw f15, 116(a1)
	flw f0, 120(a1)
	fadd.s f11, f12, f13
	fadd.s f14, f11, f15
	flw f15, 124(a1)
	fadd.s f13, f14, f0
	flw f14, 128(a1)
	flw f0, 132(a1)
	fadd.s f12, f13, f15
	flw f15, 136(a1)
	fadd.s f11, f12, f14
	flw f14, 140(a1)
	fadd.s f13, f11, f0
	fadd.s f12, f13, f15
	flw f15, 144(a1)
	flw f0, 148(a1)
	fadd.s f11, f12, f14
	fadd.s f13, f11, f15
	flw f15, 152(a1)
	fadd.s f12, f13, f0
	fmv.w.x f13, s8
	flw f0, 156(a1)
	fadd.s f14, f12, f15
	fadd.s f11, f14, f0
	fdiv.s f12, f11, f13
	fsw f12, 0(a3)
	addi a3, a3, 4
	bge a4, s1, label18
.p2align 2
label54:
	fmv.w.x f11, zero
	mv a1, a2
	mv a5, zero
.p2align 2
label55:
	flw f15, 0(a1)
	addiw a5, a5, 64
	flw f14, 4(a1)
	fadd.s f12, f11, f15
	flw f0, 8(a1)
	flw f15, 12(a1)
	fadd.s f13, f12, f14
	flw f14, 16(a1)
	fadd.s f11, f13, f0
	fadd.s f12, f11, f15
	flw f15, 20(a1)
	fadd.s f13, f12, f14
	flw f14, 24(a1)
	fadd.s f11, f13, f15
	flw f15, 28(a1)
	flw f0, 32(a1)
	fadd.s f12, f11, f14
	fadd.s f13, f12, f15
	flw f15, 36(a1)
	fadd.s f11, f13, f0
	flw f0, 40(a1)
	fadd.s f14, f11, f15
	flw f11, 44(a1)
	flw f15, 48(a1)
	fadd.s f12, f14, f0
	flw f0, 52(a1)
	fadd.s f13, f12, f11
	fadd.s f14, f13, f15
	flw f15, 56(a1)
	fadd.s f11, f14, f0
	flw f14, 60(a1)
	fadd.s f12, f11, f15
	flw f15, 64(a1)
	fadd.s f13, f12, f14
	flw f14, 68(a1)
	fadd.s f11, f13, f15
	flw f15, 72(a1)
	fadd.s f12, f11, f14
	flw f14, 76(a1)
	fadd.s f13, f12, f15
	flw f15, 80(a1)
	fadd.s f11, f13, f14
	flw f14, 84(a1)
	fadd.s f12, f11, f15
	flw f15, 88(a1)
	flw f0, 92(a1)
	fadd.s f13, f12, f14
	fadd.s f11, f13, f15
	flw f15, 96(a1)
	fadd.s f14, f11, f0
	flw f0, 100(a1)
	fadd.s f12, f14, f15
	flw f14, 104(a1)
	flw f15, 108(a1)
	fadd.s f13, f12, f0
	fadd.s f11, f13, f14
	flw f13, 112(a1)
	fadd.s f12, f11, f15
	flw f15, 116(a1)
	flw f0, 120(a1)
	fadd.s f14, f12, f13
	fadd.s f11, f14, f15
	flw f15, 124(a1)
	fadd.s f13, f11, f0
	flw f11, 128(a1)
	flw f0, 132(a1)
	fadd.s f12, f13, f15
	flw f15, 136(a1)
	fadd.s f14, f12, f11
	fadd.s f13, f14, f0
	flw f14, 140(a1)
	flw f0, 144(a1)
	fadd.s f11, f13, f15
	flw f15, 148(a1)
	fadd.s f12, f11, f14
	fadd.s f13, f12, f0
	flw f0, 152(a1)
	fadd.s f14, f13, f15
	flw f15, 156(a1)
	fadd.s f11, f14, f0
	flw f0, 160(a1)
	fadd.s f12, f11, f15
	flw f15, 164(a1)
	fadd.s f13, f12, f0
	flw f0, 168(a1)
	fadd.s f14, f13, f15
	flw f15, 172(a1)
	fadd.s f11, f14, f0
	flw f0, 176(a1)
	fadd.s f12, f11, f15
	flw f15, 180(a1)
	fadd.s f13, f12, f0
	flw f0, 184(a1)
	fadd.s f14, f13, f15
	flw f15, 188(a1)
	fadd.s f11, f14, f0
	flw f14, 192(a1)
	fadd.s f12, f11, f15
	flw f15, 196(a1)
	flw f0, 200(a1)
	fadd.s f13, f12, f14
	fadd.s f11, f13, f15
	flw f13, 204(a1)
	flw f15, 208(a1)
	fadd.s f14, f11, f0
	flw f0, 212(a1)
	fadd.s f12, f14, f13
	flw f14, 216(a1)
	fadd.s f11, f12, f15
	fadd.s f13, f11, f0
	flw f0, 220(a1)
	fadd.s f12, f13, f14
	flw f14, 224(a1)
	fadd.s f11, f12, f0
	flw f12, 228(a1)
	fadd.s f15, f11, f14
	flw f11, 232(a1)
	flw f0, 236(a1)
	fadd.s f13, f15, f12
	flw f15, 240(a1)
	fadd.s f14, f13, f11
	fadd.s f12, f14, f0
	flw f0, 244(a1)
	flw f14, 248(a1)
	fadd.s f11, f12, f15
	flw f15, 252(a1)
	fadd.s f13, f11, f0
	fadd.s f12, f13, f14
	fadd.s f11, f12, f15
	bge a5, s0, label60
	addi a1, a1, 256
	j label55
label18:
	mv a1, s9
	mv a2, s6
	mv a3, s7
	mv a4, zero
	blt zero, s1, label24
	j label101
.p2align 2
label36:
	fadd.s f0, f12, f13
	fmv.s f14, f12
	fmv.w.x f1, s5
	fmul.s f15, f0, f1
	flw f1, 4(s4)
	fmv.s f12, f15
	fmul.s f15, f15, f15
	fsub.s f2, f15, f11
	fabs.s f0, f2
	flt.s a5, f1, f0
	beq a5, zero, label1113
.p2align 2
label35:
	flt.s a5, f11, f15
	beq a5, zero, label36
	fadd.s f0, f12, f14
	fmv.s f13, f12
	fmv.w.x f1, s5
	fmul.s f15, f0, f1
	flw f1, 4(s4)
	fmv.s f12, f15
	fmul.s f15, f15, f15
	fsub.s f2, f15, f11
	fabs.s f0, f2
	flt.s a5, f1, f0
	bne a5, zero, label35
	fsw f12, 0(a1)
	addiw a4, a4, 1
	addi a3, a3, 4
	add a2, a2, s2
	addi a1, a1, 4
	bge a4, s1, label101
.p2align 2
label24:
	flw f11, 0(a3)
	fmv.w.x f12, zero
	mv a5, a2
	mv t0, zero
.p2align 2
label25:
	flw f0, 0(a5)
	addiw t0, t0, 16
	flw f1, 4(a5)
	fsub.s f14, f0, f11
	fmul.s f15, f14, f14
	fsub.s f14, f1, f11
	fadd.s f13, f12, f15
	fmul.s f0, f14, f14
	flw f15, 8(a5)
	fsub.s f14, f15, f11
	flw f15, 12(a5)
	fadd.s f12, f13, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	flw f15, 16(a5)
	fadd.s f13, f12, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	fadd.s f12, f13, f0
	fmul.s f1, f14, f14
	flw f0, 20(a5)
	fsub.s f14, f0, f11
	fadd.s f13, f12, f1
	flw f1, 24(a5)
	fmul.s f15, f14, f14
	fsub.s f14, f1, f11
	flw f1, 28(a5)
	fadd.s f12, f13, f15
	fmul.s f0, f14, f14
	fsub.s f15, f1, f11
	fadd.s f13, f12, f0
	flw f0, 32(a5)
	fmul.s f12, f15, f15
	fsub.s f15, f0, f11
	flw f0, 36(a5)
	fadd.s f14, f13, f12
	fmul.s f13, f15, f15
	fsub.s f15, f0, f11
	flw f0, 40(a5)
	fadd.s f12, f14, f13
	fmul.s f1, f15, f15
	fsub.s f14, f0, f11
	flw f0, 44(a5)
	fadd.s f13, f12, f1
	fmul.s f15, f14, f14
	fsub.s f14, f0, f11
	flw f0, 48(a5)
	fadd.s f12, f13, f15
	fmul.s f15, f14, f14
	fsub.s f14, f0, f11
	flw f0, 52(a5)
	fadd.s f13, f12, f15
	fmul.s f1, f14, f14
	fsub.s f15, f0, f11
	flw f0, 56(a5)
	fadd.s f12, f13, f1
	fmul.s f13, f15, f15
	fsub.s f15, f0, f11
	flw f0, 60(a5)
	fadd.s f14, f12, f13
	fmul.s f12, f15, f15
	fsub.s f15, f0, f11
	fadd.s f13, f14, f12
	fmul.s f14, f15, f15
	fadd.s f12, f13, f14
	bge t0, s3, label29
	addi a5, a5, 64
	j label25
.p2align 2
label29:
	sh2add a5, t0, a2
	flw f15, 0(a5)
	fsub.s f14, f15, f11
	flw f15, 4(a5)
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	flw f15, 8(a5)
	fadd.s f13, f12, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	flw f15, 12(a5)
	fadd.s f12, f13, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	flw f15, 16(a5)
	fadd.s f13, f12, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	flw f15, 20(a5)
	flw f1, 24(a5)
	fadd.s f12, f13, f0
	fmul.s f0, f14, f14
	fsub.s f14, f15, f11
	fadd.s f13, f12, f0
	fmul.s f0, f14, f14
	fsub.s f14, f1, f11
	fadd.s f12, f13, f0
	fmul.s f15, f14, f14
	flw f0, 28(a5)
	fsub.s f14, f0, f11
	fadd.s f13, f12, f15
	fmv.w.x f15, s8
	fmul.s f1, f14, f14
	fadd.s f12, f13, f1
	flw f13, 0(s4)
	fdiv.s f14, f12, f15
	fmv.w.x f15, s5
	fadd.s f11, f14, f13
	fmv.w.x f14, zero
	fmv.s f13, f11
	fmul.s f12, f11, f15
	fmul.s f15, f12, f12
	flw f1, 4(s4)
	fsub.s f2, f15, f11
	fabs.s f0, f2
	flt.s a5, f1, f0
	bne a5, zero, label35
	fsw f12, 0(a1)
	addiw a4, a4, 1
	addi a3, a3, 4
	add a2, a2, s2
	addi a1, a1, 4
	blt a4, s1, label24
label101:
	mv a2, s6
	mv a3, s7
	mv a4, s9
	fmv.s f12, f10
	mv a5, zero
	blt zero, s1, label46
	j label272
.p2align 2
label52:
	addi a1, a1, 64
.p2align 2
label47:
	flw f14, 0(a1)
	addiw t0, t0, 16
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fadd.s f14, f12, f13
	fsw f13, 0(a1)
	flw f15, 4(a1)
	fsub.s f0, f15, f11
	fdiv.s f12, f0, f10
	fsw f12, 4(a1)
	fadd.s f13, f14, f12
	flw f0, 8(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 8(a1)
	fadd.s f12, f13, f14
	flw f0, 12(a1)
	fsub.s f15, f0, f11
	fdiv.s f13, f15, f10
	fsw f13, 12(a1)
	fadd.s f14, f12, f13
	flw f0, 16(a1)
	fsub.s f15, f0, f11
	fdiv.s f12, f15, f10
	fsw f12, 16(a1)
	fadd.s f13, f14, f12
	flw f15, 20(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 20(a1)
	fadd.s f12, f13, f14
	flw f15, 24(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 24(a1)
	fadd.s f13, f12, f14
	flw f15, 28(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 28(a1)
	fadd.s f12, f13, f14
	flw f0, 32(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 32(a1)
	fadd.s f13, f12, f14
	flw f15, 36(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 36(a1)
	fadd.s f12, f13, f14
	flw f0, 40(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 40(a1)
	fadd.s f13, f12, f14
	flw f0, 44(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 44(a1)
	fadd.s f12, f13, f14
	flw f0, 48(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 48(a1)
	fadd.s f13, f12, f14
	flw f15, 52(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 52(a1)
	fadd.s f12, f13, f14
	flw f0, 56(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 56(a1)
	fadd.s f13, f12, f14
	flw f15, 60(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 60(a1)
	fadd.s f12, f13, f14
	blt t0, s3, label52
	sh2add a1, t0, a2
	addiw a5, a5, 1
	addi a4, a4, 4
	addi a3, a3, 4
	flw f13, 0(a1)
	add a2, a2, s2
	fsub.s f15, f13, f11
	fdiv.s f14, f15, f10
	fadd.s f13, f12, f14
	fsw f14, 0(a1)
	flw f0, 4(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 4(a1)
	fadd.s f12, f13, f14
	flw f15, 8(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 8(a1)
	fadd.s f13, f12, f14
	flw f15, 12(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 12(a1)
	fadd.s f12, f13, f14
	flw f0, 16(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 16(a1)
	fadd.s f13, f12, f14
	flw f15, 20(a1)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 20(a1)
	fadd.s f12, f13, f14
	flw f0, 24(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 24(a1)
	fadd.s f13, f12, f14
	flw f0, 28(a1)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 28(a1)
	fadd.s f12, f13, f14
	bge a5, s1, label272
.p2align 2
label46:
	flw f10, 0(a4)
	mv a1, a2
	mv t0, zero
	flw f11, 0(a3)
	j label47
.p2align 2
label1113:
	fsw f12, 0(a1)
	addiw a4, a4, 1
	addi a3, a3, 4
	add a2, a2, s2
	addi a1, a1, 4
	blt a4, s1, label24
	j label101
label93:
	fmv.s f8, f10
	mv a1, zero
	j label62
label71:
	sh2add a0, a2, s6
	addiw a1, a1, 1
	add s6, s6, s2
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
label62:
	bge a1, s1, label73
	mv a0, s6
	mv a2, zero
	fmv.s f10, f8
.p2align 2
label67:
	flw f13, 0(a0)
	addiw a2, a2, 64
	flw f14, 4(a0)
	fadd.s f11, f10, f13
	flw f15, 8(a0)
	fadd.s f12, f11, f14
	flw f14, 12(a0)
	fadd.s f13, f12, f15
	flw f15, 16(a0)
	fadd.s f10, f13, f14
	flw f14, 20(a0)
	fadd.s f11, f10, f15
	flw f10, 24(a0)
	flw f15, 28(a0)
	fadd.s f12, f11, f14
	flw f14, 32(a0)
	fadd.s f13, f12, f10
	fadd.s f11, f13, f15
	flw f13, 36(a0)
	fadd.s f10, f11, f14
	flw f14, 40(a0)
	fadd.s f12, f10, f13
	flw f10, 44(a0)
	fadd.s f11, f12, f14
	flw f14, 48(a0)
	flw f15, 52(a0)
	fadd.s f13, f11, f10
	fadd.s f12, f13, f14
	flw f14, 56(a0)
	fadd.s f10, f12, f15
	flw f12, 60(a0)
	flw f15, 64(a0)
	fadd.s f11, f10, f14
	flw f14, 68(a0)
	fadd.s f13, f11, f12
	fadd.s f10, f13, f15
	flw f13, 72(a0)
	flw f15, 76(a0)
	fadd.s f12, f10, f14
	flw f14, 80(a0)
	flw f0, 84(a0)
	fadd.s f11, f12, f13
	fadd.s f10, f11, f15
	flw f15, 88(a0)
	fadd.s f13, f10, f14
	flw f14, 92(a0)
	fadd.s f12, f13, f0
	flw f13, 96(a0)
	fadd.s f11, f12, f15
	fadd.s f10, f11, f14
	flw f14, 100(a0)
	flw f15, 104(a0)
	fadd.s f12, f10, f13
	fadd.s f11, f12, f14
	flw f12, 108(a0)
	flw f14, 112(a0)
	fadd.s f13, f11, f15
	fadd.s f10, f13, f12
	flw f13, 116(a0)
	fadd.s f11, f10, f14
	flw f14, 120(a0)
	flw f15, 124(a0)
	fadd.s f12, f11, f13
	fadd.s f10, f12, f14
	flw f14, 128(a0)
	flw f12, 132(a0)
	fadd.s f13, f10, f15
	flw f15, 136(a0)
	fadd.s f11, f13, f14
	flw f14, 140(a0)
	fadd.s f10, f11, f12
	fadd.s f13, f10, f15
	flw f15, 144(a0)
	fadd.s f12, f13, f14
	flw f14, 148(a0)
	fadd.s f11, f12, f15
	flw f12, 152(a0)
	flw f15, 156(a0)
	fadd.s f10, f11, f14
	flw f14, 160(a0)
	fadd.s f13, f10, f12
	fadd.s f11, f13, f15
	flw f13, 164(a0)
	fadd.s f12, f11, f14
	flw f14, 168(a0)
	fadd.s f10, f12, f13
	flw f12, 172(a0)
	fadd.s f11, f10, f14
	flw f14, 176(a0)
	flw f15, 180(a0)
	fadd.s f13, f11, f12
	fadd.s f10, f13, f14
	flw f14, 184(a0)
	flw f13, 188(a0)
	fadd.s f12, f10, f15
	flw f15, 192(a0)
	fadd.s f11, f12, f14
	flw f14, 196(a0)
	fadd.s f10, f11, f13
	fadd.s f12, f10, f15
	flw f15, 200(a0)
	flw f0, 204(a0)
	fadd.s f13, f12, f14
	flw f14, 208(a0)
	fadd.s f11, f13, f15
	flw f13, 212(a0)
	fadd.s f10, f11, f0
	fadd.s f12, f10, f14
	flw f14, 216(a0)
	fadd.s f11, f12, f13
	flw f13, 220(a0)
	fadd.s f10, f11, f14
	flw f14, 224(a0)
	fadd.s f12, f10, f13
	flw f13, 228(a0)
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
	bge a2, s0, label71
	addi a0, a0, 256
	j label67
