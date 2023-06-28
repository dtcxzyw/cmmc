.data
.align 4
.globl l
l:
	.4byte	0
.align 4
.globl g
g:
	.4byte	0
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
	jr $ra
	nop
.globl test_la_tls_gd
test_la_tls_gd:
	jr $ra
	nop
.globl test_la_tls_ie
test_la_tls_ie:
	jr $ra
	nop
.globl test_lla
test_lla:
	jr $ra
	nop
