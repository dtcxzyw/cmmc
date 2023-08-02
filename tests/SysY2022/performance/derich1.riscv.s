.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	3191992809
	.4byte	1038256634
	.4byte	3206230588
	.4byte	3191654481
	.4byte	1038821134
.bss
.align 8
imgIn:
	.zero	552960
.align 8
imgOut:
	.zero	552960
.align 8
my_y1:
	.zero	552960
.align 8
my_y2:
	.zero	552960
.text
.p2align 2
.globl main
main:
	addi sp, sp, -48
pcrel2231:
	auipc a1, %pcrel_hi(imgIn)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a1, %pcrel_lo(pcrel2231)
	sd s0, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	mv a0, s1
	jal getfarray
	li a0, 156
	jal _sysy_starttime
	mv t5, s1
pcrel2232:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
pcrel2233:
	auipc a0, %pcrel_hi(my_y2)
pcrel2234:
	auipc a3, %pcrel_hi(imgOut)
	mv t6, zero
pcrel2235:
	auipc a1, %pcrel_hi(my_y1)
	addi s0, a3, %pcrel_lo(pcrel2234)
	addi a2, a1, %pcrel_lo(pcrel2235)
	addi a3, a0, %pcrel_lo(pcrel2233)
	li a1, 1080
	mv t4, a2
	addi a0, a5, %pcrel_lo(pcrel2232)
	slli a4, a1, 1
	addi a5, a4, 1080
	addi t0, a5, 1080
	addi t1, t0, 1080
	addi t2, t1, 1080
	addi t3, t2, 1080
	li a6, 512
	blt zero, a6, label6
label132:
	mv t4, s1
	mv t5, a3
	mv t6, zero
	j label24
.p2align 2
label6:
	fmv.w.x f14, zero
	mv a6, t5
	mv a7, zero
	fmv.s f13, f14
	fmv.s f0, f14
.p2align 2
label7:
	flw f15, 0(a6)
	sh2add s2, a7, t4
	addiw s3, a7, 16
	li s4, 256
	flw f10, 0(a0)
	flw f11, 4(a0)
	fmul.s f1, f15, f10
	flw f12, 8(a0)
	fmul.s f3, f14, f11
	fmul.s f5, f13, f12
	fadd.s f4, f1, f3
	fmul.s f3, f15, f11
	fmul.s f1, f0, f12
	fadd.s f2, f4, f13
	fadd.s f14, f2, f1
	fsw f14, 0(s2)
	flw f0, 4(a6)
	fmul.s f1, f0, f10
	fadd.s f4, f1, f3
	fmul.s f3, f0, f11
	fadd.s f2, f4, f14
	fmul.s f4, f14, f12
	fadd.s f15, f2, f5
	fsw f15, 4(s2)
	flw f13, 8(a6)
	fmul.s f1, f13, f10
	fadd.s f5, f1, f3
	fadd.s f2, f5, f15
	fmul.s f5, f15, f12
	fadd.s f0, f2, f4
	fmul.s f4, f13, f11
	fsw f0, 8(s2)
	flw f1, 12(a6)
	fmul.s f14, f1, f10
	fadd.s f3, f14, f4
	fmul.s f4, f1, f11
	fmul.s f1, f0, f12
	fadd.s f2, f3, f0
	fadd.s f13, f2, f5
	fsw f13, 12(s2)
	flw f14, 16(a6)
	fmul.s f5, f14, f11
	fmul.s f15, f14, f10
	fadd.s f3, f15, f4
	fadd.s f2, f3, f13
	fmul.s f3, f13, f12
	fadd.s f15, f2, f1
	fsw f15, 16(s2)
	flw f0, 20(a6)
	fmul.s f2, f0, f10
	fadd.s f4, f2, f5
	fmul.s f5, f0, f11
	fadd.s f1, f4, f15
	fadd.s f14, f1, f3
	fmul.s f3, f15, f12
	fsw f14, 20(s2)
	flw f13, 24(a6)
	fmul.s f1, f13, f10
	fadd.s f4, f1, f5
	fmul.s f5, f13, f11
	fadd.s f2, f4, f14
	fmul.s f4, f14, f12
	fadd.s f0, f2, f3
	fsw f0, 24(s2)
	flw f15, 28(a6)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f5
	fmul.s f5, f0, f12
	fadd.s f2, f3, f0
	fmul.s f3, f15, f11
	fadd.s f13, f2, f4
	fsw f13, 28(s2)
	flw f14, 32(a6)
	fmul.s f1, f14, f10
	fadd.s f4, f1, f3
	fmul.s f3, f14, f11
	fadd.s f2, f4, f13
	fadd.s f15, f2, f5
	fmul.s f5, f13, f12
	fsw f15, 32(s2)
	flw f0, 36(a6)
	fmul.s f1, f0, f10
	fadd.s f4, f1, f3
	fmul.s f3, f0, f11
	fadd.s f2, f4, f15
	fadd.s f14, f2, f5
	fmul.s f5, f15, f12
	fsw f14, 36(s2)
	flw f1, 40(a6)
	fmul.s f13, f1, f10
	fadd.s f4, f13, f3
	fmul.s f3, f1, f11
	fadd.s f2, f4, f14
	fadd.s f13, f2, f5
	fmul.s f5, f14, f12
	fsw f13, 40(s2)
	flw f0, 44(a6)
	fmul.s f15, f0, f10
	fadd.s f4, f15, f3
	fmul.s f3, f0, f11
	fmul.s f0, f13, f12
	fadd.s f2, f4, f13
	fadd.s f15, f2, f5
	fsw f15, 44(s2)
	flw f1, 48(a6)
	fmul.s f14, f1, f10
	fadd.s f4, f14, f3
	fmul.s f3, f1, f11
	fmul.s f1, f15, f12
	fadd.s f2, f4, f15
	fadd.s f14, f2, f0
	fsw f14, 48(s2)
	flw f13, 52(a6)
	fmul.s f0, f13, f10
	fadd.s f4, f0, f3
	fmul.s f3, f14, f12
	fadd.s f2, f4, f14
	fmul.s f4, f13, f11
	fadd.s f0, f2, f1
	fsw f0, 52(s2)
	flw f15, 56(a6)
	fmul.s f1, f15, f10
	fadd.s f5, f1, f4
	fadd.s f2, f5, f0
	fadd.s f13, f2, f3
	fmul.s f3, f15, f11
	fmul.s f11, f0, f12
	fsw f13, 56(s2)
	flw f14, 60(a6)
	fmul.s f1, f14, f10
	fadd.s f4, f1, f3
	fadd.s f2, f4, f13
	fadd.s f10, f2, f11
	fsw f10, 60(s2)
	bge s3, s4, label14
	addi a6, a6, 64
	fmv.s f0, f13
	mv a7, s3
	fmv.s f13, f10
	j label7
.p2align 2
label21:
	addiw t6, t6, 1
	addi t4, t4, 1080
	addi t5, t5, 1080
	li a6, 512
	blt t6, a6, label6
	j label132
label24:
	li a6, 512
	bge t6, a6, label446
.p2align 2
label28:
	addi a6, t5, 1076
	fmv.w.x f15, zero
	li a7, 269
	fmv.s f14, f15
	fmv.s f13, f15
	fmv.s f0, f15
