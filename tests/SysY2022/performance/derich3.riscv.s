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
	addi sp, sp, -40
pcrel2182:
	auipc a1, %pcrel_hi(imgIn)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a1, %pcrel_lo(pcrel2182)
	sd s0, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	mv a0, s1
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel2183:
	auipc a2, %pcrel_hi(my_y1)
pcrel2184:
	auipc a0, %pcrel_hi(my_y2)
	mv t4, zero
pcrel2185:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
pcrel2186:
	auipc a1, %pcrel_hi(imgOut)
	addi a3, a4, %pcrel_lo(pcrel2185)
	addi s0, a1, %pcrel_lo(pcrel2186)
	addi a1, a2, %pcrel_lo(pcrel2183)
	addi a2, a0, %pcrel_lo(pcrel2184)
	li a0, 1080
	slli a4, a0, 1
	addi a5, a4, 1080
	addi t0, a5, 1080
	addi t1, t0, 1080
	addi t2, t1, 1080
	addi t3, t2, 1080
	li t5, 512
	blt zero, t5, label4
label93:
	mv t4, zero
	j label17
.p2align 2
label4:
	mulw a6, t4, a0
	fmv.w.x f12, zero
	add t6, s1, a6
	add t5, a1, a6
	fmv.s f13, f12
	fmv.s f14, f12
	mv a6, zero
.p2align 2
label5:
	sh2add a7, a6, t6
	sh2add s2, a6, t5
	flw f15, 0(a7)
	flw f10, 0(a3)
	flw f11, 4(a3)
	fmul.s f0, f15, f10
	fmul.s f12, f12, f11
	fmul.s f2, f15, f11
	fadd.s f1, f0, f12
	flw f12, 8(a3)
	fadd.s f0, f1, f13
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(s2)
	flw f0, 4(a7)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f1
	fsw f13, 4(s2)
	flw f15, 8(a7)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fadd.s f14, f0, f1
	fsw f14, 8(s2)
	flw f1, 12(a7)
	fmul.s f0, f1, f10
	fadd.s f3, f0, f2
	fmul.s f0, f13, f12
	fadd.s f15, f3, f14
	fmul.s f14, f14, f12
	fmul.s f3, f1, f11
	fadd.s f13, f15, f0
	fsw f13, 12(s2)
	flw f0, 16(a7)
	fmul.s f15, f0, f10
	fadd.s f2, f15, f3
	fmul.s f3, f0, f11
	fadd.s f1, f2, f13
	fmul.s f13, f13, f12
	fadd.s f15, f1, f14
	fsw f15, 16(s2)
	flw f1, 20(a7)
	fmul.s f14, f1, f10
	fadd.s f2, f14, f3
	fmul.s f3, f1, f11
	fadd.s f0, f2, f15
	fmul.s f15, f15, f12
	fadd.s f14, f0, f13
	fsw f14, 20(s2)
	flw f0, 24(a7)
	fmul.s f13, f0, f10
	fadd.s f2, f13, f3
	fmul.s f3, f0, f11
	fadd.s f1, f2, f14
	fadd.s f13, f1, f15
	fsw f13, 24(s2)
	flw f15, 28(a7)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fmul.s f13, f13, f12
	fmul.s f2, f15, f11
	fadd.s f14, f0, f1
	fsw f14, 28(s2)
	flw f1, 32(a7)
	fmul.s f3, f1, f11
	fmul.s f0, f1, f10
	fadd.s f15, f0, f2
	fadd.s f0, f15, f14
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fsw f15, 32(s2)
	flw f0, 36(a7)
	fmul.s f13, f0, f10
	fadd.s f2, f13, f3
	fadd.s f1, f2, f15
	fmul.s f15, f15, f12
	fmul.s f2, f0, f11
	fadd.s f13, f1, f14
	fsw f13, 36(s2)
	flw f1, 40(a7)
	fmul.s f14, f1, f10
	fmul.s f1, f1, f11
	fadd.s f3, f14, f2
	fadd.s f0, f3, f13
	fadd.s f14, f0, f15
	fsw f14, 40(s2)
	flw f15, 44(a7)
	fmul.s f0, f15, f10
	fadd.s f2, f0, f1
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 44(s2)
	flw f0, 48(a7)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fadd.s f14, f15, f1
	fsw f14, 48(s2)
	flw f15, 52(a7)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fadd.s f13, f0, f1
	fsw f13, 52(s2)
	flw f0, 56(a7)
	fmul.s f11, f0, f11
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fadd.s f14, f15, f1
	fsw f14, 56(s2)
	flw f15, 60(a7)
	addiw a7, a6, 16
	fmul.s f10, f15, f10
	fadd.s f0, f10, f11
	fmul.s f11, f13, f12
	fadd.s f10, f0, f14
	fadd.s f13, f10, f11
	fsw f13, 60(s2)
	li s2, 256
	bge a7, s2, label10
	fmv.s f12, f15
	mv a6, a7
	j label5
.p2align 2
label403:
	addiw t4, t4, 1
	li t5, 512
	blt t4, t5, label4
	j label93
label17:
	li t5, 512
	blt t4, t5, label68
	j label409
.p2align 2
label10:
	sh2add s2, a7, t6
	addiw a6, a6, 28
	sh2add a7, a7, t5
	flw f0, 0(s2)
	flw f10, 0(a3)
	flw f11, 4(a3)
	fmul.s f12, f0, f10
	fmul.s f1, f15, f11
	fadd.s f2, f12, f1
	flw f12, 8(a3)
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fmul.s f2, f0, f11
	fadd.s f14, f15, f1
	fsw f14, 0(a7)
	flw f15, 4(s2)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fmul.s f3, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 4(a7)
	flw f0, 8(s2)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fmul.s f3, f0, f11
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, 8(a7)
	flw f15, 12(s2)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 12(a7)
	flw f0, 16(s2)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fmul.s f3, f0, f11
	fadd.s f14, f15, f1
	fsw f14, 16(a7)
	flw f15, 20(s2)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f3, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fadd.s f13, f0, f1
	fsw f13, 20(a7)
	flw f0, 24(s2)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f3, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, 24(a7)
	flw f15, 28(s2)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 28(a7)
	flw f0, 32(s2)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fmul.s f3, f0, f11
	fadd.s f14, f15, f1
	fsw f14, 32(a7)
	flw f15, 36(s2)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 36(a7)
	flw f0, 40(s2)
	fmul.s f1, f0, f10
	fmul.s f0, f0, f11
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fmul.s f12, f13, f12
	fadd.s f15, f3, f13
	fadd.s f14, f15, f1
	fsw f14, 40(a7)
	flw f15, 44(s2)
	fmv.s f13, f15
	fmul.s f10, f15, f10
	fadd.s f1, f10, f0
	fadd.s f11, f1, f14
	fadd.s f10, f11, f12
	fmv.s f12, f14
	fsw f10, 44(a7)
