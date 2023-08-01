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
	addi sp, sp, -88
pcrel2197:
	auipc a1, %pcrel_hi(imgIn)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a1, %pcrel_lo(pcrel2197)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s4, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	mv a0, s1
	jal getfarray
	li a0, 156
	jal _sysy_starttime
	li t0, -2160
	li s2, 496
pcrel2198:
	auipc a3, %pcrel_hi(my_y1)
pcrel2199:
	auipc a0, %pcrel_hi(my_y2)
	li t1, 15
	li a4, 270
	mv s4, zero
pcrel2200:
	auipc a1, %pcrel_hi(imgOut)
	li s3, 13
	addi a2, a3, %pcrel_lo(pcrel2198)
	addi s0, a1, %pcrel_lo(pcrel2200)
	addi a3, a0, %pcrel_lo(pcrel2199)
pcrel2201:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	li a0, 1080
	addi a5, a1, %pcrel_lo(pcrel2201)
	slli t2, a0, 3
	slli t3, a0, 1
	li a1, 256
	addi t4, t3, 1080
	addi t5, t4, 1080
	addi t6, t5, 1080
	addi a6, t6, 1080
	addi a7, a6, 1080
	li s5, 512
	blt zero, s5, label4
label93:
	mv s4, zero
	j label17
.p2align 2
label4:
	mulw s7, s4, a0
	fmv.w.x f12, zero
	add s6, s1, s7
	add s5, a2, s7
	fmv.s f13, f12
	fmv.s f14, f12
	mv s7, zero
.p2align 2
label5:
	sh2add s8, s7, s6
	sh2add s9, s7, s5
	flw f15, 0(s8)
	flw f10, 0(a5)
	flw f11, 4(a5)
	fmul.s f0, f15, f10
	fmul.s f12, f12, f11
	fmul.s f2, f15, f11
	fadd.s f1, f0, f12
	flw f12, 8(a5)
	fadd.s f0, f1, f13
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(s9)
	flw f0, 4(s8)
	fmul.s f1, f0, f10
	fmul.s f0, f0, f11
	fadd.s f3, f1, f2
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f1
	fsw f13, 4(s9)
	flw f1, 8(s8)
	fmul.s f15, f1, f10
	fadd.s f2, f15, f0
	fmul.s f0, f14, f12
	fadd.s f15, f2, f13
	fmul.s f2, f1, f11
	fadd.s f14, f15, f0
	fsw f14, 8(s9)
	flw f15, 12(s8)
	fmul.s f0, f15, f10
	fadd.s f1, f0, f2
	fmul.s f2, f13, f12
	fadd.s f0, f1, f14
	fadd.s f13, f0, f2
	fmul.s f2, f15, f11
	fsw f13, 12(s9)
	flw f0, 16(s8)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fmul.s f13, f13, f12
	fmul.s f3, f0, f11
	fadd.s f14, f15, f1
	fsw f14, 16(s9)
	flw f1, 20(s8)
	fmul.s f15, f1, f10
	fadd.s f2, f15, f3
	fmul.s f3, f1, f11
	fadd.s f0, f2, f14
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fsw f15, 20(s9)
	flw f0, 24(s8)
	fmul.s f13, f0, f10
	fadd.s f2, f13, f3
	fadd.s f1, f2, f15
	fmul.s f15, f15, f12
	fmul.s f2, f0, f11
	fadd.s f13, f1, f14
	fsw f13, 24(s9)
	flw f1, 28(s8)
	fmul.s f14, f1, f10
	fadd.s f3, f14, f2
	fmul.s f2, f1, f11
	fadd.s f0, f3, f13
	fmul.s f13, f13, f12
	fadd.s f14, f0, f15
	fsw f14, 28(s9)
	flw f0, 32(s8)
	fmul.s f15, f0, f10
	fadd.s f3, f15, f2
	fmul.s f2, f0, f11
	fadd.s f1, f3, f14
	fmul.s f14, f14, f12
	fadd.s f15, f1, f13
	fsw f15, 32(s9)
	flw f1, 36(s8)
	fmul.s f13, f1, f10
	fadd.s f3, f13, f2
	fmul.s f2, f1, f11
	fadd.s f0, f3, f15
	fmul.s f15, f15, f12
	fadd.s f13, f0, f14
	fsw f13, 36(s9)
	flw f0, 40(s8)
	fmul.s f14, f0, f10
	fadd.s f3, f14, f2
	fmul.s f2, f0, f11
	fadd.s f1, f3, f13
	fadd.s f14, f1, f15
	fsw f14, 40(s9)
	flw f15, 44(s8)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fadd.s f13, f0, f1
	fsw f13, 44(s9)
	flw f0, 48(s8)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fadd.s f14, f15, f1
	fsw f14, 48(s9)
	flw f15, 52(s8)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fmul.s f3, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 52(s9)
	flw f0, 56(s8)
	fmul.s f11, f0, f11
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, 56(s9)
	flw f15, 60(s8)
	fmul.s f10, f15, f10
	fadd.s f0, f10, f11
	fmul.s f11, f13, f12
	fadd.s f10, f0, f14
	fadd.s f13, f10, f11
	fsw f13, 60(s9)
	addiw s9, s7, 16
	bge s9, a1, label10
	fmv.s f12, f15
	mv s7, s9
	j label5
.p2align 2
label403:
	addiw s4, s4, 1
	li s5, 512
	blt s4, s5, label4
	j label93
label17:
	li s5, 512
	blt s4, s5, label68
	j label409
