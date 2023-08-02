.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl imm1
imm1:
	mv a0, zero
	ret
.p2align 2
.globl imm2
imm2:
	li a0, 1
	ret
.p2align 2
.globl imm3
imm3:
	li a0, -1
	ret
.p2align 2
.globl imm4
imm4:
	li a1, 125
	slli a0, a1, 8
	ret
.p2align 2
.globl test_large
test_large:
	lui a2, 244
	addiw a1, a2, 576
	sh2add a5, a1, a1
	slli a4, a1, 1
	sw a1, 0(a0)
	sh1add a3, a1, a1
	slli a2, a4, 1
	sw a4, 4(a0)
	slli a4, a3, 1
	sw a3, 8(a0)
	sw a2, 12(a0)
	sw a5, 16(a0)
	lui a5, 1709
	sw a4, 20(a0)
	addiw a3, a5, -64
	slli a4, a2, 1
	sw a3, 24(a0)
	lui a2, 2441
	sh3add a3, a1, a1
	sw a4, 28(a0)
	addiw a1, a2, 1664
	sw a3, 32(a0)
	sw a1, 36(a0)
	ret
