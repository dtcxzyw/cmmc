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
	bgez $t0, label13
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label13:
	jr $ra
	nop
.globl slti_beq1
slti_beq1:
.p2align 2
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
.p2align 2
	addiu $t0, $a0, -32767
	bgez $t0, label46
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label46:
	jr $ra
	nop
.globl slti_beq3
slti_beq3:
.p2align 2
	addiu $t0, $a0, -32768
	bgez $t0, label61
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label61:
	jr $ra
	nop
.globl sltiu_beq0
sltiu_beq0:
.p2align 2
	sltiu $t0, $a0, 32767
	beq $t0, $zero, label77
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label77:
	jr $ra
	nop
.globl sltiu_beq1
sltiu_beq1:
.p2align 2
	li $t0, 32768
	sltu $t0, $a0, $t0
	beq $t0, $zero, label90
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label90:
	jr $ra
	nop
.globl sltiu_beq2
sltiu_beq2:
.p2align 2
	sltiu $t0, $a0, -32768
	beq $t0, $zero, label104
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label104:
	jr $ra
	nop
.globl sltiu_beq3
sltiu_beq3:
.p2align 2
	li $t0, -32769
	sltu $t0, $a0, $t0
	beq $t0, $zero, label117
	nop
	lui $t0, %hi(g1)
	sw $a0, %lo(g1)($t0)
label117:
	jr $ra
	nop
