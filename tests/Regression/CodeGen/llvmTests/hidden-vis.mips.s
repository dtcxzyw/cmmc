.data
.align 4
.globl a
a:
	.4byte	0
.section .rodata
.bss
.align 4
.globl b
b:
	.zero	4
.text
.globl t1
t1:
	jr $ra
	nop
.globl t2
t2:
	jr $ra
	nop
