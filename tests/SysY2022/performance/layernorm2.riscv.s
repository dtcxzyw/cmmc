.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1008981770
	.4byte	981668463
.bss
.align 4
a:
	.zero	4000000
.align 4
var:
	.zero	4000
.align 4
mean:
	.zero	4000
.text
.globl main
main:
	addi sp, sp, -48
pcrel602:
	auipc a0, %pcrel_hi(a)
	sd s0, 40(sp)
	addi s0, a0, %pcrel_lo(pcrel602)
	sd s1, 32(sp)
pcrel603:
	auipc a0, %pcrel_hi(mean)
	sd s2, 24(sp)
	addi s1, a0, %pcrel_lo(pcrel603)
	sd s3, 16(sp)
pcrel604:
	auipc a0, %pcrel_hi(var)
	mv s3, zero
	addi s2, a0, %pcrel_lo(pcrel604)
	fsw f8, 8(sp)
	sd ra, 0(sp)
label2:
	li a0, 1000
	blt s3, a0, label50
	j label6
label4:
	ld ra, 0(sp)
	flw f8, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label6:
	li a0, 42
	jal _sysy_starttime
	mv a0, zero
	fmv.w.x f10, zero
	j label7
label50:
	li a1, 4000
	mul a2, s3, a1
	add a0, s0, a2
	jal getfarray
	li a1, 1000
	bne a0, a1, label4
	addiw s3, s3, 1
	j label2
label7:
	li a1, 100
	blt a0, a1, label65
label64:
	fmv.s f8, f10
	mv a0, zero
	li a2, 1000
	blt zero, a2, label45
	j label44
label65:
	mv a1, zero
label10:
	li a2, 1000
	blt a1, a2, label69
	mv a1, zero
	j label12
label69:
	li a4, 4000
	fmv.w.x f11, zero
	mul a3, a1, a4
	mv a4, zero
	add a2, s0, a3
	j label37
label72:
	fmv.s f12, f10
	mv a2, zero
	j label27
label14:
	sh2add a2, a1, s1
	li a3, 4000
	fmv.w.x f12, zero
	flw f11, 0(a2)
	mul a4, a1, a3
	mv a3, zero
	add a2, s0, a4
label15:
	sh2add a4, a3, a2
	flw f14, 0(a4)
	addiw a3, a3, 16
	fsub.s f13, f14, f11
	flw f14, 4(a4)
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 8(a4)
	flw f0, 12(a4)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f0, f11
	flw f0, 16(a4)
	fadd.s f12, f12, f15
	fmul.s f14, f13, f13
	fsub.s f13, f0, f11
	fadd.s f12, f12, f14
	fmul.s f15, f13, f13
	flw f14, 20(a4)
	fsub.s f13, f14, f11
	fadd.s f12, f12, f15
	flw f15, 24(a4)
	fmul.s f0, f13, f13
	fsub.s f13, f15, f11
	flw f15, 28(a4)
	fadd.s f12, f12, f0
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	flw f15, 32(a4)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	flw f15, 36(a4)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	flw f15, 40(a4)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	fadd.s f12, f12, f14
	fmul.s f0, f13, f13
	flw f14, 44(a4)
	fsub.s f13, f14, f11
	flw f14, 48(a4)
	fadd.s f12, f12, f0
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 52(a4)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 56(a4)
	flw f0, 60(a4)
	li a4, 992
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f0, f11
	fadd.s f12, f12, f15
	fmul.s f14, f13, f13
	fadd.s f12, f12, f14
	blt a3, a4, label15
	sh2add a2, a3, a2
