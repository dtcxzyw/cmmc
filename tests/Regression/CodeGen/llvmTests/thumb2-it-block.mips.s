.data
.text
.globl test
test:
	move $t0, $a0
	bgez $a0, label3
	nop
	subu $a0, $zero, $a0
	move $t0, $a1
	bgez $a1, label6
	nop
	b label31
	nop
label3:
	move $t0, $a1
	bgez $a1, label6
	nop
	b label31
	nop
label6:
	addu $v0, $a0, $a1
	jr $ra
	nop
label31:
	subu $a1, $zero, $t0
	b label6
	nop
