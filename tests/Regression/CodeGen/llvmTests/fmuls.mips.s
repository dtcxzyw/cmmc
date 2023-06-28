.data
.section .rodata
.bss
.text
.globl test
test:
	mul.s $f0, $f12, $f14
	jr $ra
	nop
.globl test2
test2:
	mov.s $f0, $f12
	jr $ra
	nop
