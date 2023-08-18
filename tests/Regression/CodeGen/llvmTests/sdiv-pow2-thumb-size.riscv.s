.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f0
f0:
	sext.h a1, a0
	mv a2, a1
	bge a1, zero, label9
	addiw a2, a1, 1
label9:
	sraiw a1, a2, 1
	zext.h a0, a1
	ret
.p2align 2
.globl f1
f1:
	mv a1, a0
	bge a0, zero, label17
	addiw a1, a0, 3
label17:
	sraiw a2, a1, 2
	zext.w a0, a2
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
	mv a1, a0
	bge a0, zero, label36
	addiw a1, a0, 255
label36:
	sraiw a2, a1, 8
	zext.w a0, a2
	ret
.p2align 2
.globl f4
f4:
	sext.h a1, a0
	mv a2, a1
	bge a1, zero, label45
	addiw a2, a1, 1
label45:
	sraiw a1, a2, 1
	zext.h a0, a1
	ret
.p2align 2
.globl f5
f5:
	mv a1, a0
	bge a0, zero, label53
	addiw a1, a0, 3
label53:
	sraiw a2, a1, 2
	zext.w a0, a2
	ret
