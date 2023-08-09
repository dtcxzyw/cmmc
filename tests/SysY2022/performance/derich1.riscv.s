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
pcrel1671:
	auipc a1, %pcrel_hi(imgIn)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a1, %pcrel_lo(pcrel1671)
	sd s0, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	mv a0, s1
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel1672:
	auipc a1, %pcrel_hi(my_y1)
pcrel1673:
	auipc a2, %pcrel_hi(imgOut)
	li a5, -135
pcrel1674:
	auipc a0, %pcrel_hi(my_y2)
	mv t6, s1
	mv a6, zero
	addi t2, a1, %pcrel_lo(pcrel1672)
	addi s0, a2, %pcrel_lo(pcrel1673)
	addi t3, a0, %pcrel_lo(pcrel1674)
	li a1, 1080
	mv t5, t2
pcrel1675:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a2, %pcrel_lo(pcrel1675)
	slli a2, a5, 4
	addi a3, a2, -1080
	addi a4, a3, -1080
	addi a5, a4, -1080
	addi t0, a5, -1080
	addi t1, t0, -1080
	li t4, 512
	blt zero, t4, label6
	j label90
.p2align 2
label14:
	flw f0, 64(t4)
	addiw a6, a6, 1
	addi t5, t5, 1080
	addi t6, t6, 1080
	flw f10, 0(a0)
	flw f11, 4(a0)
	fmul.s f2, f0, f10
	flw f12, 8(a0)
	fmul.s f3, f15, f11
	fadd.s f4, f2, f3
	fmul.s f3, f14, f12
	fadd.s f1, f4, f13
	fadd.s f15, f1, f3
	fmul.s f1, f0, f11
	fmul.s f0, f13, f12
	fsw f15, 64(s2)
	flw f2, 68(t4)
	fmul.s f14, f2, f10
	fadd.s f4, f14, f1
	fadd.s f3, f4, f15
	fadd.s f14, f3, f0
	fmul.s f0, f2, f11
	fmul.s f2, f15, f12
	fsw f14, 68(s2)
	fmul.s f5, f14, f12
	flw f1, 72(t4)
	fmul.s f13, f1, f10
	fadd.s f4, f13, f0
	fadd.s f3, f4, f14
	fadd.s f13, f3, f2
	fmul.s f3, f1, f11
	fsw f13, 72(s2)
	flw f0, 76(t4)
	fmul.s f15, f0, f10
	fadd.s f4, f15, f3
	fmul.s f3, f0, f11
	fadd.s f2, f4, f13
	fadd.s f15, f2, f5
	fmul.s f5, f13, f12
	fsw f15, 76(s2)
	flw f1, 80(t4)
	fmul.s f14, f1, f10
	fadd.s f4, f14, f3
	fmul.s f3, f1, f11
	fmul.s f1, f15, f12
	fadd.s f2, f4, f15
	fadd.s f14, f2, f5
	fmul.s f5, f14, f12
	fsw f14, 80(s2)
	flw f0, 84(t4)
	fmul.s f13, f0, f10
	fadd.s f4, f13, f3
	fmul.s f3, f0, f11
	fadd.s f2, f4, f14
	fadd.s f13, f2, f1
	fsw f13, 84(s2)
	flw f15, 88(t4)
	fmul.s f2, f15, f10
	fadd.s f4, f2, f3
	fmul.s f3, f13, f12
	fadd.s f1, f4, f13
	fmul.s f4, f15, f11
	fadd.s f0, f1, f5
	fsw f0, 88(s2)
	flw f14, 92(t4)
	fmul.s f2, f14, f10
	fadd.s f5, f2, f4
	fmul.s f4, f14, f11
	fadd.s f1, f5, f0
	fadd.s f15, f1, f3
	fmul.s f3, f0, f12
	fsw f15, 92(s2)
	flw f13, 96(t4)
	fmul.s f1, f13, f10
	fadd.s f5, f1, f4
	fadd.s f2, f5, f15
	fmul.s f5, f15, f12
	fadd.s f14, f2, f3
	fmul.s f3, f13, f11
	fsw f14, 96(s2)
	flw f1, 100(t4)
	fmul.s f0, f1, f10
	fadd.s f4, f0, f3
	fadd.s f2, f4, f14
	fmul.s f4, f1, f11
	fadd.s f13, f2, f5
	fmul.s f5, f14, f12
	fsw f13, 100(s2)
	flw f0, 104(t4)
	fmul.s f15, f0, f10
	fadd.s f3, f15, f4
	fadd.s f2, f3, f13
	fmul.s f3, f0, f11
	fmul.s f0, f13, f12
	fadd.s f15, f2, f5
	fsw f15, 104(s2)
	flw f1, 108(t4)
	fmul.s f14, f1, f10
	fadd.s f4, f14, f3
	fmul.s f3, f1, f11
	fmul.s f1, f15, f12
	fadd.s f2, f4, f15
	fadd.s f14, f2, f0
	fsw f14, 108(s2)
	flw f13, 112(t4)
	fmul.s f0, f13, f10
	fadd.s f4, f0, f3
	fadd.s f2, f4, f14
	fadd.s f0, f2, f1
	fmul.s f1, f13, f11
	fmul.s f11, f14, f12
	fsw f0, 112(s2)
	flw f3, 116(t4)
	li t4, 512
	fmul.s f15, f3, f10
	fadd.s f2, f15, f1
	fadd.s f10, f2, f0
	fadd.s f13, f10, f11
	fsw f13, 116(s2)
	bge a6, t4, label90