.p2align 2
label10:
	sh2add s8, s9, s6
	addiw s7, s7, 28
	flw f0, 0(s8)
	sh2add s9, s9, s5
	flw f10, 0(a5)
	flw f11, 4(a5)
	fmul.s f12, f0, f10
	fmul.s f2, f15, f11
	fmul.s f3, f0, f11
	fadd.s f1, f12, f2
	flw f12, 8(a5)
	fadd.s f15, f1, f13
	fmul.s f1, f14, f12
	fadd.s f14, f15, f1
	fsw f14, 0(s9)
	flw f15, 4(s8)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f3, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fadd.s f13, f0, f1
	fsw f13, 4(s9)
	flw f0, 8(s8)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fmul.s f2, f0, f11
	fadd.s f14, f15, f1
	fsw f14, 8(s9)
	flw f15, 12(s8)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fadd.s f13, f0, f1
	fsw f13, 12(s9)
	flw f0, 16(s8)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fadd.s f14, f15, f1
	fsw f14, 16(s9)
	flw f15, 20(s8)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fadd.s f13, f0, f1
	fsw f13, 20(s9)
	flw f0, 24(s8)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fmul.s f3, f0, f11
	fadd.s f14, f15, f1
	fsw f14, 24(s9)
	flw f15, 28(s8)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fmul.s f3, f15, f11
	fadd.s f0, f2, f14
	fadd.s f13, f0, f1
	fsw f13, 28(s9)
	flw f0, 32(s8)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f3, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, 32(s9)
	flw f15, 36(s8)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 36(s9)
	flw f0, 40(s8)
	fmul.s f1, f0, f10
	fmul.s f0, f0, f11
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fmul.s f12, f13, f12
	fadd.s f15, f3, f13
	fadd.s f14, f15, f1
	fsw f14, 40(s9)
	flw f15, 44(s8)
	fmv.s f13, f15
	fmul.s f10, f15, f10
	fadd.s f1, f10, f0
	fadd.s f11, f1, f14
	fadd.s f10, f11, f12
	fmv.s f12, f14
	fsw f10, 44(s9)
.p2align 2
label11:
	sh2add s8, s7, s6
	flw f11, 0(s8)
	sh2add s8, s7, s5
	flw f15, 0(a5)
	addiw s7, s7, 1
	flw f0, 4(a5)
	fmul.s f14, f11, f15
	fmul.s f15, f13, f0
	fadd.s f14, f14, f15
	flw f15, 8(a5)
	fmul.s f12, f12, f15
	fadd.s f13, f14, f10
	fadd.s f14, f13, f12
	fsw f14, 0(s8)
	bge s7, a4, label403
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label11
label409:
	mv s1, zero
	li s3, 512
	blt zero, s3, label21
	j label413
.p2align 2
label68:
	mulw s7, s4, a0
	fmv.w.x f15, zero
	add s6, s1, s7
	add s5, a3, s7
	fmv.s f12, f15
	fmv.s f13, f15
	fmv.s f14, f15
	li s7, 269
	j label69
.p2align 2
label1986:
	addiw s4, s4, 1
	li s5, 512
	blt s4, s5, label68
	j label409
label413:
	mv s1, zero
	j label28
.p2align 2
label21:
	mulw s5, s1, a0
	mv s6, zero
	add s4, a2, s5
	add s3, s0, s5
	add s5, a3, s5
.p2align 2
label22:
	sh2add s7, s6, s4
	sh2add s8, s6, s5
	flw f10, 0(s7)
	sh2add s9, s6, s3
	flw f11, 0(s8)
	fadd.s f10, f10, f11
	fsw f10, 0(s9)
	flw f10, 4(s7)
	flw f11, 4(s8)
	fadd.s f12, f10, f11
	fsw f12, 4(s9)
	flw f10, 8(s7)
	flw f12, 8(s8)
	fadd.s f11, f10, f12
	fsw f11, 8(s9)
	flw f10, 12(s7)
	flw f11, 12(s8)
	fadd.s f12, f10, f11
	fsw f12, 12(s9)
	flw f10, 16(s7)
	flw f11, 16(s8)
	fadd.s f12, f10, f11
	fsw f12, 16(s9)
	flw f10, 20(s7)
	flw f12, 20(s8)
	fadd.s f11, f10, f12
	fsw f11, 20(s9)
	flw f10, 24(s7)
	flw f11, 24(s8)
	fadd.s f12, f10, f11
	fsw f12, 24(s9)
	flw f10, 28(s7)
	flw f11, 28(s8)
	fadd.s f12, f10, f11
	fsw f12, 28(s9)
	flw f10, 32(s7)
	flw f12, 32(s8)
	fadd.s f11, f10, f12
	fsw f11, 32(s9)
	flw f10, 36(s7)
	flw f12, 36(s8)
	fadd.s f11, f10, f12
	fsw f11, 36(s9)
	flw f10, 40(s7)
	flw f11, 40(s8)
	fadd.s f12, f10, f11
	fsw f12, 40(s9)
	flw f10, 44(s7)
	flw f12, 44(s8)
	fadd.s f11, f10, f12
	fsw f11, 44(s9)
	flw f10, 48(s7)
	flw f11, 48(s8)
	fadd.s f12, f10, f11
	fsw f12, 48(s9)
	flw f10, 52(s7)
	flw f11, 52(s8)
	fadd.s f12, f10, f11
	fsw f12, 52(s9)
	flw f10, 56(s7)
	flw f11, 56(s8)
	fadd.s f12, f10, f11
	fsw f12, 56(s9)
	flw f10, 60(s7)
	flw f11, 60(s8)
	fadd.s f12, f10, f11
	fsw f12, 60(s9)
	addiw s9, s6, 16
	bge s9, a1, label24
	mv s6, s9
	j label22
.p2align 2
label24:
	sh2add s7, s9, s4
	addiw s6, s6, 28
	sh2add s8, s9, s5
	flw f10, 0(s7)
	sh2add s9, s9, s3
	flw f11, 0(s8)
	fadd.s f10, f10, f11
	fsw f10, 0(s9)
	flw f10, 4(s7)
	flw f12, 4(s8)
	fadd.s f11, f10, f12
	fsw f11, 4(s9)
	flw f10, 8(s7)
	flw f12, 8(s8)
	fadd.s f11, f10, f12
	fsw f11, 8(s9)
	flw f10, 12(s7)
	flw f11, 12(s8)
	fadd.s f12, f10, f11
	fsw f12, 12(s9)
	flw f10, 16(s7)
	flw f12, 16(s8)
	fadd.s f11, f10, f12
	fsw f11, 16(s9)
	flw f10, 20(s7)
	flw f12, 20(s8)
	fadd.s f11, f10, f12
	fsw f11, 20(s9)
	flw f10, 24(s7)
	flw f11, 24(s8)
	fadd.s f12, f10, f11
	fsw f12, 24(s9)
	flw f10, 28(s7)
	flw f11, 28(s8)
	fadd.s f12, f10, f11
	fsw f12, 28(s9)
	flw f10, 32(s7)
	flw f12, 32(s8)
	fadd.s f11, f10, f12
	fsw f11, 32(s9)
	flw f10, 36(s7)
	flw f12, 36(s8)
	fadd.s f11, f10, f12
	fsw f11, 36(s9)
	flw f10, 40(s7)
	flw f11, 40(s8)
	fadd.s f12, f10, f11
	fsw f12, 40(s9)
	flw f10, 44(s7)
	flw f12, 44(s8)
	fadd.s f11, f10, f12
	fsw f11, 44(s9)
