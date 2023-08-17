.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl l
l:
	.4byte	0
.p2align 2
.globl g
g:
	.4byte	0
.bss
.p2align 2
.globl ie
ie:
	.zero	4
.p2align 2
.globl gd
gd:
	.zero	4
.text
.p2align 2
.globl test_la
test_la:
	ret
.p2align 2
.globl test_la_tls_gd
test_la_tls_gd:
	ret
.p2align 2
.globl test_la_tls_ie
test_la_tls_ie:
	ret
.p2align 2
.globl test_lla
test_lla:
	ret
