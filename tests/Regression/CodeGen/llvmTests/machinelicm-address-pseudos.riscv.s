.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl l
l:
	.4byte	0
.align 4
.globl g
g:
	.4byte	0
.bss
.align 4
.globl ie
ie:
	.zero	4
.align 4
.globl gd
gd:
	.zero	4
.text
.globl test_la
test_la:
.p2align 2
	ret
.globl test_la_tls_gd
test_la_tls_gd:
.p2align 2
	ret
.globl test_la_tls_ie
test_la_tls_ie:
.p2align 2
	ret
.globl test_lla
test_lla:
.p2align 2
	ret
