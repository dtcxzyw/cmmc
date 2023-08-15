.data
.text
.p2align 2
.globl foo
foo:
	move $t1, $a1
	addiu $t0, $a0, 1
	addiu $t2, $a1, -39
	blez $t2, label4
	nop
	move $v0, $a0
label2:
	jr $ra
	nop
label4:
	addiu $t2, $t0, 1
	addiu $t3, $t1, -40
	bgez $t3, label16
	nop
	move $t0, $t2
	b label4
	nop
label16:
	move $v0, $t0
	b label2
	nop
