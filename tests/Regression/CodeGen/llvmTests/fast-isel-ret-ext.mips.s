.data
.section .rodata
.bss
.text
.globl test1
test1:
	andi $v0, $a0, 255
	jr $ra
	nop
.globl test2
test2:
	andi $v0, $a0, 255
	jr $ra
	nop
.globl test3
test3:
	andi $v0, $a0, 65535
	jr $ra
	nop
.globl test4
test4:
	andi $v0, $a0, 65535
	jr $ra
	nop
.globl test5
test5:
	move $v0, $a0
	jr $ra
	nop
