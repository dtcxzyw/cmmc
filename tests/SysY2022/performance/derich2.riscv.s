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
	addi sp, sp, -48
pcrel1683:
	auipc a1, %pcrel_hi(imgIn)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a1, %pcrel_lo(pcrel1683)
	sd s0, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	mv a0, s1
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel1684:
	auipc a1, %pcrel_hi(imgOut)
pcrel1685:
	auipc a0, %pcrel_hi(my_y1)
	mv t5, s1
	mv t6, zero
pcrel1686:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	li a5, -135
	addi s0, a1, %pcrel_lo(pcrel1684)
	addi t2, a0, %pcrel_lo(pcrel1685)
pcrel1687:
	auipc a1, %pcrel_hi(my_y2)
	addi a0, a2, %pcrel_lo(pcrel1686)
	mv t4, t2
	addi t3, a1, %pcrel_lo(pcrel1687)
	slli a2, a5, 4
	li a1, 1080
	addi a3, a2, -1080
	addi a4, a3, -1080
	addi a5, a4, -1080
	addi t0, a5, -1080
	addi t1, t0, -1080
	li a6, 512
	blt zero, a6, label69
	j label6
.p2align 2
label77:
	sh2add a6, a7, t5
	addiw t6, t6, 1
	flw f0, 0(a6)
	sh2add a7, a7, t4
	addi t5, t5, 1080
	addi t4, t4, 1080
	flw f11, 12(a0)
	flw f12, 16(a0)
	fmul.s f15, f0, f11
	fmul.s f4, f0, f12
	fmul.s f3, f13, f12
	flw f13, 8(a0)
	fadd.s f2, f15, f3
	fmul.s f3, f14, f13
	fadd.s f1, f2, f10
	fadd.s f15, f1, f3
	fmul.s f3, f10, f13
	fsw f15, 0(a7)
	flw f1, 4(a6)
	fmul.s f14, f1, f11
	fadd.s f5, f14, f4
	fmul.s f4, f15, f13
	fadd.s f2, f5, f15
	fadd.s f14, f2, f3
	fmul.s f3, f1, f12
	fsw f14, 4(a7)
	flw f0, 8(a6)
	fmul.s f10, f0, f11
	fadd.s f5, f10, f3
	fadd.s f2, f5, f14
	fmul.s f5, f14, f13
	fadd.s f10, f2, f4
	fmul.s f4, f0, f12
	fsw f10, 8(a7)
	flw f1, 12(a6)
	fmul.s f15, f1, f11
	fadd.s f3, f15, f4
	fadd.s f2, f3, f10
	fmul.s f3, f10, f13
	fadd.s f15, f2, f5
	fmul.s f5, f1, f12
	fsw f15, 12(a7)
	flw f0, 16(a6)
	fmul.s f14, f0, f11
	fadd.s f4, f14, f5
	fmul.s f5, f0, f12
	fadd.s f2, f4, f15
	fmul.s f4, f15, f13
	fadd.s f14, f2, f3
	fsw f14, 16(a7)
	flw f1, 20(a6)
	fmul.s f10, f1, f11
	fadd.s f3, f10, f5
	fmul.s f5, f1, f12
	fadd.s f2, f3, f14
	fadd.s f10, f2, f4
	fmul.s f4, f14, f13
	fsw f10, 20(a7)
	flw f0, 24(a6)
	fmul.s f15, f0, f11
	fadd.s f3, f15, f5
	fadd.s f2, f3, f10
	fadd.s f15, f2, f4
	fmul.s f4, f0, f12
	fmul.s f0, f10, f13
	fsw f15, 24(a7)
	flw f1, 28(a6)
	fmul.s f14, f1, f11
	fadd.s f3, f14, f4
	fadd.s f2, f3, f15
	fmul.s f3, f1, f12
	fmul.s f1, f15, f13
	fadd.s f14, f2, f0
	fsw f14, 28(a7)
	flw f10, 32(a6)
	fmul.s f5, f10, f12
	fmul.s f0, f10, f11
	fadd.s f4, f0, f3
	fadd.s f2, f4, f14
	fmul.s f4, f14, f13
	fadd.s f0, f2, f1
	fsw f0, 32(a7)
	flw f15, 36(a6)
	fmul.s f1, f15, f11
	fadd.s f3, f1, f5
	fadd.s f2, f3, f0
	fmul.s f3, f0, f13
	fadd.s f10, f2, f4
	fmul.s f4, f15, f12
	fsw f10, 36(a7)
	flw f14, 40(a6)
	fmul.s f2, f14, f11
	fadd.s f5, f2, f4
	fadd.s f1, f5, f10
	fmul.s f5, f10, f13
	fadd.s f15, f1, f3
	fmul.s f3, f14, f12
	fsw f15, 40(a7)
	flw f0, 44(a6)
	fmul.s f1, f0, f11
	fadd.s f4, f1, f3
	fadd.s f2, f4, f15
	fmul.s f4, f15, f13
	fadd.s f14, f2, f5
	fmul.s f5, f0, f12
	fsw f14, 44(a7)
	flw f10, 48(a6)
	fmul.s f1, f10, f11
	fadd.s f3, f1, f5
	fadd.s f2, f3, f14
	fadd.s f0, f2, f4
	fmul.s f2, f10, f12
	fmul.s f10, f14, f13
	fsw f0, 48(a7)
	flw f3, 52(a6)
	li a6, 512
	fmul.s f15, f3, f11
	fadd.s f1, f15, f2
	fadd.s f11, f1, f0
	fadd.s f12, f11, f10
	fsw f12, 52(a7)
	bge t6, a6, label6
