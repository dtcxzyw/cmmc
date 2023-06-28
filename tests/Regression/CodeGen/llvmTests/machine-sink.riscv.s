.data
.section .rodata
.bss
.text
.globl test
test:
	sltu a0, a0, a1
	xori a0, a0, 1
	bne a0, zero, label9
	addiw a0, a1, 2
	j label3
label9:
	li a0, 1
label3:
	ret