.p2align 2
label29:
	flw f10, 12(a0)
	sh2add s1, a7, t4
	addiw s2, a7, -16
	li s3, 13
	flw f11, 16(a0)
	fmul.s f2, f15, f10
	flw f12, 8(a0)
	fmul.s f3, f14, f11
	fadd.s f4, f2, f3
	fmul.s f2, f0, f12
	fmul.s f3, f13, f12
	fadd.s f1, f4, f13
	fmul.s f4, f15, f11
	fadd.s f14, f1, f2
	fsw f14, 0(a6)
	flw f0, 0(s1)
	fmul.s f1, f0, f10
	fadd.s f5, f1, f4
	fmul.s f4, f0, f11
	fadd.s f2, f5, f14
	fadd.s f15, f2, f3
	fmul.s f3, f14, f12
	fsw f15, -4(a6)
	flw f13, -4(s1)
	fmul.s f1, f13, f10
	fadd.s f5, f1, f4
	fmul.s f4, f13, f11
	fadd.s f2, f5, f15
	fadd.s f0, f2, f3
	fmul.s f3, f15, f12
	fsw f0, -8(a6)
	flw f1, -8(s1)
	fmul.s f14, f1, f10
	fadd.s f5, f14, f4
	fadd.s f2, f5, f0
	fadd.s f13, f2, f3
	fmul.s f3, f1, f11
	fmul.s f1, f0, f12
	fsw f13, -12(a6)
	flw f14, -12(s1)
	fmul.s f15, f14, f10
	fadd.s f4, f15, f3
	fmul.s f3, f13, f12
	fadd.s f2, f4, f13
	fmul.s f4, f14, f11
	fadd.s f15, f2, f1
	fsw f15, -16(a6)
	flw f0, -16(s1)
	fmul.s f1, f0, f10
	fadd.s f5, f1, f4
	fmul.s f4, f15, f12
	fadd.s f2, f5, f15
	fadd.s f14, f2, f3
	fmul.s f3, f0, f11
	fsw f14, -20(a6)
	flw f1, -20(s1)
	fmul.s f13, f1, f10
	fadd.s f5, f13, f3
	fmul.s f3, f1, f11
	fadd.s f2, f5, f14
	fmul.s f5, f14, f12
	fadd.s f13, f2, f4
	fsw f13, -24(a6)
	flw f0, -24(s1)
	fmul.s f15, f0, f10
	fadd.s f4, f15, f3
	fmul.s f3, f0, f11
	fadd.s f2, f4, f13
	fadd.s f15, f2, f5
	fmul.s f5, f13, f12
	fsw f15, -28(a6)
	flw f1, -28(s1)
	fmul.s f14, f1, f10
	fadd.s f4, f14, f3
	fmul.s f3, f1, f11
	fadd.s f2, f4, f15
	fadd.s f14, f2, f5
	fmul.s f5, f15, f12
	fsw f14, -32(a6)
	flw f0, -32(s1)
	fmul.s f13, f0, f10
	fadd.s f4, f13, f3
	fadd.s f2, f4, f14
	fmul.s f4, f0, f11
	fmul.s f0, f14, f12
	fadd.s f13, f2, f5
	fsw f13, -36(a6)
	flw f1, -36(s1)
	fmul.s f15, f1, f10
	fadd.s f3, f15, f4
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fadd.s f2, f3, f13
	fadd.s f15, f2, f0
	fsw f15, -40(a6)
	flw f14, -40(s1)
	fmul.s f0, f14, f10
	fadd.s f3, f0, f4
	fmul.s f4, f14, f11
	fadd.s f2, f3, f15
	fmul.s f3, f15, f12
	fadd.s f0, f2, f1
	fsw f0, -44(a6)
	flw f13, -44(s1)
	fmul.s f1, f13, f10
	fadd.s f5, f1, f4
	fmul.s f4, f13, f11
	fmul.s f13, f0, f12
	fadd.s f2, f5, f0
	fadd.s f14, f2, f3
	fsw f14, -48(a6)
	flw f1, -48(s1)
	fmul.s f15, f1, f10
	fadd.s f3, f15, f4
	fadd.s f2, f3, f14
	fmul.s f3, f1, f11
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fsw f15, -52(a6)
	flw f0, -52(s1)
	fmul.s f13, f0, f10
	fadd.s f4, f13, f3
	fmul.s f3, f0, f11
	fmul.s f11, f15, f12
	fadd.s f2, f4, f15
	fadd.s f13, f2, f1
	fsw f13, -56(a6)
	flw f14, -56(s1)
	fmul.s f1, f14, f10
	fadd.s f4, f1, f3
	fadd.s f2, f4, f13
	fadd.s f10, f2, f11
	fsw f10, -60(a6)
	flw f15, -60(s1)
	bgt s2, s3, label46
	j label36
.p2align 2
label751:
	addiw t6, t6, 1
	addi t5, t5, 1080
	addi t4, t4, 1080
	li a6, 512
	blt t6, a6, label28
	j label446
.p2align 2
label46:
	addi a6, a6, -64
	fmv.s f0, f13
	mv a7, s2
	fmv.s f13, f10
	j label29
.p2align 2
label14:
	sh2add a6, s3, t5
	addiw a7, a7, 28
	sh2add s2, s3, t4
	flw f0, 0(a6)
	flw f11, 0(a0)
	flw f12, 4(a0)
	fmul.s f15, f0, f11
	fmul.s f2, f14, f12
	flw f14, 8(a0)
	fadd.s f3, f15, f2
	fmul.s f2, f13, f14
	fadd.s f1, f3, f10
	fmul.s f3, f0, f12
	fmul.s f0, f10, f14
	fadd.s f15, f1, f2
	fmul.s f5, f15, f14
	fsw f15, 0(s2)
	flw f1, 4(a6)
	fmul.s f13, f1, f11
	fadd.s f4, f13, f3
	fadd.s f2, f4, f15
	fmul.s f4, f1, f12
	fadd.s f13, f2, f0
	fsw f13, 4(s2)
	flw f10, 8(a6)
	fmul.s f0, f10, f11
	fadd.s f3, f0, f4
	fmul.s f4, f10, f12
	fadd.s f2, f3, f13
	fmul.s f3, f13, f14
	fadd.s f0, f2, f5
	fsw f0, 8(s2)
	flw f1, 12(a6)
	fmul.s f15, f1, f11
	fadd.s f5, f15, f4
	fmul.s f4, f0, f14
	fadd.s f2, f5, f0
	fmul.s f5, f1, f12
	fadd.s f10, f2, f3
	fsw f10, 12(s2)
	flw f15, 16(a6)
	fmul.s f13, f15, f11
	fadd.s f3, f13, f5
	fmul.s f5, f15, f12
	fadd.s f2, f3, f10
	fadd.s f13, f2, f4
	fmul.s f4, f10, f14
	fsw f13, 16(s2)
	flw f1, 20(a6)
	fmul.s f0, f1, f11
	fadd.s f3, f0, f5
	fmul.s f5, f1, f12
	fadd.s f2, f3, f13
	fadd.s f15, f2, f4
	fmul.s f4, f13, f14
	fsw f15, 20(s2)
	flw f0, 24(a6)
	fmul.s f10, f0, f11
	fadd.s f3, f10, f5
	fadd.s f2, f3, f15
	fmul.s f3, f15, f14
	fadd.s f10, f2, f4
	fmul.s f4, f0, f12
	fsw f10, 24(s2)
	flw f1, 28(a6)
	fmul.s f13, f1, f11
	fadd.s f5, f13, f4
	fmul.s f4, f1, f12
	fadd.s f2, f5, f10
	fadd.s f13, f2, f3
	fmul.s f3, f10, f14
	fsw f13, 28(s2)
	flw f0, 32(a6)
	fmul.s f15, f0, f11
	fadd.s f5, f15, f4
	fmul.s f4, f0, f12
	fadd.s f2, f5, f13
	fadd.s f15, f2, f3
	fmul.s f3, f13, f14
	fsw f15, 32(s2)
	flw f1, 36(a6)
	fmul.s f10, f1, f11
	fadd.s f5, f10, f4
	fadd.s f2, f5, f15
	fadd.s f10, f2, f3
	fmul.s f3, f1, f12
	fmul.s f1, f15, f14
	fsw f10, 36(s2)
	flw f0, 40(a6)
	fmul.s f13, f0, f11
	fadd.s f4, f13, f3
	fadd.s f2, f4, f10
	fadd.s f13, f2, f1
	fmul.s f2, f0, f12
	fmul.s f12, f10, f14
	fsw f13, 40(s2)
	flw f15, 44(a6)
	fmv.s f14, f15
	sh2add a6, a7, t5
	fmul.s f1, f15, f11
	fadd.s f3, f1, f2
	fadd.s f11, f3, f13
	fadd.s f10, f11, f12
	fmv.s f12, f13
	fsw f10, 44(s2)