.p2align 2
label69:
	fmv.w.x f14, zero
	mv a6, t5
	mv a7, zero
	fmv.s f13, f14
	fmv.s f12, f14
.p2align 2
label70:
	flw f15, 0(a6)
	sh2add s2, a7, t4
	li s3, 256
	addiw a7, a7, 16
	flw f10, 12(a0)
	flw f11, 16(a0)
	fmul.s f0, f15, f10
	fmul.s f2, f12, f11
	fmul.s f4, f15, f11
	flw f12, 8(a0)
	fadd.s f3, f0, f2
	fmul.s f0, f14, f12
	fadd.s f1, f3, f13
	fmul.s f3, f13, f12
	fadd.s f14, f1, f0
	fsw f14, 0(s2)
	flw f0, 4(a6)
	fmul.s f1, f0, f10
	fadd.s f5, f1, f4
	fadd.s f2, f5, f14
	fmul.s f5, f0, f11
	fadd.s f15, f2, f3
	fmul.s f3, f14, f12
	fsw f15, 4(s2)
	flw f13, 8(a6)
	fmul.s f2, f13, f10
	fadd.s f4, f2, f5
	fadd.s f1, f4, f15
	fmul.s f4, f13, f11
	fadd.s f0, f1, f3
	fmul.s f3, f15, f12
	fsw f0, 8(s2)
	flw f14, 12(a6)
	fmul.s f2, f14, f10
	fadd.s f5, f2, f4
	fadd.s f1, f5, f0
	fmul.s f5, f14, f11
	fadd.s f13, f1, f3
	fmul.s f3, f0, f12
	fsw f13, 12(s2)
	flw f15, 16(a6)
	fmul.s f2, f15, f10
	fadd.s f4, f2, f5
	fadd.s f1, f4, f13
	fmul.s f4, f15, f11
	fadd.s f14, f1, f3
	fmul.s f3, f13, f12
	fsw f14, 16(s2)
	flw f0, 20(a6)
	fmul.s f1, f0, f10
	fadd.s f5, f1, f4
	fadd.s f2, f5, f14
	fmul.s f5, f0, f11
	fadd.s f15, f2, f3
	fmul.s f3, f14, f12
	fsw f15, 20(s2)
	flw f13, 24(a6)
	fmul.s f1, f13, f10
	fadd.s f4, f1, f5
	fmul.s f5, f15, f12
	fadd.s f2, f4, f15
	fmul.s f4, f13, f11
	fadd.s f0, f2, f3
	fsw f0, 24(s2)
	flw f1, 28(a6)
	fmul.s f14, f1, f10
	fadd.s f3, f14, f4
	fmul.s f4, f1, f11
	fmul.s f1, f0, f12
	fadd.s f2, f3, f0
	fadd.s f13, f2, f5
	fmul.s f5, f13, f12
	fsw f13, 28(s2)
	flw f14, 32(a6)
	fmul.s f15, f14, f10
	fadd.s f3, f15, f4
	fmul.s f4, f14, f11
	fadd.s f2, f3, f13
	fadd.s f15, f2, f1
	fsw f15, 32(s2)
	flw f0, 36(a6)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f4
	fadd.s f2, f3, f15
	fmul.s f3, f0, f11
	fadd.s f14, f2, f5
	fmul.s f5, f15, f12
	fsw f14, 36(s2)
	flw f13, 40(a6)
	fmul.s f1, f13, f10
	fadd.s f4, f1, f3
	fadd.s f2, f4, f14
	fmul.s f4, f14, f12
	fadd.s f0, f2, f5
	fmul.s f5, f13, f11
	fsw f0, 40(s2)
	flw f15, 44(a6)
	fmul.s f2, f15, f10
	fadd.s f3, f2, f5
	fmul.s f5, f0, f12
	fadd.s f1, f3, f0
	fadd.s f13, f1, f4
	fmul.s f4, f15, f11
	fsw f13, 44(s2)
	flw f14, 48(a6)
	fmul.s f2, f14, f10
	fadd.s f3, f2, f4
	fmul.s f4, f14, f11
	fmul.s f14, f13, f12
	fadd.s f1, f3, f13
	fadd.s f15, f1, f5
	fsw f15, 48(s2)
	flw f2, 52(a6)
	fmul.s f0, f2, f10
	fadd.s f1, f0, f4
	fadd.s f3, f1, f15
	fadd.s f0, f3, f14
	fmul.s f14, f2, f11
	fmul.s f2, f15, f12
	fsw f0, 52(s2)
	flw f1, 56(a6)
	fmul.s f13, f1, f10
	fadd.s f4, f13, f14
	fadd.s f3, f4, f0
	fmul.s f4, f1, f11
	fmul.s f11, f0, f12
	fadd.s f14, f3, f2
	fsw f14, 56(s2)
	flw f13, 60(a6)
	fmul.s f2, f13, f10
	fadd.s f3, f2, f4
	fadd.s f15, f3, f14
	fadd.s f10, f15, f11
	fsw f10, 60(s2)
	bge a7, s3, label77
	addi a6, a6, 64
	fmv.s f12, f13
	fmv.s f13, f10
	j label70
label6:
	mv t5, t3
	mv t4, s1
	mv t6, zero
	li a6, 512
	blt zero, a6, label59
	j label11
