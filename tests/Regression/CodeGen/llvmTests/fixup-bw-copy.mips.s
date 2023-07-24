.data
.text
.globl test_movb
test_movb:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl test_movb_Os
test_movb_Os:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl test_movb_Oz
test_movb_Oz:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl test_movb_hreg
test_movb_hreg:
.p2align 2
	andi $t0, $a0, 65535
	sra $t0, $t0, 8
	andi $t0, $t0, 255
	andi $t1, $a0, 255
	andi $t1, $t1, 255
	addu $t0, $t0, $t1
	andi $v0, $t0, 255
	jr $ra
	nop
.globl test_movw
test_movw:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
