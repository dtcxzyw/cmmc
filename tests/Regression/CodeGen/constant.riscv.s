.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl x
x:
	.zero	40
.text
.globl cse_imm
cse_imm:
	sh2add a1, a1, a1
	sh2add a0, a0, a0
	slliw a1, a1, 1
	xor a1, a2, a1
	sh1add a0, a0, a1
	ret
.globl cse_global
cse_global:
pcrel22:
	auipc a0, %pcrel_hi(x)
	addi a1, a0, %pcrel_lo(pcrel22)
	lw a0, %pcrel_lo(pcrel22)(a0)
	lw a1, 4(a1)
	addw a0, a0, a1
	ret
.globl cse_fp
cse_fp:
	lui a0, 264192
	fmv.w.x f12, a0
	fmul.s f11, f11, f12
	fmul.s f10, f10, f12
	fadd.s f10, f10, f11
	ret
.globl imm_build_pattern1
imm_build_pattern1:
	li a1, 1
	sw a1, 0(a0)
	li a1, 2
	sw a1, 4(a0)
	li a1, 4
	sw a1, 8(a0)
	li a1, 8
	sw a1, 12(a0)
	li a1, 16
	sw a1, 16(a0)
	li a1, 32
	sw a1, 20(a0)
	li a1, 64
	sw a1, 24(a0)
	li a1, 128
	sw a1, 28(a0)
	li a1, 256
	sw a1, 32(a0)
	li a1, 512
	sw a1, 36(a0)
	li a1, 1024
	sw a1, 40(a0)
	slli a1, a1, 1
	sw a1, 44(a0)
	slli a1, a1, 1
	sw a1, 48(a0)
	slli a1, a1, 1
	sw a1, 52(a0)
	slli a1, a1, 1
	sw a1, 56(a0)
	slli a1, a1, 1
	sw a1, 60(a0)
	slli a1, a1, 1
	sw a1, 64(a0)
	slli a1, a1, 1
	sw a1, 68(a0)
	slli a1, a1, 1
	sw a1, 72(a0)
	slli a1, a1, 1
	sw a1, 76(a0)
	slli a1, a1, 1
	sw a1, 80(a0)
	slli a1, a1, 1
	sw a1, 84(a0)
	slli a1, a1, 1
	sw a1, 88(a0)
	slli a1, a1, 1
	sw a1, 92(a0)
	slli a1, a1, 1
	sw a1, 96(a0)
	slli a1, a1, 1
	sw a1, 100(a0)
	slli a1, a1, 1
	sw a1, 104(a0)
	slli a1, a1, 1
	sw a1, 108(a0)
	slli a1, a1, 1
	sw a1, 112(a0)
	slli a1, a1, 1
	sw a1, 116(a0)
	slli a1, a1, 1
	sw a1, 120(a0)
	ret
.globl imm_build_pattern2
imm_build_pattern2:
	li a1, 1024000
	sw a1, 0(a0)
	srli a1, a1, 1
	sw a1, 4(a0)
	srli a1, a1, 1
	sw a1, 8(a0)
	srli a1, a1, 1
	sw a1, 12(a0)
	srli a1, a1, 1
	sw a1, 16(a0)
	srli a1, a1, 1
	sw a1, 20(a0)
	srli a1, a1, 1
	sw a1, 24(a0)
	srli a1, a1, 1
	sw a1, 28(a0)
	srli a1, a1, 1
	sw a1, 32(a0)
	ret
.globl imm_build_pattern3
imm_build_pattern3:
	sw zero, 0(a0)
	li a1, 400
	sw a1, 4(a0)
	li a1, 800
	sw a1, 8(a0)
	li a1, 1200
	sw a1, 12(a0)
	li a1, 1600
	sw a1, 16(a0)
	li a1, 2000
	sw a1, 20(a0)
	addi a1, a1, 400
	sw a1, 24(a0)
	addi a1, a1, 400
	sw a1, 28(a0)
	addi a1, a1, 400
	sw a1, 32(a0)
	ret