.p2align 2
label67:
	flw f11, 0(a0)
	sh2add a6, a7, t5
	sh2add s1, a7, t4
	addiw t6, t6, 1
	fmul.s f0, f15, f11
	flw f12, 4(a0)
	addi t5, t5, 1080
	addi t4, t4, 1080
	fmul.s f3, f14, f12
	flw f14, 8(a0)
	fadd.s f2, f0, f3
	fmul.s f3, f13, f14
	fadd.s f1, f2, f10
	fadd.s f0, f1, f3
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
	fmul.s f5, f1, f14
	flw f13, -4(s1)
	fmul.s f10, f13, f11
	fadd.s f4, f10, f15
	fadd.s f3, f4, f1
	fadd.s f15, f3, f2
	fmul.s f3, f13, f12
	fsw f15, -8(a6)
	flw f10, -8(s1)
	fmul.s f2, f10, f11
	fadd.s f4, f2, f3
	fmul.s f3, f15, f14
	fadd.s f0, f4, f15
	fadd.s f13, f0, f5
	fmul.s f5, f10, f12
	fsw f13, -12(a6)
	flw f1, -12(s1)
	fmul.s f0, f1, f11
	fadd.s f4, f0, f5
	fmul.s f5, f1, f12
	fadd.s f2, f4, f13
	fadd.s f10, f2, f3
	fmul.s f3, f13, f14
	fsw f10, -16(a6)
	flw f0, -16(s1)
	fmul.s f15, f0, f11
	fadd.s f4, f15, f5
	fmul.s f5, f10, f14
	fadd.s f2, f4, f10
	fadd.s f15, f2, f3
	fmul.s f3, f0, f12
	fsw f15, -20(a6)
	flw f1, -20(s1)
	fmul.s f13, f1, f11
	fadd.s f4, f13, f3
	fmul.s f3, f1, f12
	fmul.s f1, f15, f14
	fadd.s f2, f4, f15
	fadd.s f13, f2, f5
	fmul.s f5, f13, f14
	fsw f13, -24(a6)
	flw f0, -24(s1)
	fmul.s f10, f0, f11
	fadd.s f4, f10, f3
	fadd.s f2, f4, f13
	fmul.s f4, f0, f12
	fadd.s f10, f2, f1
	fsw f10, -28(a6)
	flw f15, -28(s1)
	fmul.s f2, f15, f11
	fadd.s f3, f2, f4
	fmul.s f4, f10, f14
	fadd.s f1, f3, f10
	fadd.s f0, f1, f5
	fmul.s f5, f15, f12
	fsw f0, -32(a6)
	flw f13, -32(s1)
	fmul.s f2, f13, f11
	fadd.s f3, f2, f5
	fadd.s f1, f3, f0
	fmul.s f3, f0, f14
	fadd.s f15, f1, f4
	fmul.s f4, f13, f12
	fsw f15, -36(a6)
	flw f10, -36(s1)
	fmul.s f2, f10, f11
	fadd.s f5, f2, f4
	fadd.s f1, f5, f15
	fmul.s f5, f15, f14
	fadd.s f13, f1, f3
	fmul.s f3, f10, f12
	fsw f13, -40(a6)
	flw f0, -40(s1)
	fmul.s f2, f0, f11
	fadd.s f4, f2, f3
	fadd.s f1, f4, f13
	fmul.s f4, f13, f14
	fadd.s f10, f1, f5
	fmul.s f5, f0, f12
	fsw f10, -44(a6)
	flw f15, -44(s1)
	fmul.s f2, f15, f11
	fadd.s f3, f2, f5
	fmul.s f2, f15, f12
	fmul.s f12, f10, f14
	fadd.s f1, f3, f10
	fadd.s f0, f1, f4
	fsw f0, -48(a6)
	flw f3, -48(s1)
	fmul.s f13, f3, f11
	fadd.s f1, f13, f2
	fadd.s f11, f1, f0
	fadd.s f13, f11, f12
	fsw f13, -52(a6)
	li a6, 512
	bge t6, a6, label11
.p2align 2
label59:
	addi a6, t5, 1076
	fmv.w.x f13, zero
	li a7, 269
	fmv.s f14, f13
	fmv.s f12, f13
	fmv.s f15, f13