.p2align 2
label11:
	sh2add a7, a6, t6
	flw f11, 0(a7)
	sh2add a7, a6, t5
	flw f15, 0(a3)
	addiw a6, a6, 1
	flw f0, 4(a3)
	fmul.s f14, f11, f15
	fmul.s f15, f13, f0
	fadd.s f14, f14, f15
	flw f15, 8(a3)
	fmul.s f12, f12, f15
	fadd.s f13, f14, f10
	fadd.s f14, f13, f12
	fsw f14, 0(a7)
	li a7, 270
	bge a6, a7, label403
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label11
label409:
	mv t4, zero
	li t5, 512
	blt zero, t5, label21
	j label413
.p2align 2
label68:
	mulw a6, t4, a0
	fmv.w.x f15, zero
	add t6, s1, a6
	add t5, a2, a6
	fmv.s f12, f15
	fmv.s f13, f15
	fmv.s f14, f15
	li a6, 269
	j label69
.p2align 2
label1986:
	addiw t4, t4, 1
	li t5, 512
	blt t4, t5, label68
	j label409
.p2align 2
label69:
	flw f10, 12(a3)
	sh2add a7, a6, t5
	sh2add s2, a6, t6
	flw f11, 16(a3)
	fmul.s f0, f15, f10
	fmul.s f12, f12, f11
	fmul.s f2, f15, f11
	fadd.s f1, f0, f12
	flw f12, 8(a3)
	fadd.s f0, f1, f13
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(a7)
	flw f0, 0(s2)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fadd.s f13, f15, f1
	fsw f13, -4(a7)
	flw f15, -4(s2)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fmul.s f3, f15, f11
	fadd.s f14, f0, f1
	fsw f14, -8(a7)
	flw f0, -8(s2)
	fmul.s f1, f0, f10
	fadd.s f2, f1, f3
	fmul.s f3, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f1
	fsw f13, -12(a7)
	flw f15, -12(s2)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fmul.s f13, f13, f12
	fmul.s f2, f15, f11
	fadd.s f14, f0, f1
	fsw f14, -16(a7)
	flw f1, -16(s2)
	fmul.s f0, f1, f10
	fadd.s f15, f0, f2
	fmul.s f2, f1, f11
	fadd.s f0, f15, f14
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fsw f15, -20(a7)
	flw f0, -20(s2)
	fmul.s f13, f0, f10
	fadd.s f3, f13, f2
	fadd.s f1, f3, f15
	fmul.s f15, f15, f12
	fmul.s f3, f0, f11
	fadd.s f13, f1, f14
	fsw f13, -24(a7)
	flw f1, -24(s2)
	fmul.s f14, f1, f10
	fmul.s f1, f1, f11
	fadd.s f2, f14, f3
	fadd.s f0, f2, f13
	fadd.s f14, f0, f15
	fsw f14, -28(a7)
	flw f0, -28(s2)
	fmul.s f3, f0, f11
	fmul.s f15, f0, f10
	fadd.s f2, f15, f1
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f1
	fsw f13, -32(a7)
	flw f15, -32(s2)
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fmul.s f2, f15, f11
	fadd.s f14, f0, f1
	fsw f14, -36(a7)
	flw f0, -36(s2)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fmul.s f14, f14, f12
	fmul.s f3, f0, f11
	fadd.s f13, f15, f1
	fsw f13, -40(a7)
	flw f1, -40(s2)
	fmul.s f15, f1, f10
	fadd.s f2, f15, f3
	fadd.s f0, f2, f13
	fmul.s f13, f13, f12
	fmul.s f2, f1, f11
	fadd.s f15, f0, f14
	fsw f15, -44(a7)
	flw f0, -44(s2)
	fmul.s f14, f0, f10
	fadd.s f3, f14, f2
	fmul.s f2, f0, f11
	fadd.s f1, f3, f15
	fmul.s f15, f15, f12
	fadd.s f14, f1, f13
	fsw f14, -48(a7)
	flw f1, -48(s2)
	fmul.s f13, f1, f10
	fmul.s f1, f1, f11
	fadd.s f3, f13, f2
	fadd.s f0, f3, f14
	fadd.s f13, f0, f15
	fsw f13, -52(a7)
	flw f0, -52(s2)
	fmul.s f11, f0, f11
	fmul.s f15, f0, f10
	fadd.s f2, f15, f1
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fadd.s f14, f15, f1
	fsw f14, -56(a7)
	flw f15, -56(s2)
	fmul.s f10, f15, f10
	fadd.s f0, f10, f11
	fmul.s f11, f13, f12
	fadd.s f10, f0, f14
	fadd.s f13, f10, f11
	fsw f13, -60(a7)
	addiw a7, a6, -16
	flw f10, -60(s2)
	li s2, 13
	ble a7, s2, label75
	fmv.s f12, f15
	mv a6, a7
	fmv.s f15, f10
	j label69
label413:
	mv t4, zero
	j label28
.p2align 2
label21:
	mulw a6, t4, a0
	mv a7, zero
	add t6, a1, a6
	add t5, s0, a6
	add a6, a2, a6
