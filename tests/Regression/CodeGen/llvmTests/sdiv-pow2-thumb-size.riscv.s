.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f0
f0:
.p2align 2
	sext.h a1, a0
	srliw a2, a1, 31
	add a0, a1, a2
	li a2, 65535
	sraiw a1, a0, 1
	and a0, a1, a2
	ret
.globl f1
f1:
.p2align 2
	slli a1, a0, 1
	srli a2, a1, 62
	add a0, a0, a2
	li a2, 4294967295
	sraiw a1, a0, 2
	and a0, a1, a2
	ret
.globl f2
f2:
.p2align 2
	li a2, 1717986919
	li a3, 4294967295
	mul a1, a0, a2
	srli a2, a1, 63
	srai a0, a1, 33
	add a1, a2, a0
	and a0, a1, a3
	ret
.globl f3
f3:
.p2align 2
	slli a1, a0, 1
	srli a2, a1, 56
	add a0, a0, a2
	li a2, 4294967295
	sraiw a1, a0, 8
	and a0, a1, a2
	ret
.globl f4
f4:
.p2align 2
	sext.h a1, a0
	srliw a2, a1, 31
	add a0, a1, a2
	li a2, 65535
	sraiw a1, a0, 1
	and a0, a1, a2
	ret
.globl f5
f5:
.p2align 2
	slli a1, a0, 1
	srli a2, a1, 62
	add a0, a0, a2
	li a2, 4294967295
	sraiw a1, a0, 2
	and a0, a1, a2
	ret
