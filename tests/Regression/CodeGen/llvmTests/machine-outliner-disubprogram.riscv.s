.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f1
f1:
	li a0, 16
	ret
.p2align 2
.globl f2
f2:
	li a0, 16
	ret
.p2align 2
.globl f3
f3:
	li a0, 16
	ret
.p2align 2
.globl f4
f4:
	ret
.p2align 2
.globl f5
f5:
	ret
.p2align 2
.globl f6
f6:
	ret
.p2align 2
.globl main
main:
	mv a0, zero
	ret