.p2align 2
label60:
	flw f10, 0(a0)
	sh2add s1, a7, t4
	li s2, 13
	addiw a7, a7, -16
	fmul.s f0, f15, f10
	flw f11, 4(a0)
	fmul.s f3, f12, f11
	fmul.s f4, f15, f11
	flw f12, 8(a0)
	fadd.s f2, f0, f3
	fmul.s f0, f13, f12
	fmul.s f3, f14, f12
	fadd.s f1, f2, f14
	fadd.s f13, f1, f0
	fsw f13, 0(a6)
	flw f0, 0(s1)
	fmul.s f2, f0, f10
	fadd.s f5, f2, f4
	fadd.s f1, f5, f13
	fmul.s f5, f13, f12
	fadd.s f15, f1, f3
	fmul.s f3, f0, f11
	fsw f15, -4(a6)
	flw f14, -4(s1)
	fmul.s f1, f14, f10
	fadd.s f4, f1, f3
	fmul.s f3, f14, f11
	fmul.s f14, f15, f12
	fadd.s f2, f4, f15
	fadd.s f0, f2, f5
	fsw f0, -8(a6)
	flw f1, -8(s1)
	fmul.s f13, f1, f10
	fadd.s f4, f13, f3
	fmul.s f3, f1, f11
	fmul.s f1, f0, f12
	fadd.s f2, f4, f0
	fadd.s f13, f2, f14
	fsw f13, -12(a6)
	flw f15, -12(s1)
	fmul.s f14, f15, f10
	fadd.s f4, f14, f3
	fmul.s f3, f15, f11
	fadd.s f2, f4, f13
	fmul.s f4, f13, f12
	fadd.s f14, f2, f1
	fsw f14, -16(a6)
	flw f0, -16(s1)
	fmul.s f1, f0, f10
	fadd.s f5, f1, f3
	fadd.s f2, f5, f14
	fmul.s f5, f14, f12
	fadd.s f15, f2, f4
	fmul.s f4, f0, f11
	fsw f15, -20(a6)
	flw f1, -20(s1)
	fmul.s f13, f1, f10
	fadd.s f3, f13, f4
	fmul.s f4, f1, f11
	fmul.s f1, f15, f12
	fadd.s f2, f3, f15
	fadd.s f13, f2, f5
	fmul.s f5, f13, f12
	fsw f13, -24(a6)
	flw f0, -24(s1)
	fmul.s f14, f0, f10
	fadd.s f3, f14, f4
	fmul.s f4, f0, f11
	fadd.s f2, f3, f13
	fadd.s f14, f2, f1
	fsw f14, -28(a6)
	flw f15, -28(s1)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f4
	fmul.s f4, f15, f11
	fmul.s f15, f14, f12
	fadd.s f2, f3, f14
	fadd.s f0, f2, f5
	fsw f0, -32(a6)
	flw f1, -32(s1)
	fmul.s f13, f1, f10
	fadd.s f3, f13, f4
	fadd.s f2, f3, f0
	fmul.s f3, f1, f11
	fmul.s f1, f0, f12
	fadd.s f13, f2, f15
	fmul.s f5, f13, f12
	fsw f13, -36(a6)
	flw f14, -36(s1)
	fmul.s f15, f14, f10
	fadd.s f4, f15, f3
	fadd.s f2, f4, f13
	fmul.s f4, f14, f11
	fadd.s f15, f2, f1
	fsw f15, -40(a6)
	flw f0, -40(s1)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f4
	fmul.s f4, f0, f11
	fadd.s f2, f3, f15
	fadd.s f14, f2, f5
	fmul.s f5, f15, f12
	fsw f14, -44(a6)
	flw f1, -44(s1)
	fmul.s f13, f1, f10
	fadd.s f3, f13, f4
	fmul.s f4, f1, f11
	fadd.s f2, f3, f14
	fadd.s f0, f2, f5
	fmul.s f5, f14, f12
	fsw f0, -48(a6)
	flw f13, -48(s1)
	fmul.s f15, f13, f10
	fadd.s f3, f15, f4
	fmul.s f4, f13, f11
	fadd.s f2, f3, f0
	fadd.s f15, f2, f5
	fmul.s f5, f0, f12
	fsw f15, -52(a6)
	flw f1, -52(s1)
	fmul.s f14, f1, f10
	fadd.s f3, f14, f4
	fmul.s f4, f1, f11
	fmul.s f11, f15, f12
	fadd.s f2, f3, f15
	fadd.s f13, f2, f5
	fsw f13, -56(a6)
	flw f14, -56(s1)
	fmul.s f2, f14, f10
	fadd.s f3, f2, f4
	fadd.s f0, f3, f13
	fadd.s f10, f0, f11
	fsw f10, -60(a6)
	flw f15, -60(s1)
	ble a7, s2, label67
	addi a6, a6, -64
	fmv.s f12, f14
	fmv.s f14, f10
	j label60
label11:
	mv t4, s0
	mv t6, t2
	mv t5, t3
	mv a6, zero
	li a7, 512
	blt zero, a7, label53
	j label96
.p2align 2
label58:
	addi a7, a7, 64
