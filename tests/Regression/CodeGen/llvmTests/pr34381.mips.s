.data
.bss
.p2align 2
.globl var_21
var_21:
	.zero	4
.globl var_29
var_29:
	.zero	1
.p2align 2
.globl var_390
var_390:
	.zero	4
.globl var_11
var_11:
	.zero	1
.globl var_370
var_370:
	.zero	1
.text
.p2align 2
.globl _Z3foov
_Z3foov:
	lui $t0, %hi(var_21)
	lw $t0, %lo(var_21)($t0)
	lui $t1, %hi(var_29)
	lb $t1, %lo(var_29)($t1)
	sll $t1, $t1, 24
	sra $t1, $t1, 24
	subu $t1, $zero, $t1
	sltu $t0, $t0, $t1
	addiu $t0, $t0, -1
	andi $t0, $t0, 255
	sltiu $t0, $t0, 1
	lui $t1, %hi(var_390)
	sw $t0, %lo(var_390)($t1)
	lui $t0, %hi(var_11)
	lb $t0, %lo(var_11)($t0)
	sll $t0, $t0, 24
	sra $t0, $t0, 24
	andi $t0, $t0, 255
	lui $t1, %hi(var_370)
	sb $t0, %lo(var_370)($t1)
	jr $ra
	nop