.p2align 2
label22:
	sh2add s1, a7, t6
	sh2add s2, a7, a6
	flw f10, 0(s1)
	sh2add s3, a7, t5
	flw f11, 0(s2)
	fadd.s f10, f10, f11
	fsw f10, 0(s3)
	flw f10, 4(s1)
	flw f11, 4(s2)
	fadd.s f12, f10, f11
	fsw f12, 4(s3)
	flw f10, 8(s1)
	flw f12, 8(s2)
	fadd.s f11, f10, f12
	fsw f11, 8(s3)
	flw f10, 12(s1)
	flw f11, 12(s2)
	fadd.s f12, f10, f11
	fsw f12, 12(s3)
	flw f10, 16(s1)
	flw f11, 16(s2)
	fadd.s f12, f10, f11
	fsw f12, 16(s3)
	flw f10, 20(s1)
	flw f12, 20(s2)
	fadd.s f11, f10, f12
	fsw f11, 20(s3)
	flw f10, 24(s1)
	flw f11, 24(s2)
	fadd.s f12, f10, f11
	fsw f12, 24(s3)
	flw f10, 28(s1)
	flw f11, 28(s2)
	fadd.s f12, f10, f11
	fsw f12, 28(s3)
	flw f10, 32(s1)
	flw f12, 32(s2)
	fadd.s f11, f10, f12
	fsw f11, 32(s3)
	flw f10, 36(s1)
	flw f11, 36(s2)
	fadd.s f12, f10, f11
	fsw f12, 36(s3)
	flw f10, 40(s1)
	flw f11, 40(s2)
	fadd.s f12, f10, f11
	fsw f12, 40(s3)
	flw f10, 44(s1)
	flw f12, 44(s2)
	fadd.s f11, f10, f12
	fsw f11, 44(s3)
	flw f10, 48(s1)
	flw f11, 48(s2)
	fadd.s f12, f10, f11
	fsw f12, 48(s3)
	flw f10, 52(s1)
	flw f11, 52(s2)
	fadd.s f12, f10, f11
	fsw f12, 52(s3)
	flw f10, 56(s1)
	flw f12, 56(s2)
	fadd.s f11, f10, f12
	fsw f11, 56(s3)
	flw f10, 60(s1)
	addiw s1, a7, 16
	flw f12, 60(s2)
	li s2, 256
	fadd.s f11, f10, f12
	fsw f11, 60(s3)
	bge s1, s2, label24
	mv a7, s1
	j label22
.p2align 2
label24:
	sh2add s2, s1, t6
	addiw a7, a7, 28
	sh2add s3, s1, a6
	flw f10, 0(s2)
	sh2add s1, s1, t5
	flw f11, 0(s3)
	fadd.s f10, f10, f11
	fsw f10, 0(s1)
	flw f10, 4(s2)
	flw f11, 4(s3)
	fadd.s f12, f10, f11
	fsw f12, 4(s1)
	flw f10, 8(s2)
	flw f12, 8(s3)
	fadd.s f11, f10, f12
	fsw f11, 8(s1)
	flw f10, 12(s2)
	flw f12, 12(s3)
	fadd.s f11, f10, f12
	fsw f11, 12(s1)
	flw f10, 16(s2)
	flw f12, 16(s3)
	fadd.s f11, f10, f12
	fsw f11, 16(s1)
	flw f10, 20(s2)
	flw f12, 20(s3)
	fadd.s f11, f10, f12
	fsw f11, 20(s1)
	flw f10, 24(s2)
	flw f11, 24(s3)
	fadd.s f12, f10, f11
	fsw f12, 24(s1)
	flw f10, 28(s2)
	flw f11, 28(s3)
	fadd.s f12, f10, f11
	fsw f12, 28(s1)
	flw f10, 32(s2)
	flw f11, 32(s3)
	fadd.s f12, f10, f11
	fsw f12, 32(s1)
	flw f10, 36(s2)
	flw f12, 36(s3)
	fadd.s f11, f10, f12
	fsw f11, 36(s1)
	flw f10, 40(s2)
	flw f12, 40(s3)
	fadd.s f11, f10, f12
	fsw f11, 40(s1)
	flw f10, 44(s2)
	flw f11, 44(s3)
	fadd.s f12, f10, f11
	fsw f12, 44(s1)
.p2align 2
label25:
	sh2add s2, a7, t6
	sh2add s1, a7, a6
	flw f10, 0(s2)
	flw f11, 0(s1)
	sh2add s1, a7, t5
	fadd.s f10, f10, f11
	addiw a7, a7, 1
	fsw f10, 0(s1)
	li s1, 270
	blt a7, s1, label25
	addiw t4, t4, 1
	li t5, 512
	blt t4, t5, label21
	j label413
label28:
	li t5, 270
	blt t4, t5, label619
label618:
	mv a4, zero
	j label30
.p2align 2
label619:
	fmv.w.x f0, zero
	mv t5, zero
	fmv.s f13, f0
	fmv.s f14, f0
	j label56
label30:
	li a5, 270
	blt a4, a5, label624
	j label623