.p2align 2
label54:
	flw f10, 0(a7)
	sh2add s2, s1, t5
	sh2add s3, s1, t4
	flw f12, 0(s2)
	addiw s1, s1, 16
	fadd.s f11, f10, f12
	fsw f11, 0(s3)
	flw f10, 4(a7)
	flw f13, 4(s2)
	fadd.s f12, f10, f13
	fsw f12, 4(s3)
	flw f11, 8(a7)
	flw f13, 8(s2)
	fadd.s f14, f11, f13
	fsw f14, 8(s3)
	flw f10, 12(a7)
	flw f12, 12(s2)
	fadd.s f13, f10, f12
	fsw f13, 12(s3)
	flw f11, 16(a7)
	flw f12, 16(s2)
	fadd.s f13, f11, f12
	fsw f13, 16(s3)
	flw f10, 20(a7)
	flw f14, 20(s2)
	fadd.s f12, f10, f14
	fsw f12, 20(s3)
	flw f11, 24(a7)
	flw f13, 24(s2)
	fadd.s f12, f11, f13
	fsw f12, 24(s3)
	flw f10, 28(a7)
	flw f14, 28(s2)
	fadd.s f13, f10, f14
	fsw f13, 28(s3)
	flw f11, 32(a7)
	flw f12, 32(s2)
	fadd.s f13, f11, f12
	fsw f13, 32(s3)
	flw f10, 36(a7)
	flw f12, 36(s2)
	fadd.s f13, f10, f12
	fsw f13, 36(s3)
	flw f11, 40(a7)
	flw f12, 40(s2)
	fadd.s f14, f11, f12
	fsw f14, 40(s3)
	flw f10, 44(a7)
	flw f13, 44(s2)
	fadd.s f12, f10, f13
	fsw f12, 44(s3)
	flw f11, 48(a7)
	flw f13, 48(s2)
	fadd.s f14, f11, f13
	fsw f14, 48(s3)
	flw f10, 52(a7)
	flw f12, 52(s2)
	fadd.s f13, f10, f12
	fsw f13, 52(s3)
	flw f11, 56(a7)
	flw f14, 56(s2)
	fadd.s f12, f11, f14
	fsw f12, 56(s3)
	flw f10, 60(a7)
	flw f13, 60(s2)
	li s2, 256
	fadd.s f11, f10, f13
	fsw f11, 60(s3)
	blt s1, s2, label58
	sh2add a7, s1, t6
	addiw a6, a6, 1
	sh2add s2, s1, t5
	flw f10, 0(a7)
	addi t6, t6, 1080
	sh2add s3, s1, t4
	addi t5, t5, 1080
	addi t4, t4, 1080
	flw f12, 0(s2)
	fadd.s f11, f10, f12
	fsw f11, 0(s3)
	flw f12, 4(a7)
	flw f13, 4(s2)
	fadd.s f11, f12, f13
	fsw f11, 4(s3)
	flw f10, 8(a7)
	flw f13, 8(s2)
	fadd.s f12, f10, f13
	fsw f12, 8(s3)
	flw f11, 12(a7)
	flw f13, 12(s2)
	fadd.s f12, f11, f13
	fsw f12, 12(s3)
	flw f10, 16(a7)
	flw f13, 16(s2)
	fadd.s f12, f10, f13
	fsw f12, 16(s3)
	flw f11, 20(a7)
	flw f13, 20(s2)
	fadd.s f12, f11, f13
	fsw f12, 20(s3)
	flw f10, 24(a7)
	flw f13, 24(s2)
	fadd.s f12, f10, f13
	fsw f12, 24(s3)
	flw f11, 28(a7)
	flw f13, 28(s2)
	fadd.s f12, f11, f13
	fsw f12, 28(s3)
	flw f10, 32(a7)
	flw f14, 32(s2)
	fadd.s f13, f10, f14
	fsw f13, 32(s3)
	flw f11, 36(a7)
	flw f12, 36(s2)
	fadd.s f13, f11, f12
	fsw f13, 36(s3)
	flw f10, 40(a7)
	flw f11, 40(s2)
	fadd.s f14, f10, f11
	fsw f14, 40(s3)
	flw f12, 44(a7)
	flw f13, 44(s2)
	fadd.s f10, f12, f13
	fsw f10, 44(s3)
	flw f11, 48(a7)
	flw f13, 48(s2)
	fadd.s f12, f11, f13
	fsw f12, 48(s3)
	flw f10, 52(a7)
	li a7, 512
	flw f13, 52(s2)
	fadd.s f11, f10, f13
	fsw f11, 52(s3)
	bge a6, a7, label96
.p2align 2
label53:
	mv a7, t6
	mv s1, zero
	j label54
label96:
	mv t4, zero
	li t5, 270
	blt zero, t5, label44
	j label100
.p2align 2
label51:
	addiw t4, t4, 1
	li t5, 270
	bge t4, t5, label100
.p2align 2
label44:
	fmv.w.x f13, zero
	mv t5, s0
	mv t6, zero
	fmv.s f15, f13
	fmv.s f12, f13