.p2align 2
label15:
	flw f11, 0(a6)
	sh2add s2, a7, t4
	li s3, 270
	addiw a7, a7, 1
	flw f15, 0(a0)
	flw f2, 4(a0)
	fmul.s f13, f11, f15
	fmul.s f0, f14, f2
	flw f2, 8(a0)
	fmul.s f14, f12, f2
	fadd.s f1, f13, f0
	fadd.s f15, f1, f10
	fadd.s f13, f15, f14
	fsw f13, 0(s2)
	bge a7, s3, label21
	addi a6, a6, 4
	fmv.s f14, f11
	fmv.s f12, f10
	fmv.s f10, f13
	j label15
.p2align 2
label36:
	flw f11, 12(a0)
	sh2add a6, s2, t5
	sh2add s1, s2, t4
	addiw a7, a7, -28
	fmul.s f0, f15, f11
	flw f12, 16(a0)
	fmul.s f3, f14, f12
	fmul.s f4, f15, f12
	flw f14, 8(a0)
	fmul.s f15, f10, f14
	fadd.s f2, f0, f3
	fmul.s f3, f13, f14
	fadd.s f1, f2, f10
	fadd.s f0, f1, f3
	fsw f0, 0(a6)
	flw f1, 0(s1)
	fmul.s f13, f1, f11
	fadd.s f3, f13, f4
	fadd.s f2, f3, f0
	fmul.s f3, f1, f12
	fmul.s f1, f0, f14
	fadd.s f13, f2, f15
	fsw f13, -4(a6)
	flw f10, -4(s1)
	fmul.s f5, f10, f12
	fmul.s f15, f10, f11
	fadd.s f4, f15, f3
	fadd.s f2, f4, f13
	fmul.s f4, f13, f14
	fadd.s f15, f2, f1
	fsw f15, -8(a6)
	flw f0, -8(s1)
	fmul.s f1, f0, f11
	fadd.s f3, f1, f5
	fmul.s f5, f15, f14
	fadd.s f2, f3, f15
	fadd.s f10, f2, f4
	fmul.s f4, f0, f12
	fsw f10, -12(a6)
	flw f1, -12(s1)
	fmul.s f13, f1, f11
	fadd.s f3, f13, f4
	fmul.s f4, f1, f12
	fmul.s f1, f10, f14
	fadd.s f2, f3, f10
	fadd.s f13, f2, f5
	fsw f13, -16(a6)
	flw f0, -16(s1)
	fmul.s f15, f0, f11
	fadd.s f2, f15, f4
	fmul.s f4, f0, f12
	fmul.s f0, f13, f14
	fadd.s f3, f2, f13
	fadd.s f15, f3, f1
	fsw f15, -20(a6)
	flw f2, -20(s1)
	fmul.s f10, f2, f11
	fadd.s f1, f10, f4
	fmul.s f4, f2, f12
	fmul.s f2, f15, f14
	fadd.s f3, f1, f15
	fadd.s f10, f3, f0
	fsw f10, -24(a6)
	flw f1, -24(s1)
	fmul.s f5, f1, f12
	fmul.s f13, f1, f11
	fadd.s f0, f13, f4
	fadd.s f3, f0, f10
	fadd.s f13, f3, f2
	fmul.s f3, f10, f14
	fsw f13, -28(a6)
	flw f0, -28(s1)
	fmul.s f15, f0, f11
	fadd.s f4, f15, f5
	fadd.s f2, f4, f13
	fmul.s f4, f0, f12
	fadd.s f15, f2, f3
	fmul.s f3, f13, f14
	fsw f15, -32(a6)
	flw f1, -32(s1)
	fmul.s f10, f1, f11
	fadd.s f5, f10, f4
	fadd.s f2, f5, f15
	fadd.s f10, f2, f3
	fmul.s f3, f1, f12
	fmul.s f1, f15, f14
	fsw f10, -36(a6)
	flw f0, -36(s1)
	fmul.s f13, f0, f11
	fadd.s f4, f13, f3
	fmul.s f3, f0, f12
	fmul.s f12, f10, f14
	fadd.s f2, f4, f10
	fadd.s f13, f2, f1
	fsw f13, -40(a6)
	flw f15, -40(s1)
	fmv.s f14, f15
	fmul.s f1, f15, f11
	fadd.s f4, f1, f3
	fadd.s f2, f4, f13
	fadd.s f11, f2, f12
	fsw f11, -44(a6)
	sh2add a6, a7, t5
	flw f10, -44(s1)
.p2align 2
label37:
	flw f15, 12(a0)
	sh2add s1, a7, t4
	flw f1, 16(a0)
	addiw a7, a7, -1
	fmul.s f12, f10, f15
	fmul.s f0, f14, f1
	flw f1, 8(a0)
	fmul.s f14, f13, f1
	fadd.s f2, f12, f0
	fadd.s f15, f2, f11
	fadd.s f12, f15, f14
	fsw f12, 0(a6)
	flw f15, 0(s1)
	blt a7, zero, label751
	addi a6, a6, -4
	fmv.s f14, f10
	fmv.s f13, f11
	fmv.s f10, f15
	fmv.s f11, f12
	j label37
label446:
	mv t4, a3
	mv t6, a2
	mv t5, s0
	mv a6, zero
	li a7, 512
	blt zero, a7, label53
label762:
	mv t4, zero
	j label64
.p2align 2
label53:
	mv a7, t6
	mv s1, zero
	j label54
.p2align 2
label955:
	addiw a6, a6, 1
	addi t5, t5, 1080
	addi t6, t6, 1080
	addi t4, t4, 1080
	li a7, 512
	blt a6, a7, label53
	j label762
label64:
	li t5, 270
	blt t4, t5, label105
	j label964