.p2align 2
label56:
	mulw a6, t5, a0
	add t6, s0, a6
	add a6, a1, a6
	addi s1, t6, 1080
	sh2add a7, t4, t6
	flw f15, 0(a7)
	sh2add a7, t4, a6
	flw f10, 0(a3)
	flw f11, 4(a3)
	fmul.s f12, f15, f10
	fmul.s f2, f0, f11
	fadd.s f1, f12, f2
	fmul.s f2, f15, f11
	flw f12, 8(a3)
	fadd.s f0, f1, f13
	fmul.s f13, f13, f12
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(a7)
	sh2add a7, t4, s1
	flw f0, 0(a7)
	addi a7, a6, 1080
	fmul.s f1, f0, f10
	fmul.s f3, f0, f11
	sh2add s1, t4, a7
	add a7, t6, a4
	fadd.s f15, f1, f2
	fadd.s f1, f15, f14
	fmul.s f14, f14, f12
	fadd.s f15, f1, f13
	fsw f15, 0(s1)
	sh2add s1, t4, a7
	add a7, a6, a4
	flw f1, 0(s1)
	sh2add s1, t4, a7
	fmul.s f13, f1, f10
	add a7, t6, a5
	fadd.s f2, f13, f3
	fmul.s f3, f1, f11
	fadd.s f0, f2, f15
	fmul.s f15, f15, f12
	fadd.s f13, f0, f14
	fsw f13, 0(s1)
	sh2add s1, t4, a7
	flw f0, 0(s1)
	add s1, a6, a5
	fmul.s f14, f0, f10
	sh2add a7, t4, s1
	add s1, t6, t0
	fadd.s f2, f14, f3
	fmul.s f3, f0, f11
	fadd.s f1, f2, f13
	fadd.s f14, f1, f15
	fsw f14, 0(a7)
	sh2add a7, t4, s1
	add s1, a6, t0
	flw f15, 0(a7)
	sh2add a7, t4, s1
	fmul.s f1, f15, f10
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 0(a7)
	add a7, t6, t1
	sh2add s1, t4, a7
	flw f0, 0(s1)
	add s1, a6, t1
	fmul.s f1, f0, f10
	sh2add a7, t4, s1
	add s1, t6, t2
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fadd.s f14, f15, f1
	fsw f14, 0(a7)
	sh2add a7, t4, s1
	add s1, a6, t2
	flw f15, 0(a7)
	sh2add a7, t4, s1
	fmul.s f1, f15, f10
	add s1, t6, t3
	fadd.s f3, f1, f2
	fmul.s f2, f15, f11
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fadd.s f13, f0, f1
	fsw f13, 0(a7)
	sh2add a7, t4, s1
	add s1, a6, t3
	flw f0, 0(a7)
	sh2add a7, t4, s1
	fmul.s f1, f0, f10
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f3, f13
	fadd.s f14, f15, f1
	fsw f14, 0(a7)
	li a7, 8640
	add s1, t6, a7
	sh2add s2, t4, s1
	flw f15, 0(s2)
	add s2, a6, a7
	fmul.s f1, f15, f10
	addi a7, a7, 1080
	sh2add s1, t4, s2
	fadd.s f3, f1, f2
	fmul.s f1, f13, f12
	fadd.s f0, f3, f14
	fmul.s f3, f15, f11
	fadd.s f13, f0, f1
	fsw f13, 0(s1)
	add s1, t6, a7
	sh2add s2, t4, s1
	flw f0, 0(s2)
	add s2, a6, a7
	fmul.s f1, f0, f10
	addi a7, a7, 1080
	sh2add s1, t4, s2
	add s2, t6, a7
	fadd.s f2, f1, f3
	fmul.s f3, f0, f11
	fmul.s f1, f14, f12
	fadd.s f15, f2, f13
	fmul.s f13, f13, f12
	fadd.s f14, f15, f1
	fsw f14, 0(s1)
	sh2add s1, t4, s2
	add s2, a6, a7
	flw f1, 0(s1)
	addi a7, a7, 1080
	sh2add s1, t4, s2
	fmul.s f15, f1, f10
	fadd.s f2, f15, f3
	fmul.s f3, f1, f11
	fadd.s f0, f2, f14
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fsw f15, 0(s1)
	add s1, t6, a7
	sh2add s2, t4, s1
	flw f2, 0(s2)
	add s2, a6, a7
	fmul.s f13, f2, f10
	addi a7, a7, 1080
	sh2add s1, t4, s2
	fmul.s f2, f2, f11
	fadd.s f1, f13, f3
	fadd.s f0, f1, f15
	fmul.s f15, f15, f12
	fadd.s f13, f0, f14
	fsw f13, 0(s1)
	add s1, t6, a7
	sh2add s2, t4, s1
	add s1, a6, a7
	flw f0, 0(s2)
	addi a7, a7, 1080
	sh2add s2, t4, s1
	fmul.s f14, f0, f10
	fmul.s f0, f0, f11
	fadd.s f3, f14, f2
	fadd.s f1, f3, f13
	fadd.s f14, f1, f15
	fsw f14, 0(s2)
	add s2, t6, a7
	sh2add s1, t4, s2
	add s2, a6, a7
	flw f1, 0(s1)
	addi a7, a7, 1080
	sh2add s1, t4, s2
	fmul.s f15, f1, f10
	add s2, t6, a7
	fmul.s f1, f1, f11
	fadd.s f2, f15, f0
	fmul.s f0, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f0
	fsw f13, 0(s1)
	sh2add s1, t4, s2
	add s2, a6, a7
	flw f15, 0(s1)
	addi a7, a7, 1080
	sh2add s1, t4, s2
	add t6, t6, a7
	fmul.s f0, f15, f10
	fmul.s f15, f15, f11
	fadd.s f2, f0, f1
	fmul.s f1, f14, f12
	fmul.s f12, f13, f12
	fadd.s f0, f2, f13
	fadd.s f14, f0, f1
	fsw f14, 0(s1)
	sh2add s1, t4, t6
	add t6, a6, a7
	flw f0, 0(s1)
	sh2add a6, t4, t6
	addiw t6, t5, 16
	fmul.s f10, f0, f10
	fadd.s f11, f10, f15
	fadd.s f10, f11, f14
	fadd.s f13, f10, f12
	fsw f13, 0(a6)
	li a6, 496
	bge t6, a6, label61
	mv t5, t6
	j label56
.p2align 2
label1674:
	addiw t4, t4, 1
	li t5, 270
	blt t4, t5, label619
	j label618
.p2align 2
label61:
	mulw a6, t6, a0
	addiw t5, t5, 28
	add t6, s0, a6
	add a6, a1, a6
	add s2, t6, a5
	sh2add a7, t4, t6
	flw f1, 0(a7)
	sh2add a7, t4, a6
	flw f10, 0(a3)
	flw f11, 4(a3)
	fmul.s f12, f1, f10
	fmul.s f2, f0, f11
	fadd.s f0, f12, f2
	fmul.s f2, f1, f11
	flw f12, 8(a3)
	fmul.s f14, f14, f12
	fadd.s f15, f0, f13
	fmul.s f13, f13, f12
	fadd.s f15, f15, f14
	fsw f15, 0(a7)
	addi a7, t6, 1080
	sh2add s1, t4, a7
	flw f0, 0(s1)
	addi s1, a6, 1080
	fmul.s f14, f0, f10
	sh2add a7, t4, s1
	add s1, t6, a4
	fadd.s f3, f14, f2
	fadd.s f1, f3, f15
	fmul.s f15, f15, f12
	fmul.s f3, f0, f11
	fadd.s f14, f1, f13
	fsw f14, 0(a7)
	sh2add a7, t4, s1
	flw f1, 0(a7)
	add a7, a6, a4
	fmul.s f13, f1, f10
	sh2add s1, t4, a7
	sh2add a7, t4, s2
	fadd.s f2, f13, f3
	fadd.s f0, f2, f14
	fmul.s f2, f1, f11
	fadd.s f13, f0, f15
	fsw f13, 0(s1)
	add s1, a6, a5
	flw f15, 0(a7)
	sh2add a7, t4, s1
	fmul.s f0, f15, f10
	fmul.s f3, f15, f11
	fadd.s f1, f0, f2
	fmul.s f2, f14, f12
	fadd.s f0, f1, f13
	fadd.s f14, f0, f2
	fsw f14, 0(a7)
	add a7, t6, t0
	sh2add s1, t4, a7
	add a7, a6, t0
	flw f1, 0(s1)
	sh2add s1, t4, a7
	fmul.s f0, f1, f10
	add a7, t6, t1
	fadd.s f2, f0, f3
	fmul.s f0, f13, f12
	fadd.s f15, f2, f14
	fmul.s f2, f1, f11
	fmul.s f14, f14, f12
	fadd.s f13, f15, f0
	fsw f13, 0(s1)
	sh2add s1, t4, a7
	flw f0, 0(s1)
	add s1, a6, t1
	fmul.s f15, f0, f10
	sh2add a7, t4, s1
	fadd.s f3, f15, f2
	fadd.s f1, f3, f13
	fmul.s f3, f0, f11
	fmul.s f13, f13, f12
	fadd.s f15, f1, f14
	fsw f15, 0(a7)
	add a7, t6, t2
	sh2add s1, t4, a7
	flw f1, 0(s1)
	add s1, a6, t2
	fmul.s f14, f1, f10
	sh2add a7, t4, s1
	fadd.s f2, f14, f3
	fmul.s f3, f1, f11
	fadd.s f0, f2, f15
	fmul.s f15, f15, f12
	fadd.s f14, f0, f13
	fsw f14, 0(a7)
	add a7, t6, t3
	sh2add s1, t4, a7
	flw f0, 0(s1)
	add s1, a6, t3
	fmul.s f13, f0, f10
	sh2add a7, t4, s1
	fadd.s f2, f13, f3
	fmul.s f3, f0, f11
	fadd.s f1, f2, f14
	fadd.s f13, f1, f15
	fsw f13, 0(a7)
	li a7, 8640
	add s1, t6, a7
	sh2add s2, t4, s1
	flw f15, 0(s2)
	add s2, a6, a7
	fmul.s f1, f15, f10
	addi a7, a7, 1080
	sh2add s1, t4, s2
	add s2, t6, a7
	fadd.s f2, f1, f3
	fmul.s f3, f15, f11
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fadd.s f14, f0, f1
	fsw f14, 0(s1)
	sh2add s1, t4, s2
	flw f0, 0(s1)
	add s1, a6, a7
	fmul.s f1, f0, f10
	addi a7, a7, 1080
	sh2add s2, t4, s1
	add s1, t6, a7
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fadd.s f15, f2, f14
	fmul.s f2, f0, f11
	fadd.s f13, f15, f1
	fsw f13, 0(s2)
	sh2add s2, t4, s1
	add s1, a6, a7
	flw f15, 0(s2)
	addi a7, a7, 1080
	sh2add s2, t4, s1
	add t6, t6, a7
	fmul.s f1, f15, f10
	sh2add s1, t4, t6
	fmul.s f15, f15, f11
	add t6, a6, a7
	sh2add a6, t4, t6
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fmul.s f12, f13, f12
	fadd.s f0, f3, f13
	fadd.s f14, f0, f1
	fsw f14, 0(s2)
	flw f0, 0(s1)
	fmv.s f13, f0
	fmul.s f10, f0, f10
	fadd.s f1, f10, f15
	fadd.s f11, f1, f14
	fadd.s f10, f11, f12
	fmv.s f12, f14
	fsw f10, 0(a6)