.p2align 2
label6:
	fmv.w.x f14, zero
	mv t4, t6
	mv a7, zero
	fmv.s f13, f14
	fmv.s f12, f14
.p2align 2
label7:
	flw f15, 0(t4)
	sh2add s2, a7, t5
	li s3, 256
	addiw a7, a7, 16
	flw f10, 0(a0)
	flw f11, 4(a0)
	fmul.s f1, f15, f10
	fmul.s f2, f12, f11
	flw f12, 8(a0)
	fmul.s f5, f13, f12
	fadd.s f3, f1, f2
	fmul.s f1, f14, f12
	fadd.s f0, f3, f13
	fmul.s f3, f15, f11
	fadd.s f14, f0, f1
	fsw f14, 0(s2)
	flw f0, 4(t4)
	fmul.s f1, f0, f10
	fadd.s f4, f1, f3
	fadd.s f2, f4, f14
	fmul.s f4, f0, f11
	fadd.s f15, f2, f5
	fmul.s f5, f14, f12
	fsw f15, 4(s2)
	flw f1, 8(t4)
	fmul.s f13, f1, f10
	fadd.s f3, f13, f4
	fmul.s f4, f15, f12
	fadd.s f2, f3, f15
	fmul.s f3, f1, f11
	fadd.s f13, f2, f5
	fsw f13, 8(s2)
	flw f0, 12(t4)
	fmul.s f14, f0, f10
	fadd.s f5, f14, f3
	fmul.s f3, f13, f12
	fadd.s f2, f5, f13
	fmul.s f5, f0, f11
	fadd.s f14, f2, f4
	fsw f14, 12(s2)
	flw f1, 16(t4)
	fmul.s f15, f1, f10
	fadd.s f4, f15, f5
	fadd.s f2, f4, f14
	fmul.s f4, f14, f12
	fadd.s f15, f2, f3
	fmul.s f3, f1, f11
	fsw f15, 16(s2)
	flw f0, 20(t4)
	fmul.s f13, f0, f10
	fadd.s f5, f13, f3
	fmul.s f3, f0, f11
	fmul.s f0, f15, f12
	fadd.s f2, f5, f15
	fadd.s f13, f2, f4
	fsw f13, 20(s2)
	flw f1, 24(t4)
	fmul.s f5, f1, f11
	fmul.s f14, f1, f10
	fadd.s f4, f14, f3
	fadd.s f2, f4, f13
	fmul.s f4, f13, f12
	fadd.s f14, f2, f0
	fsw f14, 24(s2)
	flw f15, 28(t4)
	fmul.s f0, f15, f10
	fadd.s f3, f0, f5
	fmul.s f5, f14, f12
	fadd.s f2, f3, f14
	fmul.s f3, f15, f11
	fadd.s f0, f2, f4
	fsw f0, 28(s2)
	flw f1, 32(t4)
	fmul.s f13, f1, f10
	fadd.s f4, f13, f3
	fmul.s f3, f1, f11
	fmul.s f1, f0, f12
	fadd.s f2, f4, f0
	fadd.s f15, f2, f5
	fmul.s f5, f15, f12
	fsw f15, 32(s2)
	flw f13, 36(t4)
	fmul.s f14, f13, f10
	fadd.s f4, f14, f3
	fmul.s f3, f13, f11
	fadd.s f2, f4, f15
	fadd.s f14, f2, f1
	fsw f14, 36(s2)
	flw f0, 40(t4)
	fmul.s f1, f0, f10
	fadd.s f4, f1, f3
	fmul.s f3, f0, f11
	fadd.s f2, f4, f14
	fadd.s f13, f2, f5
	fmul.s f5, f14, f12
	fsw f13, 40(s2)
	flw f15, 44(t4)
	fmul.s f1, f15, f10
	fadd.s f4, f1, f3
	fmul.s f3, f15, f11
	fadd.s f2, f4, f13
	fadd.s f0, f2, f5
	fmul.s f5, f13, f12
	fsw f0, 44(s2)
	flw f1, 48(t4)
	fmul.s f14, f1, f10
	fadd.s f4, f14, f3
	fadd.s f2, f4, f0
	fmul.s f4, f1, f11
	fmul.s f1, f0, f12
	fadd.s f15, f2, f5
	fmul.s f5, f15, f12
	fsw f15, 48(s2)
	flw f14, 52(t4)
	fmul.s f13, f14, f10
	fadd.s f3, f13, f4
	fmul.s f4, f14, f11
	fadd.s f2, f3, f15
	fadd.s f13, f2, f1
	fsw f13, 52(s2)
	flw f0, 56(t4)
	fmul.s f2, f0, f10
	fadd.s f3, f2, f4
	fmul.s f2, f0, f11
	fmul.s f11, f13, f12
	fadd.s f1, f3, f13
	fadd.s f14, f1, f5
	fsw f14, 56(s2)
	flw f15, 60(t4)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f2
	fadd.s f10, f3, f14
	fadd.s f13, f10, f11
	fsw f13, 60(s2)
	bge a7, s3, label14
	addi t4, t4, 64
	fmv.s f12, f15
	j label7
label90:
	mv t5, t3
	mv t6, zero
	li t4, 512
	blt zero, t4, label68
	j label20
.p2align 2
label77:
	addi t4, t4, -64
	fmv.s f12, f14
	fmv.s f14, f10
