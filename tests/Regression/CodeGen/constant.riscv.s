.data
.section .rodata
.bss
.align 4
.globl x
x:
	.zero	40
.text
.globl cse_imm
cse_imm:
	li a3, 10
	mulw a1, a1, a3
	xor a1, a1, a2
	mulw a0, a0, a3
	addw a0, a0, a1
	ret
.globl cse_global
cse_global:
pcrel20:
	auipc a1, %pcrel_hi(x)
	addi a0, a1, %pcrel_lo(pcrel20)
	lw a1, %pcrel_lo(pcrel20)(a1)
	lw a0, 4(a0)
	addw a0, a1, a0
	ret
.globl cse_fp
cse_fp:
	lui a0, 264192
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fmul.s f11, f11, f12
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
	li a1, 2048
	sw a1, 44(a0)
	li a1, 4096
	sw a1, 48(a0)
	li a1, 8192
	sw a1, 52(a0)
	li a1, 16384
	sw a1, 56(a0)
	li a1, 32768
	sw a1, 60(a0)
	li a1, 65536
	sw a1, 64(a0)
	li a1, 131072
	sw a1, 68(a0)
	li a1, 262144
	sw a1, 72(a0)
	li a1, 524288
	sw a1, 76(a0)
	li a1, 1048576
	sw a1, 80(a0)
	li a1, 2097152
	sw a1, 84(a0)
	li a1, 4194304
	sw a1, 88(a0)
	li a1, 8388608
	sw a1, 92(a0)
	li a1, 16777216
	sw a1, 96(a0)
	li a1, 33554432
	sw a1, 100(a0)
	li a1, 67108864
	sw a1, 104(a0)
	li a1, 134217728
	sw a1, 108(a0)
	li a1, 268435456
	sw a1, 112(a0)
	li a1, 536870912
	sw a1, 116(a0)
	li a1, 1073741824
	sw a1, 120(a0)
	ret
.globl imm_build_pattern2
imm_build_pattern2:
	li a1, 1024
	sw a1, 0(a0)
	li a1, 512
	sw a1, 4(a0)
	li a1, 256
	sw a1, 8(a0)
	li a1, 128
	sw a1, 12(a0)
	li a1, 64
	sw a1, 16(a0)
	li a1, 32
	sw a1, 20(a0)
	li a1, 16
	sw a1, 24(a0)
	li a1, 8
	sw a1, 28(a0)
	li a1, 4
	sw a1, 32(a0)
	ret
.globl imm_build_pattern3
imm_build_pattern3:
	sw zero, 0(a0)
	li a1, 4
	sw a1, 4(a0)
	li a1, 8
	sw a1, 8(a0)
	li a1, 12
	sw a1, 12(a0)
	li a1, 16
	sw a1, 16(a0)
	li a1, 20
	sw a1, 20(a0)
	li a1, 24
	sw a1, 24(a0)
	li a1, 28
	sw a1, 28(a0)
	li a1, 32
	sw a1, 32(a0)
	ret
