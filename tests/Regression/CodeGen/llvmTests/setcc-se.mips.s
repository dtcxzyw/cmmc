.data
.align 4
.globl g1
g1:
	.zero	4
.text
.globl seteq0
seteq0:
	sltiu $v0, $a0, 1
	jr $ra
	nop
.globl setne0
setne0:
	sltu $v0, $zero, $a0
	jr $ra
	nop
.globl slti_beq0
slti_beq0:
	li $t0, 32768
	addu $t0, $a0, $t0
	bgez $t0, label13
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label13:
	jr $ra
	nop
.globl slti_beq1
slti_beq1:
	li $t0, 32769
	addu $t0, $a0, $t0
	bgez $t0, label29
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label29:
	jr $ra
	nop
.globl slti_beq2
slti_beq2:
	addiu $t0, $a0, -32767
	bgez $t0, label45
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label45:
	jr $ra
	nop
.globl slti_beq3
slti_beq3:
	addiu $t0, $a0, -32768
	bgez $t0, label60
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label60:
	jr $ra
	nop
.globl sltiu_beq0
sltiu_beq0:
	li $t0, 32766
	sltu $t0, $t0, $a0
	bne $t0, $zero, label75
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label75:
	jr $ra
	nop
.globl sltiu_beq1
sltiu_beq1:
	li $t0, 32767
	sltu $t0, $t0, $a0
	bne $t0, $zero, label88
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label88:
	jr $ra
	nop
.globl sltiu_beq2
sltiu_beq2:
	li $t0, -32769
	sltu $t0, $t0, $a0
	bne $t0, $zero, label101
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label101:
	jr $ra
	nop
.globl sltiu_beq3
sltiu_beq3:
	li $t0, -32770
	sltu $t0, $t0, $a0
	bne $t0, $zero, label114
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label114:
	jr $ra
	nop