.p2align 2
label45:
	sh2add a6, t4, t5
	addi s2, t5, 1080
	li s3, 135
	mulw a7, t6, a1
	flw f14, 0(a6)
	addiw t6, t6, 16
	add a6, t2, a7
	flw f10, 12(a0)
	sh2add s1, t4, a6
	sh2add a7, t4, s2
	flw f11, 16(a0)
	fmul.s f1, f14, f10
	fmul.s f4, f14, f11
	fmul.s f2, f12, f11
	flw f12, 8(a0)
	fmul.s f5, f15, f12
	fadd.s f3, f1, f2
	fmul.s f1, f13, f12
	fadd.s f0, f3, f15
	fadd.s f13, f0, f1
	fsw f13, 0(s1)
	addi s1, a6, 1080
	flw f0, 0(a7)
	sh2add a7, t4, s1
	fmul.s f1, f0, f10
	fadd.s f3, f1, f4
	fmul.s f4, f0, f11
	fmul.s f0, f13, f12
	fadd.s f2, f3, f13
	fadd.s f14, f2, f5
	fsw f14, 0(a7)
	slli a7, s3, 4
	add s1, t5, a7
	sh2add s2, t4, s1
	add s1, a6, a7
	flw f1, 0(s2)
	sh2add s3, t4, s1
	addi s2, a7, 1080
	fmul.s f15, f1, f10
	add s1, t5, s2
	sh2add a7, t4, s1
	addi s1, s2, 1080
	fadd.s f3, f15, f4
	fadd.s f2, f3, f14
	fmul.s f3, f1, f11
	fmul.s f1, f14, f12
	fadd.s f15, f2, f0
	fmul.s f5, f15, f12
	fsw f15, 0(s3)
	flw f0, 0(a7)
	add a7, a6, s2
	fmul.s f13, f0, f10
	sh2add s3, t4, a7
	add a7, t5, s1
	fadd.s f4, f13, f3
	fmul.s f3, f0, f11
	fadd.s f2, f4, f15
	fadd.s f13, f2, f1
	fsw f13, 0(s3)
	sh2add s3, t4, a7
	add a7, a6, s1
	flw f14, 0(s3)
	sh2add s2, t4, a7
	addi a7, s1, 1080
	fmul.s f2, f14, f10
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f4, f2, f3
	fadd.s f1, f4, f13
	fmul.s f4, f13, f12
	fadd.s f0, f1, f5
	fmul.s f5, f14, f11
	fsw f0, 0(s2)
	sh2add s2, t4, s3
	flw f15, 0(s2)
	add s2, a6, a7
	fmul.s f1, f15, f10
	sh2add s3, t4, s2
	add s2, t5, s1
	sh2add a7, t4, s2
	addi s2, s1, 1080
	fadd.s f3, f1, f5
	add s4, t5, s2
	fadd.s f2, f3, f0
	fmul.s f3, f15, f11
	fmul.s f15, f0, f12
	fadd.s f14, f2, f4
	fsw f14, 0(s3)
	flw f1, 0(a7)
	add a7, a6, s1
	fmul.s f13, f1, f10
	fmul.s f5, f1, f11
	sh2add s3, t4, a7
	sh2add a7, t4, s4
	fadd.s f4, f13, f3
	fadd.s f2, f4, f14
	fmul.s f4, f14, f12
	fadd.s f13, f2, f15
	fsw f13, 0(s3)
	flw f15, 0(a7)
	add a7, a6, s2
	fmul.s f0, f15, f10
	sh2add s1, t4, a7
	addi a7, s2, 1080
	add s3, t5, a7
	fadd.s f3, f0, f5
	fadd.s f2, f3, f13
	fmul.s f3, f13, f12
	fadd.s f1, f2, f4
	fmul.s f4, f15, f11
	fsw f1, 0(s1)
	sh2add s1, t4, s3
	add s3, a6, a7
	flw f14, 0(s1)
	sh2add s2, t4, s3
	addi s1, a7, 1080
	fmul.s f0, f14, f10
	add s3, t5, s1
	sh2add a7, t4, s3
	fadd.s f5, f0, f4
	fadd.s f2, f5, f1
	fadd.s f15, f2, f3
	fmul.s f3, f14, f11
	fmul.s f14, f1, f12
	fsw f15, 0(s2)
	flw f2, 0(a7)
	add a7, a6, s1
	fmul.s f0, f2, f10
	sh2add s3, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s2, t5, a7
	fadd.s f4, f0, f3
	fmul.s f3, f2, f11
	fmul.s f2, f15, f12
	fadd.s f13, f4, f15
	fadd.s f0, f13, f14
	fsw f0, 0(s3)
	sh2add s3, t4, s2
	add s2, a6, a7
	flw f13, 0(s3)
	sh2add s3, t4, s2
	fmul.s f14, f13, f10
	add s2, t5, s1
	fmul.s f5, f13, f11
	sh2add a7, t4, s2
	fadd.s f4, f14, f3
	fmul.s f3, f0, f12
	fadd.s f1, f4, f0
	fadd.s f14, f1, f2
	fsw f14, 0(s3)
	flw f15, 0(a7)
	add a7, a6, s1
	fmul.s f1, f15, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f4, f1, f5
	fadd.s f2, f4, f14
	fmul.s f4, f14, f12
	fadd.s f13, f2, f3
	fmul.s f3, f15, f11
	fsw f13, 0(s2)
	sh2add s2, t4, s3
	flw f0, 0(s2)
	add s2, a6, a7
	fmul.s f1, f0, f10
	sh2add s3, t4, s2
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f5, f1, f3
	fmul.s f3, f0, f11
	fmul.s f0, f13, f12
	fadd.s f2, f5, f13
	fadd.s f15, f2, f4
	fsw f15, 0(s3)
	flw f1, 0(a7)
	add a7, a6, s1
	fmul.s f14, f1, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f4, f14, f3
	fmul.s f3, f1, f11
	fmul.s f1, f15, f12
	fadd.s f2, f4, f15
	fadd.s f14, f2, f0
	fsw f14, 0(s2)
	sh2add s2, t4, s3
	flw f0, 0(s2)
	add s2, a6, a7
	fmul.s f13, f0, f10
	sh2add s3, t4, s2
	add s2, t5, s1
	sh2add a7, t4, s2
	add s2, a6, s1
	fadd.s f4, f13, f3
	li a6, 512
	fmul.s f3, f0, f11
	fmul.s f11, f14, f12
	fadd.s f2, f4, f14
	fadd.s f13, f2, f1
	fsw f13, 0(s3)
	flw f15, 0(a7)
	sh2add a7, t4, s2
	fmul.s f2, f15, f10
	fadd.s f4, f2, f3
	fadd.s f1, f4, f13
	fadd.s f10, f1, f11
	fsw f10, 0(a7)
	bge t6, a6, label51
	li a7, 135
	fmv.s f12, f15
	slli a6, a7, 7
	fmv.s f15, f10
	add t5, t5, a6
	j label45
label100:
	mv t4, zero
	li t5, 270
	blt zero, t5, label34
	j label21
.p2align 2
label42:
	li a7, -135
	fmv.s f12, f15
	slli a6, a7, 7
	fmv.s f15, f10
	add t5, t5, a6
