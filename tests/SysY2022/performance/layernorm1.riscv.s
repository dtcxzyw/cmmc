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
.text
.globl main
main:
	lui t0, 1048574
	add t0, t0, sp
	addi sp, t0, 144
	lui t0, 2
	add t0, t0, sp
	sd s1, -152(t0)
	addi t0, sp, 2047
	sd s2, 1953(t0)
	lui t0, 2
	add t0, t0, sp
	sd s0, -160(t0)
	lui t0, 2
	add t0, t0, sp
	sd s3, -168(t0)
	lui t0, 2
	add t0, t0, sp
	fsw f8, -176(t0)
	lui t0, 2
	add t0, t0, sp
	sd ra, -184(t0)
	addi s1, sp, 0
	addi t0, sp, 2047
	addi s2, t0, 1961
pcrel655:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel655)
	mv s3, zero
	li a0, 1000
	bge zero, a0, label8
	li a0, 4000
	mul a0, zero, a0
	add a0, s0, a0
	jal getfarray
	li a1, 1000
	beq a0, a1, label5
	j label6
label5:
	addiw s3, s3, 1
	li a0, 1000
	bge s3, a0, label8
	li a0, 4000
	mul a0, s3, a0
	add a0, s0, a0
	jal getfarray
	li a1, 1000
	beq a0, a1, label5
	j label6
label8:
	li a0, 42
	jal _sysy_starttime
	fmv.w.x f10, zero
	mv a0, zero
	li a1, 100
	bge zero, a1, label73
	mv a1, zero
	li a2, 1000
	bge zero, a2, label77
	j label644
label73:
	mv a0, zero
	fmv.s f8, f10
	li a1, 1000
	bge zero, a1, label46
	j label629
label77:
	mv a1, zero
	li a2, 1000
	bge zero, a2, label81
	j label80
label32:
	addiw a0, a0, 1
	fmv.s f10, f12
	li a1, 100
	bge a0, a1, label73
	mv a1, zero
	li a2, 1000
	bge zero, a2, label77
	j label644
label80:
	slli a2, a1, 2
	add a2, s2, a2
	flw f11, 0(a2)
	li a2, 4000
	mul a2, a1, a2
	add a3, s0, a2
	fmv.w.x f12, zero
	mv a2, zero
	j label17
label25:
	flt.s a2, f14, f1
	bne a2, zero, label27
	fadd.s f12, f11, f13
	lui a2, 258048
	fmv.w.x f15, a2
	fmul.s f15, f12, f15
	fmv.s f12, f11
	fmv.s f11, f15
	fmul.s f1, f15, f15
	fsub.s f0, f1, f14
	fmv.w.x f15, zero
	flt.s a2, f0, f15
	fneg.s f15, f0
	bne a2, zero, label619
	fmv.s f15, f0
pcrel656:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(pcrel656)
	flw f0, 4(a2)
	flw f0, 4(a2)
	flt.s a2, f0, f15
	bne a2, zero, label25
	slli a2, a1, 2
	add a2, s1, a2
	fsw f11, 0(a2)
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label81
	j label80
label27:
	fadd.s f13, f11, f12
	lui a2, 258048
	fmv.w.x f15, a2
	fmul.s f15, f13, f15
	fmv.s f13, f11
	fmv.s f11, f15
	fmul.s f1, f15, f15
	fsub.s f0, f1, f14
	fmv.w.x f15, zero
	flt.s a2, f0, f15
	fneg.s f15, f0
	bne a2, zero, label619
	fmv.s f15, f0
pcrel657:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(pcrel657)
	flw f0, 4(a2)
	flw f0, 4(a2)
	flt.s a2, f0, f15
	bne a2, zero, label25
	slli a2, a1, 2
	add a2, s1, a2
	fsw f11, 0(a2)
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label81
	j label80
label17:
	slli a4, a2, 2
	add a4, a3, a4
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
	fsub.s f13, f13, f11
	fmul.s f13, f13, f13
	fadd.s f12, f12, f13
	slli a4, a1, 2
	add a4, s1, a4
	fsw f12, 0(a4)
	addiw a2, a2, 16
	li a4, 992
	bge a2, a4, label20
	j label17
label20:
	slli a2, a2, 2
	add a2, a3, a2
	flw f13, 0(a2)
	slli a3, a1, 2
	add a3, s2, a3
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
	fsub.s f11, f13, f11
	fmul.s f11, f11, f11
	fadd.s f11, f12, f11
	lui a2, 280480
	fmv.w.x f12, a2
	fdiv.s f11, f11, f12
