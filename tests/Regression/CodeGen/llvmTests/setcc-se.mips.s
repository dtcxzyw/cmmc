.data
.bss
.align 4
.globl g1
g1:
	.zero	4
.text
.globl seteq0
seteq0:
.p2align 2
	sltiu $v0, $a0, 1
	jr $ra
	nop
.globl setne0
setne0:
.p2align 2
	sltu $v0, $zero, $a0
	jr $ra
	nop
.globl slti_beq0
slti_beq0:
.p2align 2
	li $t0, 32768
	addu $t0, $a0, $t0
	bltz $t0, label12
	nop
label13:
	jr $ra
	nop
label12:
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
	b label13
	nop
.globl slti_beq1
slti_beq1:
.p2align 2
	li $t0, 32769
	addu $t0, $a0, $t0
	bltz $t0, label27
	nop
label28:
	jr $ra
	nop
label27:
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
	b label28
	nop
.globl slti_beq2
slti_beq2:
.p2align 2
	addiu $t0, $a0, -32767
	bltz $t0, label43
	nop
label44:
	jr $ra
	nop
label43:
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
	b label44
	nop
.globl slti_beq3
slti_beq3:
.p2align 2
	addiu $t0, $a0, -32768
	bltz $t0, label57
	nop
label58:
	jr $ra
	nop
label57:
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
	b label58
	nop
.globl sltiu_beq0
sltiu_beq0:
.p2align 2
	sltiu $t0, $a0, 32767
	bne $t0, $zero, label72
	nop
label73:
	jr $ra
	nop
label72:
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
	b label73
	nop
.globl sltiu_beq1
sltiu_beq1:
.p2align 2
	li $t0, 32768
	sltu $t0, $a0, $t0
	bne $t0, $zero, label84
	nop
label85:
	jr $ra
	nop
label84:
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
	b label85
	nop
.globl sltiu_beq2
sltiu_beq2:
.p2align 2
	sltiu $t0, $a0, -32768
	bne $t0, $zero, label97
	nop
label98:
	jr $ra
	nop
label97:
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
	b label98
	nop
.globl sltiu_beq3
sltiu_beq3:
.p2align 2
	li $t0, -32769
	sltu $t0, $a0, $t0
	bne $t0, $zero, label109
	nop
label110:
	jr $ra
	nop
label109:
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
	b label110
	nop
