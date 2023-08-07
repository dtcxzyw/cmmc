.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	3191654481
	.4byte	1038821134
	.4byte	3206230588
	.4byte	3191992809
	.4byte	1038256634
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
	addi sp, sp, -56
pcrel2251:
	auipc a1, %pcrel_hi(imgIn)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a1, %pcrel_lo(pcrel2251)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	mv a0, s1
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel2252:
	auipc a4, %pcrel_hi(my_y1)
pcrel2253:
	auipc a0, %pcrel_hi(my_y2)
	mv t5, s1
	mv t6, zero
pcrel2254:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
pcrel2255:
	auipc a1, %pcrel_hi(imgOut)
	addi a2, a4, %pcrel_lo(pcrel2252)
	addi a3, a0, %pcrel_lo(pcrel2253)
	addi s0, a1, %pcrel_lo(pcrel2255)
	mv t4, a2
	addi a0, a5, %pcrel_lo(pcrel2254)
	li a1, 1080
	slli a4, a1, 1
	addi a5, a4, 1080
	addi t0, a5, 1080
	addi t1, t0, 1080
	addi t2, t1, 1080
	addi t3, t2, 1080
	li a6, 512
	blt zero, a6, label109
label6:
	mv t4, s1
	mv t5, a3
	mv t6, zero
	li a6, 512
	blt zero, a6, label90
	j label11
.p2align 2
label109:
	fmv.w.x f12, zero
	mv a6, t5
	mv a7, zero
	fmv.s f13, f12
	fmv.s f0, f12
	j label110
.p2align 2
label123:
	addiw t6, t6, 1
	addi t4, t4, 1080
	addi t5, t5, 1080
	li a6, 512
	blt t6, a6, label109
	j label6
.p2align 2
label110:
	flw f15, 0(a6)
	sh2add s2, a7, t4
	addiw s3, a7, 16
	li s4, 256
	flw f10, 12(a0)
	flw f11, 16(a0)
	fmul.s f14, f15, f10
	fmul.s f3, f12, f11
	fmul.s f5, f15, f11
	flw f12, 8(a0)
	fmul.s f4, f13, f12
	fadd.s f2, f14, f3
	fmul.s f3, f0, f12
	fadd.s f1, f2, f13
	fadd.s f14, f1, f3
	fsw f14, 0(s2)
	flw f0, 4(a6)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f5
	fadd.s f2, f3, f14
	fmul.s f3, f14, f12
	fadd.s f15, f2, f4
	fmul.s f4, f0, f11
	fsw f15, 4(s2)
	flw f13, 8(a6)
	fmul.s f1, f13, f10
	fadd.s f5, f1, f4
	fadd.s f2, f5, f15
	fmul.s f5, f13, f11
	fadd.s f0, f2, f3
	fmul.s f3, f15, f12
	fsw f0, 8(s2)
	flw f14, 12(a6)
	fmul.s f2, f14, f10
	fadd.s f4, f2, f5
	fadd.s f1, f4, f0
	fmul.s f4, f0, f12
	fadd.s f13, f1, f3
	fmul.s f3, f14, f11
	fsw f13, 12(s2)
	flw f15, 16(a6)
	fmul.s f2, f15, f10
	fadd.s f5, f2, f3
	fmul.s f3, f15, f11
	fadd.s f1, f5, f13
	fadd.s f14, f1, f4
	fmul.s f4, f13, f12
	fsw f14, 16(s2)
	flw f0, 20(a6)
	fmul.s f2, f0, f10
	fadd.s f5, f2, f3
	fadd.s f1, f5, f14
	fadd.s f15, f1, f4
	fmul.s f4, f0, f11
	fmul.s f0, f14, f12
	fsw f15, 20(s2)
	flw f2, 24(a6)
	fmul.s f13, f2, f10
	fadd.s f1, f13, f4
	fmul.s f4, f2, f11
	fmul.s f2, f15, f12
	fadd.s f3, f1, f15
	fadd.s f13, f3, f0
	fsw f13, 24(s2)
	flw f1, 28(a6)
	fmul.s f14, f1, f10
	fadd.s f0, f14, f4
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fadd.s f3, f0, f13
	fadd.s f14, f3, f2
	fmul.s f5, f14, f12
	fsw f14, 28(s2)
	flw f0, 32(a6)
	fmul.s f15, f0, f10
	fadd.s f3, f15, f4
	fadd.s f2, f3, f14
	fmul.s f3, f0, f11
	fadd.s f15, f2, f1
	fsw f15, 32(s2)
	flw f13, 36(a6)
	fmul.s f1, f13, f10
	fadd.s f4, f1, f3
	fmul.s f3, f13, f11
	fmul.s f13, f15, f12
	fadd.s f2, f4, f15
	fadd.s f0, f2, f5
	fmul.s f5, f0, f12
	fsw f0, 36(s2)
	flw f1, 40(a6)
	fmul.s f14, f1, f10
	fadd.s f4, f14, f3
	fadd.s f2, f4, f0
	fmul.s f4, f1, f11
	fadd.s f14, f2, f13
	fsw f14, 40(s2)
	flw f15, 44(a6)
	fmul.s f13, f15, f10
	fadd.s f3, f13, f4
	fmul.s f4, f14, f12
	fadd.s f2, f3, f14
	fmul.s f3, f15, f11
	fadd.s f13, f2, f5
	fsw f13, 44(s2)
	flw f1, 48(a6)
	fmul.s f0, f1, f10
	fadd.s f5, f0, f3
	fmul.s f3, f13, f12
	fadd.s f2, f5, f13
	fmul.s f5, f1, f11
	fadd.s f15, f2, f4
	fsw f15, 48(s2)
	flw f0, 52(a6)
	fmul.s f14, f0, f10
	fadd.s f4, f14, f5
	fadd.s f2, f4, f15
	fadd.s f14, f2, f3
	fmul.s f3, f0, f11
	fmul.s f0, f15, f12
	fsw f14, 52(s2)
	flw f1, 56(a6)
	fmul.s f13, f1, f10
	fadd.s f4, f13, f3
	fmul.s f3, f1, f11
	fmul.s f11, f14, f12
	fadd.s f2, f4, f14
	fadd.s f13, f2, f0
	fsw f13, 56(s2)
	flw f15, 60(a6)
	fmul.s f2, f15, f10
	fadd.s f4, f2, f3
	fadd.s f0, f4, f13
	fadd.s f10, f0, f11
	fsw f10, 60(s2)
	bge s3, s4, label116
	addi a6, a6, 64
	fmv.s f0, f13
	fmv.s f12, f15
	mv a7, s3
	fmv.s f13, f10
	j label110
