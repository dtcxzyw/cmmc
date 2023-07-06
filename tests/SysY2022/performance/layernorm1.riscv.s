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
pcrel668:
	auipc a0, %pcrel_hi(a)
	sd s0, 40(sp)
	addi s0, a0, %pcrel_lo(pcrel668)
	sd s1, 32(sp)
pcrel669:
	auipc a0, %pcrel_hi(mean)
	sd s2, 24(sp)
	addi s1, a0, %pcrel_lo(pcrel669)
	sd s3, 16(sp)
pcrel670:
	auipc a0, %pcrel_hi(var)
	mv s3, zero
	addi s2, a0, %pcrel_lo(pcrel670)
	fsw f8, 8(sp)
	sd ra, 0(sp)
	li a0, 1000
	bge zero, a0, label6
	li a0, 4000
	mul a0, zero, a0
	add a0, s0, a0
	jal getfarray
	li a1, 1000
	beq a0, a1, label51
	j label4
label652:
	li a2, 4000
	fmv.w.x f11, zero
	mv a3, zero
	mul a2, a1, a2
	add a2, s0, a2
	j label13
label6:
	li a0, 42
	jal _sysy_starttime
	mv a0, zero
	fmv.w.x f10, zero
	li a1, 100
	bge zero, a1, label65
	mv a1, zero
	li a2, 1000
	bge zero, a2, label69
	j label652
label65:
	mv a0, zero
	fmv.s f8, f10
	li a1, 1000
	bge zero, a1, label44
	j label634
label13:
	sh2add a4, a3, a2
	addiw a3, a3, 16
	flw f12, 0(a4)
	fadd.s f11, f11, f12
	flw f12, 4(a4)
	fadd.s f11, f11, f12
	flw f12, 8(a4)
	fadd.s f11, f11, f12
	flw f12, 12(a4)
	fadd.s f11, f11, f12
	flw f12, 16(a4)
	fadd.s f11, f11, f12
	flw f12, 20(a4)
	fadd.s f11, f11, f12
	flw f12, 24(a4)
	fadd.s f11, f11, f12
	flw f12, 28(a4)
	fadd.s f11, f11, f12
	flw f12, 32(a4)
	fadd.s f11, f11, f12
	flw f12, 36(a4)
	fadd.s f11, f11, f12
	flw f12, 40(a4)
	fadd.s f11, f11, f12
	flw f12, 44(a4)
	fadd.s f11, f11, f12
	flw f12, 48(a4)
	fadd.s f11, f11, f12
	flw f12, 52(a4)
	fadd.s f11, f11, f12
	flw f12, 56(a4)
	fadd.s f11, f11, f12
	flw f12, 60(a4)
	sh2add a4, a1, s1
	fadd.s f11, f11, f12
	fsw f11, 0(a4)
	li a4, 992
	bge a3, a4, label16
	j label13
label16:
	sh2add a2, a3, a2
	flw f12, 0(a2)
	fadd.s f11, f11, f12
	flw f12, 4(a2)
	fadd.s f11, f11, f12
	flw f12, 8(a2)
	fadd.s f11, f11, f12
	flw f12, 12(a2)
	fadd.s f11, f11, f12
	flw f12, 16(a2)
	fadd.s f11, f11, f12
	flw f12, 20(a2)
	fadd.s f11, f11, f12
	flw f12, 24(a2)
	fadd.s f11, f11, f12
	flw f12, 28(a2)
	lui a2, 280480
	fadd.s f11, f11, f12
	fmv.w.x f12, a2
	sh2add a2, a1, s1
	addiw a1, a1, 1
	fdiv.s f11, f11, f12
	fsw f11, 0(a2)
	li a2, 1000
	bge a1, a2, label69
	j label652
label69:
	mv a1, zero
	li a2, 1000
	bge zero, a2, label163
	j label635
label163:
	fmv.s f12, f10
	mv a2, zero
	li a1, 1000
	bge zero, a1, label35
	j label637
label35:
	addiw a0, a0, 1
	fmv.s f10, f12
	li a1, 100
	bge a0, a1, label65
	mv a1, zero
	li a2, 1000
	bge zero, a2, label69
	j label652