.p2align 2
label62:
	mulw t6, t5, a0
	addiw t5, t5, 1
	add a7, s0, t6
	add t6, a1, t6
	sh2add a6, t4, a7
	flw f11, 0(a6)
	sh2add a6, t4, t6
	flw f15, 0(a3)
	li t6, 512
	flw f0, 4(a3)
	fmul.s f14, f11, f15
	fmul.s f15, f13, f0
	fadd.s f14, f14, f15
	flw f15, 8(a3)
	fmul.s f12, f12, f15
	fadd.s f13, f14, f10
	fadd.s f14, f13, f12
	fsw f14, 0(a6)
	bge t5, t6, label1674
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label62
.p2align 2
label75:
	flw f11, 12(a3)
	sh2add s2, a7, t5
	addiw a6, a6, -28
	sh2add a7, a7, t6
	fmul.s f0, f10, f11
	flw f12, 16(a3)
	fmul.s f15, f15, f12
	fmul.s f10, f10, f12
	fadd.s f1, f0, f15
	flw f15, 8(a3)
	fadd.s f0, f1, f13
	fmul.s f13, f13, f15
	fmul.s f1, f14, f15
	fadd.s f14, f0, f1
	fsw f14, 0(s2)
	flw f0, 0(a7)
	fmul.s f1, f0, f11
	fadd.s f2, f1, f10
	fadd.s f1, f2, f14
	fmul.s f14, f14, f15
	fmul.s f2, f0, f12
	fadd.s f10, f1, f13
	fsw f10, -4(s2)
	flw f1, -4(a7)
	fmul.s f13, f1, f11
	fadd.s f3, f13, f2
	fmul.s f2, f1, f12
	fadd.s f0, f3, f10
	fadd.s f13, f0, f14
	fsw f13, -8(s2)
	flw f14, -8(a7)
	fmul.s f0, f14, f11
	fadd.s f1, f0, f2
	fmul.s f2, f10, f15
	fadd.s f0, f1, f13
	fadd.s f10, f0, f2
	fmul.s f2, f14, f12
	fsw f10, -12(s2)
	flw f1, -12(a7)
	fmul.s f0, f1, f11
	fadd.s f3, f0, f2
	fmul.s f0, f13, f15
	fadd.s f14, f3, f10
	fmul.s f10, f10, f15
	fmul.s f3, f1, f12
	fadd.s f13, f14, f0
	fsw f13, -16(s2)
	flw f0, -16(a7)
	fmul.s f14, f0, f11
	fadd.s f2, f14, f3
	fadd.s f1, f2, f13
	fmul.s f13, f13, f15
	fmul.s f2, f0, f12
	fadd.s f14, f1, f10
	fsw f14, -20(s2)
	flw f1, -20(a7)
	fmul.s f10, f1, f11
	fmul.s f1, f1, f12
	fadd.s f3, f10, f2
	fadd.s f0, f3, f14
	fadd.s f10, f0, f13
	fsw f10, -24(s2)
	flw f13, -24(a7)
	fmul.s f0, f13, f11
	fadd.s f2, f0, f1
	fmul.s f1, f14, f15
	fadd.s f0, f2, f10
	fmul.s f10, f10, f15
	fmul.s f2, f13, f12
	fadd.s f14, f0, f1
	fsw f14, -28(s2)
	flw f1, -28(a7)
	fmul.s f0, f1, f11
	fadd.s f13, f0, f2
	fmul.s f2, f1, f12
	fadd.s f0, f13, f14
	fmul.s f14, f14, f15
	fadd.s f13, f0, f10
	fsw f13, -32(s2)
	flw f0, -32(a7)
	fmul.s f10, f0, f11
	fmul.s f0, f0, f12
	fadd.s f3, f10, f2
	fadd.s f1, f3, f13
	fadd.s f10, f1, f14
	fsw f10, -36(s2)
	flw f1, -36(a7)
	fmul.s f14, f1, f11
	fmul.s f1, f1, f12
	fadd.s f2, f14, f0
	fmul.s f0, f13, f15
	fadd.s f14, f2, f10
	fmul.s f10, f10, f15
	fadd.s f13, f14, f0
	fsw f13, -40(s2)
	flw f14, -40(a7)
	fmul.s f11, f14, f11
	fadd.s f0, f11, f1
	fadd.s f12, f0, f13
	fadd.s f11, f12, f10
	fmv.s f12, f13
	fsw f11, -44(s2)
	flw f10, -44(a7)
