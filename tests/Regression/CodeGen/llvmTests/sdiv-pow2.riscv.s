.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	mv a1, a0
	bge a0, zero, label8
	addiw a1, a0, 15
label8:
	sraiw a2, a1, 4
	zext.w a0, a2
	ret
.p2align 2
.globl test2
test2:
	mv a1, a0
	bge a0, zero, label16
	addiw a1, a0, 15
label16:
	sraiw a2, a1, 4
	zext.w a0, a2
	ret
.p2align 2
.globl test3
test3:
	mv a1, a0
	bge a0, zero, label24
	addiw a1, a0, 15
label24:
	sraiw a2, a1, 4
	zext.w a0, a2
	ret
