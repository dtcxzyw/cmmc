.data
.section .rodata
.bss
.text
.globl A
A:
	andi $t0, $a1, 255
	andi $t1, $a0, 255
	addu $t0, $t0, $t1
	andi $v0, $t0, 255
	jr $ra
	nop
.globl B
B:
	andi $t0, $a1, 65535
	andi $t1, $a0, 65535
	addu $t0, $t0, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