.p2align 2
label76:
	flw f0, 12(a3)
	sh2add a7, a6, t5
	flw f15, 16(a3)
	fmul.s f13, f10, f0
	fmul.s f14, f14, f15
	fadd.s f0, f13, f14
	flw f14, 8(a3)
	fmul.s f12, f12, f14
	fadd.s f13, f0, f11
	fadd.s f13, f13, f12
	fsw f13, 0(a7)
	sh2add a7, a6, t6
	addiw a6, a6, -1
	flw f15, 0(a7)
	blt a6, zero, label1986
	fmv.s f14, f10
	fmv.s f12, f11
	fmv.s f10, f15
	fmv.s f11, f13
	j label76
label623:
	mv a3, zero
	j label32
.p2align 2
label624:
	fmv.w.x f15, zero
	li a5, 511
	fmv.s f12, f15
	fmv.s f13, f15
	fmv.s f14, f15
	j label42
label32:
	li a4, 512
	blt a3, a4, label34
	j label41
.p2align 2
label1250:
	addiw a4, a4, 1
	li a5, 270
	blt a4, a5, label624
	j label623
.p2align 2
label42:
	flw f10, 12(a3)
	mulw t1, a5, a0
	flw f11, 16(a3)
	add t0, a2, t1
	fmul.s f0, f15, f10
	add t1, s0, t1
	fmul.s f12, f12, f11
	sh2add t2, a4, t0
	fmul.s f15, f15, f11
	fadd.s f1, f0, f12
	flw f12, 8(a3)
	fadd.s f0, f1, f13
	fmul.s f13, f13, f12
	fmul.s f1, f14, f12
	fadd.s f14, f0, f1
	fsw f14, 0(t2)
	sh2add t2, a4, t1
	flw f0, 0(t2)
	addi t2, t0, -1080
	fmul.s f3, f0, f11
	fmul.s f1, f0, f10
	sh2add t3, a4, t2
	addi t2, t1, -1080
	fadd.s f2, f1, f15
	fadd.s f1, f2, f14
	fmul.s f14, f14, f12
	fadd.s f15, f1, f13
	fsw f15, 0(t3)
	sh2add t3, a4, t2
	li t2, -2160
	flw f1, 0(t3)
	add t3, t0, t2
	fmul.s f13, f1, f10
	sh2add t4, a4, t3
	add t3, t1, t2
	addi t2, t2, -1080
	fadd.s f2, f13, f3
	fadd.s f0, f2, f15
	fmul.s f2, f1, f11
	fmul.s f15, f15, f12
	fadd.s f13, f0, f14
	fsw f13, 0(t4)
	sh2add t4, a4, t3
	flw f0, 0(t4)
	add t4, t0, t2
	fmul.s f14, f0, f10
	sh2add t3, a4, t4
	fmul.s f0, f0, f11
	add t4, t1, t2
	addi t2, t2, -1080
	fadd.s f3, f14, f2
	fadd.s f1, f3, f13
	fadd.s f14, f1, f15
	fsw f14, 0(t3)
	sh2add t3, a4, t4
	add t4, t0, t2
	flw f1, 0(t3)
	sh2add t3, a4, t4
	fmul.s f15, f1, f10
	add t4, t1, t2
	fmul.s f1, f1, f11
	addi t2, t2, -1080
	fadd.s f2, f15, f0
	fmul.s f0, f13, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f0
	fsw f13, 0(t3)
	sh2add t3, a4, t4
	add t4, t0, t2
	flw f15, 0(t3)
	sh2add t3, a4, t4
	fmul.s f0, f15, f10
	add t4, t1, t2
	addi t2, t2, -1080
	fadd.s f2, f0, f1
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fmul.s f2, f15, f11
	fadd.s f14, f0, f1
	fsw f14, 0(t3)
	sh2add t3, a4, t4
	add t4, t0, t2
	flw f0, 0(t3)
	sh2add t3, a4, t4
	fmul.s f1, f0, f10
	add t4, t1, t2
	addi t2, t2, -1080
	fadd.s f3, f1, f2
	fmul.s f2, f0, f11
	fmul.s f1, f13, f12
	fadd.s f15, f3, f14
	fmul.s f14, f14, f12
	fadd.s f13, f15, f1
	fsw f13, 0(t3)
	sh2add t3, a4, t4
	add t4, t1, t2
	flw f1, 0(t3)
	add t3, t0, t2
	fmul.s f15, f1, f10
	addi t2, t2, -1080
	sh2add t5, a4, t3
	sh2add t3, a4, t4
	add t4, t0, t2
	fadd.s f3, f15, f2
	fmul.s f2, f1, f11
	fadd.s f0, f3, f13
	fmul.s f13, f13, f12
	fadd.s f15, f0, f14
	fsw f15, 0(t5)
	flw f0, 0(t3)
	sh2add t3, a4, t4
	fmul.s f14, f0, f10
	add t4, t1, t2
	addi t2, t2, -1080
	fadd.s f3, f14, f2
	fadd.s f1, f3, f15
	fmul.s f3, f0, f11
	fmul.s f15, f15, f12
	fadd.s f14, f1, f13
	fsw f14, 0(t3)
	sh2add t3, a4, t4
	add t4, t1, t2
	flw f2, 0(t3)
	add t3, t0, t2
	fmul.s f13, f2, f10
	addi t2, t2, -1080
	sh2add t5, a4, t3
	sh2add t3, a4, t4
	fadd.s f1, f13, f3
	fmul.s f3, f2, f11
	fadd.s f0, f1, f14
	fmul.s f14, f14, f12
	fadd.s f13, f0, f15
	fsw f13, 0(t5)
	flw f1, 0(t3)
	add t3, t0, t2
	fmul.s f15, f1, f10
	sh2add t4, a4, t3
	add t3, t1, t2
	addi t2, t2, -1080
	fadd.s f2, f15, f3
	fadd.s f0, f2, f13
	fmul.s f2, f1, f11
	fmul.s f13, f13, f12
	fadd.s f15, f0, f14
	fsw f15, 0(t4)
	sh2add t4, a4, t3
	add t3, t0, t2
	flw f0, 0(t4)
	sh2add t4, a4, t3
	fmul.s f14, f0, f10
	add t3, t1, t2
	addi t2, t2, -1080
	fadd.s f3, f14, f2
	fmul.s f2, f0, f11
	fadd.s f1, f3, f15
	fmul.s f15, f15, f12
	fadd.s f14, f1, f13
	fsw f14, 0(t4)
	sh2add t4, a4, t3
	add t3, t0, t2
	flw f1, 0(t4)
	sh2add t4, a4, t3
	fmul.s f13, f1, f10
	add t3, t1, t2
	fmul.s f1, f1, f11
	addi t2, t2, -1080
	fadd.s f3, f13, f2
	fadd.s f0, f3, f14
	fadd.s f13, f0, f15
	fsw f13, 0(t4)
	sh2add t4, a4, t3
	flw f15, 0(t4)
	add t4, t0, t2
	fmul.s f0, f15, f10
	fmul.s f3, f15, f11
	sh2add t3, a4, t4
	add t4, t1, t2
	addi t2, t2, -1080
	fadd.s f2, f0, f1
	add t5, t1, t2
	fmul.s f1, f14, f12
	fadd.s f0, f2, f13
	fadd.s f14, f0, f1
	fsw f14, 0(t3)
	sh2add t3, a4, t4
	flw f0, 0(t3)
	add t3, t0, t2
	fmul.s f1, f0, f10
	addi t2, t2, -1080
	sh2add t4, a4, t3
	add t0, t0, t2
	sh2add t3, a4, t5
	fadd.s f2, f1, f3
	fmul.s f1, f13, f12
	fmul.s f12, f14, f12
	fadd.s f15, f2, f14
	fadd.s f13, f15, f1
	fmul.s f1, f0, f11
	fsw f13, 0(t4)
	flw f15, 0(t3)
	sh2add t3, a4, t0
	fmul.s f10, f15, f10
	add t0, t1, t2
	sh2add t1, a4, t0
	addiw t0, a5, -16
	fadd.s f0, f10, f1
	fadd.s f11, f0, f13
	fadd.s f10, f11, f12
	fsw f10, 0(t3)
	flw f11, 0(t1)
	li t1, 15
	ble t0, t1, label48
	fmv.s f14, f13
	fmv.s f12, f15
	mv a5, t0
	fmv.s f13, f10
	fmv.s f15, f11
	j label42
