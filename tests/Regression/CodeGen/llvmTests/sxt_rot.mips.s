.data
.text
.globl test0
test0:
.p2align 2
	sll $t0, $a0, 24
	sra $v0, $t0, 24
	jr $ra
	nop
.globl test1
test1:
.p2align 2
	srl $t0, $a0, 8
	sll $t1, $a0, 24
	or $t0, $t0, $t1
	andi $v0, $t0, 255
	jr $ra
	nop
.globl test2
test2:
.p2align 2
	srl $t0, $a0, 8
	sll $t1, $a0, 24
	or $t0, $t0, $t1
	andi $t0, $t0, 255
	sll $t0, $t0, 24
	sra $t0, $t0, 24
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test3
test3:
.p2align 2
	srl $t0, $a0, 16
	sll $t1, $a0, 16
	or $t0, $t0, $t1
	andi $t0, $t0, 255
	sll $t0, $t0, 24
	sra $t0, $t0, 24
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test4
test4:
.p2align 2
	srl $t0, $a0, 8
	sll $t1, $a0, 24
	or $t0, $t0, $t1
	andi $t0, $t0, 65535
	sll $t0, $t0, 16
	sra $t0, $t0, 16
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test5
test5:
.p2align 2
	srl $t0, $a0, 24
	sll $t1, $a0, 8
	or $t0, $t0, $t1
	andi $t0, $t0, 65535
	sll $t0, $t0, 16
	sra $t0, $t0, 16
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test6
test6:
.p2align 2
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test7
test7:
.p2align 2
	sll $t0, $a0, 24
	srl $t0, $t0, 24
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test8
test8:
.p2align 2
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test9
test9:
.p2align 2
	sll $t0, $a0, 16
	srl $t0, $t0, 16
	addu $v0, $a1, $t0
	jr $ra
	nop