.p2align 2
label116:
	sh2add a6, s3, t5
	addiw a7, a7, 28
	sh2add s2, s3, t4
	flw f0, 0(a6)
	flw f11, 12(a0)
	flw f12, 16(a0)
	fmul.s f1, f0, f11
	flw f14, 8(a0)
	fmul.s f3, f15, f12
	fadd.s f4, f1, f3
	fmul.s f1, f13, f14
	fmul.s f3, f10, f14
	fadd.s f2, f4, f10
	fmul.s f4, f0, f12
	fadd.s f15, f2, f1
	fsw f15, 0(s2)
	flw f1, 4(a6)
	fmul.s f13, f1, f11
	fadd.s f5, f13, f4
	fmul.s f4, f1, f12
	fadd.s f2, f5, f15
	fmul.s f5, f15, f14
	fadd.s f13, f2, f3
	fsw f13, 4(s2)
	flw f0, 8(a6)
	fmul.s f10, f0, f11
	fadd.s f3, f10, f4
	fadd.s f2, f3, f13
	fmul.s f3, f0, f12
	fadd.s f10, f2, f5
	fmul.s f5, f13, f14
	fsw f10, 8(s2)
	flw f1, 12(a6)
	fmul.s f15, f1, f11
	fadd.s f4, f15, f3
	fmul.s f3, f1, f12
	fadd.s f2, f4, f10
	fmul.s f4, f10, f14
	fadd.s f15, f2, f5
	fsw f15, 12(s2)
	flw f0, 16(a6)
	fmul.s f13, f0, f11
	fadd.s f5, f13, f3
	fadd.s f2, f5, f15
	fmul.s f5, f15, f14
	fadd.s f13, f2, f4
	fmul.s f4, f0, f12
	fsw f13, 16(s2)
	flw f1, 20(a6)
	fmul.s f10, f1, f11
	fadd.s f3, f10, f4
	fmul.s f4, f1, f12
	fmul.s f1, f13, f14
	fadd.s f2, f3, f13
	fadd.s f10, f2, f5
	fsw f10, 20(s2)
	flw f0, 24(a6)
	fmul.s f15, f0, f11
	fadd.s f2, f15, f4
	fmul.s f4, f0, f12
	fmul.s f0, f10, f14
	fadd.s f3, f2, f10
	fadd.s f15, f3, f1
	fsw f15, 24(s2)
	flw f2, 28(a6)
	fmul.s f13, f2, f11
	fadd.s f1, f13, f4
	fmul.s f4, f2, f12
	fmul.s f2, f15, f14
	fadd.s f3, f1, f15
	fadd.s f13, f3, f0
	fsw f13, 28(s2)
	flw f1, 32(a6)
	fmul.s f10, f1, f11
	fadd.s f0, f10, f4
	fmul.s f4, f13, f14
	fadd.s f3, f0, f13
	fadd.s f10, f3, f2
	fmul.s f3, f1, f12
	fsw f10, 32(s2)
	flw f0, 36(a6)
	fmul.s f15, f0, f11
	fadd.s f5, f15, f3
	fadd.s f2, f5, f10
	fmul.s f5, f0, f12
	fadd.s f15, f2, f4
	fmul.s f4, f10, f14
	fsw f15, 36(s2)
	flw f1, 40(a6)
	fmul.s f13, f1, f11
	fadd.s f3, f13, f5
	fadd.s f2, f3, f15
	fmul.s f3, f1, f12
	fmul.s f12, f15, f14
	fadd.s f13, f2, f4
	fsw f13, 40(s2)
	flw f0, 44(a6)
	fmv.s f14, f0
	sh2add a6, a7, t5
	fmul.s f10, f0, f11
	fadd.s f2, f10, f3
	fadd.s f11, f2, f13
	fadd.s f10, f11, f12
	fmv.s f12, f13
	fsw f10, 44(s2)
.p2align 2
label117:
	flw f11, 0(a6)
	sh2add s2, a7, t4
	li s3, 270
	addiw a7, a7, 1
	flw f15, 12(a0)
	flw f0, 16(a0)
	fmul.s f13, f11, f15
	fmul.s f2, f14, f0
	flw f14, 8(a0)
	fmul.s f0, f12, f14
	fadd.s f1, f13, f2
	fadd.s f15, f1, f10
	fadd.s f13, f15, f0
	fsw f13, 0(s2)
	bge a7, s3, label123
	addi a6, a6, 4
	fmv.s f14, f11
	fmv.s f12, f10
	fmv.s f10, f13
	j label117
label11:
	mv t4, a3
	mv t6, a2
	mv t5, s0
	mv a6, zero
	li a7, 512
	blt zero, a7, label17
	j label144
.p2align 2
label90:
	addi a6, t5, 1076
	fmv.w.x f15, zero
	li a7, 269
	fmv.s f14, f15
	fmv.s f13, f15
	fmv.s f0, f15
	j label91
.p2align 2
label1724:
	addiw t6, t6, 1
	addi t5, t5, 1080
	addi t4, t4, 1080
	li a6, 512
	blt t6, a6, label90
	j label11
.p2align 2
label91:
	flw f10, 0(a0)
	sh2add s1, a7, t4
	addiw s2, a7, -16
	li s3, 13
	fmul.s f1, f15, f10
	flw f11, 4(a0)
	flw f12, 8(a0)
	fmul.s f3, f14, f11
	fmul.s f5, f13, f12
	fadd.s f4, f1, f3
	fmul.s f1, f0, f12
	fadd.s f2, f4, f13
	fmul.s f4, f15, f11
	fadd.s f14, f2, f1
	fsw f14, 0(a6)
	flw f1, 0(s1)
	fmul.s f0, f1, f10
	fadd.s f3, f0, f4
	fadd.s f2, f3, f14
	fmul.s f3, f1, f11
	fadd.s f15, f2, f5
	fmul.s f5, f14, f12
	fsw f15, -4(a6)
	flw f0, -4(s1)
	fmul.s f13, f0, f10
	fadd.s f4, f13, f3
	fmul.s f3, f15, f12
	fadd.s f2, f4, f15
	fadd.s f13, f2, f5
	fmul.s f5, f0, f11
	fsw f13, -8(a6)
	flw f1, -8(s1)
	fmul.s f14, f1, f10
	fadd.s f4, f14, f5
	fadd.s f2, f4, f13
	fadd.s f0, f2, f3
	fmul.s f3, f1, f11
	fmul.s f1, f13, f12
	fsw f0, -12(a6)
	fmul.s f5, f0, f12
	flw f14, -12(s1)
	fmul.s f15, f14, f10
	fadd.s f4, f15, f3
	fadd.s f2, f4, f0
	fmul.s f4, f14, f11
	fadd.s f15, f2, f1
	fsw f15, -16(a6)
	flw f13, -16(s1)
	fmul.s f1, f13, f10
	fadd.s f3, f1, f4
	fmul.s f4, f15, f12
	fadd.s f2, f3, f15
	fadd.s f14, f2, f5
	fmul.s f5, f13, f11
	fsw f14, -20(a6)
	flw f0, -20(s1)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f5
	fmul.s f5, f0, f11
	fadd.s f2, f3, f14
	fmul.s f3, f14, f12
	fadd.s f13, f2, f4
	fsw f13, -24(a6)
	flw f1, -24(s1)
	fmul.s f15, f1, f10
	fadd.s f4, f15, f5
	fadd.s f2, f4, f13
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fadd.s f15, f2, f3
	fmul.s f5, f15, f12
	fsw f15, -28(a6)
	flw f0, -28(s1)
	fmul.s f14, f0, f10
	fadd.s f3, f14, f4
	fadd.s f2, f3, f15
	fmul.s f3, f0, f11
	fadd.s f14, f2, f1
	fsw f14, -32(a6)
	flw f13, -32(s1)
	fmul.s f2, f13, f10
	fadd.s f4, f2, f3
	fmul.s f3, f14, f12
	fadd.s f1, f4, f14
	fmul.s f4, f13, f11
	fadd.s f0, f1, f5
	fsw f0, -36(a6)
	flw f15, -36(s1)
	fmul.s f1, f15, f10
	fadd.s f5, f1, f4
	fmul.s f4, f0, f12
	fadd.s f2, f5, f0
	fadd.s f13, f2, f3
	fmul.s f3, f15, f11
	fsw f13, -40(a6)
	flw f1, -40(s1)
	fmul.s f14, f1, f10
	fadd.s f5, f14, f3
	fmul.s f3, f1, f11
	fmul.s f1, f13, f12
	fadd.s f2, f5, f13
	fadd.s f14, f2, f4
	fsw f14, -44(a6)
	flw f15, -44(s1)
	fmul.s f5, f15, f11
	fmul.s f0, f15, f10
	fadd.s f4, f0, f3
	fadd.s f2, f4, f14
	fmul.s f4, f14, f12
	fadd.s f0, f2, f1
	fsw f0, -48(a6)
	flw f13, -48(s1)
	fmul.s f1, f13, f10
	fadd.s f3, f1, f5
	fmul.s f5, f0, f12
	fadd.s f2, f3, f0
	fadd.s f15, f2, f4
	fmul.s f4, f13, f11
	fsw f15, -52(a6)
	flw f1, -52(s1)
	fmul.s f14, f1, f10
	fadd.s f3, f14, f4
	fadd.s f2, f3, f15
	fmul.s f3, f1, f11
	fmul.s f11, f15, f12
	fadd.s f13, f2, f5
	fsw f13, -56(a6)
	flw f14, -56(s1)
	fmul.s f2, f14, f10
	fadd.s f4, f2, f3
	fadd.s f0, f4, f13
	fadd.s f10, f0, f11
	fsw f10, -60(a6)
	flw f15, -60(s1)
	ble s2, s3, label98
	addi a6, a6, -64
	fmv.s f0, f13
	mv a7, s2
	fmv.s f13, f10
	j label91
