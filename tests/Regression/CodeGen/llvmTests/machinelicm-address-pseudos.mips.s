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
	jr $ra
	nop
.p2align 2
.globl test_la_tls_gd
test_la_tls_gd:
	jr $ra
	nop
.p2align 2
.globl test_la_tls_ie
test_la_tls_ie:
	jr $ra
	nop
.p2align 2
.globl test_lla
test_lla:
	jr $ra
	nop