.p2align 2
label54:
	flw f10, 0(a7)
	sh2add s2, s1, t4
	sh2add s3, s1, t5
	li s4, 256
	flw f12, 0(s2)
	fadd.s f11, f10, f12
	fsw f11, 0(s3)
	flw f10, 4(a7)
	flw f12, 4(s2)
	fadd.s f13, f10, f12
	fsw f13, 4(s3)
	flw f11, 8(a7)
	flw f12, 8(s2)
	fadd.s f13, f11, f12
	fsw f13, 8(s3)
	flw f10, 12(a7)
	flw f12, 12(s2)
	fadd.s f13, f10, f12
	fsw f13, 12(s3)
	flw f11, 16(a7)
	flw f12, 16(s2)
	fadd.s f13, f11, f12
	fsw f13, 16(s3)
	flw f10, 20(a7)
	flw f12, 20(s2)
	fadd.s f13, f10, f12
	fsw f13, 20(s3)
	flw f11, 24(a7)
	flw f12, 24(s2)
	fadd.s f13, f11, f12
	fsw f13, 24(s3)
	flw f10, 28(a7)
	flw f14, 28(s2)
	fadd.s f12, f10, f14
	fsw f12, 28(s3)
	flw f11, 32(a7)
	flw f13, 32(s2)
	fadd.s f12, f11, f13
	fsw f12, 32(s3)
	flw f10, 36(a7)
	flw f13, 36(s2)
	fadd.s f12, f10, f13
	fsw f12, 36(s3)
	flw f11, 40(a7)
	flw f13, 40(s2)
	fadd.s f12, f11, f13
	fsw f12, 40(s3)
	flw f10, 44(a7)
	flw f13, 44(s2)
	fadd.s f12, f10, f13
	fsw f12, 44(s3)
	flw f11, 48(a7)
	flw f10, 48(s2)
	fadd.s f14, f11, f10
	fsw f14, 48(s3)
	flw f12, 52(a7)
	flw f13, 52(s2)
	fadd.s f11, f12, f13
	fsw f11, 52(s3)
	flw f10, 56(a7)
	flw f12, 56(s2)
	fadd.s f13, f10, f12
	fsw f13, 56(s3)
	flw f11, 60(a7)
	flw f12, 60(s2)
	addiw s2, s1, 16
	fadd.s f10, f11, f12
	fsw f10, 60(s3)
	bge s2, s4, label58
	addi a7, a7, 64
	mv s1, s2
	j label54
.p2align 2
label58:
	sh2add a7, s2, t6
	addiw s1, s1, 28
	sh2add s3, s2, t4
	flw f10, 0(a7)
	sh2add s4, s2, t5
	flw f12, 0(s3)
	fadd.s f11, f10, f12
	fsw f11, 0(s4)
	flw f10, 4(a7)
	flw f12, 4(s3)
	fadd.s f13, f10, f12
	fsw f13, 4(s4)
	flw f11, 8(a7)
	flw f12, 8(s3)
	fadd.s f13, f11, f12
	fsw f13, 8(s4)
	flw f10, 12(a7)
	flw f12, 12(s3)
	fadd.s f13, f10, f12
	fsw f13, 12(s4)
	flw f11, 16(a7)
	flw f12, 16(s3)
	fadd.s f13, f11, f12
	fsw f13, 16(s4)
	flw f10, 20(a7)
	flw f12, 20(s3)
	fadd.s f13, f10, f12
	fsw f13, 20(s4)
	flw f11, 24(a7)
	flw f14, 24(s3)
	fadd.s f12, f11, f14
	fsw f12, 24(s4)
	flw f10, 28(a7)
	flw f13, 28(s3)
	fadd.s f12, f10, f13
	fsw f12, 28(s4)
	flw f11, 32(a7)
	flw f13, 32(s3)
	fadd.s f12, f11, f13
	fsw f12, 32(s4)
	flw f10, 36(a7)
	flw f13, 36(s3)
	fadd.s f12, f10, f13
	fsw f12, 36(s4)
	flw f11, 40(a7)
	flw f13, 40(s3)
	fadd.s f12, f11, f13
	fsw f12, 40(s4)
	flw f10, 44(a7)
	sh2add a7, s1, t6
	flw f11, 44(s3)
	fadd.s f12, f10, f11
	fsw f12, 44(s4)
.p2align 2
label59:
	flw f10, 0(a7)
	sh2add s3, s1, t4
	sh2add s2, s1, t5
	flw f12, 0(s3)
	addiw s1, s1, 1
	li s3, 270
	fadd.s f11, f10, f12
	fsw f11, 0(s2)
	bge s1, s3, label955
	addi a7, a7, 4
	j label59
label964:
	mv a4, zero
	li a5, 270
	blt zero, a5, label86
	j label68
.p2align 2
label105:
	fmv.w.x f12, zero
	mv t5, s0
	mv t6, zero
	fmv.s f13, f12
	fmv.s f0, f12
	j label106
.p2align 2
label119:
	addiw t4, t4, 1
	li t5, 270
	blt t4, t5, label105
	j label964
label68:
	mv a0, s0
	mv a1, zero
	li a4, 512
	blt zero, a4, label74
	j label85
.p2align 2
label86:
	lui t1, 135
	fmv.w.x f15, zero
	addiw t0, t1, -1080
	fmv.s f12, f15
	fmv.s f13, f15
	fmv.s f0, f15
	add a5, a3, t0
	li t0, 511
