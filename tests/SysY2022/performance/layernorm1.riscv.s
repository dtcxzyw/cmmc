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
pcrel639:
	auipc a0, %pcrel_hi(a)
	sd s0, 40(sp)
	addi s0, a0, %pcrel_lo(pcrel639)
	sd s1, 32(sp)
pcrel640:
	auipc a0, %pcrel_hi(mean)
	sd s2, 24(sp)
	addi s1, a0, %pcrel_lo(pcrel640)
	sd s3, 16(sp)
pcrel641:
	auipc a0, %pcrel_hi(var)
	mv s3, zero
	addi s2, a0, %pcrel_lo(pcrel641)
	fsw f8, 8(sp)
	sd ra, 0(sp)
	li a0, 1000
	bge zero, a0, label8
label4:
	li a2, 4000
	mul a1, s3, a2
	add a0, s0, a1
	jal getfarray
	li a1, 1000
	beq a0, a1, label5
label6:
	ld ra, 0(sp)
	flw f8, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label8:
	li a0, 42
	jal _sysy_starttime
	mv a0, zero
	fmv.w.x f10, zero
	li a2, 100
	bge zero, a2, label73
	mv a1, zero
	li a2, 1000
	bge zero, a2, label77
	j label612
label73:
	fmv.s f8, f10
	mv a0, zero
	li a1, 1000
	bge zero, a1, label46
	j label613
label612:
	li a3, 4000
	fmv.w.x f11, zero
	mul a4, a1, a3
	mv a3, zero
	add a2, s0, a4
label15:
	sh2add a4, a3, a2
	addiw a3, a3, 16
	flw f12, 0(a4)
	flw f13, 4(a4)
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fadd.s f12, f11, f13
	fadd.s f11, f12, f14
	flw f12, 12(a4)
	fadd.s f13, f11, f12
	flw f11, 16(a4)
	fadd.s f12, f13, f11
	flw f13, 20(a4)
	flw f14, 24(a4)
	fadd.s f11, f12, f13
	flw f13, 28(a4)
	fadd.s f12, f11, f14
	flw f14, 32(a4)
	fadd.s f11, f12, f13
	flw f13, 36(a4)
	fadd.s f12, f11, f14
	flw f14, 40(a4)
	fadd.s f11, f12, f13
	flw f13, 44(a4)
	fadd.s f12, f11, f14
	flw f14, 48(a4)
	fadd.s f11, f12, f13
	flw f13, 52(a4)
	fadd.s f12, f11, f14
	flw f14, 56(a4)
	fadd.s f11, f12, f13
	flw f13, 60(a4)
	li a4, 992
	fadd.s f12, f11, f14
	fadd.s f11, f12, f13
	bge a3, a4, label18
	j label15
label77:
	mv a1, zero
	li a2, 1000
	bge zero, a2, label169
	j label614
label169:
	fmv.s f12, f10
	mv a2, zero
	li a3, 1000
	bge zero, a3, label37
	j label616
label37:
	addiw a0, a0, 1
	fmv.s f10, f12
	li a2, 100
	bge a0, a2, label73
	mv a1, zero
	li a2, 1000
	bge zero, a2, label77
	j label612
label614:
	sh2add a4, a1, s1
	li a3, 4000
	fmv.w.x f12, zero
	flw f11, 0(a4)
	mul a4, a1, a3
	mv a3, zero
	add a2, s0, a4
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
	flw f15, 20(a4)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	flw f15, 24(a4)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	flw f15, 28(a4)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	fadd.s f12, f12, f14
	fmul.s f0, f13, f13
	flw f14, 32(a4)
	fsub.s f13, f14, f11
	flw f14, 36(a4)
	fadd.s f12, f12, f0
	flw f0, 40(a4)
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	fadd.s f12, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f0, f11
	fadd.s f12, f12, f15
	fmul.s f14, f13, f13
	flw f15, 44(a4)
	fsub.s f13, f15, f11
	fadd.s f12, f12, f14
	flw f14, 48(a4)
	fmul.s f0, f13, f13
	fsub.s f13, f14, f11
	flw f14, 52(a4)
	fadd.s f12, f12, f0
	fmul.s f15, f13, f13
	fsub.s f13, f14, f11
	fadd.s f12, f12, f15
	fmul.s f0, f13, f13
	flw f15, 56(a4)
	fsub.s f13, f15, f11
	flw f15, 60(a4)
	li a4, 992
	fadd.s f12, f12, f0
	fmul.s f14, f13, f13
	fsub.s f13, f15, f11
	fadd.s f12, f12, f14
	fmul.s f14, f13, f13
	fadd.s f12, f12, f14
	bge a3, a4, label25
	j label22
label25:
	sh2add a2, a3, a2
	flw f15, 0(a2)
	flw f0, 4(a2)
	fsub.s f13, f15, f11
	fmul.s f14, f13, f13
	fsub.s f13, f0, f11
	fadd.s f12, f12, f14
	fmul.s f15, f13, f13
	flw f14, 8(a2)
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
	fmv.w.x f13, zero
	fadd.s f11, f12, f14
	fmv.w.x f12, a2
pcrel642:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a2, %pcrel_lo(pcrel642)
	lui a2, 258048
	fdiv.s f11, f11, f12
	fmv.w.x f14, a2
	flw f12, 0(a3)
	fadd.s f11, f11, f12
	fmul.s f12, f11, f14
	fmv.s f14, f11
	fmul.s f15, f12, f12
