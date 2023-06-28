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
	ret
.globl test_la_tls_gd
test_la_tls_gd:
	ret
.globl test_la_tls_ie
test_la_tls_ie:
	ret
.globl test_lla
test_lla:
	ret
