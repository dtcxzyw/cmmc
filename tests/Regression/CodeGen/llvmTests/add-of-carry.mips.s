.data
.text
.globl test1
test1:
	addu $t0, $a0, $a1
	sltu $t0, $t0, $a1
	addu $t0, $a0, $t0
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test2
test2:
	sltu $t0, $a1, $a0
	addu $v0, $t0, $a2
	jr $ra
	nop