.p2align 2
label98:
	flw f11, 0(a0)
	sh2add a6, s2, t5
	sh2add s1, s2, t4
	addiw a7, a7, -28
	fmul.s f0, f15, f11
	flw f12, 4(a0)
	fmul.s f2, f14, f12
	flw f14, 8(a0)
	fadd.s f3, f0, f2
	fmul.s f2, f13, f14
	fadd.s f1, f3, f10
	fadd.s f0, f1, f2
	fmul.s f1, f15, f12
	fmul.s f15, f10, f14
	fsw f0, 0(a6)
	flw f2, 0(s1)
	fmul.s f13, f2, f11
	fadd.s f4, f13, f1
	fadd.s f3, f4, f0
	fadd.s f1, f3, f15
	fmul.s f15, f2, f12
	fmul.s f2, f0, f14
	fsw f1, -4(a6)
	flw f13, -4(s1)
	fmul.s f10, f13, f11
	fadd.s f4, f10, f15
	fadd.s f3, f4, f1
	fmul.s f4, f13, f12
	fadd.s f15, f3, f2
	fmul.s f3, f1, f14
	fsw f15, -8(a6)
	flw f10, -8(s1)
	fmul.s f0, f10, f11
	fadd.s f5, f0, f4
	fmul.s f4, f15, f14
	fadd.s f2, f5, f15
	fadd.s f13, f2, f3
	fmul.s f3, f10, f12
	fsw f13, -12(a6)
	flw f0, -12(s1)
	fmul.s f2, f0, f11
	fadd.s f5, f2, f3
	fmul.s f3, f13, f14
	fadd.s f1, f5, f13
	fadd.s f10, f1, f4
	fmul.s f4, f0, f12
	fsw f10, -16(a6)
	flw f15, -16(s1)
	fmul.s f2, f15, f11
	fadd.s f5, f2, f4
	fadd.s f1, f5, f10
	fadd.s f0, f1, f3
	fmul.s f1, f15, f12
	fmul.s f15, f10, f14
	fsw f0, -20(a6)
	flw f2, -20(s1)
	fmul.s f13, f2, f11
	fadd.s f4, f13, f1
	fadd.s f3, f4, f0
	fadd.s f13, f3, f15
	fmul.s f15, f2, f12
	fmul.s f2, f0, f14
	fsw f13, -24(a6)
	flw f1, -24(s1)
	fmul.s f10, f1, f11
	fadd.s f4, f10, f15
	fadd.s f3, f4, f13
	fmul.s f4, f1, f12
	fmul.s f1, f13, f14
	fadd.s f15, f3, f2
	fmul.s f5, f15, f14
	fsw f15, -28(a6)
	flw f10, -28(s1)
	fmul.s f0, f10, f11
	fadd.s f3, f0, f4
	fmul.s f4, f10, f12
	fadd.s f2, f3, f15
	fadd.s f0, f2, f1
	fsw f0, -32(a6)
	flw f13, -32(s1)
	fmul.s f1, f13, f11
	fadd.s f3, f1, f4
	fmul.s f4, f13, f12
	fadd.s f2, f3, f0
	fadd.s f10, f2, f5
	fmul.s f5, f0, f14
	fsw f10, -36(a6)
	flw f1, -36(s1)
	fmul.s f15, f1, f11
	fadd.s f3, f15, f4
	fmul.s f4, f1, f12
	fmul.s f12, f10, f14
	fadd.s f2, f3, f10
	fadd.s f13, f2, f5
	fsw f13, -40(a6)
	flw f15, -40(s1)
	fmv.s f14, f15
	fmul.s f2, f15, f11
	fadd.s f3, f2, f4
	fadd.s f0, f3, f13
	fadd.s f11, f0, f12
	fsw f11, -44(a6)
	sh2add a6, a7, t5
	flw f10, -44(s1)
.p2align 2
label99:
	flw f15, 0(a0)
	sh2add s1, a7, t4
	flw f2, 4(a0)
	addiw a7, a7, -1
	fmul.s f12, f10, f15
	fmul.s f0, f14, f2
	flw f14, 8(a0)
	fadd.s f1, f12, f0
	fmul.s f0, f13, f14
	fadd.s f15, f1, f11
	fadd.s f12, f15, f0
	fsw f12, 0(a6)
	flw f15, 0(s1)
	blt a7, zero, label1724
	addi a6, a6, -4
	fmv.s f14, f10
	fmv.s f13, f11
	fmv.s f10, f15
	fmv.s f11, f12
	j label99
label144:
	mv t4, zero
	j label29
.p2align 2
label17:
	addi a7, t6, 16
	li s1, 4
	mv s5, zero
	j label18
.p2align 2
label27:
	addiw a6, a6, 1
	addi t5, t5, 1080
	addi t6, t6, 1080
	addi t4, t4, 1080
	li a7, 512
	blt a6, a7, label17
	j label144
label29:
	li t5, 270
	blt t4, t5, label72
	j label351
