.data
.section .rodata
.bss
.text
.globl f1
f1:
	or $v0, $a0, $a1
	jr $ra
	nop
.globl f2
f2:
	or $v0, $a0, $a1
	jr $ra
	nop
