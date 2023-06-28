.data
.section .rodata
.bss
.text
.globl test1
test1:
	andi a0, a0, 255
	ret
.globl test2
test2:
	andi a0, a0, 255
	ret
.globl test3
test3:
	li a1, 65535
	and a0, a0, a1
	ret
.globl test4
test4:
	li a1, 65535
	and a0, a0, a1
	ret
.globl test5
test5:
	ret
