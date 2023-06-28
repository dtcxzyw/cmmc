.data
.section .rodata
.bss
.text
.globl test1
test1:
	li a1, -268435441
	addw a0, a0, a1
	ret
.globl test2
test2:
	li a0, 65533
	ret
.globl test3
test3:
	li a1, 65533
	or a0, a0, a1
	ret
