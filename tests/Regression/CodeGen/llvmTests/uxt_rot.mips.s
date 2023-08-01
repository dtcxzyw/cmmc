.data
.text
.p2align 2
.globl test1
test1:
	andi $v0, $a0, 255
	jr $ra
	nop
.p2align 2
.globl test10
test10:
	srl $t0, $a0, 24
	sll $t1, $a0, 8
	or $t0, $t0, $t1
	andi $t0, $t0, 65535
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test11
test11:
	andi $t0, $a0, 255
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test12
test12:
	srl $t0, $a0, 8
	andi $t0, $t0, 255
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test13
test13:
	srl $t0, $a0, 16
	andi $t0, $t0, 255
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test14
test14:
	andi $t0, $a0, 65535
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test15
test15:
	srl $t0, $a0, 8
	andi $t0, $t0, 65535
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test16
test16:
	srl $t0, $a0, 24
	sll $t1, $a0, 8
	or $t0, $t0, $t1
	andi $t0, $t0, 65535
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test2
test2:
	andi $t0, $a1, 255
	addu $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl test3
test3:
	srl $t0, $a0, 8
	sll $t1, $a0, 24
	or $t0, $t0, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
.p2align 2
.globl test4
test4:
	srl $t0, $a0, 8
	sll $t1, $a0, 24
	or $t0, $t0, $t1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl test5
test5:
	andi $v0, $a0, 65535
	jr $ra
	nop
.p2align 2
.globl test6
test6:
	andi $t0, $a1, 65535
	addu $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl test7
test7:
	srl $t0, $a0, 8
	sll $t1, $a0, 24
	or $t0, $t0, $t1
	andi $t0, $t0, 255
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test8
test8:
	srl $t0, $a0, 16
	sll $t1, $a0, 16
	or $t0, $t0, $t1
	andi $t0, $t0, 255
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test9
test9:
	srl $t0, $a0, 8
	sll $t1, $a0, 24
	or $t0, $t0, $t1
	andi $t0, $t0, 65535
	addu $v0, $a1, $t0
	jr $ra
	nop
