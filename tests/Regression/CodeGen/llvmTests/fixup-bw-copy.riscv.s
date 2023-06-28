.data
.section .rodata
.bss
.text
.globl test_movb
test_movb:
	ret
.globl test_movb_Os
test_movb_Os:
	ret
.globl test_movb_Oz
test_movb_Oz:
	ret
.globl test_movb_hreg
test_movb_hreg:
	li a1, 65535
	and a1, a0, a1
	sraiw a1, a1, 8
	andi a1, a1, 255
	andi a1, a1, 255
	andi a0, a0, 255
	andi a0, a0, 255
	addw a0, a0, a1
	andi a0, a0, 255
	ret
.globl test_movw
test_movw:
	ret
