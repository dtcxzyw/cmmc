.data
.text
.globl bar
bar:
.p2align 2
	andi $t0, $a0, 65535
	andi $t1, $a1, 65535
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 1
	jr $ra
	nop
.globl foo
foo:
.p2align 2
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 1
	jr $ra
	nop
