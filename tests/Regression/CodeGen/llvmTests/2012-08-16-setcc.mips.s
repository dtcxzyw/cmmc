.data
.text
.globl and_1
and_1:
	andi $t0, $a1, 255
	andi $t1, $a0, 255
	and $t0, $t0, $t1
	sltu $t0, $zero, $t0
	move $v0, $zero
	movn $v0, $a2, $t0
	jr $ra
	nop
.globl and_2
and_2:
	andi $t0, $a1, 255
	andi $t1, $a0, 255
	and $t0, $t0, $t1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl xor_1
xor_1:
	andi $t0, $a1, 255
	andi $t1, $a0, 255
	xor $t0, $t0, $t1
	sltu $t0, $zero, $t0
	move $v0, $zero
	movn $v0, $a2, $t0
	jr $ra
	nop
.globl xor_2
xor_2:
	andi $t0, $a1, 255
	andi $t1, $a0, 255
	xor $t0, $t0, $t1
	sltu $v0, $zero, $t0
	jr $ra
	nop
