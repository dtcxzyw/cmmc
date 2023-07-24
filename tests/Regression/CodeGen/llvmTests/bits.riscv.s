.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f1
f1:
.p2align 2
	and a0, a0, a1
	ret
.globl f2
f2:
.p2align 2
	or a0, a0, a1
	ret
.globl f3
f3:
.p2align 2
	xor a0, a0, a1
	ret
.globl f4
f4:
.p2align 2
	sllw a0, a0, a1
	ret
.globl f5
f5:
.p2align 2
	srlw a0, a0, a1
	ret
