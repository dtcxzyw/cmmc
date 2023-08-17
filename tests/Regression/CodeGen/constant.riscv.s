.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
.globl x
x:
	.zero	40
.text
.p2align 2
.globl cse_imm
cse_imm:
	sh2add a4, a1, a1
	sh2add a1, a0, a0
	slliw a5, a4, 1
	xor a3, a2, a5
	sh1add a0, a1, a3
	ret
.p2align 2
.globl cse_global
cse_global:
pcrel25:
	auipc a2, %pcrel_hi(x)
	lw a3, %pcrel_lo(pcrel25)(a2)
	addi a1, a2, %pcrel_lo(pcrel25)
	lw a4, 4(a1)
	addw a0, a3, a4
	ret
.p2align 2
.globl cse_fp
cse_fp:
	lui a0, 264192
	fmv.w.x f12, a0
	fmul.s f14, f11, f12
	fmul.s f13, f10, f12
	fadd.s f10, f13, f14
	ret
.p2align 2
.globl imm_build_pattern1
imm_build_pattern1:
	li a2, 1
	li a1, 2
	li a3, 16
	sw a2, 0(a0)
	li a2, 4
	sw a1, 4(a0)
	li a1, 8
	sw a2, 8(a0)
	li a2, 32
	sw a1, 12(a0)
	li a1, 64
	sw a3, 16(a0)
	lui a3, 1
	sw a2, 20(a0)
	li a2, 128
	sw a1, 24(a0)
	li a1, 256
	sw a2, 28(a0)
	li a2, 512
	sw a1, 32(a0)
	li a1, 1024
	sw a2, 36(a0)
	slli a2, a1, 1
	sw a1, 40(a0)
	lui a1, 2
	sw a2, 44(a0)
	lui a2, 4
	sw a3, 48(a0)
	lui a3, 8
	sw a1, 52(a0)
	lui a1, 16
	sw a2, 56(a0)
	lui a2, 32
	sw a3, 60(a0)
	lui a3, 16384
	sw a1, 64(a0)
	lui a1, 64
	sw a2, 68(a0)
	lui a2, 128
	sw a1, 72(a0)
	lui a1, 256
	sw a2, 76(a0)
	lui a2, 512
	sw a1, 80(a0)
	lui a1, 1024
	sw a2, 84(a0)
	lui a2, 2048
	sw a1, 88(a0)
	lui a1, 4096
	sw a2, 92(a0)
	lui a2, 8192
	sw a1, 96(a0)
	lui a1, 32768
	sw a2, 100(a0)
	lui a2, 65536
	sw a3, 104(a0)
	sw a1, 108(a0)
	lui a1, 131072
	sw a2, 112(a0)
	lui a2, 262144
	sw a1, 116(a0)
	sw a2, 120(a0)
	ret
.p2align 2
.globl imm_build_pattern2
imm_build_pattern2:
	lui a1, 250
	lui a2, 125
	sw a1, 0(a0)
	li a1, 125
	sw a2, 4(a0)
	slli a3, a1, 11
	srli a2, a3, 1
	sw a3, 8(a0)
	srli a1, a2, 1
	sw a2, 12(a0)
	srli a3, a1, 1
	sw a1, 16(a0)
	srli a2, a3, 1
	sw a3, 20(a0)
	srli a1, a2, 1
	sw a2, 24(a0)
	srli a3, a1, 1
	sw a1, 28(a0)
	sw a3, 32(a0)
	ret
.p2align 2
.globl imm_build_pattern3
imm_build_pattern3:
	sw zero, 0(a0)
	li a1, 400
	li a2, 800
	li a3, 1200
	sw a1, 4(a0)
	li a1, 1600
	sw a2, 8(a0)
	sw a3, 12(a0)
	li a3, 2000
	sw a1, 16(a0)
	addi a2, a3, 400
	sw a3, 20(a0)
	addi a1, a2, 400
	sw a2, 24(a0)
	addi a3, a1, 400
	sw a1, 28(a0)
	sw a3, 32(a0)
	ret