.p2align 2
label35:
	flw f10, 0(a0)
	sh2add a6, t4, t5
	mulw a7, t6, a1
	addi s2, t5, -1080
	li s3, -135
	fmul.s f0, f14, f10
	addiw t6, t6, -16
	flw f11, 4(a0)
	fmul.s f2, f12, f11
	fmul.s f5, f14, f11
	flw f12, 8(a0)
	fadd.s f3, f0, f2
	fmul.s f0, f13, f12
	fadd.s f1, f3, f15
	fmul.s f3, f15, f12
	fadd.s f13, f1, f0
	fsw f13, 0(a6)
	add a6, s0, a7
	sh2add s1, t4, a6
	sh2add a7, t4, s2
	flw f0, 0(s1)
	addi s1, a6, -1080
	fmul.s f2, f0, f10
	fadd.s f4, f2, f5
	fadd.s f1, f4, f13
	fadd.s f14, f1, f3
	fmul.s f3, f0, f11
	fmul.s f0, f13, f12
	fsw f14, 0(a7)
	sh2add a7, t4, s1
	add s1, a6, a2
	flw f1, 0(a7)
	add a7, t5, a2
	fmul.s f15, f1, f10
	sh2add s2, t4, a7
	sh2add a7, t4, s1
	add s1, a6, a3
	fadd.s f4, f15, f3
	fmul.s f3, f1, f11
	fmul.s f1, f14, f12
	fadd.s f2, f4, f14
	fadd.s f15, f2, f0
	fsw f15, 0(s2)
	add s2, t5, a3
	flw f0, 0(a7)
	sh2add a7, t4, s2
	fmul.s f13, f0, f10
	add s2, t5, a4
	fadd.s f4, f13, f3
	fmul.s f3, f0, f11
	fmul.s f0, f15, f12
	fadd.s f2, f4, f15
	fadd.s f13, f2, f1
	fsw f13, 0(a7)
	sh2add a7, t4, s1
	add s1, a6, a4
	flw f1, 0(a7)
	sh2add a7, t4, s2
	fmul.s f14, f1, f10
	add s2, a6, a5
	fadd.s f4, f14, f3
	fadd.s f2, f4, f13
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fadd.s f14, f2, f0
	fmul.s f5, f14, f12
	fsw f14, 0(a7)
	sh2add a7, t4, s1
	flw f0, 0(a7)
	add a7, t5, a5
	fmul.s f15, f0, f10
	sh2add s1, t4, a7
	sh2add a7, t4, s2
	fadd.s f3, f15, f4
	fmul.s f4, f0, f11
	fadd.s f2, f3, f14
	fadd.s f15, f2, f1
	fsw f15, 0(s1)
	add s1, a6, t0
	flw f13, 0(a7)
	add a7, t5, t0
	fmul.s f1, f13, f10
	sh2add s2, t4, a7
	sh2add a7, t4, s1
	add s1, a6, t1
	fadd.s f3, f1, f4
	fadd.s f2, f3, f15
	fmul.s f3, f13, f11
	fmul.s f13, f15, f12
	fadd.s f0, f2, f5
	fsw f0, 0(s2)
	flw f1, 0(a7)
	add a7, t5, t1
	fmul.s f14, f1, f10
	sh2add s2, t4, a7
	sh2add a7, t4, s1
	fadd.s f4, f14, f3
	fadd.s f2, f4, f0
	fmul.s f4, f1, f11
	fmul.s f1, f0, f12
	fadd.s f14, f2, f13
	fmul.s f5, f14, f12
	fsw f14, 0(s2)
	flw f15, 0(a7)
	slli a7, s3, 6
	fmul.s f13, f15, f10
	add s3, a6, a7
	add s1, t5, a7
	sh2add s2, t4, s1
	sh2add s1, t4, s3
	fadd.s f3, f13, f4
	fmul.s f4, f15, f11
	fadd.s f2, f3, f14
	fadd.s f13, f2, f1
	fsw f13, 0(s2)
	flw f1, 0(s1)
	addi s1, a7, -1080
	fmul.s f0, f1, f10
	add a7, a6, s1
	add s3, t5, s1
	sh2add s2, t4, s3
	sh2add s3, t4, a7
	fadd.s f3, f0, f4
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fadd.s f2, f3, f13
	fadd.s f15, f2, f5
	fsw f15, 0(s2)
	addi s2, s1, -1080
	flw f0, 0(s3)
	add a7, t5, s2
	sh2add s3, t4, a7
	fmul.s f14, f0, f10
	add a7, a6, s2
	sh2add s1, t4, a7
	addi a7, s2, -1080
	add s4, a6, a7
	sh2add s2, t4, s4
	fadd.s f3, f14, f4
	fadd.s f2, f3, f15
	fmul.s f3, f0, f11
	fmul.s f0, f15, f12
	fadd.s f14, f2, f1
	fsw f14, 0(s3)
	add s3, t5, a7
	flw f1, 0(s1)
	sh2add s1, t4, s3
	fmul.s f13, f1, f10
	fadd.s f4, f13, f3
	fmul.s f3, f1, f11
	fmul.s f1, f14, f12
	fadd.s f2, f4, f14
	fadd.s f13, f2, f0
	fsw f13, 0(s1)
	addi s1, a7, -1080
	flw f0, 0(s2)
	add a7, a6, s1
	add s2, t5, s1
	fmul.s f15, f0, f10
	sh2add s3, t4, s2
	sh2add s2, t4, a7
	addi a7, s1, -1080
	add s1, a6, a7
	fadd.s f4, f15, f3
	fmul.s f3, f0, f11
	fmul.s f0, f13, f12
	fadd.s f2, f4, f13
	fadd.s f15, f2, f1
	fsw f15, 0(s3)
	add s3, t5, a7
	flw f1, 0(s2)
	sh2add s2, t4, s3
	fmul.s f14, f1, f10
	sh2add s3, t4, s1
	addi s1, a7, -1080
	fadd.s f4, f14, f3
	fmul.s f3, f1, f11
	fmul.s f1, f15, f12
	fadd.s f2, f4, f15
	fadd.s f14, f2, f0
	fsw f14, 0(s2)
	add s2, t5, s1
	flw f0, 0(s3)
	sh2add a7, t4, s2
	add s3, a6, s1
	fmul.s f13, f0, f10
	fadd.s f4, f13, f3
	fadd.s f2, f4, f14
	fmul.s f4, f0, f11
	fmul.s f11, f14, f12
	fadd.s f13, f2, f1
	fsw f13, 0(a7)
	sh2add a7, t4, s3
	flw f15, 0(a7)
	addi a7, s1, -1080
	fmul.s f1, f15, f10
	add s3, a6, a7
	add s2, t5, a7
	sh2add s1, t4, s3
	sh2add s4, t4, s2
	fadd.s f3, f1, f4
	fadd.s f2, f3, f13
	fadd.s f10, f2, f11
	fsw f10, 0(s4)
	flw f14, 0(s1)
	bge t6, zero, label42
	addiw t4, t4, 1
	li t5, 270
	bge t4, t5, label21