.p2align 2
label25:
	sh2add s7, s6, s4
	sh2add s8, s6, s5
	flw f10, 0(s7)
	sh2add s7, s6, s3
	flw f11, 0(s8)
	addiw s6, s6, 1
	fadd.s f10, f10, f11
	fsw f10, 0(s7)
	blt s6, a4, label25
	addiw s1, s1, 1
	li s3, 512
	blt s1, s3, label21
	j label413
label28:
	blt s1, a4, label619
	j label618
.p2align 2
label69:
	flw f10, 12(a5)
	sh2add s8, s7, s5
	sh2add s9, s7, s6
	flw f11, 16(a5)
	fmul.s f0, f15, f10
	fmul.s f12, f12, f11
	fmul.s f3, f15, f11
	fadd.s f1, f0, f12
	flw f12, 8(a5)
	fadd.s f0, f1, f13
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(s8)
	flw f0, 0(s9)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f3, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fmul.s f14, f14, f12
	fadd.s f13, f15, f1
	fsw f13, -4(s8)
	flw f1, -4(s9)
	fmul.s f15, f1, f10
	fadd.s f2, f15, f3
	fmul.s f3, f1, f11
	fadd.s f0, f2, f13
	fmul.s f13, f13, f12
	fadd.s f15, f0, f14
	fsw f15, -8(s8)
	flw f0, -8(s9)
	fmul.s f14, f0, f10
	fadd.s f2, f14, f3
	fmul.s f3, f0, f11
	fadd.s f1, f2, f15
	fmul.s f15, f15, f12
	fadd.s f14, f1, f13
	fsw f14, -12(s8)
	flw f1, -12(s9)
	fmul.s f13, f1, f10
	fadd.s f2, f13, f3
	fadd.s f0, f2, f14
	fmul.s f2, f1, f11
	fadd.s f13, f0, f15
	fsw f13, -16(s8)
	flw f0, -16(s9)
	fmul.s f15, f0, f10
	fadd.s f1, f15, f2
	fmul.s f2, f14, f12
	fadd.s f15, f1, f13
	fadd.s f14, f15, f2
	fmul.s f2, f0, f11
	fsw f14, -20(s8)
	flw f15, -20(s9)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fadd.s f13, f0, f1
	fsw f13, -24(s8)
	flw f1, -24(s9)
	fmul.s f0, f1, f10
	fmul.s f1, f1, f11
	fadd.s f3, f0, f2
	fmul.s f0, f14, f12
	fadd.s f15, f3, f13
	fadd.s f14, f15, f0
	fsw f14, -28(s8)
	flw f0, -28(s9)
	fmul.s f15, f0, f10
	fadd.s f2, f15, f1
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fmul.s f2, f0, f11
	fadd.s f13, f15, f1
	fsw f13, -32(s8)
	flw f15, -32(s9)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fmul.s f13, f13, f12
	fadd.s f14, f0, f1
	fsw f14, -36(s8)
	flw f1, -36(s9)
	fmul.s f3, f1, f11
	fmul.s f0, f1, f10
	fadd.s f15, f0, f2
	fadd.s f0, f15, f14
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fsw f15, -40(s8)
	flw f0, -40(s9)
	fmul.s f13, f0, f10
	fadd.s f2, f13, f3
	fadd.s f1, f2, f15
	fmul.s f15, f15, f12
	fmul.s f2, f0, f11
	fadd.s f13, f1, f14
	fsw f13, -44(s8)
	flw f1, -44(s9)
	fmul.s f14, f1, f10
	fmul.s f1, f1, f11
	fadd.s f3, f14, f2
	fadd.s f0, f3, f13
	fadd.s f14, f0, f15
	fsw f14, -48(s8)
	flw f15, -48(s9)
	fmul.s f3, f15, f11
	fmul.s f0, f15, f10
	fadd.s f2, f0, f1
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fadd.s f13, f0, f1
	fsw f13, -52(s8)
	flw f0, -52(s9)
	fmul.s f11, f0, f11
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, -56(s8)
	flw f15, -56(s9)
	fmul.s f10, f15, f10
	fadd.s f0, f10, f11
	fmul.s f11, f13, f12
	fadd.s f10, f0, f14
	fadd.s f13, f10, f11
	fsw f13, -60(s8)
	addiw s8, s7, -16
	flw f10, -60(s9)
	ble s8, s3, label75
	fmv.s f12, f15
	mv s7, s8
	fmv.s f15, f10
	j label69
