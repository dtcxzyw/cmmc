.data
.section .rodata
.bss
.text
.globl test_movb
test_movb:
	move $v0, $a0
	jr $ra
	nop
.globl test_movb_Os
test_movb_Os:
	move $v0, $a0
	jr $ra
	nop
.globl test_movb_Oz
test_movb_Oz:
	move $v0, $a0
	jr $ra
	nop
.globl test_movb_hreg
test_movb_hreg:
	andi $t0, $a0, 65535
	sra $t0, $t0, 8
	andi $t0, $t0, 255
	andi $t0, $t0, 255
	andi $t1, $a0, 255
	andi $t1, $t1, 255
	addu $t0, $t1, $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.globl test_movw
test_movw:
	move $v0, $a0
	jr $ra
	nop