.p2align 2
label69:
	flw f10, 12(a0)
	sh2add a7, a6, s1
	li s2, 13
	addiw a6, a6, -16
	fmul.s f0, f15, f10
	flw f11, 16(a0)
	fmul.s f3, f12, f11
	fmul.s f4, f15, f11
	flw f12, 8(a0)
	fmul.s f5, f14, f12
	fadd.s f2, f0, f3
	fmul.s f0, f13, f12
	fadd.s f1, f2, f14
	fadd.s f13, f1, f0
	fsw f13, 0(t4)
	flw f1, 0(a7)
	fmul.s f0, f1, f10
	fadd.s f3, f0, f4
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fadd.s f2, f3, f13
	fadd.s f0, f2, f5
	fmul.s f5, f0, f12
	fsw f0, -4(t4)
	flw f15, -4(a7)
	fmul.s f14, f15, f10
	fadd.s f3, f14, f4
	fmul.s f4, f15, f11
	fadd.s f2, f3, f0
	fadd.s f14, f2, f1
	fsw f14, -8(t4)
	flw f13, -8(a7)
	fmul.s f1, f13, f10
	fadd.s f3, f1, f4
	fmul.s f4, f13, f11
	fadd.s f2, f3, f14
	fadd.s f15, f2, f5
	fmul.s f5, f14, f12
	fsw f15, -12(t4)
	flw f0, -12(a7)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f4
	fmul.s f4, f0, f11
	fadd.s f2, f3, f15
	fadd.s f13, f2, f5
	fmul.s f5, f15, f12
	fsw f13, -16(t4)
	flw f14, -16(a7)
	fmul.s f1, f14, f10
	fadd.s f3, f1, f4
	fmul.s f4, f13, f12
	fadd.s f2, f3, f13
	fmul.s f3, f14, f11
	fadd.s f0, f2, f5
	fsw f0, -20(t4)
	flw f15, -20(a7)
	fmul.s f1, f15, f10
	fadd.s f5, f1, f3
	fadd.s f2, f5, f0
	fadd.s f14, f2, f4
	fmul.s f4, f15, f11
	fmul.s f15, f0, f12
	fsw f14, -24(t4)
	flw f1, -24(a7)
	fmul.s f5, f1, f11
	fmul.s f13, f1, f10
	fadd.s f3, f13, f4
	fadd.s f2, f3, f14
	fmul.s f3, f14, f12
	fadd.s f13, f2, f15
	fsw f13, -28(t4)
	flw f0, -28(a7)
	fmul.s f15, f0, f10
	fadd.s f4, f15, f5
	fadd.s f2, f4, f13
	fmul.s f4, f0, f11
	fmul.s f0, f13, f12
	fadd.s f15, f2, f3
	fsw f15, -32(t4)
	flw f1, -32(a7)
	fmul.s f14, f1, f10
	fadd.s f3, f14, f4
	fmul.s f4, f1, f11
	fmul.s f1, f15, f12
	fadd.s f2, f3, f15
	fadd.s f14, f2, f0
	fsw f14, -36(t4)
	flw f13, -36(a7)
	fmul.s f5, f13, f11
	fmul.s f0, f13, f10
	fadd.s f3, f0, f4
	fadd.s f2, f3, f14
	fmul.s f3, f14, f12
	fadd.s f0, f2, f1
	fsw f0, -40(t4)
	flw f15, -40(a7)
	fmul.s f1, f15, f10
	fadd.s f4, f1, f5
	fadd.s f2, f4, f0
	fmul.s f4, f15, f11
	fmul.s f15, f0, f12
	fadd.s f13, f2, f3
	fsw f13, -44(t4)
	flw f1, -44(a7)
	fmul.s f5, f1, f11
	fmul.s f14, f1, f10
	fadd.s f3, f14, f4
	fmul.s f4, f13, f12
	fadd.s f2, f3, f13
	fadd.s f14, f2, f15
	fsw f14, -48(t4)
	flw f0, -48(a7)
	fmul.s f15, f0, f10
	fadd.s f3, f15, f5
	fadd.s f2, f3, f14
	fadd.s f15, f2, f4
	fmul.s f4, f0, f11
	fmul.s f0, f14, f12
	fsw f15, -52(t4)
	flw f1, -52(a7)
	fmul.s f13, f1, f10
	fadd.s f3, f13, f4
	fmul.s f4, f1, f11
	fmul.s f11, f15, f12
	fadd.s f2, f3, f15
	fadd.s f13, f2, f0
	fsw f13, -56(t4)
	flw f14, -56(a7)
	fmul.s f2, f14, f10
	fadd.s f3, f2, f4
	fadd.s f0, f3, f13
	fadd.s f10, f0, f11
	fsw f10, -60(t4)
	flw f15, -60(a7)
	bgt a6, s2, label77
	flw f11, 12(a0)
	addiw t6, t6, 1
	addi s1, s1, 1080
	addi t5, t5, 1080
	fmul.s f0, f15, f11
	flw f12, 16(a0)
	fmul.s f3, f14, f12
	flw f14, 8(a0)
	fadd.s f1, f0, f3
	fmul.s f3, f13, f14
	fadd.s f2, f1, f10
	fadd.s f0, f2, f3
	fmul.s f2, f15, f12
	fmul.s f15, f10, f14
	fsw f0, -64(t4)
	flw f1, -64(a7)
	fmul.s f13, f1, f11
	fadd.s f4, f13, f2
	fadd.s f3, f4, f0
	fadd.s f13, f3, f15
	fmul.s f15, f1, f12
	fmul.s f1, f0, f14
	fsw f13, -68(t4)
	flw f2, -68(a7)
	fmul.s f10, f2, f11
	fadd.s f4, f10, f15
	fadd.s f3, f4, f13
	fmul.s f4, f2, f12
	fmul.s f2, f13, f14
	fadd.s f15, f3, f1
	fsw f15, -72(t4)
	flw f10, -72(a7)
	fmul.s f5, f10, f12
	fmul.s f0, f10, f11
	fadd.s f1, f0, f4
	fmul.s f4, f15, f14
	fadd.s f3, f1, f15
	fadd.s f0, f3, f2
	fsw f0, -76(t4)
	flw f1, -76(a7)
	fmul.s f13, f1, f11
	fadd.s f3, f13, f5
	fmul.s f5, f1, f12
	fadd.s f2, f3, f0
	fadd.s f10, f2, f4
	fmul.s f4, f0, f14
	fsw f10, -80(t4)
	flw f13, -80(a7)
	fmul.s f15, f13, f11
	fadd.s f3, f15, f5
	fmul.s f5, f13, f12
	fadd.s f2, f3, f10
	fmul.s f3, f10, f14
	fadd.s f15, f2, f4
	fsw f15, -84(t4)
	flw f1, -84(a7)
	fmul.s f0, f1, f11
	fadd.s f4, f0, f5
	fadd.s f2, f4, f15
	fmul.s f4, f1, f12
	fadd.s f13, f2, f3
	fmul.s f3, f15, f14
	fsw f13, -88(t4)
	flw f0, -88(a7)
	fmul.s f10, f0, f11
	fadd.s f5, f10, f4
	fadd.s f2, f5, f13
	fmul.s f5, f13, f14
	fadd.s f10, f2, f3
	fmul.s f3, f0, f12
	fsw f10, -92(t4)
	flw f1, -92(a7)
	fmul.s f15, f1, f11
	fadd.s f4, f15, f3
	fmul.s f3, f1, f12
	fmul.s f1, f10, f14
	fadd.s f2, f4, f10
	fadd.s f15, f2, f5
	fsw f15, -96(t4)
	flw f0, -96(a7)
	fmul.s f5, f0, f12
	fmul.s f13, f0, f11
	fadd.s f4, f13, f3
	fmul.s f3, f15, f14
	fadd.s f2, f4, f15
	fadd.s f13, f2, f1
	fsw f13, -100(t4)
	flw f10, -100(a7)
	fmul.s f2, f10, f11
	fadd.s f4, f2, f5
	fmul.s f5, f10, f12
	fadd.s f1, f4, f13
	fadd.s f0, f1, f3
	fmul.s f3, f13, f14
	fsw f0, -104(t4)
	flw f15, -104(a7)
	fmul.s f2, f15, f11
	fadd.s f4, f2, f5
	fadd.s f1, f4, f0
	fmul.s f4, f15, f12
	fadd.s f10, f1, f3
	fmul.s f3, f0, f14
	fsw f10, -108(t4)
	flw f13, -108(a7)
	fmul.s f2, f13, f11
	fadd.s f5, f2, f4
	fmul.s f2, f13, f12
	fmul.s f12, f10, f14
	fadd.s f1, f5, f10
	fadd.s f15, f1, f3
	fsw f15, -112(t4)
	flw f4, -112(a7)
	fmul.s f0, f4, f11
	fadd.s f1, f0, f2
	fadd.s f11, f1, f15
	fadd.s f13, f11, f12
	fsw f13, -116(t4)
	li t4, 512
	bge t6, t4, label20