.p2align 2
label75:
	flw f11, 12(a5)
	sh2add s9, s8, s5
	addiw s7, s7, -28
	sh2add s8, s8, s6
	fmul.s f0, f10, f11
	flw f12, 16(a5)
	fmul.s f15, f15, f12
	fmul.s f2, f10, f12
	fadd.s f1, f0, f15
	flw f15, 8(a5)
	fadd.s f0, f1, f13
	fmul.s f1, f14, f15
	fadd.s f14, f0, f1
	fsw f14, 0(s9)
	flw f1, 0(s8)
	fmul.s f0, f1, f11
	fadd.s f3, f0, f2
	fmul.s f0, f13, f15
	fadd.s f10, f3, f14
	fmul.s f14, f14, f15
	fmul.s f3, f1, f12
	fadd.s f13, f10, f0
	fsw f13, -4(s9)
	flw f0, -4(s8)
	fmul.s f10, f0, f11
	fadd.s f2, f10, f3
	fmul.s f3, f0, f12
	fadd.s f1, f2, f13
	fadd.s f10, f1, f14
	fsw f10, -8(s9)
	flw f14, -8(s8)
	fmul.s f1, f14, f11
	fadd.s f2, f1, f3
	fmul.s f1, f13, f15
	fadd.s f0, f2, f10
	fmul.s f2, f14, f12
	fadd.s f13, f0, f1
	fsw f13, -12(s9)
	flw f1, -12(s8)
	fmul.s f0, f1, f11
	fadd.s f3, f0, f2
	fmul.s f2, f1, f12
	fmul.s f0, f10, f15
	fadd.s f14, f3, f13
	fmul.s f13, f13, f15
	fadd.s f10, f14, f0
	fsw f10, -16(s9)
	flw f0, -16(s8)
	fmul.s f14, f0, f11
	fadd.s f3, f14, f2
	fmul.s f2, f0, f12
	fadd.s f1, f3, f10
	fmul.s f10, f10, f15
	fadd.s f14, f1, f13
	fsw f14, -20(s9)
	flw f1, -20(s8)
	fmul.s f13, f1, f11
	fadd.s f3, f13, f2
	fadd.s f0, f3, f14
	fmul.s f14, f14, f15
	fmul.s f3, f1, f12
	fadd.s f13, f0, f10
	fsw f13, -24(s9)
	flw f0, -24(s8)
	fmul.s f10, f0, f11
	fmul.s f0, f0, f12
	fadd.s f2, f10, f3
	fadd.s f1, f2, f13
	fadd.s f10, f1, f14
	fsw f10, -28(s9)
	flw f1, -28(s8)
	fmul.s f14, f1, f11
	fmul.s f1, f1, f12
	fadd.s f2, f14, f0
	fmul.s f0, f13, f15
	fadd.s f14, f2, f10
	fadd.s f13, f14, f0
	fsw f13, -32(s9)
	flw f14, -32(s8)
	fmul.s f3, f14, f12
	fmul.s f0, f14, f11
	fadd.s f2, f0, f1
	fmul.s f1, f10, f15
	fadd.s f0, f2, f13
	fadd.s f10, f0, f1
	fsw f10, -36(s9)
	flw f0, -36(s8)
	fmul.s f1, f0, f11
	fmul.s f0, f0, f12
	fadd.s f2, f1, f3
	fmul.s f1, f13, f15
	fadd.s f14, f2, f10
	fmul.s f10, f10, f15
	fadd.s f13, f14, f1
	fsw f13, -40(s9)
	flw f14, -40(s8)
	fmul.s f11, f14, f11
	fadd.s f1, f11, f0
	fadd.s f12, f1, f13
	fadd.s f11, f12, f10
	fmv.s f12, f13
	fsw f11, -44(s9)
	flw f10, -44(s8)
.p2align 2
label76:
	flw f0, 12(a5)
	sh2add s9, s7, s5
	sh2add s8, s7, s6
	flw f15, 16(a5)
	fmul.s f13, f10, f0
	addiw s7, s7, -1
	fmul.s f14, f14, f15
	fadd.s f0, f13, f14
	flw f14, 8(a5)
	fmul.s f12, f12, f14
	fadd.s f13, f0, f11
	fadd.s f13, f13, f12
	fsw f13, 0(s9)
	flw f15, 0(s8)
	blt s7, zero, label1986
	fmv.s f14, f10
	fmv.s f12, f11
	fmv.s f10, f15
	fmv.s f11, f13
	j label76
label618:
	mv t2, zero
	j label30
.p2align 2
label619:
	fmv.w.x f0, zero
	mv s3, zero
	fmv.s f13, f0
	fmv.s f14, f0
	j label56
label30:
	blt t2, a4, label624
	j label623
.p2align 2
label1674:
	addiw s1, s1, 1
	blt s1, a4, label619
	j label618
.p2align 2
label56:
	mulw s5, s3, a0
	add s4, s0, s5
	add s5, a2, s5
	addi s7, s4, 1080
	sh2add s6, s1, s4
	flw f15, 0(s6)
	sh2add s6, s1, s5
	flw f10, 0(a5)
	flw f11, 4(a5)
	fmul.s f12, f15, f10
	fmul.s f2, f0, f11
	fmul.s f15, f15, f11
	fadd.s f1, f12, f2
	flw f12, 8(a5)
	fadd.s f0, f1, f13
	fmul.s f13, f13, f12
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(s6)
	sh2add s6, s1, s7
	addi s7, s5, 1080
	flw f1, 0(s6)
	sh2add s6, s1, s7
	fmul.s f0, f1, f10
	add s7, s4, t3
	fadd.s f2, f0, f15
	fadd.s f0, f2, f14
	fmul.s f14, f14, f12
	fmul.s f2, f1, f11
	fadd.s f15, f0, f13
	fsw f15, 0(s6)
	sh2add s6, s1, s7
	add s7, s5, t3
	flw f0, 0(s6)
	sh2add s6, s1, s7
	fmul.s f13, f0, f10
	add s7, s4, t4
	fadd.s f3, f13, f2
	fadd.s f1, f3, f15
	fmul.s f3, f0, f11
	fmul.s f15, f15, f12
	fadd.s f13, f1, f14
	fsw f13, 0(s6)
	sh2add s6, s1, s7
	add s7, s4, t5
	flw f1, 0(s6)
	add s6, s5, t4
	fmul.s f14, f1, f10
	sh2add s8, s1, s6
	fmul.s f1, f1, f11
	sh2add s6, s1, s7
	fadd.s f2, f14, f3
	fadd.s f0, f2, f13
	fadd.s f14, f0, f15
	fsw f14, 0(s8)
	add s8, s4, a7
	flw f0, 0(s6)
	add s6, s5, t5
	fmul.s f15, f0, f10
	fmul.s f3, f0, f11
	sh2add s7, s1, s6
	add s6, s4, t6
	fadd.s f2, f15, f1
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f1
	fsw f13, 0(s7)
	sh2add s7, s1, s6
	add s6, s5, t6
	flw f15, 0(s7)
	sh2add s7, s1, s6
	fmul.s f1, f15, f10
	add s6, s4, a6
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fmul.s f2, f15, f11
	fadd.s f14, f0, f1
	fsw f14, 0(s7)
	sh2add s7, s1, s6
	add s6, s5, a6
	flw f1, 0(s7)
	sh2add s7, s1, s6
	fmul.s f0, f1, f10
	sh2add s6, s1, s8
	fmul.s f1, f1, f11
	fadd.s f3, f0, f2
	fmul.s f0, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f0
	fsw f13, 0(s7)
	add s7, s4, t2
	flw f0, 0(s6)
	add s6, s5, a7
	fmul.s f15, f0, f10
	sh2add s8, s1, s6
	sh2add s6, s1, s7
	fadd.s f2, f15, f1
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fmul.s f2, f0, f11
	fadd.s f14, f15, f1
	fsw f14, 0(s8)
	flw f15, 0(s6)
	add s6, s5, t2
	fmul.s f1, f15, f10
	sh2add s7, s1, s6
	addi s6, t2, 1080
	add s8, s4, s6
	fadd.s f3, f1, f2
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fmul.s f3, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 0(s7)
	sh2add s7, s1, s8
	add s8, s5, s6
	flw f0, 0(s7)
	addi s6, s6, 1080
	sh2add s7, s1, s8
	fmul.s f1, f0, f10
	add s8, s4, s6
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fmul.s f13, f13, f12
	fadd.s f14, f15, f1
	fmul.s f1, f0, f11
	fsw f14, 0(s7)
	sh2add s7, s1, s8
	flw f2, 0(s7)
	add s7, s5, s6
	fmul.s f15, f2, f10
	addi s6, s6, 1080
	sh2add s8, s1, s7
	fmul.s f2, f2, f11
	add s7, s4, s6
	fadd.s f3, f15, f1
	fadd.s f0, f3, f14
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fsw f15, 0(s8)
	sh2add s8, s1, s7
	flw f1, 0(s8)
	add s8, s5, s6
	fmul.s f13, f1, f10
	addi s6, s6, 1080
	sh2add s7, s1, s8
	fadd.s f3, f13, f2
	fadd.s f0, f3, f15
	fmul.s f3, f1, f11
	fmul.s f15, f15, f12
	fadd.s f13, f0, f14
	fsw f13, 0(s7)
	add s7, s4, s6
	sh2add s8, s1, s7
	flw f0, 0(s8)
	add s8, s5, s6
	fmul.s f14, f0, f10
	addi s6, s6, 1080
	sh2add s7, s1, s8
	fmul.s f0, f0, f11
	add s8, s4, s6
	fadd.s f2, f14, f3
	fadd.s f1, f2, f13
	fadd.s f14, f1, f15
	fsw f14, 0(s7)
	sh2add s7, s1, s8
	add s8, s5, s6
	flw f1, 0(s7)
	addi s6, s6, 1080
	sh2add s7, s1, s8
	fmul.s f15, f1, f10
	add s8, s4, s6
	fmul.s f1, f1, f11
	fadd.s f2, f15, f0
	fmul.s f0, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f0
	fsw f13, 0(s7)
	sh2add s7, s1, s8
	flw f15, 0(s7)
	add s7, s5, s6
	fmul.s f0, f15, f10
	addi s6, s6, 1080
	sh2add s8, s1, s7
	fmul.s f15, f15, f11
	add s7, s4, s6
	sh2add s4, s1, s7
	fadd.s f2, f0, f1
	fmul.s f1, f14, f12
	fmul.s f12, f13, f12
	fadd.s f0, f2, f13
	fadd.s f14, f0, f1
	fsw f14, 0(s8)
	flw f0, 0(s4)
	add s4, s5, s6
	fmul.s f10, f0, f10
	sh2add s5, s1, s4
	addiw s4, s3, 16
	fadd.s f11, f10, f15
	fadd.s f10, f11, f14
	fadd.s f13, f10, f12
	fsw f13, 0(s5)
	bge s4, s2, label61
	mv s3, s4
	j label56