.p2align 2
label87:
	flw f10, 12(a0)
	sh2add t2, a4, a5
	mulw t3, t0, a1
	flw f11, 16(a0)
	fmul.s f14, f15, f10
	add t1, s0, t3
	fmul.s f2, f12, f11
	addi t4, t1, -1080
	flw f12, 8(a0)
	fmul.s f5, f13, f12
	fadd.s f3, f14, f2
	fmul.s f2, f0, f12
	fadd.s f1, f3, f13
	fmul.s f3, f15, f11
	fadd.s f14, f1, f2
	fsw f14, 0(t2)
	sh2add t2, a4, t1
	flw f1, 0(t2)
	addi t2, a5, -1080
	fmul.s f0, f1, f10
	sh2add t3, a4, t2
	sh2add t2, a4, t4
	fadd.s f4, f0, f3
	fadd.s f2, f4, f14
	fmul.s f4, f1, f11
	fmul.s f1, f14, f12
	fadd.s f15, f2, f5
	fsw f15, 0(t3)
	li t3, -135
	flw f0, 0(t2)
	slli t2, t3, 4
	fmul.s f13, f0, f10
	add t3, t1, t2
	add t4, a5, t2
	sh2add t5, a4, t4
	sh2add t4, a4, t3
	addi t3, t2, -1080
	fadd.s f3, f13, f4
	add t2, t1, t3
	fmul.s f4, f0, f11
	fmul.s f0, f15, f12
	fadd.s f2, f3, f15
	fadd.s f13, f2, f1
	fsw f13, 0(t5)
	flw f1, 0(t4)
	add t4, a5, t3
	fmul.s f14, f1, f10
	sh2add t5, a4, t4
	sh2add t4, a4, t2
	addi t2, t3, -1080
	add t3, t1, t2
	fadd.s f3, f14, f4
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fadd.s f2, f3, f13
	fadd.s f14, f2, f0
	fsw f14, 0(t5)
	flw f15, 0(t4)
	add t4, a5, t2
	fmul.s f0, f15, f10
	sh2add t5, a4, t4
	sh2add t4, a4, t3
	fadd.s f3, f0, f4
	fmul.s f4, f14, f12
	fadd.s f2, f3, f14
	fmul.s f3, f15, f11
	fadd.s f0, f2, f1
	fsw f0, 0(t5)
	flw f13, 0(t4)
	addi t4, t2, -1080
	fmul.s f2, f13, f10
	add t2, t1, t4
	add t3, a5, t4
	sh2add t5, a4, t3
	sh2add t3, a4, t2
	fadd.s f5, f2, f3
	fmul.s f3, f13, f11
	fadd.s f1, f5, f0
	fmul.s f5, f0, f12
	fadd.s f15, f1, f4
	fsw f15, 0(t5)
	flw f14, 0(t3)
	addi t3, t4, -1080
	fmul.s f1, f14, f10
	add t4, t1, t3
	add t2, a5, t3
	sh2add t5, a4, t2
	sh2add t2, a4, t4
	fadd.s f4, f1, f3
	fmul.s f3, f15, f12
	fadd.s f2, f4, f15
	fmul.s f4, f14, f11
	fadd.s f13, f2, f5
	fsw f13, 0(t5)
	flw f0, 0(t2)
	addi t2, t3, -1080
	fmul.s f1, f0, f10
	add t3, t1, t2
	add t4, a5, t2
	sh2add t5, a4, t4
	sh2add t4, a4, t3
	addi t3, t2, -1080
	fadd.s f5, f1, f4
	add t2, t1, t3
	fmul.s f4, f0, f11
	fmul.s f0, f13, f12
	fadd.s f2, f5, f13
	fadd.s f14, f2, f3
	fsw f14, 0(t5)
	flw f2, 0(t4)
	add t4, a5, t3
	fmul.s f15, f2, f10
	sh2add t5, a4, t4
	sh2add t4, a4, t2
	addi t2, t3, -1080
	add t3, t1, t2
	fadd.s f3, f15, f4
	fmul.s f4, f2, f11
	fmul.s f2, f14, f12
	fadd.s f1, f3, f14
	fadd.s f15, f1, f0
	fsw f15, 0(t5)
	add t5, a5, t2
	flw f1, 0(t4)
	sh2add t4, a4, t5
	fmul.s f0, f1, f10
	sh2add t5, a4, t3
	addi t3, t2, -1080
	fadd.s f3, f0, f4
	fmul.s f4, f1, f11
	fmul.s f1, f15, f12
	fadd.s f13, f3, f15
	fadd.s f0, f13, f2
	fsw f0, 0(t4)
	add t4, t1, t3
	flw f13, 0(t5)
	sh2add t2, a4, t4
	add t5, a5, t3
	addi t4, t3, -1080
	fmul.s f14, f13, f10
	sh2add t6, a4, t5
	fadd.s f3, f14, f4
	fmul.s f4, f13, f11
	fadd.s f2, f3, f0
	fmul.s f3, f0, f12
	fadd.s f14, f2, f1
	fsw f14, 0(t6)
	add t6, a5, t4
	flw f15, 0(t2)
	sh2add t5, a4, t6
	add t2, t1, t4
	fmul.s f2, f15, f10
	sh2add t3, a4, t2
	addi t2, t4, -1080
	add t6, a5, t2
	fadd.s f5, f2, f4
	fadd.s f1, f5, f14
	fmul.s f5, f15, f11
	fadd.s f13, f1, f3
	fmul.s f3, f14, f12
	fsw f13, 0(t5)
	sh2add t5, a4, t6
	flw f1, 0(t3)
	add t3, t1, t2
	fmul.s f2, f1, f10
	sh2add t4, a4, t3
	addi t3, t2, -1080
	add t2, t1, t3
	fadd.s f4, f2, f5
	fadd.s f0, f4, f13
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fadd.s f15, f0, f3
	fsw f15, 0(t5)
	add t5, a5, t3
	flw f0, 0(t4)
	sh2add t4, a4, t5
	fmul.s f14, f0, f10
	sh2add t5, a4, t2
	addi t2, t3, -1080
	add t3, t1, t2
	fadd.s f3, f14, f4
	fmul.s f4, f0, f11
	fmul.s f0, f15, f12
	fadd.s f2, f3, f15
	fadd.s f14, f2, f1
	fsw f14, 0(t4)
	add t4, a5, t2
	flw f1, 0(t5)
	sh2add t5, a4, t4
	fmul.s f13, f1, f10
	sh2add t4, a4, t3
	addi t3, t2, -1080
	fadd.s f3, f13, f4
	fmul.s f4, f1, f11
	fmul.s f11, f14, f12
	fadd.s f2, f3, f14
	fadd.s f13, f2, f0
	fsw f13, 0(t5)
	add t5, a5, t3
	flw f15, 0(t4)
	sh2add t6, a4, t5
	add t4, t1, t3
	fmul.s f2, f15, f10
	li t3, 15
	addiw t1, t0, -16
	sh2add t2, a4, t4
	fadd.s f3, f2, f4
	fadd.s f0, f3, f13
	fadd.s f10, f0, f11
	fsw f10, 0(t6)
	flw f11, 0(t2)
	ble t1, t3, label95
	li t2, -135
	fmv.s f0, f13
	fmv.s f12, f15
	slli t0, t2, 7
	fmv.s f13, f10
	fmv.s f15, f11
	add a5, a5, t0
	mv t0, t1
	j label87
.p2align 2
label1592:
	addiw a4, a4, 1
	li a5, 270
	blt a4, a5, label86
	j label68