.p2align 2
label68:
	addi t4, t5, 1076
	fmv.w.x f13, zero
	li a6, 269
	fmv.s f14, f13
	fmv.s f12, f13
	fmv.s f15, f13
	j label69
label20:
	mv t5, s0
	mv a6, t2
	mv t6, t3
	mv a7, zero
	li s1, 512
	blt zero, s1, label62
	j label396
.p2align 2
label66:
	flw f10, 64(t4)
	addiw a7, a7, 1
	addi t6, t6, 1080
	addi a6, a6, 1080
	addi t5, t5, 1080
	flw f12, 64(s1)
	fadd.s f13, f10, f12
	fsw f13, 64(s2)
	flw f11, 68(t4)
	flw f12, 68(s1)
	fadd.s f13, f11, f12
	fsw f13, 68(s2)
	flw f10, 72(t4)
	flw f11, 72(s1)
	fadd.s f14, f10, f11
	fsw f14, 72(s2)
	flw f12, 76(t4)
	flw f13, 76(s1)
	fadd.s f10, f12, f13
	fsw f10, 76(s2)
	flw f11, 80(t4)
	flw f13, 80(s1)
	fadd.s f12, f11, f13
	fsw f12, 80(s2)
	flw f10, 84(t4)
	flw f13, 84(s1)
	fadd.s f12, f10, f13
	fsw f12, 84(s2)
	flw f11, 88(t4)
	flw f13, 88(s1)
	fadd.s f12, f11, f13
	fsw f12, 88(s2)
	flw f10, 92(t4)
	flw f14, 92(s1)
	fadd.s f13, f10, f14
	fsw f13, 92(s2)
	flw f11, 96(t4)
	flw f12, 96(s1)
	fadd.s f13, f11, f12
	fsw f13, 96(s2)
	flw f10, 100(t4)
	flw f12, 100(s1)
	fadd.s f13, f10, f12
	fsw f13, 100(s2)
	flw f11, 104(t4)
	flw f12, 104(s1)
	fadd.s f13, f11, f12
	fsw f13, 104(s2)
	flw f10, 108(t4)
	flw f12, 108(s1)
	fadd.s f13, f10, f12
	fsw f13, 108(s2)
	flw f11, 112(t4)
	flw f14, 112(s1)
	fadd.s f12, f11, f14
	fsw f12, 112(s2)
	flw f10, 116(t4)
	flw f11, 116(s1)
	li s1, 512
	fadd.s f12, f10, f11
	fsw f12, 116(s2)
	bge a7, s1, label396