pcrel658:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(pcrel658)
	flw f12, 0(a2)
	fadd.s f14, f11, f12
	lui a2, 258048
	fmv.w.x f11, a2
	fmul.s f11, f14, f11
	fmv.w.x f12, zero
	fmv.s f13, f14
	fmul.s f1, f11, f11
	fsub.s f0, f1, f14
	fmv.w.x f15, zero
	flt.s a2, f0, f15
	fneg.s f15, f0
	bne a2, zero, label619
	fmv.s f15, f0
label619:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(label619)
	flw f0, 4(a2)
	flw f0, 4(a2)
	flt.s a2, f0, f15
	bne a2, zero, label25
	slli a2, a1, 2
	add a2, s1, a2
	fsw f11, 0(a2)
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label81
	j label80
label81:
	fmv.s f12, f10
	mv a1, zero
	li a2, 1000
	bge zero, a2, label32
label33:
	slli a2, a1, 2
	add a2, s2, a2
	flw f10, 0(a2)
	slli a2, a1, 2
	add a2, s1, a2
	flw f11, 0(a2)
	li a2, 4000
	mul a2, a1, a2
	add a3, s0, a2
	mv a2, zero
	j label34
label37:
	slli a2, a2, 2
	add a2, a3, a2
	flw f11, 0(a2)
	slli a3, a1, 2
	add a3, s2, a3
	flw f10, 0(a3)
	fsub.s f13, f11, f10
	slli a3, a1, 2
	add a3, s1, a3
	flw f11, 0(a3)
	fdiv.s f13, f13, f11
	fsw f13, 0(a2)
	fadd.s f12, f12, f13
	flw f13, 4(a2)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 4(a2)
	flw f13, 8(a2)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 8(a2)
	flw f13, 12(a2)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 12(a2)
	flw f13, 16(a2)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 16(a2)
	flw f13, 20(a2)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 20(a2)
	flw f13, 24(a2)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 24(a2)
	flw f13, 28(a2)
	fsub.s f10, f13, f10
	fdiv.s f10, f10, f11
	fadd.s f12, f12, f10
	fsw f10, 28(a2)
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label32
	j label33
label34:
	slli a4, a2, 2
	add a4, a3, a4
	flw f13, 0(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 0(a4)
	fadd.s f12, f12, f13
	flw f13, 4(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 4(a4)
	flw f13, 8(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 8(a4)
	flw f13, 12(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 12(a4)
	flw f13, 16(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 16(a4)
	flw f13, 20(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 20(a4)
	flw f13, 24(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 24(a4)
	flw f13, 28(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 28(a4)
	flw f13, 32(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 32(a4)
	flw f13, 36(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 36(a4)
	flw f13, 40(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 40(a4)
	flw f13, 44(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 44(a4)
	flw f13, 48(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 48(a4)
	flw f13, 52(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 52(a4)
	flw f13, 56(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 56(a4)
	flw f13, 60(a4)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 60(a4)
	addiw a2, a2, 16
	li a4, 992
	bge a2, a4, label37
	j label34
label644:
	li a2, 4000
	mul a2, a1, a2
	add a3, s0, a2
	fmv.w.x f11, zero
	mv a2, zero
label39:
	slli a4, a2, 2
	add a4, a3, a4
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
	fadd.s f11, f11, f12
	slli a4, a1, 2
	add a4, s2, a4
	fsw f11, 0(a4)
	addiw a2, a2, 16
	li a4, 992
	bge a2, a4, label42
	j label39
label42:
	slli a2, a2, 2
	add a2, a3, a2
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
	fadd.s f11, f11, f12
	lui a2, 280480
	fmv.w.x f12, a2
	fdiv.s f11, f11, f12
	slli a2, a1, 2
	add a2, s2, a2
	fsw f11, 0(a2)
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label77
	j label644
label629:
	li a1, 4000
	mul a1, a0, a1
	add a2, s0, a1
	mv a1, zero
label48:
	slli a3, a1, 2
	add a3, a2, a3
	flw f10, 0(a3)
	fadd.s f10, f8, f10
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
	fadd.s f8, f10, f11
	addiw a1, a1, 16
	li a3, 992
	bge a1, a3, label51
	j label48
label51:
	slli a1, a1, 2
	add a1, a2, a1
	flw f10, 0(a1)
	fadd.s f10, f8, f10
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
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label46
	j label629
label6:
	lui t0, 2
	add t0, t0, sp
	ld ra, -184(t0)
	lui t0, 2
	add t0, t0, sp
	flw f8, -176(t0)
	lui t0, 2
	add t0, t0, sp
	ld s3, -168(t0)
	lui t0, 2
	add t0, t0, sp
	ld s0, -160(t0)
	addi t0, sp, 2047
	ld s2, 1953(t0)
	lui t0, 2
	add t0, t0, sp
	ld s1, -152(t0)
	lui t0, 2
	add t0, t0, sp
	addi sp, t0, -144
	ret
label46:
	li a0, 95
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
	j label6
