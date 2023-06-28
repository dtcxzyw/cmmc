.data
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
	andi a1, a0, 255
	li a2, 65535
	and a0, a0, a2
	sraiw a0, a0, 8
	andi a2, a0, 255
	andi a0, a1, 255
	andi a1, a2, 255
	addw a0, a0, a1
	andi a0, a0, 255
	ret
.globl test_movw
test_movw:
	ret