.p2align 2
label62:
	mv t4, a6
	mv s3, zero
.p2align 2
label63:
	sh2add s1, s3, t6
	flw f10, 0(t4)
	sh2add s2, s3, t5
	li s4, 256
	flw f11, 0(s1)
	addiw s3, s3, 16
	fadd.s f12, f10, f11
	fsw f12, 0(s2)
	flw f11, 4(t4)
	flw f13, 4(s1)
	fadd.s f12, f11, f13
	fsw f12, 4(s2)
	flw f10, 8(t4)
	flw f13, 8(s1)
	fadd.s f12, f10, f13
	fsw f12, 8(s2)
	flw f11, 12(t4)
	flw f13, 12(s1)
	fadd.s f12, f11, f13
	fsw f12, 12(s2)
	flw f10, 16(t4)
	flw f13, 16(s1)
	fadd.s f12, f10, f13
	fsw f12, 16(s2)
	flw f11, 20(t4)
	flw f13, 20(s1)
	fadd.s f12, f11, f13
	fsw f12, 20(s2)
	flw f10, 24(t4)
	flw f13, 24(s1)
	fadd.s f12, f10, f13
	fsw f12, 24(s2)
	flw f11, 28(t4)
	flw f13, 28(s1)
	fadd.s f12, f11, f13
	fsw f12, 28(s2)
	flw f10, 32(t4)
	flw f13, 32(s1)
	fadd.s f11, f10, f13
	fsw f11, 32(s2)
	flw f12, 36(t4)
	flw f13, 36(s1)
	fadd.s f10, f12, f13
	fsw f10, 36(s2)
	flw f11, 40(t4)
	flw f12, 40(s1)
	fadd.s f13, f11, f12
	fsw f13, 40(s2)
	flw f10, 44(t4)
	flw f12, 44(s1)
	fadd.s f13, f10, f12
	fsw f13, 44(s2)
	flw f11, 48(t4)
	flw f12, 48(s1)
	fadd.s f13, f11, f12
	fsw f13, 48(s2)
	flw f10, 52(t4)
	flw f12, 52(s1)
	fadd.s f13, f10, f12
	fsw f13, 52(s2)
	flw f11, 56(t4)
	flw f12, 56(s1)
	fadd.s f13, f11, f12
	fsw f13, 56(s2)
	flw f10, 60(t4)
	flw f12, 60(s1)
	fadd.s f11, f10, f12
	fsw f11, 60(s2)
	bge s3, s4, label66
	addi t4, t4, 64
	j label63
label396:
	mv t4, zero
	li t5, 270
	blt zero, t5, label53
	j label400
.p2align 2
label61:
	li a7, 135
	fmv.s f12, f15
	fmv.s f0, f13
	slli a6, a7, 7
	fmv.s f15, f10
	add t5, t5, a6