.p2align 2
label34:
	mulw t0, a3, a0
	mv t1, zero
	add a5, a1, t0
	add a4, s0, t0
	add t0, a2, t0
.p2align 2
label35:
	sh2add t2, t1, a5
	sh2add t3, t1, t0
	flw f10, 0(t2)
	sh2add t4, t1, a4
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f12, f10, f11
	fsw f12, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f12, f10, f11
	fsw f12, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f12, f10, f11
	fsw f12, 12(t4)
	flw f10, 16(t2)
	flw f11, 16(t3)
	fadd.s f12, f10, f11
	fsw f12, 16(t4)
	flw f10, 20(t2)
	flw f12, 20(t3)
	fadd.s f11, f10, f12
	fsw f11, 20(t4)
	flw f10, 24(t2)
	flw f12, 24(t3)
	fadd.s f11, f10, f12
	fsw f11, 24(t4)
	flw f10, 28(t2)
	flw f11, 28(t3)
	fadd.s f12, f10, f11
	fsw f12, 28(t4)
	flw f10, 32(t2)
	flw f12, 32(t3)
	fadd.s f11, f10, f12
	fsw f11, 32(t4)
	flw f10, 36(t2)
	flw f11, 36(t3)
	fadd.s f12, f10, f11
	fsw f12, 36(t4)
	flw f10, 40(t2)
	flw f12, 40(t3)
	fadd.s f11, f10, f12
	fsw f11, 40(t4)
	flw f10, 44(t2)
	flw f11, 44(t3)
	fadd.s f12, f10, f11
	fsw f12, 44(t4)
	flw f10, 48(t2)
	flw f11, 48(t3)
	fadd.s f12, f10, f11
	fsw f12, 48(t4)
	flw f10, 52(t2)
	flw f11, 52(t3)
	fadd.s f12, f10, f11
	fsw f12, 52(t4)
	flw f10, 56(t2)
	flw f11, 56(t3)
	fadd.s f12, f10, f11
	fsw f12, 56(t4)
	flw f10, 60(t2)
	addiw t2, t1, 16
	flw f11, 60(t3)
	li t3, 256
	fadd.s f12, f10, f11
	fsw f12, 60(t4)
	bge t2, t3, label37
	mv t1, t2
	j label35
.p2align 2
label37:
	sh2add t3, t2, a5
	addiw t1, t1, 28
	sh2add t4, t2, t0
	flw f10, 0(t3)
	sh2add t2, t2, a4
	flw f11, 0(t4)
	fadd.s f10, f10, f11
	fsw f10, 0(t2)
	flw f10, 4(t3)
	flw f11, 4(t4)
	fadd.s f12, f10, f11
	fsw f12, 4(t2)
	flw f10, 8(t3)
	flw f11, 8(t4)
	fadd.s f12, f10, f11
	fsw f12, 8(t2)
	flw f10, 12(t3)
	flw f11, 12(t4)
	fadd.s f12, f10, f11
	fsw f12, 12(t2)
	flw f10, 16(t3)
	flw f12, 16(t4)
	fadd.s f11, f10, f12
	fsw f11, 16(t2)
	flw f10, 20(t3)
	flw f11, 20(t4)
	fadd.s f12, f10, f11
	fsw f12, 20(t2)
	flw f10, 24(t3)
	flw f11, 24(t4)
	fadd.s f12, f10, f11
	fsw f12, 24(t2)
	flw f10, 28(t3)
	flw f12, 28(t4)
	fadd.s f11, f10, f12
	fsw f11, 28(t2)
	flw f10, 32(t3)
	flw f11, 32(t4)
	fadd.s f12, f10, f11
	fsw f12, 32(t2)
	flw f10, 36(t3)
	flw f11, 36(t4)
	fadd.s f12, f10, f11
	fsw f12, 36(t2)
	flw f10, 40(t3)
	flw f12, 40(t4)
	fadd.s f11, f10, f12
	fsw f11, 40(t2)
	flw f10, 44(t3)
	flw f12, 44(t4)
	fadd.s f11, f10, f12
	fsw f11, 44(t2)
.p2align 2
label38:
	sh2add t2, t1, a5
	sh2add t3, t1, t0
	flw f10, 0(t2)
	sh2add t2, t1, a4
	flw f11, 0(t3)
	addiw t1, t1, 1
	fadd.s f10, f10, f11
	fsw f10, 0(t2)
	li t2, 270
	blt t1, t2, label38
	addiw a3, a3, 1
	li a4, 512
	blt a3, a4, label34