.p2align 2
label34:
	lui a6, 135
	fmv.w.x f13, zero
	addiw t6, a6, -1080
	fmv.s f15, f13
	fmv.s f12, f13
	fmv.s f14, f13
	add t5, t3, t6
	li t6, 511
	j label35
label21:
	mv a0, s0
	mv a1, zero
	li a2, 512
	blt zero, a2, label28
	j label27
.p2align 2
label32:
	sh2add a2, a3, t2
	addiw a1, a1, 1
	sh2add a4, a3, t3
	flw f10, 0(a2)
	addi t2, t2, 1080
	sh2add a5, a3, a0
	addi t3, t3, 1080
	addi a0, a0, 1080
	flw f12, 0(a4)
	fadd.s f11, f10, f12
	fsw f11, 0(a5)
	flw f10, 4(a2)
	flw f13, 4(a4)
	fadd.s f12, f10, f13
	fsw f12, 4(a5)
	flw f11, 8(a2)
	flw f13, 8(a4)
	fadd.s f14, f11, f13
	fsw f14, 8(a5)
	flw f10, 12(a2)
	flw f12, 12(a4)
	fadd.s f13, f10, f12
	fsw f13, 12(a5)
	flw f11, 16(a2)
	flw f12, 16(a4)
	fadd.s f13, f11, f12
	fsw f13, 16(a5)
	flw f10, 20(a2)
	flw f14, 20(a4)
	fadd.s f12, f10, f14
	fsw f12, 20(a5)
	flw f11, 24(a2)
	flw f13, 24(a4)
	fadd.s f12, f11, f13
	fsw f12, 24(a5)
	flw f10, 28(a2)
	flw f14, 28(a4)
	fadd.s f13, f10, f14
	fsw f13, 28(a5)
	flw f11, 32(a2)
	flw f12, 32(a4)
	fadd.s f13, f11, f12
	fsw f13, 32(a5)
	flw f10, 36(a2)
	flw f12, 36(a4)
	fadd.s f13, f10, f12
	fsw f13, 36(a5)
	flw f11, 40(a2)
	flw f12, 40(a4)
	fadd.s f13, f11, f12
	fsw f13, 40(a5)
	flw f10, 44(a2)
	flw f12, 44(a4)
	fadd.s f13, f10, f12
	fsw f13, 44(a5)
	flw f11, 48(a2)
	flw f12, 48(a4)
	fadd.s f13, f11, f12
	fsw f13, 48(a5)
	flw f10, 52(a2)
	li a2, 512
	flw f11, 52(a4)
	fadd.s f12, f10, f11
	fsw f12, 52(a5)
	bge a1, a2, label27
.p2align 2
label28:
	mv a2, t2
	mv a3, zero
.p2align 2
label29:
	flw f10, 0(a2)
	sh2add a4, a3, t3
	sh2add a5, a3, a0
	flw f11, 0(a4)
	addiw a3, a3, 16
	fadd.s f12, f10, f11
	fsw f12, 0(a5)
	flw f11, 4(a2)
	flw f13, 4(a4)
	fadd.s f12, f11, f13
	fsw f12, 4(a5)
	flw f10, 8(a2)
	flw f14, 8(a4)
	fadd.s f13, f10, f14
	fsw f13, 8(a5)
	flw f11, 12(a2)
	flw f12, 12(a4)
	fadd.s f14, f11, f12
	fsw f14, 12(a5)
	flw f10, 16(a2)
	flw f13, 16(a4)
	fadd.s f12, f10, f13
	fsw f12, 16(a5)
	flw f11, 20(a2)
	flw f13, 20(a4)
	fadd.s f12, f11, f13
	fsw f12, 20(a5)
	flw f10, 24(a2)
	flw f13, 24(a4)
	fadd.s f12, f10, f13
	fsw f12, 24(a5)
	flw f11, 28(a2)
	flw f13, 28(a4)
	fadd.s f12, f11, f13
	fsw f12, 28(a5)
	flw f10, 32(a2)
	flw f14, 32(a4)
	fadd.s f13, f10, f14
	fsw f13, 32(a5)
	flw f11, 36(a2)
	flw f12, 36(a4)
	fadd.s f14, f11, f12
	fsw f14, 36(a5)
	flw f10, 40(a2)
	flw f13, 40(a4)
	fadd.s f12, f10, f13
	fsw f12, 40(a5)
	flw f11, 44(a2)
	flw f13, 44(a4)
	fadd.s f12, f11, f13
	fsw f12, 44(a5)
	flw f10, 48(a2)
	flw f13, 48(a4)
	fadd.s f12, f10, f13
	fsw f12, 48(a5)
	flw f11, 52(a2)
	flw f13, 52(a4)
	fadd.s f12, f11, f13
	fsw f12, 52(a5)
	flw f10, 56(a2)
	flw f13, 56(a4)
	fadd.s f12, f10, f13
	fsw f12, 56(a5)
	flw f11, 60(a2)
	flw f10, 60(a4)
	li a4, 256
	fadd.s f12, f11, f10
	fsw f12, 60(a5)
	bge a3, a4, label32
	addi a2, a2, 64
	j label29
label27:
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
