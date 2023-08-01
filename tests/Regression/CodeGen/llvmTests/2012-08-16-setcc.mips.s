.data
.text
.p2align 2
.globl and_1
and_1:
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	and $t0, $t0, $t1
	sltu $t0, $zero, $t0
	subu $t0, $zero, $t0
	and $v0, $a2, $t0
	jr $ra
	nop
.p2align 2
.globl and_2
and_2:
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	and $t0, $t0, $t1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.p2align 2
.globl xor_1
xor_1:
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	xor $t0, $t0, $t1
	sltu $t0, $zero, $t0
	subu $t0, $zero, $t0
	and $v0, $a2, $t0
	jr $ra
	nop
.p2align 2
.globl xor_2
xor_2:
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	xor $t0, $t0, $t1
	sltu $v0, $zero, $t0
	jr $ra
	nop
