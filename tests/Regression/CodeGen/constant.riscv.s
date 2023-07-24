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
.p2align 2
	sh2add a3, a1, a1
	slliw a4, a3, 1
	xor a1, a2, a4
	sh2add a2, a0, a0
	sh1add a0, a2, a1
	ret
.globl cse_global
cse_global:
.p2align 2
pcrel22:
	auipc a0, %pcrel_hi(x)
	lw a2, %pcrel_lo(pcrel22)(a0)
	addi a1, a0, %pcrel_lo(pcrel22)
	lw a3, 4(a1)
	addw a0, a2, a3
	ret
.globl cse_fp
cse_fp:
.p2align 2
	lui a0, 264192
	fmv.w.x f12, a0
	fmul.s f11, f11, f12
	fmul.s f13, f10, f12
	fadd.s f10, f13, f11
	ret
.globl imm_build_pattern1
imm_build_pattern1:
.p2align 2
	li a1, 1
	li a2, 2
	lui a3, 16384
	sw a1, 0(a0)
	li a1, 4
	sw a2, 4(a0)
	li a2, 8
	sw a1, 8(a0)
	li a1, 16
	sw a2, 12(a0)
	li a2, 32
	sw a1, 16(a0)
	li a1, 64
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
	lui a1, 1
	sw a2, 44(a0)
	lui a2, 2
	sw a1, 48(a0)
	lui a1, 4
	sw a2, 52(a0)
	lui a2, 8
	sw a1, 56(a0)
	lui a1, 16
	sw a2, 60(a0)
	lui a2, 32
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
.globl imm_build_pattern2
imm_build_pattern2:
.p2align 2
	lui a1, 250
	lui a2, 125
	sw a1, 0(a0)
	li a1, 256000
	sw a2, 4(a0)
	srli a2, a1, 1
	sw a1, 8(a0)
	srli a1, a2, 1
	sw a2, 12(a0)
	srli a2, a1, 1
	sw a1, 16(a0)
	srli a3, a2, 1
	sw a2, 20(a0)
	srli a1, a3, 1
	sw a3, 24(a0)
	srli a2, a1, 1
	sw a1, 28(a0)
	sw a2, 32(a0)
	ret
.globl imm_build_pattern3
imm_build_pattern3:
.p2align 2
	sw zero, 0(a0)
	li a1, 400
	li a2, 800
	sw a1, 4(a0)
	li a1, 1200
	sw a2, 8(a0)
	li a2, 1600
	sw a1, 12(a0)
	li a1, 2000
	sw a2, 16(a0)
	addi a2, a1, 400
	sw a1, 20(a0)
	addi a1, a2, 400
	sw a2, 24(a0)
	addi a2, a1, 400
	sw a1, 28(a0)
	sw a2, 32(a0)
	ret