.p2align 2
label61:
	mulw s5, s4, a0
	addiw s3, s3, 28
	add s4, s0, s5
	addi s7, s4, 1080
	add s5, a2, s5
	sh2add s6, s1, s4
	flw f1, 0(s6)
	sh2add s6, s1, s5
	flw f10, 0(a5)
	flw f11, 4(a5)
	fmul.s f12, f1, f10
	fmul.s f0, f0, f11
	fmul.s f1, f1, f11
	fadd.s f2, f12, f0
	flw f12, 8(a5)
	fmul.s f14, f14, f12
	fadd.s f15, f2, f13
	fmul.s f13, f13, f12
	fadd.s f15, f15, f14
	fsw f15, 0(s6)
	sh2add s6, s1, s7
	addi s7, s5, 1080
	flw f2, 0(s6)
	sh2add s6, s1, s7
	fmul.s f14, f2, f10
	add s7, s4, t3
	fmul.s f2, f2, f11
	fadd.s f3, f14, f1
	fadd.s f0, f3, f15
	fmul.s f15, f15, f12
	fadd.s f14, f0, f13
	fsw f14, 0(s6)
	sh2add s6, s1, s7
	flw f0, 0(s6)
	add s6, s5, t3
	fmul.s f13, f0, f10
	sh2add s7, s1, s6
	add s6, s4, t4
	fadd.s f3, f13, f2
	fadd.s f1, f3, f14
	fmul.s f3, f0, f11
	fadd.s f13, f1, f15
	fsw f13, 0(s7)
	sh2add s7, s1, s6
	add s6, s5, t4
	flw f15, 0(s7)
	sh2add s7, s1, s6
	fmul.s f1, f15, f10
	add s6, s4, t5
	fadd.s f2, f1, f3
	fmul.s f3, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fadd.s f14, f0, f1
	fsw f14, 0(s7)
	sh2add s7, s1, s6
	add s6, s5, t5
	flw f0, 0(s7)
	sh2add s7, s1, s6
	fmul.s f1, f0, f10
	add s6, s4, t6
	fadd.s f2, f1, f3
	fmul.s f3, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f1
	fsw f13, 0(s7)
	sh2add s7, s1, s6
	flw f15, 0(s7)
	add s7, s5, t6
	fmul.s f1, f15, f10
	sh2add s6, s1, s7
	add s7, s4, a6
	fadd.s f2, f1, f3
	fmul.s f3, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fadd.s f14, f0, f1
	fsw f14, 0(s6)
	sh2add s6, s1, s7
	add s7, s5, a6
	flw f0, 0(s6)
	sh2add s6, s1, s7
	fmul.s f1, f0, f10
	add s7, s4, a7
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fmul.s f2, f0, f11
	fadd.s f13, f15, f1
	fsw f13, 0(s6)
	sh2add s6, s1, s7
	flw f15, 0(s6)
	add s6, s5, a7
	fmul.s f1, f15, f10
	sh2add s7, s1, s6
	li s6, 8640
	add s8, s4, s6
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fmul.s f3, f15, f11
	fadd.s f14, f0, f1
	fsw f14, 0(s7)
	sh2add s7, s1, s8
	flw f0, 0(s7)
	add s7, s5, s6
	fmul.s f1, f0, f10
	addi s6, s6, 1080
	sh2add s8, s1, s7
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fmul.s f2, f0, f11
	fadd.s f13, f15, f1
	fsw f13, 0(s8)
	add s8, s4, s6
	sh2add s7, s1, s8
	flw f15, 0(s7)
	add s7, s5, s6
	fmul.s f1, f15, f10
	addi s6, s6, 1080
	sh2add s8, s1, s7
	add s7, s4, s6
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fmul.s f13, f13, f12
	fadd.s f14, f0, f1
	fmul.s f12, f14, f12
	fsw f14, 0(s8)
	sh2add s8, s1, s7
	add s7, s5, s6
	flw f0, 0(s8)
	addi s6, s6, 1080
	sh2add s8, s1, s7
	add s4, s4, s6
	fmul.s f1, f0, f10
	sh2add s7, s1, s4
	add s4, s5, s6
	sh2add s5, s1, s4
	fadd.s f15, f1, f2
	fadd.s f1, f15, f14
	fadd.s f15, f1, f13
	fmul.s f1, f0, f11
	fsw f15, 0(s8)
	flw f13, 0(s7)
	fmul.s f10, f13, f10
	fadd.s f0, f10, f1
	fadd.s f11, f0, f15
	fadd.s f10, f11, f12
	fmv.s f12, f15
	fsw f10, 0(s5)