.p2align 2
label18:
	sh2add s2, s5, t6
	sh2add s3, s5, t4
	flw f10, 0(s2)
	sh2add s4, s5, t5
	flw f12, 0(s3)
	addiw s5, s1, 12
	fadd.s f11, f10, f12
	fsw f11, 0(s4)
	flw f12, 4(s2)
	flw f13, 4(s3)
	fadd.s f11, f12, f13
	fsw f11, 4(s4)
	flw f10, 8(s2)
	flw f13, 8(s3)
	fadd.s f12, f10, f13
	fsw f12, 8(s4)
	flw f11, 12(s2)
	sh2add s2, s1, t4
	flw f13, 12(s3)
	sh2add s3, s1, t5
	fadd.s f12, f11, f13
	fsw f12, 12(s4)
	flw f10, 0(a7)
	flw f12, 0(s2)
	fadd.s f11, f10, f12
	fsw f11, 0(s3)
	flw f10, 4(a7)
	flw f13, 4(s2)
	fadd.s f12, f10, f13
	fsw f12, 4(s3)
	flw f11, 8(a7)
	flw f13, 8(s2)
	fadd.s f12, f11, f13
	fsw f12, 8(s3)
	flw f10, 12(a7)
	flw f13, 12(s2)
	fadd.s f12, f10, f13
	fsw f12, 12(s3)
	flw f11, 16(a7)
	flw f13, 16(s2)
	fadd.s f14, f11, f13
	fsw f14, 16(s3)
	flw f10, 20(a7)
	flw f12, 20(s2)
	fadd.s f13, f10, f12
	fsw f13, 20(s3)
	flw f11, 24(a7)
	flw f12, 24(s2)
	fadd.s f13, f11, f12
	fsw f13, 24(s3)
	flw f10, 28(a7)
	flw f12, 28(s2)
	fadd.s f14, f10, f12
	fsw f14, 28(s3)
	flw f11, 32(a7)
	flw f13, 32(s2)
	fadd.s f10, f11, f13
	fsw f10, 32(s3)
	flw f12, 36(a7)
	flw f11, 36(s2)
	fadd.s f14, f12, f11
	fsw f14, 36(s3)
	flw f10, 40(a7)
	flw f13, 40(s2)
	fadd.s f12, f10, f13
	fsw f12, 40(s3)
	flw f11, 44(a7)
	flw f10, 44(s2)
	addiw s2, s1, 16
	fadd.s f12, f11, f10
	fsw f12, 44(s3)
	li s3, 260
	bge s2, s3, label23
	addi a7, a7, 64
	mv s1, s2
	j label18
.p2align 2
label23:
	sh2add a7, s5, t6
	addiw s1, s1, 24
	sh2add s2, s5, t4
	flw f10, 0(a7)
	sh2add s3, s5, t5
	flw f11, 0(s2)
	fadd.s f12, f10, f11
	fsw f12, 0(s3)
	flw f11, 4(a7)
	flw f13, 4(s2)
	fadd.s f12, f11, f13
	fsw f12, 4(s3)
	flw f10, 8(a7)
	flw f13, 8(s2)
	fadd.s f14, f10, f13
	fsw f14, 8(s3)
	flw f11, 12(a7)
	flw f12, 12(s2)
	fadd.s f13, f11, f12
	fsw f13, 12(s3)
	flw f10, 16(a7)
	flw f12, 16(s2)
	fadd.s f13, f10, f12
	fsw f13, 16(s3)
	flw f11, 20(a7)
	flw f12, 20(s2)
	fadd.s f13, f11, f12
	fsw f13, 20(s3)
	flw f10, 24(a7)
	flw f12, 24(s2)
	fadd.s f13, f10, f12
	fsw f13, 24(s3)
	flw f11, 28(a7)
	flw f10, 28(s2)
	fadd.s f13, f11, f10
	fsw f13, 28(s3)
	flw f12, 32(a7)
	flw f14, 32(s2)
	fadd.s f11, f12, f14
	fsw f11, 32(s3)
	flw f10, 36(a7)
	flw f13, 36(s2)
	fadd.s f12, f10, f13
	fsw f12, 36(s3)
	flw f11, 40(a7)
	flw f13, 40(s2)
	fadd.s f12, f11, f13
	fsw f12, 40(s3)
	flw f10, 44(a7)
	sh2add a7, s1, t6
	flw f11, 44(s2)
	fadd.s f12, f10, f11
	fsw f12, 44(s3)
.p2align 2
label24:
	flw f10, 0(a7)
	sh2add s2, s1, t4
	sh2add s3, s1, t5
	flw f12, 0(s2)
	addiw s1, s1, 1
	li s2, 270
	fadd.s f11, f10, f12
	fsw f11, 0(s3)
	bge s1, s2, label27
	addi a7, a7, 4
	j label24
label351:
	mv a4, zero
	li a5, 270
	blt zero, a5, label52
	j label33
.p2align 2
label72:
	add t5, s0, t0
	fmv.w.x f12, zero
	li t6, 4
	mv a6, zero
	fmv.s f13, f12
	fmv.s f0, f12
	j label73
.p2align 2
label1415:
	addiw t4, t4, 1
	li t5, 270
	blt t4, t5, label72
	j label351
