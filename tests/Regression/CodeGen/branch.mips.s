.data
.text
.globl beqz
beqz:
.p2align 2
	beq $a0, $zero, label2
	nop
label3:
	jr $ra
	nop
label2:
	sw $zero, 0($a1)
	b label3
	nop
.globl beqi
beqi:
.p2align 2
	li $t0, 1
	beq $a0, $t0, label11
	nop
label12:
	jr $ra
	nop
label11:
	sw $zero, 0($a1)
	b label12
	nop
.globl beq
beq:
.p2align 2
	beq $a0, $a1, label22
	nop
label23:
	jr $ra
	nop
label22:
	sw $zero, 0($a2)
	b label23
	nop
.globl bnez
bnez:
.p2align 2
	bne $a0, $zero, label33
	nop
label34:
	jr $ra
	nop
label33:
	sw $zero, 0($a1)
	b label34
	nop
.globl bnei
bnei:
.p2align 2
	li $t0, 1
	bne $a0, $t0, label42
	nop
label43:
	jr $ra
	nop
label42:
	sw $zero, 0($a1)
	b label43
	nop
.globl bne
bne:
.p2align 2
	bne $a0, $a1, label53
	nop
label54:
	jr $ra
	nop
label53:
	sw $zero, 0($a2)
	b label54
	nop
.globl bltz
bltz:
.p2align 2
	bltz $a0, label64
	nop
label65:
	jr $ra
	nop
label64:
	sw $zero, 0($a1)
	b label65
	nop
.globl blti1
blti1:
.p2align 2
	addiu $t0, $a0, -1
	bltz $t0, label73
	nop
label74:
	jr $ra
	nop
label73:
	sw $zero, 0($a1)
	b label74
	nop
.globl blti2
blti2:
.p2align 2
	addiu $t0, $a0, -10
	bltz $t0, label83
	nop
label84:
	jr $ra
	nop
label83:
	sw $zero, 0($a1)
	b label84
	nop
.globl blt
blt:
.p2align 2
	subu $t0, $a0, $a1
	bltz $t0, label93
	nop
label94:
	jr $ra
	nop
label93:
	sw $zero, 0($a2)
	b label94
	nop
.globl bgez
bgez:
.p2align 2
	addiu $t0, $a0, 1
	bgtz $t0, label104
	nop
label105:
	jr $ra
	nop
label104:
	sw $zero, 0($a1)
	b label105
	nop
.globl bgei1
bgei1:
.p2align 2
	bgtz $a0, label115
	nop
label116:
	jr $ra
	nop
label115:
	sw $zero, 0($a1)
	b label116
	nop
.globl bgei2
bgei2:
.p2align 2
	addiu $t0, $a0, -9
	bgtz $t0, label124
	nop
label125:
	jr $ra
	nop
label124:
	sw $zero, 0($a1)
	b label125
	nop
.globl bge
bge:
.p2align 2
	subu $t0, $a0, $a1
	bgez $t0, label135
	nop
label136:
	jr $ra
	nop
label135:
	sw $zero, 0($a2)
	b label136
	nop
.globl bgtz
bgtz:
.p2align 2
	bgtz $a0, label147
	nop
label148:
	jr $ra
	nop
label147:
	sw $zero, 0($a1)
	b label148
	nop
.globl bgti1
bgti1:
.p2align 2
	addiu $t0, $a0, 1
	bgtz $t0, label156
	nop
label157:
	jr $ra
	nop
label156:
	sw $zero, 0($a1)
	b label157
	nop
.globl bgti2
bgti2:
.p2align 2
	addiu $t0, $a0, -10
	bgtz $t0, label167
	nop
label168:
	jr $ra
	nop
label167:
	sw $zero, 0($a1)
	b label168
	nop
.globl bgt
bgt:
.p2align 2
	subu $t0, $a0, $a1
	bgtz $t0, label178
	nop
label179:
	jr $ra
	nop
label178:
	sw $zero, 0($a2)
	b label179
	nop
.globl blez
blez:
.p2align 2
	addiu $t0, $a0, -1
	bltz $t0, label189
	nop
label190:
	jr $ra
	nop
label189:
	sw $zero, 0($a1)
	b label190
	nop
.globl blei1
blei1:
.p2align 2
	bltz $a0, label199
	nop
label200:
	jr $ra
	nop
label199:
	sw $zero, 0($a1)
	b label200
	nop
.globl blei2
blei2:
.p2align 2
	addiu $t0, $a0, -11
	bltz $t0, label208
	nop
label209:
	jr $ra
	nop
label208:
	sw $zero, 0($a1)
	b label209
	nop
.globl ble
ble:
.p2align 2
	subu $t0, $a0, $a1
	blez $t0, label218
	nop
label219:
	jr $ra
	nop
label218:
	sw $zero, 0($a2)
	b label219
	nop
.globl bfeq
bfeq:
.p2align 2
	c.eq.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	bne $t0, $zero, label230
	nop
label231:
	jr $ra
	nop
label230:
	sw $zero, 0($a2)
	b label231
	nop
.globl bfne
bfne:
.p2align 2
	c.eq.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	bne $t0, $zero, label240
	nop
label241:
	jr $ra
	nop
label240:
	sw $zero, 0($a2)
	b label241
	nop
.globl bflt
bflt:
.p2align 2
	c.olt.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	bne $t0, $zero, label250
	nop
label251:
	jr $ra
	nop
label250:
	sw $zero, 0($a2)
	b label251
	nop
.globl bfle
bfle:
.p2align 2
	c.ole.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	bne $t0, $zero, label260
	nop
label261:
	jr $ra
	nop
label260:
	sw $zero, 0($a2)
	b label261
	nop
.globl bfge
bfge:
.p2align 2
	c.ult.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	bne $t0, $zero, label270
	nop
label271:
	jr $ra
	nop
label270:
	sw $zero, 0($a2)
	b label271
	nop
.globl bfgt
bfgt:
.p2align 2
	c.ule.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	bne $t0, $zero, label280
	nop
label281:
	jr $ra
	nop
label280:
	sw $zero, 0($a2)
	b label281
	nop
.globl normal_srem
normal_srem:
.p2align 2
	li $t0, 1000000007
	div $zero, $a0, $t0
	mfhi $v0
	slti $t1, $v0, 0
	addu $t0, $v0, $t0
	movn $v0, $t0, $t1
	jr $ra
	nop
