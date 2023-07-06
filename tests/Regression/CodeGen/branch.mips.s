.data
.text
.globl beqz
beqz:
	bne $a0, $zero, label3
	nop
	sw $zero, 0($a1)
label3:
	jr $ra
	nop
.globl beqi
beqi:
	li $t0, 1
	bne $a0, $t0, label12
	nop
	sw $zero, 0($a1)
label12:
	jr $ra
	nop
.globl beq
beq:
	bne $a0, $a1, label23
	nop
	sw $zero, 0($a2)
label23:
	jr $ra
	nop
.globl bnez
bnez:
	beq $a0, $zero, label34
	nop
	sw $zero, 0($a1)
label34:
	jr $ra
	nop
.globl bnei
bnei:
	li $t0, 1
	beq $a0, $t0, label43
	nop
	sw $zero, 0($a1)
label43:
	jr $ra
	nop
.globl bne
bne:
	beq $a0, $a1, label54
	nop
	sw $zero, 0($a2)
label54:
	jr $ra
	nop
.globl bltz
bltz:
	bgez $a0, label65
	nop
	sw $zero, 0($a1)
label65:
	jr $ra
	nop
.globl blti1
blti1:
	addiu $t0, $a0, -1
	bgez $t0, label75
	nop
	sw $zero, 0($a1)
label75:
	jr $ra
	nop
.globl blti2
blti2:
	addiu $t0, $a0, -10
	bgez $t0, label85
	nop
	sw $zero, 0($a1)
label85:
	jr $ra
	nop
.globl blt
blt:
	subu $t0, $a0, $a1
	bgez $t0, label96
	nop
	sw $zero, 0($a2)
label96:
	jr $ra
	nop
.globl bgez
bgez:
	addiu $t0, $a0, 1
	blez $t0, label108
	nop
	sw $zero, 0($a1)
label108:
	jr $ra
	nop
.globl bgei1
bgei1:
	blez $a0, label118
	nop
	sw $zero, 0($a1)
label118:
	jr $ra
	nop
.globl bgei2
bgei2:
	addiu $t0, $a0, -9
	blez $t0, label127
	nop
	sw $zero, 0($a1)
label127:
	jr $ra
	nop
.globl bge
bge:
	subu $t0, $a0, $a1
	bltz $t0, label137
	nop
	sw $zero, 0($a2)
label137:
	jr $ra
	nop
.globl bgtz
bgtz:
	blez $a0, label148
	nop
	sw $zero, 0($a1)
label148:
	jr $ra
	nop
.globl bgti1
bgti1:
	addiu $t0, $a0, 1
	blez $t0, label157
	nop
	sw $zero, 0($a1)
label157:
	jr $ra
	nop
.globl bgti2
bgti2:
	addiu $t0, $a0, -10
	blez $t0, label167
	nop
	sw $zero, 0($a1)
label167:
	jr $ra
	nop
.globl bgt
bgt:
	subu $t0, $a0, $a1
	blez $t0, label177
	nop
	sw $zero, 0($a2)
label177:
	jr $ra
	nop
.globl blez
blez:
	addiu $t0, $a0, -1
	bgez $t0, label189
	nop
	sw $zero, 0($a1)
label189:
	jr $ra
	nop
.globl blei1
blei1:
	bgez $a0, label199
	nop
	sw $zero, 0($a1)
label199:
	jr $ra
	nop
.globl blei2
blei2:
	addiu $t0, $a0, -11
	bgez $t0, label209
	nop
	sw $zero, 0($a1)
label209:
	jr $ra
	nop
.globl ble
ble:
	subu $t0, $a0, $a1
	bgtz $t0, label220
	nop
	sw $zero, 0($a2)
label220:
	jr $ra
	nop
.globl bfeq
bfeq:
	c.eq.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	bne $t0, $zero, label231
	nop
	sw $zero, 0($a2)
label231:
	jr $ra
	nop
.globl bfne
bfne:
	c.eq.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	bne $t0, $zero, label241
	nop
	sw $zero, 0($a2)
label241:
	jr $ra
	nop
.globl bflt
bflt:
	c.ole.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	bne $t0, $zero, label251
	nop
	sw $zero, 0($a2)
label251:
	jr $ra
	nop
.globl bfle
bfle:
	c.olt.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	bne $t0, $zero, label261
	nop
	sw $zero, 0($a2)
label261:
	jr $ra
	nop
.globl bfge
bfge:
	c.ult.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	bne $t0, $zero, label271
	nop
	sw $zero, 0($a2)
label271:
	jr $ra
	nop
.globl bfgt
bfgt:
	c.ule.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	bne $t0, $zero, label281
	nop
	sw $zero, 0($a2)
label281:
	jr $ra
	nop
.globl normal_srem
normal_srem:
	li $t0, 1000000007
	div $zero, $a0, $t0
	mfhi $v0
	slti $t1, $v0, 0
	addu $t0, $v0, $t0
	movn $v0, $t0, $t1
	jr $ra
	nop