.p2align 2
label73:
	mulw s1, a6, a1
	add a6, s0, s1
	addi s3, a6, 1080
	sh2add a7, t4, a6
	flw f15, 0(a7)
	add a7, a2, s1
	flw f10, 12(a0)
	sh2add s1, t4, s3
	sh2add s2, t4, a7
	flw f11, 16(a0)
	fmul.s f14, f15, f10
	add s3, a6, a4
	fmul.s f2, f12, f11
	flw f12, 8(a0)
	fmul.s f4, f13, f12
	fadd.s f3, f14, f2
	fmul.s f2, f0, f12
	fadd.s f1, f3, f13
	fmul.s f3, f15, f11
	fadd.s f14, f1, f2
	fsw f14, 0(s2)
	addi s2, a7, 1080
	flw f0, 0(s1)
	sh2add s1, t4, s2
	fmul.s f1, f0, f10
	sh2add s2, t4, s3
	add s3, a6, a5
	fadd.s f5, f1, f3
	fmul.s f3, f0, f11
	fadd.s f2, f5, f14
	fadd.s f15, f2, f4
	fmul.s f4, f14, f12
	fsw f15, 0(s1)
	flw f13, 0(s2)
	add s2, a7, a4
	fmul.s f1, f13, f10
	sh2add s1, t4, s2
	sh2add s2, t4, s3
	li s3, 135
	fadd.s f5, f1, f3
	fmul.s f3, f13, f11
	fmul.s f13, f15, f12
	fadd.s f2, f5, f15
	fadd.s f0, f2, f4
	fsw f0, 0(s1)
	add s1, a7, a5
	flw f1, 0(s2)
	sh2add a7, t4, t5
	sh2add a6, t4, s1
	fmul.s f14, f1, f10
	mulw s1, t6, a1
	fadd.s f4, f14, f3
	fmul.s f3, f0, f12
	fadd.s f2, f4, f0
	fadd.s f14, f2, f13
	fmul.s f13, f1, f11
	fsw f14, 0(a6)
	add a6, a2, s1
	flw f15, 0(a7)
	addi s1, t5, 1080
	sh2add a7, t4, a6
	fmul.s f4, f15, f10
	fmul.s f5, f15, f11
	fadd.s f2, f4, f13
	fadd.s f1, f2, f14
	fadd.s f13, f1, f3
	fmul.s f3, f14, f12
	fsw f13, 0(a7)
	sh2add a7, t4, s1
	add s1, t5, a4
	flw f1, 0(a7)
	addi a7, a6, 1080
	fmul.s f0, f1, f10
	sh2add s2, t4, a7
	sh2add a7, t4, s1
	add s1, a6, a4
	fadd.s f4, f0, f5
	fadd.s f2, f4, f13
	fadd.s f15, f2, f3
	fmul.s f3, f1, f11
	fmul.s f1, f13, f12
	fsw f15, 0(s2)
	add s2, t5, a5
	flw f0, 0(a7)
	sh2add a7, t4, s1
	fmul.s f14, f0, f10
	fadd.s f4, f14, f3
	fmul.s f3, f15, f12
	fadd.s f2, f4, f15
	fmul.s f4, f0, f11
	fadd.s f14, f2, f1
	fsw f14, 0(a7)
	sh2add a7, t4, s2
	flw f13, 0(a7)
	add a7, a6, a5
	fmul.s f1, f13, f10
	sh2add s2, t4, a7
	add a7, t5, t0
	sh2add s1, t4, a7
	add a7, a6, t0
	fadd.s f5, f1, f4
	fadd.s f2, f5, f14
	fmul.s f5, f13, f11
	fadd.s f0, f2, f3
	fmul.s f3, f14, f12
	fsw f0, 0(s2)
	flw f15, 0(s1)
	sh2add s1, t4, a7
	fmul.s f1, f15, f10
	add a7, t5, t1
	sh2add s2, t4, a7
	add a7, a6, t1
	fadd.s f4, f1, f5
	fadd.s f2, f4, f0
	fmul.s f4, f15, f11
	fadd.s f13, f2, f3
	fmul.s f3, f0, f12
	fsw f13, 0(s1)
	add s1, t5, t2
	flw f14, 0(s2)
	sh2add s2, t4, a7
	fmul.s f2, f14, f10
	sh2add a7, t4, s1
	fadd.s f5, f2, f4
	fmul.s f4, f13, f12
	fadd.s f1, f5, f13
	fadd.s f15, f1, f3
	fmul.s f3, f14, f11
	fsw f15, 0(s2)
	flw f1, 0(a7)
	add a7, a6, t2
	fmul.s f2, f1, f10
	sh2add s1, t4, a7
	add a7, t5, t3
	sh2add s2, t4, a7
	fadd.s f5, f2, f3
	fmul.s f3, f1, f11
	fmul.s f1, f15, f12
	fadd.s f0, f5, f15
	fadd.s f14, f0, f4
	fsw f14, 0(s1)
	add s1, a6, t3
	flw f0, 0(s2)
	sh2add a7, t4, s1
	slli s1, s3, 6
	fmul.s f13, f0, f10
	add s2, t5, s1
	fadd.s f4, f13, f3
	fmul.s f3, f0, f11
	fmul.s f0, f14, f12
	fadd.s f2, f4, f14
	fadd.s f13, f2, f1
	fsw f13, 0(a7)
	sh2add a7, t4, s2
	flw f1, 0(a7)
	add a7, a6, s1
	fmul.s f15, f1, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f4, f15, f3
	fmul.s f3, f1, f11
	fmul.s f1, f13, f12
	fadd.s f2, f4, f13
	fadd.s f15, f2, f0
	fsw f15, 0(s2)
	sh2add s2, t4, s3
	flw f2, 0(s2)
	add s2, a6, a7
	fmul.s f14, f2, f10
	sh2add s3, t4, s2
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f4, f14, f3
	fmul.s f3, f2, f11
	fmul.s f2, f15, f12
	fadd.s f0, f4, f15
	fadd.s f14, f0, f1
	fsw f14, 0(s3)
	flw f0, 0(a7)
	add a7, a6, s1
	fmul.s f13, f0, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	add s3, t5, a7
	fadd.s f4, f13, f3
	fadd.s f1, f4, f14
	fmul.s f4, f0, f11
	fmul.s f11, f14, f12
	fadd.s f13, f1, f2
	fsw f13, 0(s2)
	sh2add s2, t4, s3
	flw f15, 0(s2)
	add s2, a6, a7
	fmul.s f1, f15, f10
	addiw a6, t6, 12
	addiw a7, t6, 16
	sh2add s1, t4, s2
	fadd.s f3, f1, f4
	fadd.s f2, f3, f13
	fadd.s f10, f2, f11
	fsw f10, 0(s1)
	li s1, 500
	bge a7, s1, label80
	li s1, 135
	fmv.s f0, f13
	fmv.s f12, f15
	slli t6, s1, 7
	fmv.s f13, f10
	add t5, t5, t6
	mv t6, a7
	j label73
.p2align 2
label80:
	mulw a7, a6, a1
	li s3, 135
	addiw t6, t6, 24
	add t5, s0, a7
	sh2add a6, t4, t5
	flw f0, 0(a6)
	add a6, a2, a7
	flw f11, 12(a0)
	sh2add s1, t4, a6
	addi a7, t5, 1080
	flw f12, 16(a0)
	fmul.s f2, f0, f11
	sh2add s2, t4, a7
	flw f14, 8(a0)
	fmul.s f4, f15, f12
	fadd.s f3, f2, f4
	fmul.s f4, f0, f12
	fmul.s f2, f13, f14
	fmul.s f0, f10, f14
	fadd.s f1, f3, f10
	fadd.s f15, f1, f2
	fsw f15, 0(s1)
	add s1, t5, a4
	flw f13, 0(s2)
	addi s2, a6, 1080
	fmul.s f1, f13, f11
	sh2add a7, t4, s2
	fadd.s f3, f1, f4
	fmul.s f4, f13, f12
	fmul.s f13, f15, f14
	fadd.s f2, f3, f15
	fadd.s f1, f2, f0
	fsw f1, 0(a7)
	sh2add a7, t4, s1
	flw f2, 0(a7)
	add a7, a6, a4
	fmul.s f0, f2, f11
	sh2add s1, t4, a7
	add a7, t5, a5
	sh2add s2, t4, a7
	fadd.s f3, f0, f4
	fmul.s f4, f2, f12
	fmul.s f2, f1, f14
	fadd.s f10, f3, f1
	fadd.s f0, f10, f13
	fmul.s f5, f0, f14
	fsw f0, 0(s1)
	add s1, a6, a5
	flw f10, 0(s2)
	sh2add a7, t4, s1
	add s2, t5, t0
	fmul.s f13, f10, f11
	fadd.s f3, f13, f4
	fadd.s f15, f3, f0
	fmul.s f3, f10, f12
	fadd.s f13, f15, f2
	fsw f13, 0(a7)
	sh2add a7, t4, s2
	flw f15, 0(a7)
	add a7, a6, t0
	fmul.s f2, f15, f11
	sh2add s1, t4, a7
	add a7, t5, t1
	sh2add s2, t4, a7
	add a7, a6, t1
	fadd.s f4, f2, f3
	fmul.s f3, f15, f12
	fadd.s f1, f4, f13
	fadd.s f10, f1, f5
	fmul.s f5, f13, f14
	fsw f10, 0(s1)
	add s1, t5, t2
	flw f0, 0(s2)
	sh2add s2, t4, a7
	fmul.s f2, f0, f11
	sh2add a7, t4, s1
	fadd.s f4, f2, f3
	fadd.s f1, f4, f10
	fmul.s f4, f0, f12
	fmul.s f0, f10, f14
	fadd.s f15, f1, f5
	fsw f15, 0(s2)
	flw f1, 0(a7)
	add a7, a6, t2
	fmul.s f13, f1, f11
	sh2add s1, t4, a7
	add a7, t5, t3
	sh2add s2, t4, a7
	add a7, a6, t3
	fadd.s f3, f13, f4
	fadd.s f2, f3, f15
	fmul.s f3, f1, f12
	fmul.s f1, f15, f14
	fadd.s f13, f2, f0
	fsw f13, 0(s1)
	sh2add s1, t4, a7
	flw f0, 0(s2)
	slli a7, s3, 6
	fmul.s f10, f0, f11
	add s3, a6, a7
	add s2, t5, a7
	fadd.s f4, f10, f3
	fadd.s f2, f4, f13
	fmul.s f4, f0, f12
	fmul.s f0, f13, f14
	fadd.s f10, f2, f1
	fsw f10, 0(s1)
	sh2add s1, t4, s2
	sh2add s2, t4, s3
	flw f1, 0(s1)
	addi s1, a7, 1080
	fmul.s f15, f1, f11
	add s3, t5, s1
	sh2add a7, t4, s3
	fadd.s f3, f15, f4
	fadd.s f2, f3, f10
	fmul.s f3, f1, f12
	fmul.s f1, f10, f14
	fadd.s f15, f2, f0
	fsw f15, 0(s2)
	flw f0, 0(a7)
	add a7, a6, s1
	fmul.s f13, f0, f11
	fmul.s f5, f0, f12
	sh2add s3, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s2, t5, a7
	fadd.s f4, f13, f3
	fmul.s f3, f15, f14
	fadd.s f2, f4, f15
	fadd.s f13, f2, f1
	fsw f13, 0(s3)
	sh2add s3, t4, s2
	add s2, a6, a7
	flw f10, 0(s3)
	sh2add s3, t4, s2
	fmul.s f1, f10, f11
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f4, f1, f5
	fadd.s f2, f4, f13
	fadd.s f0, f2, f3
	fmul.s f2, f10, f12
	fmul.s f12, f13, f14
	fmv.s f13, f0
	fsw f0, 0(s3)
	flw f15, 0(a7)
	fmv.s f14, f15
	add a7, a6, s1
	fmul.s f1, f15, f11
	mulw a6, t6, a1
	sh2add t5, t4, a7
	fadd.s f3, f1, f2
	fadd.s f11, f3, f0
	fadd.s f10, f11, f12
	fsw f10, 0(t5)
	add t5, s0, a6