.p2align 2
label106:
	sh2add a6, t4, t5
	add s2, t5, a4
	li s3, 135
	mulw s1, t6, a1
	flw f15, 0(a6)
	add a6, a2, s1
	flw f10, 0(a0)
	sh2add a7, t4, a6
	addi s1, t5, 1080
	flw f11, 4(a0)
	fmul.s f14, f15, f10
	fmul.s f3, f12, f11
	flw f12, 8(a0)
	fadd.s f2, f14, f3
	fmul.s f3, f0, f12
	fadd.s f1, f2, f13
	fadd.s f14, f1, f3
	fmul.s f3, f15, f11
	fmul.s f15, f13, f12
	fsw f14, 0(a7)
	sh2add a7, t4, s1
	addi s1, a6, 1080
	flw f1, 0(a7)
	sh2add a7, t4, s1
	fmul.s f0, f1, f10
	fadd.s f4, f0, f3
	fmul.s f3, f1, f11
	fmul.s f1, f14, f12
	fadd.s f2, f4, f14
	fadd.s f0, f2, f15
	fsw f0, 0(a7)
	sh2add a7, t4, s2
	flw f15, 0(a7)
	add a7, a6, a4
	fmul.s f13, f15, f10
	sh2add s2, t4, a7
	add a7, t5, a5
	sh2add s1, t4, a7
	fadd.s f4, f13, f3
	fmul.s f3, f0, f12
	fadd.s f2, f4, f0
	fmul.s f4, f15, f11
	fadd.s f13, f2, f1
	fsw f13, 0(s2)
	add s2, a6, a5
	flw f1, 0(s1)
	sh2add a7, t4, s2
	add s1, t5, t0
	fmul.s f14, f1, f10
	fadd.s f5, f14, f4
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fadd.s f2, f5, f13
	fadd.s f15, f2, f3
	fsw f15, 0(a7)
	sh2add a7, t4, s1
	flw f14, 0(a7)
	add a7, a6, t0
	fmul.s f0, f14, f10
	sh2add s2, t4, a7
	add a7, t5, t1
	sh2add s1, t4, a7
	fadd.s f3, f0, f4
	fmul.s f4, f14, f11
	fadd.s f2, f3, f15
	fmul.s f3, f15, f12
	fadd.s f0, f2, f1
	fsw f0, 0(s2)
	add s2, a6, t1
	flw f13, 0(s1)
	sh2add a7, t4, s2
	add s1, t5, t2
	add s2, t5, t3
	fmul.s f2, f13, f10
	fadd.s f5, f2, f4
	fmul.s f4, f13, f11
	fmul.s f13, f0, f12
	fadd.s f1, f5, f0
	fadd.s f14, f1, f3
	fsw f14, 0(a7)
	sh2add a7, t4, s1
	add s1, a6, t2
	flw f1, 0(a7)
	sh2add a7, t4, s1
	fmul.s f15, f1, f10
	slli s1, s3, 6
	fadd.s f3, f15, f4
	fmul.s f4, f1, f11
	fmul.s f1, f14, f12
	fadd.s f2, f3, f14
	fadd.s f15, f2, f13
	fsw f15, 0(a7)
	sh2add a7, t4, s2
	flw f0, 0(a7)
	add a7, a6, t3
	fmul.s f13, f0, f10
	sh2add s2, t4, a7
	add a7, t5, s1
	fadd.s f3, f13, f4
	fmul.s f4, f0, f11
	fmul.s f0, f15, f12
	fadd.s f2, f3, f15
	fadd.s f13, f2, f1
	fsw f13, 0(s2)
	sh2add s2, t4, a7
	add a7, a6, s1
	flw f1, 0(s2)
	sh2add s2, t4, a7
	fmul.s f14, f1, f10
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f3, f14, f4
	fadd.s f2, f3, f13
	fmul.s f3, f1, f11
	fmul.s f1, f13, f12
	fadd.s f14, f2, f0
	fsw f14, 0(s2)
	sh2add s2, t4, s3
	flw f0, 0(s2)
	add s2, a6, a7
	fmul.s f15, f0, f10
	sh2add s3, t4, s2
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f4, f15, f3
	fmul.s f3, f14, f12
	fadd.s f2, f4, f14
	fmul.s f4, f0, f11
	fadd.s f15, f2, f1
	fsw f15, 0(s3)
	flw f13, 0(a7)
	add a7, a6, s1
	fmul.s f1, f13, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f5, f1, f4
	fadd.s f2, f5, f15
	fmul.s f5, f15, f12
	fadd.s f0, f2, f3
	fmul.s f3, f13, f11
	fsw f0, 0(s2)
	sh2add s2, t4, s3
	add s3, a6, a7
	flw f14, 0(s2)
	sh2add s2, t4, s3
	fmul.s f1, f14, f10
	add s3, t5, s1
	sh2add a7, t4, s3
	fadd.s f4, f1, f3
	fadd.s f2, f4, f0
	fmul.s f4, f14, f11
	fmul.s f14, f0, f12
	fadd.s f13, f2, f5
	fsw f13, 0(s2)
	flw f1, 0(a7)
	add a7, a6, s1
	fmul.s f15, f1, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f3, f15, f4
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fadd.s f2, f3, f13
	fadd.s f15, f2, f14
	fsw f15, 0(s2)
	sh2add s2, t4, s3
	flw f0, 0(s2)
	add s2, a6, a7
	fmul.s f14, f0, f10
	sh2add s3, t4, s2
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f3, f14, f4
	fadd.s f2, f3, f15
	fmul.s f3, f0, f11
	fmul.s f0, f15, f12
	fadd.s f14, f2, f1
	fsw f14, 0(s3)
	flw f1, 0(a7)
	add a7, a6, s1
	fmul.s f13, f1, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	add s1, a6, a7
	add s3, t5, a7
	addiw a6, t6, 16
	li a7, 496
	fadd.s f4, f13, f3
	fmul.s f3, f1, f11
	fmul.s f11, f14, f12
	fadd.s f2, f4, f14
	fadd.s f13, f2, f0
	fsw f13, 0(s2)
	sh2add s2, t4, s3
	flw f15, 0(s2)
	sh2add s2, t4, s1
	fmul.s f2, f15, f10
	fadd.s f4, f2, f3
	fadd.s f0, f4, f13
	fadd.s f10, f0, f11
	fsw f10, 0(s2)
	bge a6, a7, label112
	li a7, 135
	fmv.s f0, f13
	fmv.s f12, f15
	slli t6, a7, 7
	fmv.s f13, f10
	add t5, t5, t6
	mv t6, a6
	j label106
.p2align 2
label74:
	mv a4, a2
	mv a5, zero
	j label75
.p2align 2
label83:
	addiw a1, a1, 1
	addi a0, a0, 1080
	addi a2, a2, 1080
	addi a3, a3, 1080
	li a4, 512
	blt a1, a4, label74
label85:
	li a0, 158
	jal _sysy_stoptime
	mv a1, s0
	li a2, 135
	slli a0, a2, 10
	jal putfarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label75:
	flw f10, 0(a4)
	sh2add t0, a5, a3
	sh2add t1, a5, a0
	li t2, 256
	flw f12, 0(t0)
	fadd.s f11, f10, f12
	fsw f11, 0(t1)
	flw f10, 4(a4)
	flw f13, 4(t0)
	fadd.s f12, f10, f13
	fsw f12, 4(t1)
	flw f11, 8(a4)
	flw f13, 8(t0)
	fadd.s f12, f11, f13
	fsw f12, 8(t1)
	flw f10, 12(a4)
	flw f13, 12(t0)
	fadd.s f12, f10, f13
	fsw f12, 12(t1)
	flw f11, 16(a4)
	flw f13, 16(t0)
	fadd.s f12, f11, f13
	fsw f12, 16(t1)
	flw f10, 20(a4)
	flw f11, 20(t0)
	fadd.s f13, f10, f11
	fsw f13, 20(t1)
	flw f12, 24(a4)
	flw f10, 24(t0)
	fadd.s f13, f12, f10
	fsw f13, 24(t1)
	flw f11, 28(a4)
	flw f12, 28(t0)
	fadd.s f13, f11, f12
	fsw f13, 28(t1)
	flw f10, 32(a4)
	flw f12, 32(t0)
	fadd.s f13, f10, f12
	fsw f13, 32(t1)
	flw f11, 36(a4)
	flw f12, 36(t0)
	fadd.s f14, f11, f12
	fsw f14, 36(t1)
	flw f10, 40(a4)
	flw f13, 40(t0)
	fadd.s f12, f10, f13
	fsw f12, 40(t1)
	flw f11, 44(a4)
	flw f13, 44(t0)
	fadd.s f12, f11, f13
	fsw f12, 44(t1)
	flw f10, 48(a4)
	flw f13, 48(t0)
	fadd.s f14, f10, f13
	fsw f14, 48(t1)
	flw f11, 52(a4)
	flw f12, 52(t0)
	fadd.s f13, f11, f12
	fsw f13, 52(t1)
	flw f10, 56(a4)
	flw f12, 56(t0)
	fadd.s f13, f10, f12
	fsw f13, 56(t1)
	flw f11, 60(a4)
	flw f10, 60(t0)
	addiw t0, a5, 16
	fadd.s f12, f11, f10
	fsw f12, 60(t1)
	bge t0, t2, label79
	addi a4, a4, 64
	mv a5, t0
	j label75
