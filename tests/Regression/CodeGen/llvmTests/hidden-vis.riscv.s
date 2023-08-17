.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl a
a:
	.4byte	0
.bss
.p2align 2
.globl b
b:
	.zero	4
.text
.p2align 2
.globl t1
t1:
	ret
.p2align 2
.globl t2
t2:
	ret
