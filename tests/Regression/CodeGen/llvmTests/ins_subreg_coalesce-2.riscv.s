.data
.section .rodata
.bss
.text
.globl test5
test5:
	li a1, 65535
	and a0, a0, a1
	slliw a0, a0, 2
	sraiw a0, a0, 8
	and a0, a0, a1
	ret