.p2align 2
label79:
	sh2add a4, t0, a2
	addiw a5, a5, 28
	sh2add t1, t0, a3
	flw f10, 0(a4)
	sh2add t2, t0, a0
	flw f11, 0(t1)
	fadd.s f12, f10, f11
	fsw f12, 0(t2)
	flw f11, 4(a4)
	flw f13, 4(t1)
	fadd.s f14, f11, f13
	fsw f14, 4(t2)
	flw f10, 8(a4)
	flw f12, 8(t1)
	fadd.s f13, f10, f12
	fsw f13, 8(t2)
	flw f11, 12(a4)
	flw f12, 12(t1)
	fadd.s f13, f11, f12
	fsw f13, 12(t2)
	flw f10, 16(a4)
	flw f12, 16(t1)
	fadd.s f13, f10, f12
	fsw f13, 16(t2)
	flw f11, 20(a4)
	flw f12, 20(t1)
	fadd.s f13, f11, f12
	fsw f13, 20(t2)
	flw f10, 24(a4)
	flw f12, 24(t1)
	fadd.s f14, f10, f12
	fsw f14, 24(t2)
	flw f11, 28(a4)
	flw f13, 28(t1)
	fadd.s f12, f11, f13
	fsw f12, 28(t2)
	flw f10, 32(a4)
	flw f13, 32(t1)
	fadd.s f12, f10, f13
	fsw f12, 32(t2)
	flw f11, 36(a4)
	flw f13, 36(t1)
	fadd.s f12, f11, f13
	fsw f12, 36(t2)
	flw f10, 40(a4)
	flw f13, 40(t1)
	fadd.s f12, f10, f13
	fsw f12, 40(t2)
	flw f11, 44(a4)
	sh2add a4, a5, a2
	flw f10, 44(t1)
	fadd.s f12, f11, f10
	fsw f12, 44(t2)
.p2align 2
label80:
	flw f10, 0(a4)
	sh2add t0, a5, a3
	sh2add t1, a5, a0
	flw f12, 0(t0)
	addiw a5, a5, 1
	li t0, 270
	fadd.s f11, f10, f12
	fsw f11, 0(t1)
	bge a5, t0, label83
	addi a4, a4, 4
	j label80
.p2align 2
label95:
	flw f12, 12(a0)
	mulw t3, t1, a1
	li t5, -135
	addiw t0, t0, -28
	flw f14, 16(a0)
	fmul.s f0, f11, f12
	add a5, s0, t3
	add t2, a3, t3
	fmul.s f4, f11, f14
	addi t3, t2, -1080
	fmul.s f3, f15, f14
	sh2add t1, a4, a5
	flw f15, 8(a0)
	sh2add t4, a4, t2
	fadd.s f2, f0, f3
	fmul.s f3, f13, f15
	fadd.s f1, f2, f10
	fadd.s f0, f1, f3
	fmul.s f3, f10, f15
	fsw f0, 0(t4)
	addi t4, a5, -1080
	flw f1, 0(t1)
	sh2add t1, a4, t3
	fmul.s f2, f1, f12
	sh2add t3, a4, t4
	fadd.s f5, f2, f4
	fmul.s f4, f1, f14
	fmul.s f1, f0, f15
	fadd.s f13, f5, f0
	fadd.s f11, f13, f3
	fsw f11, 0(t1)
	flw f13, 0(t3)
	slli t3, t5, 4
	fmul.s f10, f13, f12
	add t5, a5, t3
	add t1, t2, t3
	sh2add t4, a4, t1
	sh2add t1, a4, t5
	fadd.s f3, f10, f4
	fadd.s f2, f3, f11
	fmul.s f3, f13, f14
	fmul.s f13, f11, f15
	fadd.s f10, f2, f1
	fsw f10, 0(t4)
	flw f1, 0(t1)
	addi t1, t3, -1080
	fmul.s f0, f1, f12
	add t6, a5, t1
	add t4, t2, t1
	sh2add t3, a4, t6
	sh2add t5, a4, t4
	fadd.s f4, f0, f3
	fmul.s f3, f1, f14
	fmul.s f1, f10, f15
	fadd.s f2, f4, f10
	fadd.s f0, f2, f13
	fmul.s f5, f0, f15
	fsw f0, 0(t5)
	flw f11, 0(t3)
	addi t3, t1, -1080
	fmul.s f13, f11, f12
	add t6, a5, t3
	add t5, t2, t3
	sh2add t1, a4, t6
	sh2add t4, a4, t5
	fadd.s f4, f13, f3
	fmul.s f3, f11, f14
	fadd.s f2, f4, f0
	fadd.s f13, f2, f1
	fsw f13, 0(t4)
	flw f10, 0(t1)
	addi t1, t3, -1080
	fmul.s f1, f10, f12
	add t3, a5, t1
	add t5, t2, t1
	sh2add t4, a4, t5
	sh2add t5, a4, t3
	addi t3, t1, -1080
	fadd.s f4, f1, f3
	add t1, a5, t3
	fadd.s f2, f4, f13
	fmul.s f4, f13, f15
	fadd.s f11, f2, f5
	fmul.s f5, f10, f14
	fsw f11, 0(t4)
	add t4, t2, t3
	flw f1, 0(t5)
	sh2add t5, a4, t4
	fmul.s f2, f1, f12
	sh2add t4, a4, t1
	fadd.s f3, f2, f5
	fadd.s f0, f3, f11
	fadd.s f10, f0, f4
	fmul.s f4, f1, f14
	fmul.s f1, f11, f15
	fsw f10, 0(t5)
	flw f0, 0(t4)
	addi t4, t3, -1080
	fmul.s f13, f0, f12
	add t3, a5, t4
	add t1, t2, t4
	sh2add t5, a4, t1
	sh2add t1, a4, t3
	fadd.s f3, f13, f4
	fmul.s f4, f0, f14
	fmul.s f0, f10, f15
	fadd.s f2, f3, f10
	fadd.s f13, f2, f1
	fsw f13, 0(t5)
	flw f1, 0(t1)
	addi t1, t4, -1080
	fmul.s f11, f1, f12
	add t4, a5, t1
	add t5, t2, t1
	sh2add t3, a4, t5
	sh2add t5, a4, t4
	fadd.s f3, f11, f4
	fadd.s f2, f3, f13
	fmul.s f3, f1, f14
	fmul.s f1, f13, f15
	fadd.s f11, f2, f0
	fsw f11, 0(t3)
	addi t3, t1, -1080
	flw f0, 0(t5)
	add t4, a5, t3
	add t6, t2, t3
	sh2add t1, a4, t4
	fmul.s f10, f0, f12
	sh2add t5, a4, t6
	fadd.s f4, f10, f3
	fadd.s f2, f4, f11
	fmul.s f4, f0, f14
	fmul.s f0, f11, f15
	fadd.s f10, f2, f1
	fsw f10, 0(t5)
	flw f1, 0(t1)
	addi t1, t3, -1080
	fmul.s f13, f1, f12
	add t3, a5, t1
	add t4, t2, t1
	sh2add t5, a4, t4
	sh2add t4, a4, t3
	addi t3, t1, -1080
	fadd.s f3, f13, f4
	add t1, a5, t3
	fadd.s f2, f3, f10
	fadd.s f13, f2, f0
	fmul.s f2, f1, f14
	fmul.s f14, f10, f15
	fsw f13, 0(t5)
	add t5, t2, t3
	flw f0, 0(t4)
	sh2add t2, a4, t1
	sh2add t4, a4, t5
	fmul.s f11, f0, f12
	mulw t1, t0, a1
	add a5, a3, t1
	fadd.s f3, f11, f2
	fadd.s f12, f3, f13
	fadd.s f11, f12, f14
	fmv.s f14, f0
	fsw f11, 0(t4)
	flw f10, 0(t2)