label41:
	li a0, 158
	jal _sysy_stoptime
	mv a1, s0
	li a0, 138240
	jal putfarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label48:
	flw f12, 12(a3)
	mulw t1, t0, a0
	addiw a5, a5, -28
	add t0, a2, t1
	flw f14, 16(a3)
	fmul.s f0, f11, f12
	sh2add t2, a4, t0
	add t1, s0, t1
	addi t3, t0, -1080
	fmul.s f2, f11, f14
	fmul.s f15, f15, f14
	fadd.s f1, f0, f15
	flw f15, 8(a3)
	fadd.s f0, f1, f10
	fmul.s f10, f10, f15
	fmul.s f1, f13, f15
	fadd.s f13, f0, f1
	fsw f13, 0(t2)
	sh2add t2, a4, t1
	flw f1, 0(t2)
	sh2add t2, a4, t3
	fmul.s f0, f1, f12
	addi t3, t1, -1080
	fadd.s f11, f0, f2
	fmul.s f2, f1, f14
	fadd.s f0, f11, f13
	fmul.s f13, f13, f15
	fadd.s f11, f0, f10
	fsw f11, 0(t2)
	sh2add t2, a4, t3
	flw f0, 0(t2)
	li t2, -2160
	fmul.s f10, f0, f12
	add t3, t0, t2
	sh2add t4, a4, t3
	add t3, t1, t2
	addi t2, t2, -1080
	fadd.s f3, f10, f2
	fadd.s f1, f3, f11
	fmul.s f3, f0, f14
	fadd.s f10, f1, f13
	fsw f10, 0(t4)
	sh2add t4, a4, t3
	flw f13, 0(t4)
	add t4, t0, t2
	fmul.s f1, f13, f12
	sh2add t3, a4, t4
	add t4, t1, t2
	addi t2, t2, -1080
	fadd.s f2, f1, f3
	fmul.s f1, f11, f15
	fadd.s f0, f2, f10
	fmul.s f2, f13, f14
	fadd.s f11, f0, f1
	fsw f11, 0(t3)
	sh2add t3, a4, t4
	flw f1, 0(t3)
	add t3, t0, t2
	fmul.s f0, f1, f12
	sh2add t4, a4, t3
	fmul.s f1, f1, f14
	add t3, t1, t2
	addi t2, t2, -1080
	fadd.s f3, f0, f2
	fmul.s f0, f10, f15
	fadd.s f13, f3, f11
	fadd.s f10, f13, f0
	fsw f10, 0(t4)
	sh2add t4, a4, t3
	flw f0, 0(t4)
	add t4, t0, t2
	fmul.s f13, f0, f12
	sh2add t3, a4, t4
	add t4, t1, t2
	addi t2, t2, -1080
	fadd.s f2, f13, f1
	fmul.s f1, f11, f15
	fadd.s f13, f2, f10
	fmul.s f2, f0, f14
	fadd.s f11, f13, f1
	fsw f11, 0(t3)
	sh2add t3, a4, t4
	add t4, t1, t2
	flw f13, 0(t3)
	add t3, t0, t2
	fmul.s f1, f13, f12
	addi t2, t2, -1080
	sh2add t5, a4, t3
	fmul.s f13, f13, f14
	sh2add t3, a4, t4
	add t4, t1, t2
	fadd.s f3, f1, f2
	fmul.s f1, f10, f15
	fadd.s f0, f3, f11
	fmul.s f11, f11, f15
	fadd.s f10, f0, f1
	fsw f10, 0(t5)
	flw f1, 0(t3)
	add t3, t0, t2
	fmul.s f0, f1, f12
	addi t2, t2, -1080
	sh2add t5, a4, t3
	sh2add t3, a4, t4
	fadd.s f2, f0, f13
	fadd.s f0, f2, f10
	fmul.s f2, f1, f14
	fmul.s f10, f10, f15
	fadd.s f13, f0, f11
	fsw f13, 0(t5)
	flw f0, 0(t3)
	add t3, t0, t2
	fmul.s f11, f0, f12
	sh2add t4, a4, t3
	add t3, t1, t2
	addi t2, t2, -1080
	fadd.s f3, f11, f2
	fmul.s f2, f0, f14
	fadd.s f1, f3, f13
	fmul.s f13, f13, f15
	fadd.s f11, f1, f10
	fsw f11, 0(t4)
	sh2add t4, a4, t3
	add t3, t0, t2
	flw f1, 0(t4)
	sh2add t4, a4, t3
	fmul.s f10, f1, f12
	add t3, t1, t2
	addi t2, t2, -1080
	fadd.s f3, f10, f2
	fadd.s f0, f3, f11
	fmul.s f3, f1, f14
	fmul.s f11, f11, f15
	fadd.s f10, f0, f13
	fsw f10, 0(t4)
	sh2add t4, a4, t3
	add t3, t0, t2
	flw f0, 0(t4)
	sh2add t4, a4, t3
	fmul.s f13, f0, f12
	add t3, t1, t2
	addi t2, t2, -1080
	add t0, t0, t2
	fadd.s f2, f13, f3
	fadd.s f1, f2, f10
	fmul.s f10, f10, f15
	fadd.s f13, f1, f11
	fmul.s f1, f0, f14
	fsw f13, 0(t4)
	sh2add t4, a4, t3
	sh2add t3, a4, t0
	flw f11, 0(t4)
	add t0, t1, t2
	fmul.s f12, f11, f12
	sh2add t1, a4, t0
	fadd.s f0, f12, f1
	fadd.s f14, f0, f13
	fadd.s f12, f14, f10
	fmv.s f14, f11
	fmv.s f11, f12
	fsw f12, 0(t3)
	flw f10, 0(t1)
.p2align 2
label49:
	flw f15, 12(a3)
	mulw t0, a5, a0
	flw f0, 16(a3)
	addiw a5, a5, -1
	add t2, a2, t0
	fmul.s f12, f10, f15
	fmul.s f14, f14, f0
	add t0, s0, t0
	sh2add t1, a4, t2
	fadd.s f15, f12, f14
	flw f14, 8(a3)
	fmul.s f13, f13, f14
	fadd.s f12, f15, f11
	fadd.s f12, f12, f13
	fsw f12, 0(t1)
	sh2add t1, a4, t0
	flw f15, 0(t1)
	blt a5, zero, label1250
	fmv.s f14, f10
	fmv.s f13, f11
	fmv.s f10, f15
	fmv.s f11, f12
	j label49