label635:
	sh2add a2, a1, s1
	mv a3, zero
	fmv.w.x f12, zero
	flw f11, 0(a2)
	li a2, 4000
	mul a2, a1, a2
	add a2, s0, a2
label20:
	sh2add a4, a3, a2
	addiw a3, a3, 16
	flw f13, 0(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 4(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 8(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 12(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 16(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 20(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 24(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 28(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 32(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 36(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 40(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 44(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 48(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 52(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 56(a4)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 60(a4)
	sh2add a4, a1, s2
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	fsw f12, 0(a4)
	li a4, 992
	bge a3, a4, label23
	j label20
label23:
	sh2add a2, a3, a2
	sh2add a3, a1, s1
	flw f13, 0(a2)
	flw f11, 0(a3)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 4(a2)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 8(a2)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 12(a2)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 16(a2)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 20(a2)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 24(a2)
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	flw f13, 28(a2)
	lui a2, 280480
	fsub.s f11, f13, f11
	fmv.w.x f13, zero
	fmul.s f11, f11, f11
	fadd.s f11, f12, f11
	fmv.w.x f12, a2
pcrel671:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(pcrel671)
	fdiv.s f11, f11, f12
	flw f12, 0(a2)
	lui a2, 258048
	fadd.s f11, f11, f12
	fmv.w.x f12, a2
	fmv.s f14, f11
	fmul.s f12, f11, f12
	fmul.s f15, f12, f12
	fmv.w.x f0, zero
	fsub.s f1, f15, f11
	flt.s a2, f1, f0
	fneg.s f0, f1
	bne a2, zero, label625
	fmv.s f0, f1
label625:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(label625)
	flw f1, 4(a2)
	flw f1, 4(a2)
	flt.s a2, f1, f0
	beq a2, zero, label31
	flt.s a2, f11, f15
	beq a2, zero, label30
	j label638
label30:
	fadd.s f13, f12, f14
	lui a2, 258048
	fmv.w.x f15, a2
	fmul.s f15, f13, f15
	fmv.s f13, f12
	fmv.s f12, f15
	fmul.s f15, f15, f15
	fmv.w.x f0, zero
	fsub.s f1, f15, f11
	flt.s a2, f1, f0
	fneg.s f0, f1
	bne a2, zero, label625
	fmv.s f0, f1
pcrel672:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(pcrel672)
	flw f1, 4(a2)
	flw f1, 4(a2)
	flt.s a2, f1, f0
	beq a2, zero, label31
	flt.s a2, f11, f15
	beq a2, zero, label30
	j label638
label31:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	fsw f12, 0(a2)
	li a2, 1000
	bge a1, a2, label163
	j label635
label638:
	fadd.s f14, f12, f13
	lui a2, 258048
	fmv.w.x f15, a2
	fmul.s f15, f14, f15
	fmv.s f14, f12
	fmv.s f12, f15
	fmul.s f15, f15, f15
	fmv.w.x f0, zero
	fsub.s f1, f15, f11
	flt.s a2, f1, f0
	fneg.s f0, f1
	bne a2, zero, label625
	fmv.s f0, f1
pcrel673:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(pcrel673)
	flw f1, 4(a2)
	flw f1, 4(a2)
	flt.s a2, f1, f0
	beq a2, zero, label31
	flt.s a2, f11, f15
	beq a2, zero, label30
	j label638
label637:
	sh2add a1, a2, s1
	mv a4, zero
	flw f10, 0(a1)
	sh2add a1, a2, s2
	flw f11, 0(a1)
	li a1, 4000
	mul a1, a2, a1
	add a3, s0, a1
label37:
	sh2add a1, a4, a3
	addiw a4, a4, 16
	flw f13, 0(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 0(a1)
	flw f13, 4(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 4(a1)
	fadd.s f12, f12, f13
	flw f13, 8(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 8(a1)
	fadd.s f12, f12, f13
	flw f13, 12(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 12(a1)
	fadd.s f12, f12, f13
	flw f13, 16(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 16(a1)
	fadd.s f12, f12, f13
	flw f13, 20(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 20(a1)
	fadd.s f12, f12, f13
	flw f13, 24(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 24(a1)
	fadd.s f12, f12, f13
	flw f13, 28(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 28(a1)
	fadd.s f12, f12, f13
	flw f13, 32(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 32(a1)
	fadd.s f12, f12, f13
	flw f13, 36(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 36(a1)
	fadd.s f12, f12, f13
	flw f13, 40(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 40(a1)
	fadd.s f12, f12, f13
	flw f13, 44(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 44(a1)
	fadd.s f12, f12, f13
	flw f13, 48(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 48(a1)
	fadd.s f12, f12, f13
	flw f13, 52(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 52(a1)
	fadd.s f12, f12, f13
	flw f13, 56(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 56(a1)
	fadd.s f12, f12, f13
	flw f13, 60(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 60(a1)
	fadd.s f12, f12, f13
	li a1, 992
	bge a4, a1, label40
	j label37
label40:
	sh2add a1, a4, a3
	flw f11, 0(a1)
	sh2add a3, a2, s1
	flw f10, 0(a3)
	sh2add a3, a2, s2
	fsub.s f13, f11, f10
	addiw a2, a2, 1
	flw f11, 0(a3)
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 0(a1)
	flw f13, 4(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 4(a1)
	fadd.s f12, f12, f13
	flw f13, 8(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 8(a1)
	fadd.s f12, f12, f13
	flw f13, 12(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 12(a1)
	fadd.s f12, f12, f13
	flw f13, 16(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 16(a1)
	fadd.s f12, f12, f13
	flw f13, 20(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 20(a1)
	fadd.s f12, f12, f13
	flw f13, 24(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 24(a1)
	fadd.s f12, f12, f13
	flw f13, 28(a1)
	fsub.s f10, f13, f10
	fdiv.s f10, f10, f11
	fsw f10, 28(a1)
	fadd.s f12, f12, f10
	li a1, 1000
	bge a2, a1, label35
	j label637
label634:
	li a1, 4000
	mv a2, zero
	fmv.s f10, f8
	mul a1, a0, a1
	add a1, s0, a1
	j label46
label49:
	sh2add a1, a2, a1
	addiw a0, a0, 1
	flw f11, 0(a1)
	fadd.s f10, f10, f11
	flw f11, 4(a1)
	fadd.s f10, f10, f11
	flw f11, 8(a1)
	fadd.s f10, f10, f11
	flw f11, 12(a1)
	fadd.s f10, f10, f11
	flw f11, 16(a1)
	fadd.s f10, f10, f11
	flw f11, 20(a1)
	fadd.s f10, f10, f11
	flw f11, 24(a1)
	fadd.s f10, f10, f11
	flw f11, 28(a1)
	fadd.s f8, f10, f11
	li a1, 1000
	bge a0, a1, label44
	j label634
label46:
	sh2add a3, a2, a1
	flw f11, 0(a3)
	addiw a2, a2, 16
	fadd.s f10, f10, f11
	flw f11, 4(a3)
	fadd.s f10, f10, f11
	flw f11, 8(a3)
	fadd.s f10, f10, f11
	flw f11, 12(a3)
	fadd.s f10, f10, f11
	flw f11, 16(a3)
	fadd.s f10, f10, f11
	flw f11, 20(a3)
	fadd.s f10, f10, f11
	flw f11, 24(a3)
	fadd.s f10, f10, f11
	flw f11, 28(a3)
	fadd.s f10, f10, f11
	flw f11, 32(a3)
	fadd.s f10, f10, f11
	flw f11, 36(a3)
	fadd.s f10, f10, f11
	flw f11, 40(a3)
	fadd.s f10, f10, f11
	flw f11, 44(a3)
	fadd.s f10, f10, f11
	flw f11, 48(a3)
	fadd.s f10, f10, f11
	flw f11, 52(a3)
	fadd.s f10, f10, f11
	flw f11, 56(a3)
	fadd.s f10, f10, f11
	flw f11, 60(a3)
	li a3, 992
	fadd.s f10, f10, f11
	bge a2, a3, label49
	j label46
label4:
	ld ra, 0(sp)
	flw f8, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label51:
	addiw s3, s3, 1
	li a0, 1000
	bge s3, a0, label6
	li a0, 4000
	mul a0, s3, a0
	add a0, s0, a0
	jal getfarray
	li a1, 1000
	beq a0, a1, label51
	j label4
label44:
	li a0, 95
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
	j label4