.p2align 2
label62:
	mulw s4, s3, a0
	addiw s3, s3, 1
	add s5, s0, s4
	sh2add s6, s1, s5
	add s5, a2, s4
	sh2add s4, s1, s5
	flw f11, 0(s6)
	flw f15, 0(a5)
	flw f0, 4(a5)
	fmul.s f14, f11, f15
	fmul.s f15, f13, f0
	fadd.s f14, f14, f15
	flw f15, 8(a5)
	fmul.s f12, f12, f15
	fadd.s f13, f14, f10
	fadd.s f14, f13, f12
	fsw f14, 0(s4)
	li s4, 512
	bge s3, s4, label1674
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label62
label623:
	mv a5, zero
	j label46
.p2align 2
label624:
	fmv.w.x f15, zero
	li t3, 511
	fmv.s f12, f15
	fmv.s f13, f15
	fmv.s f14, f15
	j label32
.p2align 2
label1045:
	addiw t2, t2, 1
	blt t2, a4, label624
	j label623
label46:
	li t0, 512
	blt a5, t0, label48
	j label55
.p2align 2
label32:
	flw f10, 12(a5)
	mulw t5, t3, a0
	flw f11, 16(a5)
	add t4, a3, t5
	fmul.s f0, f15, f10
	add t5, s0, t5
	fmul.s f3, f15, f11
	addi a7, t5, -1080
	fmul.s f12, f12, f11
	sh2add t6, t2, t4
	fadd.s f1, f0, f12
	flw f12, 8(a5)
	fadd.s f0, f1, f13
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(t6)
	sh2add t6, t2, t5
	flw f0, 0(t6)
	addi t6, t4, -1080
	fmul.s f1, f0, f10
	sh2add a6, t2, t6
	sh2add t6, t2, a7
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fmul.s f2, f0, f11
	fadd.s f13, f15, f1
	fsw f13, 0(a6)
	add a6, t4, t0
	flw f15, 0(t6)
	sh2add t6, t2, a6
	fmul.s f1, f15, f10
	add a6, t5, t0
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fadd.s f14, f0, f1
	fsw f14, 0(t6)
	sh2add t6, t2, a6
	flw f0, 0(t6)
	addi t6, t0, -1080
	fmul.s f1, f0, f10
	add a7, t4, t6
	sh2add a6, t2, a7
	add a7, t5, t6
	addi t6, t6, -1080
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f1
	fsw f13, 0(a6)
	sh2add a6, t2, a7
	add a7, t4, t6
	flw f15, 0(a6)
	sh2add a6, t2, a7
	fmul.s f1, f15, f10
	add a7, t5, t6
	addi t6, t6, -1080
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fmul.s f3, f15, f11
	fadd.s f14, f0, f1
	fsw f14, 0(a6)
	sh2add a6, t2, a7
	flw f1, 0(a6)
	add a6, t4, t6
	fmul.s f0, f1, f10
	sh2add a7, t2, a6
	fmul.s f1, f1, f11
	fadd.s f2, f0, f3
	fmul.s f0, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f0
	fsw f13, 0(a7)
	add a7, t5, t6
	addi t6, t6, -1080
	sh2add a6, t2, a7
	flw f0, 0(a6)
	add a6, t4, t6
	fmul.s f15, f0, f10
	fmul.s f3, f0, f11
	sh2add a7, t2, a6
	fadd.s f2, f15, f1
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, 0(a7)
	add a7, t5, t6
	addi t6, t6, -1080
	sh2add a6, t2, a7
	add a7, t4, t6
	flw f15, 0(a6)
	sh2add a6, t2, a7
	fmul.s f1, f15, f10
	add a7, t5, t6
	addi t6, t6, -1080
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 0(a6)
	sh2add a6, t2, a7
	flw f0, 0(a6)
	add a6, t4, t6
	fmul.s f1, f0, f10
	sh2add a7, t2, a6
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fmul.s f3, f0, f11
	fadd.s f14, f15, f1
	fsw f14, 0(a7)
	add a7, t5, t6
	addi t6, t6, -1080
	sh2add a6, t2, a7
	add a7, t4, t6
	flw f15, 0(a6)
	sh2add a6, t2, a7
	fmul.s f1, f15, f10
	add a7, t5, t6
	addi t6, t6, -1080
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fmul.s f14, f14, f12
	fadd.s f13, f0, f1
	fsw f13, 0(a6)
	sh2add a6, t2, a7
	flw f1, 0(a6)
	add a6, t4, t6
	fmul.s f0, f1, f10
	fmul.s f3, f1, f11
	sh2add a7, t2, a6
	fadd.s f15, f0, f2
	fadd.s f0, f15, f13
	fmul.s f13, f13, f12
	fadd.s f15, f0, f14
	fsw f15, 0(a7)
	add a7, t5, t6
	addi t6, t6, -1080
	sh2add a6, t2, a7
	flw f0, 0(a6)
	add a6, t4, t6
	fmul.s f14, f0, f10
	sh2add a7, t2, a6
	add a6, t5, t6
	addi t6, t6, -1080
	fadd.s f2, f14, f3
	fadd.s f1, f2, f15
	fmul.s f2, f0, f11
	fmul.s f15, f15, f12
	fadd.s f14, f1, f13
	fsw f14, 0(a7)
	sh2add a7, t2, a6
	add a6, t4, t6
	flw f1, 0(a7)
	sh2add a7, t2, a6
	fmul.s f13, f1, f10
	add a6, t5, t6
	fmul.s f1, f1, f11
	addi t6, t6, -1080
	fadd.s f3, f13, f2
	fadd.s f0, f3, f14
	fadd.s f13, f0, f15
	fsw f13, 0(a7)
	sh2add a7, t2, a6
	add a6, t4, t6
	flw f15, 0(a7)
	sh2add a7, t2, a6
	fmul.s f0, f15, f10
	add a6, t5, t6
	fmul.s f3, f15, f11
	addi t6, t6, -1080
	fadd.s f2, f0, f1
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fadd.s f14, f0, f1
	fsw f14, 0(a7)
	sh2add a7, t2, a6
	add a6, t4, t6
	flw f0, 0(a7)
	sh2add a7, t2, a6
	fmul.s f1, f0, f10
	add a6, t5, t6
	fmul.s f0, f0, f11
	addi t6, t6, -1080
	add t5, t5, t6
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fmul.s f12, f14, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f1
	fsw f13, 0(a7)
	sh2add a7, t2, a6
	add a6, t4, t6
	flw f15, 0(a7)
	sh2add t6, t2, t5
	sh2add t4, t2, a6
	fmul.s f10, f15, f10
	fadd.s f1, f10, f0
	fadd.s f11, f1, f13
	fadd.s f10, f11, f12
	fsw f10, 0(t4)
	addiw t4, t3, -16
	flw f11, 0(t6)
	ble t4, t1, label38
	fmv.s f14, f13
	fmv.s f12, f15
	mv t3, t4
	fmv.s f13, f10
	fmv.s f15, f11
	j label32
