.data
.text
.globl foo
foo:
.p2align 2
	addu $t0, $a0, $a1
	addu $t0, $t0, $a2
	addu $v0, $t0, $a3
	jr $ra
	nop
