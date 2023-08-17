.arch armv7ve
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
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test_la
test_la:
	bx lr
.p2align 4
.globl test_la_tls_gd
test_la_tls_gd:
	bx lr
.p2align 4
.globl test_la_tls_ie
test_la_tls_ie:
	bx lr
.p2align 4
.globl test_lla
test_lla:
	bx lr