.p2align 2
label96:
	flw f15, 12(a0)
	sh2add t1, a4, a5
	mulw t3, t0, a1
	flw f0, 16(a0)
	fmul.s f12, f10, f15
	addiw t0, t0, -1
	add t2, s0, t3
	fmul.s f2, f14, f0
	flw f0, 8(a0)
	fmul.s f14, f13, f0
	fadd.s f1, f12, f2
	fadd.s f15, f1, f11
	fadd.s f12, f15, f14
	fsw f12, 0(t1)
	sh2add t1, a4, t2
	flw f15, 0(t1)
	blt t0, zero, label1592
	addi a5, a5, -1080
	fmv.s f14, f10
	fmv.s f13, f11
	fmv.s f10, f15
	fmv.s f11, f12
	j label96
.p2align 2
label112:
	mulw a7, a6, a1
	li s3, 135
	addiw t6, t6, 28
	add t5, s0, a7
	addi s1, t5, 1080
	sh2add a6, t4, t5
	flw f1, 0(a6)
	add a6, a2, a7
	flw f11, 0(a0)
	sh2add s2, t4, a6
	sh2add a7, t4, s1
	flw f12, 4(a0)
	fmul.s f0, f1, f11
	flw f14, 8(a0)
	fmul.s f4, f15, f12
	fmul.s f15, f13, f14
	fadd.s f3, f0, f4
	fadd.s f2, f3, f10
	fmul.s f3, f1, f12
	fmul.s f1, f10, f14
	fadd.s f0, f2, f15
	fsw f0, 0(s2)
	flw f13, 0(a7)
	addi a7, a6, 1080
	fmul.s f15, f13, f11
	fmul.s f5, f13, f12
	sh2add s1, t4, a7
	add a7, t5, a4
	sh2add s2, t4, a7
	fadd.s f4, f15, f3
	add a7, a6, a4
	fmul.s f3, f0, f14
	fadd.s f2, f4, f0
	fadd.s f15, f2, f1
	fsw f15, 0(s1)
	flw f10, 0(s2)
	sh2add s2, t4, a7
	fmul.s f2, f10, f11
	add a7, t5, a5
	sh2add s1, t4, a7
	add a7, a6, a5
	fadd.s f4, f2, f5
	fmul.s f5, f10, f12
	fadd.s f1, f4, f15
	fadd.s f13, f1, f3
	fmul.s f3, f15, f14
	fsw f13, 0(s2)
	flw f0, 0(s1)
	sh2add s1, t4, a7
	fmul.s f2, f0, f11
	add a7, t5, t0
	sh2add s2, t4, a7
	add a7, a6, t0
	fadd.s f4, f2, f5
	fmul.s f5, f0, f12
	fadd.s f1, f4, f13
	fadd.s f10, f1, f3
	fmul.s f3, f13, f14
	fsw f10, 0(s1)
	sh2add s1, t4, a7
	flw f15, 0(s2)
	add a7, t5, t1
	fmul.s f2, f15, f11
	sh2add s2, t4, a7
	fadd.s f4, f2, f5
	fadd.s f1, f4, f10
	fmul.s f4, f15, f12
	fmul.s f15, f10, f14
	fadd.s f0, f1, f3
	fsw f0, 0(s1)
	add s1, t5, t2
	flw f1, 0(s2)
	add s2, a6, t1
	fmul.s f13, f1, f11
	sh2add a7, t4, s2
	add s2, a6, t2
	fadd.s f3, f13, f4
	fadd.s f2, f3, f0
	fmul.s f3, f1, f12
	fmul.s f1, f0, f14
	fadd.s f13, f2, f15
	fsw f13, 0(a7)
	sh2add a7, t4, s1
	add s1, t5, t3
	flw f10, 0(a7)
	sh2add a7, t4, s2
	fmul.s f15, f10, f11
	fadd.s f4, f15, f3
	fmul.s f3, f13, f14
	fadd.s f2, f4, f13
	fmul.s f4, f10, f12
	fadd.s f15, f2, f1
	fsw f15, 0(a7)
	sh2add a7, t4, s1
	add s1, a6, t3
	flw f0, 0(a7)
	sh2add a7, t4, s1
	fmul.s f2, f0, f11
	slli s1, s3, 6
	add s2, t5, s1
	fadd.s f5, f2, f4
	fmul.s f4, f0, f12
	fmul.s f0, f15, f14
	fadd.s f1, f5, f15
	fadd.s f10, f1, f3
	fsw f10, 0(a7)
	sh2add a7, t4, s2
	flw f1, 0(a7)
	add a7, a6, s1
	fmul.s f13, f1, f11
	sh2add s2, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f3, f13, f4
	fadd.s f2, f3, f10
	fmul.s f3, f1, f12
	fmul.s f1, f10, f14
	fadd.s f13, f2, f0
	fsw f13, 0(s2)
	sh2add s2, t4, s3
	flw f0, 0(s2)
	add s2, a6, a7
	fmul.s f15, f0, f11
	sh2add s3, t4, s2
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f4, f15, f3
	fadd.s f2, f4, f13
	fmul.s f4, f0, f12
	fmul.s f0, f13, f14
	fadd.s f15, f2, f1
	fsw f15, 0(s3)
	flw f10, 0(a7)
	add a7, a6, s1
	fmul.s f2, f10, f11
	sh2add s2, t4, a7
	addi a7, s1, 1080
	add s1, a6, a7
	add s3, t5, a7
	mulw a6, t6, a1
	sh2add t5, t4, s1
	fadd.s f3, f2, f4
	fmul.s f2, f10, f12
	fmul.s f12, f15, f14
	fadd.s f1, f3, f15
	fadd.s f13, f1, f0
	fsw f13, 0(s2)
	sh2add s2, t4, s3
	flw f0, 0(s2)
	fmv.s f14, f0
	fmul.s f1, f0, f11
	fadd.s f3, f1, f2
	fadd.s f11, f3, f13
	fadd.s f10, f11, f12
	fsw f10, 0(t5)
	add t5, s0, a6
.p2align 2
label113:
	sh2add a6, t4, t5
	flw f11, 0(a6)
	mulw a6, t6, a1
	flw f15, 0(a0)
	addiw t6, t6, 1
	add s1, a2, a6
	flw f0, 4(a0)
	fmul.s f12, f11, f15
	li a6, 512
	sh2add a7, t4, s1
	fmul.s f1, f14, f0
	flw f14, 8(a0)
	fmul.s f0, f13, f14
	fadd.s f2, f12, f1
	fadd.s f15, f2, f10
	fadd.s f12, f15, f0
	fsw f12, 0(a7)
	bge t6, a6, label119
	addi t5, t5, 1080
	fmv.s f14, f11
	fmv.s f13, f10
	fmv.s f10, f12
	j label113