pcrel605:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	flw f14, 0(a2)
	flw f15, 4(a2)
	fsub.s f13, f14, f11
	fmul.s f0, f13, f13
	fsub.s f13, f15, f11
	flw f15, 8(a2)
	fadd.s f12, f12, f0
	fmul.s f14, f13, f13
	flw f0, 12(a2)
	fsub.s f13, f15, f11
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f0, f11
	fadd.s f12, f12, f14
	fmul.s f15, f13, f13
	flw f14, 16(a2)
	fsub.s f13, f14, f11
	flw f14, 20(a2)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	flw f14, 24(a2)
	flw f0, 28(a2)
	lui a2, 280480
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f0, f11
	fadd.s f12, f12, f15
	fmul.s f14, f13, f13
	fadd.s f11, f12, f14
	fmv.w.x f12, a2
	addi a2, a3, %pcrel_lo(pcrel605)
	flw f13, 0(a2)
	lui a2, 258048
	fdiv.s f11, f11, f12
	fmv.w.x f14, a2
	fadd.s f12, f11, f13
	fmv.w.x f13, zero
	fmul.s f11, f12, f14
	fmv.s f14, f12
label19:
	fmul.s f15, f11, f11
pcrel606:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a2, %pcrel_lo(pcrel606)
	fsub.s f1, f15, f12
	fabs.s f0, f1
	flw f1, 4(a3)
	flt.s a2, f1, f0
	bne a2, zero, label23
	sh2add a2, a1, s2
	addiw a1, a1, 1
	fsw f11, 0(a2)
	li a2, 1000
	blt a1, a2, label14
	j label72
label23:
	flt.s a2, f12, f15
	bne a2, zero, label24
	fadd.s f13, f11, f14
	lui a2, 258048
	fmv.w.x f0, a2
	fmul.s f15, f13, f0
	fmv.s f13, f11
	fmv.s f11, f15
	j label19
label27:
	li a3, 1000
	blt a2, a3, label31
	addiw a0, a0, 1
	fmv.s f10, f12
	li a1, 100
	blt a0, a1, label65
	j label64
label31:
	sh2add a1, a2, s2
	li a4, 4000
	sh2add a3, a2, s1
	flw f10, 0(a1)
	flw f11, 0(a3)
	mul a1, a2, a4
	mv a4, zero
	add a3, s0, a1