.p2align 2
label54:
	sh2add a6, t4, t5
	addi s2, t5, 1080
	li s3, 135
	mulw a7, t6, a1
	flw f13, 0(a6)
	addiw t6, t6, 16
	add a6, t2, a7
	flw f10, 0(a0)
	sh2add s1, t4, a6
	sh2add a7, t4, s2
	flw f11, 4(a0)
	fmul.s f14, f13, f10
	fmul.s f5, f13, f11
	fmul.s f2, f12, f11
	flw f12, 8(a0)
	fadd.s f3, f14, f2
	fmul.s f2, f0, f12
	fadd.s f1, f3, f15
	fmul.s f3, f15, f12
	fadd.s f14, f1, f2
	fsw f14, 0(s1)
	addi s1, a6, 1080
	flw f0, 0(a7)
	sh2add a7, t4, s1
	fmul.s f1, f0, f10
	slli s1, s3, 4
	add s2, t5, s1
	fadd.s f4, f1, f5
	fadd.s f2, f4, f14
	fmul.s f4, f0, f11
	fmul.s f0, f14, f12
	fadd.s f13, f2, f3
	fsw f13, 0(a7)
	sh2add a7, t4, s2
	flw f1, 0(a7)
	add a7, a6, s1
	fmul.s f15, f1, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f3, f15, f4
	fadd.s f2, f3, f13
	fmul.s f3, f1, f11
	fmul.s f1, f13, f12
	fadd.s f15, f2, f0
	fsw f15, 0(s2)
	sh2add s2, t4, s3
	flw f0, 0(s2)
	add s2, a6, a7
	fmul.s f14, f0, f10
	sh2add s3, t4, s2
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f4, f14, f3
	fmul.s f3, f0, f11
	fmul.s f0, f15, f12
	fadd.s f2, f4, f15
	fadd.s f14, f2, f1
	fsw f14, 0(s3)
	flw f1, 0(a7)
	add a7, a6, s1
	fmul.s f13, f1, f10
	sh2add s3, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s2, t5, a7
	fadd.s f4, f13, f3
	fadd.s f2, f4, f14
	fmul.s f4, f1, f11
	fmul.s f1, f14, f12
	fadd.s f13, f2, f0
	fsw f13, 0(s3)
	sh2add s3, t4, s2
	add s2, a6, a7
	flw f0, 0(s3)
	sh2add s3, t4, s2
	fmul.s f15, f0, f10
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f3, f15, f4
	fmul.s f4, f0, f11
	fmul.s f0, f13, f12
	fadd.s f2, f3, f13
	fadd.s f15, f2, f1
	fsw f15, 0(s3)
	flw f1, 0(a7)
	add a7, a6, s1
	fmul.s f14, f1, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f3, f14, f4
	fmul.s f4, f1, f11
	fmul.s f1, f15, f12
	fadd.s f2, f3, f15
	fadd.s f14, f2, f0
	fsw f14, 0(s2)
	sh2add s2, t4, s3
	flw f0, 0(s2)
	add s2, a6, a7
	fmul.s f13, f0, f10
	sh2add s3, t4, s2
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f3, f13, f4
	fmul.s f4, f0, f11
	fmul.s f0, f14, f12
	fadd.s f2, f3, f14
	fadd.s f13, f2, f1
	fsw f13, 0(s3)
	flw f1, 0(a7)
	add a7, a6, s1
	fmul.s f15, f1, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f3, f15, f4
	fadd.s f2, f3, f13
	fmul.s f3, f1, f11
	fmul.s f1, f13, f12
	fadd.s f15, f2, f0
	fsw f15, 0(s2)
	sh2add s2, t4, s3
	flw f0, 0(s2)
	add s2, a6, a7
	fmul.s f14, f0, f10
	fmul.s f5, f0, f11
	sh2add s3, t4, s2
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f4, f14, f3
	fadd.s f2, f4, f15
	fmul.s f4, f15, f12
	fadd.s f14, f2, f1
	fsw f14, 0(s3)
	flw f13, 0(a7)
	add a7, a6, s1
	fmul.s f1, f13, f10
	sh2add s3, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s2, t5, a7
	fadd.s f3, f1, f5
	fmul.s f5, f14, f12
	fadd.s f2, f3, f14
	fadd.s f0, f2, f4
	fmul.s f4, f13, f11
	fsw f0, 0(s3)
	sh2add s3, t4, s2
	add s2, a6, a7
	flw f15, 0(s3)
	sh2add s3, t4, s2
	fmul.s f2, f15, f10
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f3, f2, f4
	fadd.s f1, f3, f0
	fmul.s f3, f0, f12
	fadd.s f13, f1, f5
	fmul.s f5, f15, f11
	fsw f13, 0(s3)
	flw f14, 0(a7)
	add a7, a6, s1
	fmul.s f2, f14, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	addi s1, a7, 1080
	add s3, t5, a7
	fadd.s f4, f2, f5
	fadd.s f1, f4, f13
	fmul.s f4, f13, f12
	fadd.s f15, f1, f3
	fmul.s f3, f14, f11
	fsw f15, 0(s2)
	sh2add s2, t4, s3
	flw f1, 0(s2)
	add s2, a6, a7
	fmul.s f0, f1, f10
	sh2add s3, t4, s2
	add s2, t5, s1
	sh2add a7, t4, s2
	fadd.s f5, f0, f3
	fadd.s f2, f5, f15
	fadd.s f14, f2, f4
	fmul.s f4, f1, f11
	fmul.s f1, f15, f12
	fsw f14, 0(s3)
	flw f0, 0(a7)
	add a7, a6, s1
	fmul.s f13, f0, f10
	sh2add s2, t4, a7
	addi a7, s1, 1080
	add s1, a6, a7
	add s3, t5, a7
	li a6, 512
	fadd.s f3, f13, f4
	fadd.s f2, f3, f14
	fmul.s f3, f0, f11
	fmul.s f11, f14, f12
	fadd.s f13, f2, f1
	fsw f13, 0(s2)
	sh2add s2, t4, s3
	flw f15, 0(s2)
	sh2add s2, t4, s1
	fmul.s f1, f15, f10
	fadd.s f4, f1, f3
	fadd.s f2, f4, f13
	fadd.s f10, f2, f11
	fsw f10, 0(s2)
	blt t6, a6, label61
	addiw t4, t4, 1
	li t5, 270
	bge t4, t5, label400
.p2align 2
label53:
	fmv.w.x f0, zero
	mv t5, s0
	mv t6, zero
	fmv.s f15, f0
	fmv.s f12, f0
	j label54
label400:
	mv t4, zero
	li t5, 270
	blt zero, t5, label30
	j label404
.p2align 2
label39:
	li a7, -135
	fmv.s f12, f15
	slli a6, a7, 7
	fmv.s f15, f10
	add t5, t5, a6