.p2align 2
label48:
	mulw t2, a5, a0
	mv t3, zero
	add t1, a2, t2
	add t0, s0, t2
	add t2, a3, t2
	j label49
.p2align 2
label51:
	sh2add t4, t6, t1
	addiw t3, t3, 28
	sh2add t5, t6, t2
	flw f10, 0(t4)
	sh2add t6, t6, t0
	flw f11, 0(t5)
	fadd.s f10, f10, f11
	fsw f10, 0(t6)
	flw f10, 4(t4)
	flw f11, 4(t5)
	fadd.s f12, f10, f11
	fsw f12, 4(t6)
	flw f10, 8(t4)
	flw f11, 8(t5)
	fadd.s f12, f10, f11
	fsw f12, 8(t6)
	flw f10, 12(t4)
	flw f11, 12(t5)
	fadd.s f12, f10, f11
	fsw f12, 12(t6)
	flw f10, 16(t4)
	flw f11, 16(t5)
	fadd.s f12, f10, f11
	fsw f12, 16(t6)
	flw f10, 20(t4)
	flw f11, 20(t5)
	fadd.s f12, f10, f11
	fsw f12, 20(t6)
	flw f10, 24(t4)
	flw f11, 24(t5)
	fadd.s f12, f10, f11
	fsw f12, 24(t6)
	flw f10, 28(t4)
	flw f11, 28(t5)
	fadd.s f12, f10, f11
	fsw f12, 28(t6)
	flw f10, 32(t4)
	flw f12, 32(t5)
	fadd.s f11, f10, f12
	fsw f11, 32(t6)
	flw f10, 36(t4)
	flw f12, 36(t5)
	fadd.s f11, f10, f12
	fsw f11, 36(t6)
	flw f10, 40(t4)
	flw f12, 40(t5)
	fadd.s f11, f10, f12
	fsw f11, 40(t6)
	flw f10, 44(t4)
	flw f11, 44(t5)
	fadd.s f12, f10, f11
	fsw f12, 44(t6)
.p2align 2
label52:
	sh2add t4, t3, t1
	sh2add t5, t3, t2
	flw f10, 0(t4)
	sh2add t4, t3, t0
	flw f11, 0(t5)
	addiw t3, t3, 1
	fadd.s f10, f10, f11
	fsw f10, 0(t4)
	blt t3, a4, label52
	addiw a5, a5, 1
	li t0, 512
	blt a5, t0, label48
label55:
	li a0, 158
	jal _sysy_stoptime
	mv a1, s0
	li a0, 138240
	jal putfarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s4, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label49:
	sh2add t4, t3, t1
	sh2add t5, t3, t2
	flw f10, 0(t4)
	sh2add t6, t3, t0
	flw f11, 0(t5)
	fadd.s f10, f10, f11
	fsw f10, 0(t6)
	flw f10, 4(t4)
	flw f12, 4(t5)
	fadd.s f11, f10, f12
	fsw f11, 4(t6)
	flw f10, 8(t4)
	flw f12, 8(t5)
	fadd.s f11, f10, f12
	fsw f11, 8(t6)
	flw f10, 12(t4)
	flw f11, 12(t5)
	fadd.s f12, f10, f11
	fsw f12, 12(t6)
	flw f10, 16(t4)
	flw f12, 16(t5)
	fadd.s f11, f10, f12
	fsw f11, 16(t6)
	flw f10, 20(t4)
	flw f12, 20(t5)
	fadd.s f11, f10, f12
	fsw f11, 20(t6)
	flw f10, 24(t4)
	flw f12, 24(t5)
	fadd.s f11, f10, f12
	fsw f11, 24(t6)
	flw f10, 28(t4)
	flw f11, 28(t5)
	fadd.s f12, f10, f11
	fsw f12, 28(t6)
	flw f10, 32(t4)
	flw f11, 32(t5)
	fadd.s f12, f10, f11
	fsw f12, 32(t6)
	flw f10, 36(t4)
	flw f12, 36(t5)
	fadd.s f11, f10, f12
	fsw f11, 36(t6)
	flw f10, 40(t4)
	flw f12, 40(t5)
	fadd.s f11, f10, f12
	fsw f11, 40(t6)
	flw f10, 44(t4)
	flw f12, 44(t5)
	fadd.s f11, f10, f12
	fsw f11, 44(t6)
	flw f10, 48(t4)
	flw f11, 48(t5)
	fadd.s f12, f10, f11
	fsw f12, 48(t6)
	flw f10, 52(t4)
	flw f11, 52(t5)
	fadd.s f12, f10, f11
	fsw f12, 52(t6)
	flw f10, 56(t4)
	flw f12, 56(t5)
	fadd.s f11, f10, f12
	fsw f11, 56(t6)
	flw f10, 60(t4)
	flw f12, 60(t5)
	fadd.s f11, f10, f12
	fsw f11, 60(t6)
	addiw t6, t3, 16
	bge t6, a1, label51
	mv t3, t6
	j label49