.p2align 2
label81:
	sh2add a6, t4, t5
	mulw a7, t6, a1
	flw f11, 0(a6)
	addiw t6, t6, 1
	add a6, a2, a7
	flw f15, 12(a0)
	sh2add s1, t4, a6
	flw f1, 16(a0)
	li a6, 512
	fmul.s f12, f11, f15
	fmul.s f0, f14, f1
	flw f1, 8(a0)
	fmul.s f14, f13, f1
	fadd.s f2, f12, f0
	fadd.s f15, f2, f10
	fadd.s f12, f15, f14
	fsw f12, 0(s1)
	bge t6, a6, label1415
	addi t5, t5, 1080
	fmv.s f14, f11
	fmv.s f13, f10
	fmv.s f10, f12
	j label81
label33:
	mv a0, s0
	mv a1, zero
	li a4, 512
	blt zero, a4, label39
	j label51
.p2align 2
label52:
	lui t1, 134
	fmv.w.x f14, zero
	addiw t0, t1, -1304
	fmv.s f12, f14
	fmv.s f13, f14
	fmv.s f0, f14
	li t1, 511
	add a5, a3, t0
	li t0, 507
	j label53
.p2align 2
label986:
	addiw a4, a4, 1
	li a5, 270
	blt a4, a5, label52
	j label33
.p2align 2
label53:
	flw f10, 0(a0)
	mulw t2, t1, a1
	flw f11, 4(a0)
	add t4, s0, t2
	add t1, a3, t2
	fmul.s f15, f14, f10
	fmul.s f4, f14, f11
	fmul.s f2, f12, f11
	sh2add t5, a4, t4
	flw f12, 8(a0)
	sh2add t3, a4, t1
	fmul.s f5, f13, f12
	fadd.s f3, f15, f2
	fmul.s f2, f0, f12
	fadd.s f1, f3, f13
	fadd.s f15, f1, f2
	fsw f15, 0(t3)
	addi t3, t1, -1080
	flw f1, 0(t5)
	sh2add t2, a4, t3
	addi t5, t4, -1080
	fmul.s f2, f1, f10
	sh2add t3, a4, t5
	li t5, -135
	fadd.s f3, f2, f4
	fadd.s f0, f3, f15
	fmul.s f3, f1, f11
	fmul.s f1, f15, f12
	fadd.s f14, f0, f5
	fsw f14, 0(t2)
	flw f0, 0(t3)
	slli t3, t5, 4
	fmul.s f13, f0, f10
	add t5, t4, t3
	add t2, t1, t3
	sh2add t6, a4, t2
	sh2add t2, a4, t5
	fadd.s f4, f13, f3
	fadd.s f2, f4, f14
	fmul.s f4, f0, f11
	fmul.s f0, f14, f12
	fadd.s f13, f2, f1
	fsw f13, 0(t6)
	flw f1, 0(t2)
	addi t2, t3, -1080
	fmul.s f15, f1, f10
	add a6, t4, t2
	add t6, t1, t2
	sh2add t1, a4, a6
	sh2add t5, a4, t6
	fadd.s f3, f15, f4
	fadd.s f2, f3, f13
	fmul.s f3, f1, f11
	fmul.s f1, f13, f12
	fadd.s f15, f2, f0
	fsw f15, 0(t5)
	mulw t5, t0, a1
	flw f0, 0(t1)
	sh2add t1, a4, a5
	fmul.s f14, f0, f10
	fmul.s f13, f0, f11
	fadd.s f4, f14, f3
	fadd.s f2, f4, f15
	fadd.s f14, f2, f1
	fmul.s f2, f15, f12
	fsw f14, 0(t1)
	add t1, s0, t5
	sh2add t4, a4, t1
	addi t5, a5, -1080
	addi t6, t1, -1080
	flw f0, 0(t4)
	sh2add t4, a4, t5
	fmul.s f4, f0, f10
	fmul.s f5, f0, f11
	sh2add t5, a4, t6
	fadd.s f3, f4, f13
	fadd.s f1, f3, f14
	fmul.s f3, f14, f12
	fadd.s f13, f1, f2
	fsw f13, 0(t4)
	add t4, a5, t3
	flw f15, 0(t5)
	sh2add t6, a4, t4
	add t5, t1, t3
	fmul.s f1, f15, f10
	add t3, a5, t2
	sh2add t4, a4, t5
	sh2add t5, a4, t3
	fadd.s f4, f1, f5
	fmul.s f5, f13, f12
	fadd.s f2, f4, f13
	fmul.s f4, f15, f11
	fadd.s f0, f2, f3
	fsw f0, 0(t6)
	flw f1, 0(t4)
	add t4, t1, t2
	fmul.s f2, f1, f10
	sh2add t3, a4, t4
	addi t4, t2, -1080
	add t6, t1, t4
	sh2add t2, a4, t6
	fadd.s f3, f2, f4
	fmul.s f4, f1, f11
	fmul.s f1, f0, f12
	fadd.s f14, f3, f0
	fadd.s f15, f14, f5
	fsw f15, 0(t5)
	flw f14, 0(t3)
	add t3, a5, t4
	fmul.s f13, f14, f10
	sh2add t5, a4, t3
	addi t3, t4, -1080
	add t4, t1, t3
	fadd.s f3, f13, f4
	fmul.s f4, f15, f12
	fadd.s f2, f3, f15
	fmul.s f3, f14, f11
	fadd.s f13, f2, f1
	fsw f13, 0(t5)
	flw f1, 0(t2)
	add t2, a5, t3
	fmul.s f2, f1, f10
	sh2add t5, a4, t2
	sh2add t2, a4, t4
	fadd.s f5, f2, f3
	fadd.s f0, f5, f13
	fadd.s f14, f0, f4
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fsw f14, 0(t5)
	flw f0, 0(t2)
	addi t2, t3, -1080
	fmul.s f15, f0, f10
	add t3, t1, t2
	add t4, a5, t2
	sh2add t5, a4, t4
	sh2add t4, a4, t3
	addi t3, t2, -1080
	fadd.s f3, f15, f4
	add t2, t1, t3
	fadd.s f2, f3, f14
	fmul.s f3, f0, f11
	fmul.s f0, f14, f12
	fadd.s f15, f2, f1
	fsw f15, 0(t5)
	flw f1, 0(t4)
	add t4, a5, t3
	fmul.s f13, f1, f10
	sh2add t5, a4, t4
	sh2add t4, a4, t2
	addi t2, t3, -1080
	add t3, t1, t2
	fadd.s f4, f13, f3
	fadd.s f2, f4, f15
	fmul.s f4, f1, f11
	fmul.s f1, f15, f12
	fadd.s f13, f2, f0
	fsw f13, 0(t5)
	flw f0, 0(t4)
	add t4, a5, t2
	fmul.s f14, f0, f10
	sh2add t5, a4, t4
	sh2add t4, a4, t3
	addi t3, t2, -1080
	add t6, t1, t3
	fadd.s f3, f14, f4
	sh2add t2, a4, t6
	fadd.s f2, f3, f13
	fmul.s f3, f0, f11
	fmul.s f0, f13, f12
	fadd.s f14, f2, f1
	fsw f14, 0(t5)
	flw f1, 0(t4)
	add t4, a5, t3
	fmul.s f15, f1, f10
	sh2add t5, a4, t4
	fadd.s f4, f15, f3
	fadd.s f2, f4, f14
	fmul.s f4, f1, f11
	fmul.s f1, f14, f12
	fadd.s f15, f2, f0
	fsw f15, 0(t5)
	flw f0, 0(t2)
	addi t2, t3, -1080
	fmul.s f13, f0, f10
	add t3, t1, t2
	add t4, a5, t2
	sh2add t5, a4, t4
	sh2add t4, a4, t3
	addi t3, t2, -1080
	fadd.s f3, f13, f4
	addiw t2, t0, -16
	add t6, t1, t3
	addiw t1, t0, -12
	fadd.s f2, f3, f15
	fmul.s f3, f0, f11
	fmul.s f11, f15, f12
	fadd.s f13, f2, f1
	fsw f13, 0(t5)
	add t5, a5, t3
	flw f14, 0(t4)
	li t3, 11
	sh2add t4, a4, t5
	fmul.s f2, f14, f10
	sh2add t5, a4, t6
	fadd.s f4, f2, f3
	fadd.s f1, f4, f13
	fadd.s f10, f1, f11
	fsw f10, 0(t4)
	flw f11, 0(t5)
	ble t2, t3, label61
	li t0, -135
	fmv.s f0, f13
	fmv.s f12, f14
	slli t3, t0, 7
	fmv.s f13, f10
	fmv.s f14, f11
	mv t0, t2
	add a5, a5, t3
	j label53
