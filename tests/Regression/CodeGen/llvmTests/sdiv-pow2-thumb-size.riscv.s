.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f0
f0:
	sext.h a1, a0
	srliw a2, a1, 31
	add a3, a1, a2
	sraiw a4, a3, 1
	zext.h a0, a4
	ret
.p2align 2
.globl f1
f1:
	slli a1, a0, 1
	srli a2, a1, 62
	add a3, a0, a2
	sraiw a4, a3, 2
	zext.w a0, a4
	ret
.p2align 2
.globl f2
f2:
	lui a4, 419430
	addiw a3, a4, 1639
	mul a1, a0, a3
	srli a4, a1, 63
	srai a2, a1, 33
	add a3, a4, a2
	zext.w a0, a3
	ret
.p2align 2
.globl f3
f3:
	slli a1, a0, 1
	srli a2, a1, 56
	add a3, a0, a2
	sraiw a4, a3, 8
	zext.w a0, a4
	ret
.p2align 2
.globl f4
f4:
	sext.h a1, a0
	srliw a2, a1, 31
	add a3, a1, a2
	sraiw a4, a3, 1
	zext.h a0, a4
	ret
.p2align 2
.globl f5
f5:
	slli a1, a0, 1
	srli a2, a1, 62
	add a3, a0, a2
	sraiw a4, a3, 2
	zext.w a0, a4
	ret
