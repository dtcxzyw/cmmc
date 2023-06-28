.arch armv7ve
.data
.align 4
.globl l
l:
	.4byte	0
.align 4
.globl g
g:
	.4byte	0
.section .rodata
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
.syntax unified
.arm
.fpu vfpv4
.globl test_la
test_la:
	bx lr
.globl test_la_tls_gd
test_la_tls_gd:
	bx lr
.globl test_la_tls_ie
test_la_tls_ie:
	bx lr
.globl test_lla
test_lla:
	bx lr