.p2align 2
label61:
	flw f12, 0(a0)
	mulw t3, t1, a1
	addiw t0, t0, -24
	add a5, s0, t3
	add t2, a3, t3
	fmul.s f0, f11, f12
	sh2add t1, a4, a5
	flw f15, 4(a0)
	sh2add t4, a4, t2
	fmul.s f5, f11, f15
	fmul.s f2, f14, f15
	flw f14, 8(a0)
	fadd.s f3, f0, f2
	fmul.s f2, f13, f14
	fadd.s f1, f3, f10
	fmul.s f3, f10, f14
	fadd.s f0, f1, f2
	fsw f0, 0(t4)
	addi t4, a5, -1080
	flw f1, 0(t1)
	addi t1, t2, -1080
	fmul.s f13, f1, f12
	sh2add t3, a4, t1
	sh2add t1, a4, t4
	li t4, -135
	fadd.s f4, f13, f5
	fadd.s f2, f4, f0
	fadd.s f11, f2, f3
	fmul.s f3, f1, f15
	fmul.s f1, f0, f14
	fsw f11, 0(t3)
	slli t3, t4, 4
	flw f13, 0(t1)
	add t4, a5, t3
	add t1, t2, t3
	fmul.s f10, f13, f12
	sh2add t5, a4, t1
	sh2add t1, a4, t4
	fadd.s f4, f10, f3
	fadd.s f2, f4, f11
	fmul.s f4, f13, f15
	fmul.s f13, f11, f14
	fadd.s f10, f2, f1
	fsw f10, 0(t5)
	flw f1, 0(t1)
	addi t1, t3, -1080
	fmul.s f0, f1, f12
	add t3, a5, t1
	add t4, t2, t1
	sh2add t5, a4, t4
	sh2add t4, a4, t3
	addi t3, t1, -1080
	fadd.s f3, f0, f4
	fmul.s f4, f1, f15
	fmul.s f1, f10, f14
	fadd.s f2, f3, f10
	fadd.s f0, f2, f13
	fsw f0, 0(t5)
	add t5, a5, t3
	flw f11, 0(t4)
	sh2add t1, a4, t5
	add t4, t2, t3
	fmul.s f13, f11, f12
	sh2add t6, a4, t4
	fadd.s f3, f13, f4
	fmul.s f4, f11, f15
	fmul.s f11, f0, f14
	fadd.s f2, f3, f0
	fadd.s f13, f2, f1
	fsw f13, 0(t6)
	flw f1, 0(t1)
	addi t1, t3, -1080
	fmul.s f10, f1, f12
	add t3, a5, t1
	add t5, t2, t1
	sh2add t4, a4, t5
	sh2add t5, a4, t3
	addi t3, t1, -1080
	fadd.s f3, f10, f4
	add t1, a5, t3
	fmul.s f4, f1, f15
	fmul.s f1, f13, f14
	fadd.s f2, f3, f13
	fadd.s f10, f2, f11
	fsw f10, 0(t4)
	add t4, t2, t3
	flw f0, 0(t5)
	sh2add t5, a4, t4
	fmul.s f11, f0, f12
	sh2add t4, a4, t1
	addi t1, t3, -1080
	add t3, a5, t1
	fadd.s f3, f11, f4
	fadd.s f2, f3, f10
	fmul.s f3, f0, f15
	fmul.s f0, f10, f14
	fadd.s f11, f2, f1
	fsw f11, 0(t5)
	add t5, t2, t1
	flw f1, 0(t4)
	sh2add t4, a4, t5
	fmul.s f13, f1, f12
	sh2add t5, a4, t3
	addi t3, t1, -1080
	add t1, a5, t3
	fadd.s f4, f13, f3
	fadd.s f2, f4, f11
	fmul.s f4, f1, f15
	fmul.s f1, f11, f14
	fadd.s f13, f2, f0
	fsw f13, 0(t4)
	flw f0, 0(t5)
	add t5, t2, t3
	fmul.s f10, f0, f12
	sh2add t4, a4, t5
	sh2add t5, a4, t1
	fadd.s f3, f10, f4
	fmul.s f4, f0, f15
	fmul.s f0, f13, f14
	fadd.s f2, f3, f13
	fadd.s f10, f2, f1
	fsw f10, 0(t4)
	addi t4, t3, -1080
	flw f1, 0(t5)
	add t6, t2, t4
	add t5, a5, t4
	sh2add t1, a4, t6
	fmul.s f11, f1, f12
	sh2add t3, a4, t5
	fadd.s f3, f11, f4
	fadd.s f2, f3, f10
	fmul.s f3, f1, f15
	fmul.s f1, f10, f14
	fadd.s f11, f2, f0
	fsw f11, 0(t1)
	addi t1, t4, -1080
	flw f2, 0(t3)
	add t6, a5, t1
	add t5, t2, t1
	sh2add t4, a4, t6
	fmul.s f13, f2, f12
	sh2add t3, a4, t5
	fadd.s f4, f13, f3
	fmul.s f3, f2, f15
	fadd.s f0, f4, f11
	fadd.s f13, f0, f1
	fsw f13, 0(t3)
	addi t3, t1, -1080
	flw f0, 0(t4)
	add t1, a5, t3
	add t5, t2, t3
	fmul.s f1, f0, f12
	sh2add t2, a4, t1
	sh2add t4, a4, t5
	fmul.s f12, f11, f14
	mulw t1, t0, a1
	fmv.s f14, f0
	fadd.s f4, f1, f3
	add a5, a3, t1
	fadd.s f10, f4, f13
	fadd.s f11, f10, f12
	fsw f11, 0(t4)
	flw f10, 0(t2)