.p2align 2
label31:
	flw f10, 12(a0)
	sh2add a7, t4, t5
	mulw s1, t6, a1
	addi s2, t5, -1080
	flw f11, 16(a0)
	fmul.s f14, f0, f10
	addiw t6, t6, -16
	add a6, s0, s1
	fmul.s f2, f12, f11
	addi s1, a6, -1080
	fmul.s f4, f0, f11
	flw f12, 8(a0)
	fmul.s f0, f15, f12
	fadd.s f3, f14, f2
	fmul.s f2, f13, f12
	fadd.s f1, f3, f15
	fadd.s f14, f1, f2
	fsw f14, 0(a7)
	sh2add a7, t4, a6
	flw f1, 0(a7)
	sh2add a7, t4, s2
	fmul.s f13, f1, f10
	fadd.s f3, f13, f4
	fmul.s f4, f1, f11
	fmul.s f1, f14, f12
	fadd.s f2, f3, f14
	fadd.s f13, f2, f0
	fsw f13, 0(a7)
	sh2add a7, t4, s1
	flw f0, 0(a7)
	add a7, t5, a2
	fmul.s f15, f0, f10
	sh2add s1, t4, a7
	add a7, a6, a2
	sh2add s2, t4, a7
	fadd.s f3, f15, f4
	fadd.s f2, f3, f13
	fmul.s f3, f0, f11
	fmul.s f0, f13, f12
	fadd.s f15, f2, f1
	fsw f15, 0(s1)
	add s1, t5, a3
	flw f1, 0(s2)
	sh2add a7, t4, s1
	add s2, a6, a3
	fmul.s f14, f1, f10
	fadd.s f4, f14, f3
	fadd.s f2, f4, f15
	fmul.s f4, f1, f11
	fmul.s f1, f15, f12
	fadd.s f14, f2, f0
	fsw f14, 0(a7)
	sh2add a7, t4, s2
	flw f0, 0(a7)
	add a7, t5, a4
	fmul.s f13, f0, f10
	fmul.s f5, f0, f11
	sh2add s1, t4, a7
	add a7, a6, a4
	sh2add s2, t4, a7
	fadd.s f3, f13, f4
	add a7, t5, a5
	fmul.s f4, f14, f12
	fadd.s f2, f3, f14
	fadd.s f13, f2, f1
	fsw f13, 0(s1)
	sh2add s1, t4, a7
	flw f15, 0(s2)
	add a7, a6, a5
	fmul.s f1, f15, f10
	sh2add s2, t4, a7
	fadd.s f3, f1, f5
	fmul.s f5, f15, f11
	fadd.s f2, f3, f13
	fadd.s f0, f2, f4
	fmul.s f4, f13, f12
	fsw f0, 0(s1)
	add s1, a6, t0
	flw f14, 0(s2)
	add s2, t5, t0
	fmul.s f2, f14, f10
	sh2add a7, t4, s2
	fadd.s f3, f2, f5
	fadd.s f1, f3, f0
	fmul.s f3, f14, f11
	fadd.s f15, f1, f4
	fmul.s f4, f0, f12
	fsw f15, 0(a7)
	sh2add a7, t4, s1
	add s1, a6, t1
	flw f13, 0(a7)
	add a7, t5, t1
	fmul.s f1, f13, f10
	sh2add s2, t4, a7
	sh2add a7, t4, s1
	fadd.s f5, f1, f3
	fmul.s f3, f13, f11
	fadd.s f2, f5, f15
	fmul.s f5, f15, f12
	fadd.s f14, f2, f4
	fsw f14, 0(s2)
	li s2, -135
	flw f0, 0(a7)
	slli s1, s2, 6
	add a7, t5, s1
	fmul.s f1, f0, f10
	sh2add s3, t4, a7
	add a7, a6, s1
	sh2add s2, t4, a7
	addi a7, s1, -1080
	fadd.s f4, f1, f3
	add s4, t5, a7
	fadd.s f2, f4, f14
	fmul.s f4, f0, f11
	fmul.s f0, f14, f12
	fadd.s f13, f2, f5
	fsw f13, 0(s3)
	add s3, a6, a7
	flw f1, 0(s2)
	sh2add s1, t4, s3
	sh2add s2, t4, s4
	fmul.s f15, f1, f10
	fadd.s f3, f15, f4
	fadd.s f2, f3, f13
	fmul.s f3, f1, f11
	fmul.s f1, f13, f12
	fadd.s f15, f2, f0
	fsw f15, 0(s2)
	addi s2, a7, -1080
	flw f0, 0(s1)
	add a7, a6, s2
	add s1, t5, s2
	fmul.s f14, f0, f10
	sh2add s3, t4, s1
	sh2add s1, t4, a7
	fadd.s f4, f14, f3
	fmul.s f3, f0, f11
	fmul.s f0, f15, f12
	fadd.s f2, f4, f15
	fadd.s f14, f2, f1
	fsw f14, 0(s3)
	flw f1, 0(s1)
	addi s1, s2, -1080
	fmul.s f13, f1, f10
	add a7, t5, s1
	sh2add s3, t4, a7
	add a7, a6, s1
	sh2add s2, t4, a7
	addi a7, s1, -1080
	fadd.s f4, f13, f3
	add s1, a6, a7
	fadd.s f2, f4, f14
	fmul.s f4, f1, f11
	fmul.s f1, f14, f12
	fadd.s f13, f2, f0
	fsw f13, 0(s3)
	flw f0, 0(s2)
	add s2, t5, a7
	fmul.s f15, f0, f10
	sh2add s3, t4, s2
	sh2add s2, t4, s1
	addi s1, a7, -1080
	fadd.s f3, f15, f4
	fadd.s f2, f3, f13
	fmul.s f3, f0, f11
	fmul.s f0, f13, f12
	fadd.s f15, f2, f1
	fsw f15, 0(s3)
	add s3, t5, s1
	flw f1, 0(s2)
	sh2add a7, t4, s3
	add s2, a6, s1
	fmul.s f14, f1, f10
	fadd.s f4, f14, f3
	fmul.s f3, f1, f11
	fmul.s f1, f15, f12
	fadd.s f2, f4, f15
	fadd.s f14, f2, f0
	fsw f14, 0(a7)
	sh2add a7, t4, s2
	flw f0, 0(a7)
	addi a7, s1, -1080
	fmul.s f13, f0, f10
	add s1, a6, a7
	add s2, t5, a7
	sh2add s3, t4, s2
	sh2add s2, t4, s1
	addi s1, a7, -1080
	fadd.s f4, f13, f3
	fmul.s f3, f0, f11
	fmul.s f11, f14, f12
	fadd.s f2, f4, f14
	fadd.s f13, f2, f1
	fsw f13, 0(s3)
	add s3, a6, s1
	flw f15, 0(s2)
	add s2, t5, s1
	fmul.s f1, f15, f10
	sh2add a7, t4, s2
	fadd.s f4, f1, f3
	fadd.s f2, f4, f13
	fadd.s f10, f2, f11
	fsw f10, 0(a7)
	sh2add a7, t4, s3
	flw f0, 0(a7)
	bge t6, zero, label39
	addiw t4, t4, 1
	li t5, 270
	bge t4, t5, label404
