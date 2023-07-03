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
	sd s0, 40(sp)
	sd s1, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	fsw f8, 8(sp)
	sd ra, 0(sp)
pcrel631:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel631)
pcrel632:
	auipc a0, %pcrel_hi(mean)
	addi s1, a0, %pcrel_lo(pcrel632)
pcrel633:
	auipc a0, %pcrel_hi(var)
	addi s2, a0, %pcrel_lo(pcrel633)
	mv s3, zero
label2:
	li a0, 1000
	bge s3, a0, label60
	j label4
label60:
	li a0, 42
	jal _sysy_starttime
	fmv.w.x f10, zero
	mv a0, zero
	j label9
label4:
	li a0, 4000
	mul a0, s3, a0
	add a0, s0, a0
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
label9:
	li a1, 100
	bge a0, a1, label73
	mv a1, zero
	j label21
label73:
	mv a0, zero
	fmv.s f8, f10
label12:
	li a1, 1000
	bge a0, a1, label15
	j label76
label21:
	li a2, 1000
	bge a1, a2, label163
	j label162
label163:
	mv a1, zero
	j label28
label46:
	addiw a0, a0, 1
	fmv.s f10, f12
	j label9
label28:
	li a2, 1000
	bge a1, a2, label257
	sh2add a2, a1, s1
	flw f11, 0(a2)
	li a2, 4000
	mul a2, a1, a2
	add a2, s0, a2
	fmv.w.x f12, zero
	mv a3, zero
	j label31
label257:
	fmv.s f12, f10
	mv a2, zero
	j label43
label35:
	fmul.s f15, f11, f11
	fsub.s f1, f15, f12
	fmv.w.x f0, zero
	flt.s a2, f1, f0
	fneg.s f0, f1
	bne a2, zero, label621
	fmv.s f0, f1
label621:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(label621)
	flw f1, 4(a2)
	flw f1, 4(a2)
	flt.s a2, f1, f0
	bne a2, zero, label39
	sh2add a2, a1, s2
	fsw f11, 0(a2)
	addiw a1, a1, 1
	j label28
label39:
	flt.s a2, f12, f15
	bne a2, zero, label40
	fadd.s f13, f11, f14
	lui a2, 258048
	fmv.w.x f15, a2
	fmul.s f15, f13, f15
	fmv.s f13, f11
	fmv.s f11, f15
	j label35
label40:
	fadd.s f14, f11, f13
	lui a2, 258048
	fmv.w.x f15, a2
	fmul.s f15, f14, f15
	fmv.s f14, f11
	fmv.s f11, f15
	j label35
label43:
	li a1, 1000
	bge a2, a1, label46
	j label442
label31:
	sh2add a4, a3, a2
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
	sh2add a4, a1, s2
	fsw f12, 0(a4)
	addiw a3, a3, 16
	li a4, 992
	bge a3, a4, label34
	j label31
label34:
	sh2add a2, a3, a2
	flw f13, 0(a2)
	sh2add a3, a1, s1
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
pcrel634:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a2, %pcrel_lo(pcrel634)
	flw f12, 0(a2)
	fadd.s f12, f11, f12
	lui a2, 258048
	fmv.w.x f11, a2
	fmul.s f11, f12, f11
	fmv.w.x f13, zero
	fmv.s f14, f12
	j label35
label442:
	sh2add a1, a2, s1
	flw f10, 0(a1)
	sh2add a1, a2, s2
	flw f11, 0(a1)
	li a1, 4000
	mul a1, a2, a1
	add a3, s0, a1
	mv a4, zero
label48:
	sh2add a1, a4, a3
	flw f13, 0(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fsw f13, 0(a1)
	fadd.s f12, f12, f13
	flw f13, 4(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 4(a1)
	flw f13, 8(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 8(a1)
	flw f13, 12(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 12(a1)
	flw f13, 16(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 16(a1)
	flw f13, 20(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 20(a1)
	flw f13, 24(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 24(a1)
	flw f13, 28(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 28(a1)
	flw f13, 32(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 32(a1)
	flw f13, 36(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 36(a1)
	flw f13, 40(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 40(a1)
	flw f13, 44(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 44(a1)
	flw f13, 48(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 48(a1)
	flw f13, 52(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 52(a1)
	flw f13, 56(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 56(a1)
	flw f13, 60(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 60(a1)
	addiw a4, a4, 16
	li a1, 992
	bge a4, a1, label51
	j label48
label51:
	sh2add a1, a4, a3
	flw f11, 0(a1)
	sh2add a3, a2, s1
	flw f10, 0(a3)
	fsub.s f13, f11, f10
	sh2add a3, a2, s2
	flw f11, 0(a3)
	fdiv.s f13, f13, f11
	fsw f13, 0(a1)
	fadd.s f12, f12, f13
	flw f13, 4(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 4(a1)
	flw f13, 8(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 8(a1)
	flw f13, 12(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 12(a1)
	flw f13, 16(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 16(a1)
	flw f13, 20(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 20(a1)
	flw f13, 24(a1)
	fsub.s f13, f13, f10
	fdiv.s f13, f13, f11
	fadd.s f12, f12, f13
	fsw f13, 24(a1)
	flw f13, 28(a1)
	fsub.s f10, f13, f10
	fdiv.s f10, f10, f11
	fadd.s f12, f12, f10
	fsw f10, 28(a1)
	addiw a2, a2, 1
	j label43
label162:
	li a2, 4000
	mul a2, a1, a2
	add a2, s0, a2
	fmv.w.x f11, zero
	mv a3, zero
label24:
	sh2add a4, a3, a2
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
	sh2add a4, a1, s1
	fsw f11, 0(a4)
	addiw a3, a3, 16
	li a4, 992
	bge a3, a4, label27
	j label24
label27:
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
	fadd.s f11, f11, f12
	lui a2, 280480
	fmv.w.x f12, a2
	fdiv.s f11, f11, f12
	sh2add a2, a1, s1
	fsw f11, 0(a2)
	addiw a1, a1, 1
	j label21
label76:
	li a1, 4000
	mul a1, a0, a1
	add a1, s0, a1
	mv a2, zero
	fmv.s f10, f8
label17:
	sh2add a3, a2, a1
	flw f11, 0(a3)
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
	fadd.s f10, f10, f11
	addiw a2, a2, 16
	li a3, 992
	bge a2, a3, label20
	j label17
label20:
	sh2add a1, a2, a1
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
	addiw a0, a0, 1
	j label12
label5:
	addiw s3, s3, 1
	j label2
label15:
	li a0, 95
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
	j label6
