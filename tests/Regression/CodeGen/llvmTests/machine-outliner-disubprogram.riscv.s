.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f1
f1:
.p2align 2
	li a0, 16
	ret
.globl f2
f2:
.p2align 2
	li a0, 16
	ret
.globl f3
f3:
.p2align 2
	li a0, 16
	ret
.globl f4
f4:
.p2align 2
	ret
.globl f5
f5:
.p2align 2
	ret
.globl f6
f6:
.p2align 2
	ret
.globl main
main:
.p2align 2
	mv a0, zero
	ret