.p2align 2
label30:
	lui a6, 135
	fmv.w.x f13, zero
	addiw t6, a6, -1080
	fmv.s f15, f13
	fmv.s f12, f13
	fmv.s f0, f13
	add t5, t3, t6
	li t6, 511
	j label31
label404:
	mv a1, s0
	mv a2, zero
	li a0, 512
	blt zero, a0, label47
	j label46
.p2align 2
label52:
	flw f10, 64(a0)
	addiw a2, a2, 1
	addi t3, t3, 1080
	addi t2, t2, 1080
	addi a1, a1, 1080
	flw f13, 64(a3)
	fadd.s f12, f10, f13
	fsw f12, 64(a4)
	flw f11, 68(a0)
	flw f13, 68(a3)
	fadd.s f12, f11, f13
	fsw f12, 68(a4)
	flw f10, 72(a0)
	flw f13, 72(a3)
	fadd.s f12, f10, f13
	fsw f12, 72(a4)
	flw f11, 76(a0)
	flw f13, 76(a3)
	fadd.s f12, f11, f13
	fsw f12, 76(a4)
	flw f10, 80(a0)
	flw f13, 80(a3)
	fadd.s f12, f10, f13
	fsw f12, 80(a4)
	flw f11, 84(a0)
	flw f13, 84(a3)
	fadd.s f12, f11, f13
	fsw f12, 84(a4)
	flw f10, 88(a0)
	flw f14, 88(a3)
	fadd.s f13, f10, f14
	fsw f13, 88(a4)
	flw f11, 92(a0)
	flw f12, 92(a3)
	fadd.s f13, f11, f12
	fsw f13, 92(a4)
	flw f10, 96(a0)
	flw f12, 96(a3)
	fadd.s f13, f10, f12
	fsw f13, 96(a4)
	flw f11, 100(a0)
	flw f12, 100(a3)
	fadd.s f14, f11, f12
	fsw f14, 100(a4)
	flw f10, 104(a0)
	flw f13, 104(a3)
	fadd.s f11, f10, f13
	fsw f11, 104(a4)
	flw f12, 108(a0)
	flw f13, 108(a3)
	fadd.s f10, f12, f13
	fsw f10, 108(a4)
	flw f11, 112(a0)
	flw f13, 112(a3)
	fadd.s f12, f11, f13
	fsw f12, 112(a4)
	flw f10, 116(a0)
	li a0, 512
	flw f13, 116(a3)
	fadd.s f11, f10, f13
	fsw f11, 116(a4)
	bge a2, a0, label46
.p2align 2
label47:
	mv a0, t2
	mv a5, zero
.p2align 2
label48:
	sh2add a3, a5, t3
	flw f11, 0(a0)
	sh2add a4, a5, a1
	li t0, 256
	flw f12, 0(a3)
	addiw a5, a5, 16
	fadd.s f10, f11, f12
	fsw f10, 0(a4)
	flw f11, 4(a0)
	flw f13, 4(a3)
	fadd.s f12, f11, f13
	fsw f12, 4(a4)
	flw f10, 8(a0)
	flw f13, 8(a3)
	fadd.s f12, f10, f13
	fsw f12, 8(a4)
	flw f11, 12(a0)
	flw f10, 12(a3)
	fadd.s f13, f11, f10
	fsw f13, 12(a4)
	flw f12, 16(a0)
	flw f14, 16(a3)
	fadd.s f11, f12, f14
	fsw f11, 16(a4)
	flw f10, 20(a0)
	flw f13, 20(a3)
	fadd.s f11, f10, f13
	fsw f11, 20(a4)
	flw f12, 24(a0)
	flw f13, 24(a3)
	fadd.s f10, f12, f13
	fsw f10, 24(a4)
	flw f11, 28(a0)
	flw f13, 28(a3)
	fadd.s f12, f11, f13
	fsw f12, 28(a4)
	flw f10, 32(a0)
	flw f13, 32(a3)
	fadd.s f11, f10, f13
	fsw f11, 32(a4)
	flw f12, 36(a0)
	flw f13, 36(a3)
	fadd.s f10, f12, f13
	fsw f10, 36(a4)
	flw f11, 40(a0)
	flw f12, 40(a3)
	fadd.s f13, f11, f12
	fsw f13, 40(a4)
	flw f10, 44(a0)
	flw f11, 44(a3)
	fadd.s f13, f10, f11
	fsw f13, 44(a4)
	flw f12, 48(a0)
	flw f10, 48(a3)
	fadd.s f13, f12, f10
	fsw f13, 48(a4)
	flw f11, 52(a0)
	flw f12, 52(a3)
	fadd.s f13, f11, f12
	fsw f13, 52(a4)
	flw f10, 56(a0)
	flw f14, 56(a3)
	fadd.s f12, f10, f14
	fsw f12, 56(a4)
	flw f11, 60(a0)
	flw f10, 60(a3)
	fadd.s f12, f11, f10
	fsw f12, 60(a4)
	bge a5, t0, label52
	addi a0, a0, 64
	j label48
label46:
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