pcrel643:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a2, %pcrel_lo(pcrel643)
	fsub.s f1, f15, f11
	fabs.s f0, f1
	flw f1, 4(a3)
	flt.s a2, f1, f0
	beq a2, zero, label33
	flt.s a2, f11, f15
	beq a2, zero, label32
	j label617
label33:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	fsw f12, 0(a2)
	li a2, 1000
	bge a1, a2, label169
	j label614
label617:
	fadd.s f14, f12, f13
	lui a2, 258048
	fmv.w.x f0, a2
	fmul.s f15, f14, f0
	fmv.s f14, f12
	fmv.s f12, f15
	fmul.s f15, f15, f15
pcrel644:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a2, %pcrel_lo(pcrel644)
	fsub.s f1, f15, f11
	fabs.s f0, f1
	flw f1, 4(a3)
	flt.s a2, f1, f0
	beq a2, zero, label33
	flt.s a2, f11, f15
	beq a2, zero, label32
	j label617
label32:
	fadd.s f13, f12, f14
	lui a2, 258048
	fmv.w.x f0, a2
	fmul.s f15, f13, f0
	fmv.s f13, f12
	fmv.s f12, f15
	fmul.s f15, f15, f15
pcrel645:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a3, a2, %pcrel_lo(pcrel645)
	fsub.s f1, f15, f11
	fabs.s f0, f1
	flw f1, 4(a3)
	flt.s a2, f1, f0
	beq a2, zero, label33
	flt.s a2, f11, f15
	beq a2, zero, label32
	j label617
label616:
	sh2add a1, a2, s2
	li a4, 4000
	sh2add a3, a2, s1
	flw f10, 0(a1)
	flw f11, 0(a3)
	mul a1, a2, a4
	mv a4, zero
	add a3, s0, a1
	j label39
label42:
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
	flw f13, 28(a1)
	fsub.s f11, f13, f11
	fdiv.s f10, f11, f10
	fsw f10, 28(a1)
	fadd.s f12, f12, f10
	li a3, 1000
	bge a2, a3, label37
	j label616
label39:
	sh2add a1, a4, a3
	addiw a4, a4, 16
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
	flw f14, 8(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 8(a1)
	fadd.s f12, f12, f13
	flw f15, 12(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
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
	flw f15, 56(a1)
	fsub.s f14, f15, f11
	fdiv.s f13, f14, f10
	fsw f13, 56(a1)
	fadd.s f12, f12, f13
	flw f14, 60(a1)
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fsw f13, 60(a1)
	fadd.s f12, f12, f13
	li a1, 992
	bge a4, a1, label42
	j label39
label18:
	sh2add a2, a3, a2
	flw f12, 0(a2)
	flw f13, 4(a2)
	fadd.s f11, f11, f12
	flw f14, 8(a2)
	fadd.s f12, f11, f13
	flw f13, 12(a2)
	fadd.s f11, f12, f14
	flw f14, 16(a2)
	fadd.s f12, f11, f13
	fadd.s f11, f12, f14
	flw f12, 20(a2)
	fadd.s f13, f11, f12
	flw f11, 24(a2)
	fadd.s f12, f13, f11
	flw f13, 28(a2)
	lui a2, 280480
	fadd.s f11, f12, f13
	fmv.w.x f12, a2
	sh2add a2, a1, s1
	addiw a1, a1, 1
	fdiv.s f11, f11, f12
	fsw f11, 0(a2)
	li a2, 1000
	bge a1, a2, label77
	j label612
label613:
	li a2, 4000
	fmv.s f10, f8
	mul a3, a0, a2
	mv a2, zero
	add a1, s0, a3
label48:
	sh2add a3, a2, a1
	flw f11, 0(a3)
	addiw a2, a2, 16
	flw f13, 4(a3)
	fadd.s f10, f10, f11
	flw f12, 8(a3)
	fadd.s f11, f10, f13
	flw f13, 12(a3)
	fadd.s f10, f11, f12
	flw f12, 16(a3)
	fadd.s f11, f10, f13
	flw f13, 20(a3)
	fadd.s f10, f11, f12
	flw f12, 24(a3)
	fadd.s f11, f10, f13
	fadd.s f10, f11, f12
	flw f11, 28(a3)
	fadd.s f12, f10, f11
	flw f10, 32(a3)
	flw f13, 36(a3)
	fadd.s f11, f12, f10
	flw f12, 40(a3)
	fadd.s f10, f11, f13
	flw f13, 44(a3)
	fadd.s f11, f10, f12
	flw f12, 48(a3)
	fadd.s f10, f11, f13
	flw f13, 52(a3)
	fadd.s f11, f10, f12
	flw f12, 56(a3)
	fadd.s f10, f11, f13
	flw f13, 60(a3)
	li a3, 992
	fadd.s f11, f10, f12
	fadd.s f10, f11, f13
	bge a2, a3, label51
	j label48
label51:
	sh2add a1, a2, a1
	addiw a0, a0, 1
	flw f11, 0(a1)
	flw f13, 4(a1)
	fadd.s f10, f10, f11
	flw f12, 8(a1)
	fadd.s f11, f10, f13
	fadd.s f10, f11, f12
	flw f11, 12(a1)
	fadd.s f12, f10, f11
	flw f10, 16(a1)
	fadd.s f11, f12, f10
	flw f12, 20(a1)
	flw f13, 24(a1)
	fadd.s f10, f11, f12
	fadd.s f11, f10, f13
	flw f10, 28(a1)
	fadd.s f8, f11, f10
	li a1, 1000
	bge a0, a1, label46
	j label613
label5:
	addiw s3, s3, 1
	li a0, 1000
	bge s3, a0, label8
	j label4
label46:
	li a0, 95
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
	j label6
