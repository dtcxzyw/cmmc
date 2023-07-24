.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl a
a:
	.4byte	0
.bss
.align 4
.globl b
b:
	.zero	4
.text
.globl t1
t1:
.p2align 2
	ret
.globl t2
t2:
.p2align 2
	ret