label32:
	sh2add a1, a4, a3
	addiw a4, a4, 16
	flw f14, 0(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
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
	flw f14, 12(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 12(a1)
	fadd.s f12, f12, f13
	flw f14, 16(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 16(a1)
	fadd.s f12, f12, f13
	flw f14, 20(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 20(a1)
	fadd.s f12, f12, f13
	flw f15, 24(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
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
	flw f15, 36(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 36(a1)
	fadd.s f12, f12, f13
	flw f14, 40(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 40(a1)
	fadd.s f12, f12, f13
	flw f15, 44(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 44(a1)
	fadd.s f12, f12, f13
	flw f14, 48(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 48(a1)
	fadd.s f12, f12, f13
	flw f15, 52(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 52(a1)
	fadd.s f12, f12, f13
	flw f15, 56(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 56(a1)
	fadd.s f12, f12, f13
	flw f15, 60(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 60(a1)
	fadd.s f12, f12, f13
	li a1, 992
	blt a4, a1, label32
	sh2add a1, a4, a3
	addiw a2, a2, 1
	flw f14, 0(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
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
	flw f14, 12(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 12(a1)
	fadd.s f12, f12, f13
	flw f14, 16(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 16(a1)
	fadd.s f12, f12, f13
	flw f15, 20(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 20(a1)
	fadd.s f12, f12, f13
	flw f15, 24(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 24(a1)
	fadd.s f12, f12, f13
	flw f13, 28(a1)
	fsub.s f11, f13, f11
	fdiv.s f10, f11, f10
	fsw f10, 28(a1)
	fadd.s f12, f12, f10
	j label27
label37:
	sh2add a3, a4, a2
	flw f13, 0(a3)
	addiw a4, a4, 16
	flw f14, 4(a3)
	fadd.s f12, f11, f13
	flw f13, 8(a3)
	fadd.s f11, f12, f14
	fadd.s f12, f11, f13
	flw f11, 12(a3)
	fadd.s f13, f12, f11
	flw f12, 16(a3)
	flw f14, 20(a3)
	fadd.s f11, f13, f12
	flw f13, 24(a3)
	fadd.s f12, f11, f14
	flw f14, 28(a3)
	fadd.s f11, f12, f13
	flw f13, 32(a3)
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	flw f12, 36(a3)
	fadd.s f13, f11, f12
	flw f11, 40(a3)
	fadd.s f12, f13, f11
	flw f13, 44(a3)
	flw f14, 48(a3)
	fadd.s f11, f12, f13
	flw f13, 52(a3)
	fadd.s f12, f11, f14
	flw f14, 56(a3)
	fadd.s f11, f12, f13
	flw f13, 60(a3)
	li a3, 992
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	blt a4, a3, label37
	sh2add a2, a4, a2
	flw f13, 0(a2)
	flw f12, 4(a2)
	fadd.s f11, f11, f13
	fadd.s f13, f11, f12
	flw f11, 8(a2)
	fadd.s f12, f13, f11
	flw f13, 12(a2)
	flw f14, 16(a2)
	fadd.s f11, f12, f13
	flw f13, 20(a2)
	fadd.s f12, f11, f14
	flw f14, 24(a2)
	fadd.s f11, f12, f13
	flw f13, 28(a2)
	lui a2, 280480
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	fmv.w.x f12, a2
	sh2add a2, a1, s1
	addiw a1, a1, 1
	fdiv.s f11, f11, f12
	fsw f11, 0(a2)
	j label10
label41:
	li a2, 1000
	blt a0, a2, label45
label44:
	li a0, 95
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
	j label4
label45:
	li a2, 4000
	mv a3, zero
	fmv.s f10, f8
	mul a4, a0, a2
	add a1, s0, a4
label46:
	sh2add a2, a3, a1
	flw f11, 0(a2)
	addiw a3, a3, 16
	flw f13, 4(a2)
	fadd.s f10, f10, f11
	flw f12, 8(a2)
	fadd.s f11, f10, f13
	flw f13, 12(a2)
	fadd.s f10, f11, f12
	flw f12, 16(a2)
	fadd.s f11, f10, f13
	fadd.s f10, f11, f12
	flw f11, 20(a2)
	fadd.s f12, f10, f11
	flw f10, 24(a2)
	fadd.s f11, f12, f10
	flw f12, 28(a2)
	flw f13, 32(a2)
	fadd.s f10, f11, f12
	flw f12, 36(a2)
	fadd.s f11, f10, f13
	flw f13, 40(a2)
	fadd.s f10, f11, f12
	flw f12, 44(a2)
	fadd.s f11, f10, f13
	flw f13, 48(a2)
	fadd.s f10, f11, f12
	flw f12, 52(a2)
	fadd.s f11, f10, f13
	flw f13, 56(a2)
	fadd.s f10, f11, f12
	flw f12, 60(a2)
	li a2, 992
	fadd.s f11, f10, f13
	fadd.s f10, f11, f12
	blt a3, a2, label46
	sh2add a1, a3, a1
	addiw a0, a0, 1
	flw f13, 0(a1)
	flw f12, 4(a1)
	fadd.s f11, f10, f13
	flw f13, 8(a1)
	fadd.s f10, f11, f12
	flw f12, 12(a1)
	fadd.s f11, f10, f13
	flw f13, 16(a1)
	flw f14, 20(a1)
	fadd.s f10, f11, f12
	flw f12, 24(a1)
	fadd.s f11, f10, f13
	fadd.s f10, f11, f14
	fadd.s f11, f10, f12
	flw f10, 28(a1)
	fadd.s f8, f11, f10
	j label41
label24:
	fadd.s f14, f11, f13
	lui a2, 258048
	fmv.w.x f0, a2
	fmul.s f15, f14, f0
	fmv.s f14, f11
	fmv.s f11, f15
	j label19
label12:
	li a2, 1000
	blt a1, a2, label14
	j label72
