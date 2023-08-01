.data
.text
.p2align 2
.globl test1
test1:
	addu $t0, $a0, $a1
	sltu $t1, $t0, $a1
	addu $v0, $t0, $t1
	jr $ra
	nop
.p2align 2
.globl test2
test2:
	sltu $t0, $a1, $a0
	addu $v0, $t0, $a2
	jr $ra
	nop
