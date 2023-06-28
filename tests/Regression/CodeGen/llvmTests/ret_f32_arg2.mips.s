.data
.section .rodata
.bss
.text
.globl test_f32
test_f32:
	mov.s $f0, $f12
	jr $ra
	nop
