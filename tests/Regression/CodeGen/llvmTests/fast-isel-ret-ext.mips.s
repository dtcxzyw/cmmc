.data
.text
.p2align 2
.globl test1
test1:
	andi $v0, $a0, 255
	jr $ra
	nop
.p2align 2
.globl test2
test2:
	andi $v0, $a0, 255
	jr $ra
	nop
.p2align 2
.globl test3
test3:
	andi $v0, $a0, 65535
	jr $ra
	nop
.p2align 2
.globl test4
test4:
	andi $v0, $a0, 65535
	jr $ra
	nop
.p2align 2
.globl test5
test5:
	move $v0, $a0
	jr $ra
	nop