.p2align 2
label38:
	flw f12, 12(a5)
	mulw t4, t4, a0
	addiw t3, t3, -28
	add t5, a3, t4
	flw f14, 16(a5)
	fmul.s f0, f11, f12
	sh2add t6, t2, t5
	add t4, s0, t4
	addi a6, t5, -1080
	fmul.s f2, f11, f14
	fmul.s f15, f15, f14
	fadd.s f1, f0, f15
	flw f15, 8(a5)
	fadd.s f0, f1, f10
	fmul.s f10, f10, f15
	fmul.s f1, f13, f15
	fadd.s f13, f0, f1
	fsw f13, 0(t6)
	sh2add t6, t2, t4
	flw f0, 0(t6)
	sh2add t6, t2, a6
	fmul.s f3, f0, f14
	addi a6, t4, -1080
	fmul.s f1, f0, f12
	fadd.s f11, f1, f2
	fadd.s f1, f11, f13
	fmul.s f13, f13, f15
	fadd.s f11, f1, f10
	fsw f11, 0(t6)
	sh2add t6, t2, a6
	add a6, t5, t0
	flw f1, 0(t6)
	sh2add t6, t2, a6
	fmul.s f10, f1, f12
	add a6, t4, t0
	fmul.s f1, f1, f14
	fadd.s f2, f10, f3
	fadd.s f0, f2, f11
	fadd.s f10, f0, f13
	fsw f10, 0(t6)
	sh2add t6, t2, a6
	flw f0, 0(t6)
	addi t6, t0, -1080
	fmul.s f13, f0, f12
	add a6, t5, t6
	sh2add a7, t2, a6
	fadd.s f2, f13, f1
	fmul.s f1, f11, f15
	fadd.s f13, f2, f10
	fmul.s f2, f0, f14
	fadd.s f11, f13, f1
	fsw f11, 0(a7)
	add a7, t4, t6
	addi t6, t6, -1080
	sh2add a6, t2, a7
	add a7, t5, t6
	flw f13, 0(a6)
	sh2add a6, t2, a7
	fmul.s f1, f13, f12
	add a7, t4, t6
	addi t6, t6, -1080
	fadd.s f3, f1, f2
	fmul.s f2, f13, f14
	fmul.s f1, f10, f15
	fadd.s f0, f3, f11
	fadd.s f10, f0, f1
	fsw f10, 0(a6)
	sh2add a6, t2, a7
	flw f0, 0(a6)
	add a6, t5, t6
	fmul.s f1, f0, f12
	sh2add a7, t2, a6
	fadd.s f3, f1, f2
	fmul.s f1, f11, f15
	fadd.s f13, f3, f10
	fmul.s f3, f0, f14
	fmul.s f10, f10, f15
	fadd.s f11, f13, f1
	fsw f11, 0(a7)
	add a7, t4, t6
	addi t6, t6, -1080
	sh2add a6, t2, a7
	flw f2, 0(a6)
	add a6, t5, t6
	fmul.s f13, f2, f12
	sh2add a7, t2, a6
	add a6, t4, t6
	addi t6, t6, -1080
	fadd.s f1, f13, f3
	fmul.s f3, f2, f14
	fadd.s f0, f1, f11
	fmul.s f11, f11, f15
	fadd.s f13, f0, f10
	fsw f13, 0(a7)
	sh2add a7, t2, a6
	flw f1, 0(a7)
	add a7, t5, t6
	fmul.s f10, f1, f12
	sh2add a6, t2, a7
	add a7, t4, t6
	addi t6, t6, -1080
	fadd.s f2, f10, f3
	fmul.s f3, f1, f14
	fadd.s f0, f2, f13
	fmul.s f13, f13, f15
	fadd.s f10, f0, f11
	fsw f10, 0(a6)
	sh2add a6, t2, a7
	flw f0, 0(a6)
	add a6, t5, t6
	fmul.s f11, f0, f12
	sh2add a7, t2, a6
	add a6, t4, t6
	addi t6, t6, -1080
	fadd.s f2, f11, f3
	fmul.s f3, f0, f14
	fadd.s f1, f2, f10
	fadd.s f11, f1, f13
	fsw f11, 0(a7)
	sh2add a7, t2, a6
	flw f13, 0(a7)
	add a7, t5, t6
	fmul.s f1, f13, f12
	sh2add a6, t2, a7
	fmul.s f13, f13, f14
	add a7, t4, t6
	addi t6, t6, -1080
	fadd.s f2, f1, f3
	fmul.s f1, f10, f15
	fadd.s f0, f2, f11
	fmul.s f11, f11, f15
	fadd.s f10, f0, f1
	fsw f10, 0(a6)
	sh2add a6, t2, a7
	add a7, t5, t6
	flw f0, 0(a6)
	sh2add a6, t2, a7
	fmul.s f1, f0, f12
	add a7, t4, t6
	fmul.s f0, f0, f14
	addi t6, t6, -1080
	add t5, t5, t6
	fadd.s f2, f1, f13
	fadd.s f1, f2, f10
	fmul.s f10, f10, f15
	fadd.s f13, f1, f11
	fsw f13, 0(a6)
	sh2add a6, t2, a7
	flw f11, 0(a6)
	sh2add a6, t2, t5
	fmul.s f12, f11, f12
	add t5, t4, t6
	sh2add t4, t2, t5
	fadd.s f1, f12, f0
	fadd.s f14, f1, f13
	fadd.s f12, f14, f10
	fmv.s f14, f11
	fmv.s f11, f12
	fsw f12, 0(a6)
	flw f10, 0(t4)
.p2align 2
label39:
	flw f15, 12(a5)
	mulw t4, t3, a0
	flw f0, 16(a5)
	addiw t3, t3, -1
	add t6, a3, t4
	fmul.s f12, f10, f15
	fmul.s f14, f14, f0
	add t4, s0, t4
	sh2add t5, t2, t6
	fadd.s f15, f12, f14
	flw f14, 8(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f15, f11
	fadd.s f12, f12, f13
	fsw f12, 0(t5)
	sh2add t5, t2, t4
	flw f15, 0(t5)
	blt t3, zero, label1045
	fmv.s f14, f10
	fmv.s f13, f11
	fmv.s f10, f15
	fmv.s f11, f12
	j label39