.p2align 2
label62:
	flw f15, 0(a0)
	sh2add t2, a4, a5
	mulw t1, t0, a1
	flw f1, 4(a0)
	fmul.s f12, f10, f15
	addiw t0, t0, -1
	add t3, s0, t1
	fmul.s f0, f14, f1
	flw f1, 8(a0)
	fmul.s f14, f13, f1
	fadd.s f2, f12, f0
	fadd.s f15, f2, f11
	fadd.s f12, f15, f14
	fsw f12, 0(t2)
	sh2add t2, a4, t3
	flw f15, 0(t2)
	blt t0, zero, label986
	addi a5, a5, -1080
	fmv.s f14, f10
	fmv.s f13, f11
	fmv.s f10, f15
	fmv.s f11, f12
	j label62
.p2align 2
label39:
	addi a4, a2, 16
	li a5, 4
	mv t3, zero
	j label40
.p2align 2
label557:
	addiw a1, a1, 1
	addi a0, a0, 1080
	addi a2, a2, 1080
	addi a3, a3, 1080
	li a4, 512
	blt a1, a4, label39
label51:
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
	ld s5, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label40:
	sh2add t0, t3, a2
	sh2add t1, t3, a3
	flw f10, 0(t0)
	sh2add t2, t3, a0
	flw f12, 0(t1)
	addiw t3, a5, 12
	fadd.s f11, f10, f12
	fsw f11, 0(t2)
	flw f12, 4(t0)
	flw f13, 4(t1)
	fadd.s f11, f12, f13
	fsw f11, 4(t2)
	flw f10, 8(t0)
	flw f12, 8(t1)
	fadd.s f13, f10, f12
	fsw f13, 8(t2)
	flw f11, 12(t0)
	sh2add t0, a5, a3
	flw f14, 12(t1)
	sh2add t1, a5, a0
	fadd.s f12, f11, f14
	fsw f12, 12(t2)
	flw f10, 0(a4)
	flw f12, 0(t0)
	fadd.s f11, f10, f12
	fsw f11, 0(t1)
	flw f10, 4(a4)
	flw f12, 4(t0)
	fadd.s f13, f10, f12
	fsw f13, 4(t1)
	flw f11, 8(a4)
	flw f12, 8(t0)
	fadd.s f13, f11, f12
	fsw f13, 8(t1)
	flw f10, 12(a4)
	flw f12, 12(t0)
	fadd.s f13, f10, f12
	fsw f13, 12(t1)
	flw f11, 16(a4)
	flw f12, 16(t0)
	fadd.s f13, f11, f12
	fsw f13, 16(t1)
	flw f10, 20(a4)
	flw f12, 20(t0)
	fadd.s f13, f10, f12
	fsw f13, 20(t1)
	flw f11, 24(a4)
	flw f10, 24(t0)
	fadd.s f13, f11, f10
	fsw f13, 24(t1)
	flw f12, 28(a4)
	flw f14, 28(t0)
	fadd.s f11, f12, f14
	fsw f11, 28(t1)
	flw f10, 32(a4)
	flw f13, 32(t0)
	fadd.s f12, f10, f13
	fsw f12, 32(t1)
	flw f11, 36(a4)
	flw f13, 36(t0)
	fadd.s f12, f11, f13
	fsw f12, 36(t1)
	flw f10, 40(a4)
	flw f13, 40(t0)
	fadd.s f12, f10, f13
	fsw f12, 40(t1)
	flw f11, 44(a4)
	flw f10, 44(t0)
	addiw t0, a5, 16
	fadd.s f12, f11, f10
	fsw f12, 44(t1)
	li t1, 260
	bge t0, t1, label45
	addi a4, a4, 64
	mv a5, t0
	j label40
.p2align 2
label45:
	sh2add a4, t3, a2
	addiw a5, a5, 24
	sh2add t0, t3, a3
	flw f10, 0(a4)
	sh2add t1, t3, a0
	flw f12, 0(t0)
	fadd.s f11, f10, f12
	fsw f11, 0(t1)
	flw f10, 4(a4)
	flw f12, 4(t0)
	fadd.s f13, f10, f12
	fsw f13, 4(t1)
	flw f11, 8(a4)
	flw f12, 8(t0)
	fadd.s f13, f11, f12
	fsw f13, 8(t1)
	flw f10, 12(a4)
	flw f12, 12(t0)
	fadd.s f13, f10, f12
	fsw f13, 12(t1)
	flw f11, 16(a4)
	flw f14, 16(t0)
	fadd.s f12, f11, f14
	fsw f12, 16(t1)
	flw f10, 20(a4)
	flw f13, 20(t0)
	fadd.s f12, f10, f13
	fsw f12, 20(t1)
	flw f11, 24(a4)
	flw f13, 24(t0)
	fadd.s f12, f11, f13
	fsw f12, 24(t1)
	flw f10, 28(a4)
	flw f13, 28(t0)
	fadd.s f12, f10, f13
	fsw f12, 28(t1)
	flw f11, 32(a4)
	flw f13, 32(t0)
	fadd.s f12, f11, f13
	fsw f12, 32(t1)
	flw f10, 36(a4)
	flw f13, 36(t0)
	fadd.s f12, f10, f13
	fsw f12, 36(t1)
	flw f11, 40(a4)
	flw f13, 40(t0)
	fadd.s f12, f11, f13
	fsw f12, 40(t1)
	flw f10, 44(a4)
	sh2add a4, a5, a2
	flw f11, 44(t0)
	fadd.s f12, f10, f11
	fsw f12, 44(t1)
.p2align 2
label46:
	flw f10, 0(a4)
	sh2add t0, a5, a3
	sh2add t1, a5, a0
	flw f12, 0(t0)
	addiw a5, a5, 1
	li t0, 270
	fadd.s f11, f10, f12
	fsw f11, 0(t1)
	bge a5, t0, label557
	addi a4, a4, 4
	j label46
