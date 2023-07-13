.data
.text
.globl foo
foo:
	addu $t0, $a0, $a2
	addu $t1, $a1, $a3
	addu $v0, $t0, $t1
	jr $ra
	nop
