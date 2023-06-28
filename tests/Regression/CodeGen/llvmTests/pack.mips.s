.data
.section .rodata
.bss
.text
.globl test1
test1:
	sll $t0, $a1, 16
	andi $t1, $a0, 65535
	or $v0, $t1, $t0
	jr $ra
	nop
.globl test10
test10:
	li $t0, -65536
	and $t0, $a0, $t0
	srl $t1, $a1, 17
	or $v0, $t0, $t1
	jr $ra
	nop
.globl test2
test2:
	sll $t0, $a1, 12
	li $t1, -65536
	and $t0, $t0, $t1
	andi $t1, $a0, 65535
	or $v0, $t0, $t1
	jr $ra
	nop
.globl test3
test3:
	sll $t0, $a1, 18
	andi $t1, $a0, 65535
	or $v0, $t1, $t0
	jr $ra
	nop
.globl test4
test4:
	li $t0, -65536
	and $t0, $a1, $t0
	andi $t1, $a0, 65535
	or $v0, $t0, $t1
	jr $ra
	nop
.globl test5
test5:
	srl $t0, $a1, 16
	li $t1, -65536
	and $t1, $a0, $t1
	or $v0, $t1, $t0
	jr $ra
	nop
.globl test5a
test5a:
	srl $t0, $a1, 16
	li $t1, -65536
	and $t1, $a0, $t1
	or $v0, $t1, $t0
	jr $ra
	nop
.globl test6
test6:
	srl $t0, $a1, 12
	andi $t0, $t0, 65535
	li $t1, -65536
	and $t1, $a0, $t1
	or $v0, $t0, $t1
	jr $ra
	nop
.globl test7
test7:
	srl $t0, $a1, 18
	andi $t0, $t0, 65535
	li $t1, -65536
	and $t1, $a0, $t1
	or $v0, $t0, $t1
	jr $ra
	nop
.globl test8
test8:
	srl $t0, $a1, 22
	li $t1, -65536
	and $t1, $a0, $t1
	or $v0, $t1, $t0
	jr $ra
	nop
.globl test9
test9:
	li $t0, -65536
	and $t0, $a0, $t0
	srl $t1, $a1, 16
	or $v0, $t0, $t1
	jr $ra
	nop
