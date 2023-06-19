.data
.text
.globl beqz
beqz:
	addiu $sp, $sp, -4
	move $t0, $a1
	sw $a1, 0($sp)
	bne $a0, $zero, label3
	nop
	sw $zero, 0($a1)
label3:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl beqi
beqi:
	addiu $sp, $sp, -4
	move $t0, $a1
	li $t1, 1
	sw $a1, 0($sp)
	bne $a0, $t1, label13
	nop
	sw $zero, 0($a1)
label13:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl beq
beq:
	addiu $sp, $sp, -4
	move $t0, $a2
	sw $a2, 0($sp)
	bne $a0, $a1, label26
	nop
	sw $zero, 0($a2)
label26:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bnez
bnez:
	addiu $sp, $sp, -4
	move $t0, $a1
	sw $a1, 0($sp)
	beq $a0, $zero, label38
	nop
	sw $zero, 0($a1)
label38:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bnei
bnei:
	addiu $sp, $sp, -4
	move $t0, $a1
	li $t1, 1
	sw $a1, 0($sp)
	beq $a0, $t1, label48
	nop
	sw $zero, 0($a1)
label48:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bne
bne:
	addiu $sp, $sp, -4
	move $t0, $a2
	sw $a2, 0($sp)
	beq $a0, $a1, label61
	nop
	sw $zero, 0($a2)
label61:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bltz
bltz:
	addiu $sp, $sp, -4
	move $t0, $a1
	sw $a1, 0($sp)
	bgez $a0, label73
	nop
	sw $zero, 0($a1)
label73:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blti1
blti1:
	addiu $sp, $sp, -4
	move $t0, $a1
	addiu $t1, $a0, -1
	sw $a1, 0($sp)
	bgez $t1, label84
	nop
	sw $zero, 0($a1)
label84:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blti2
blti2:
	addiu $sp, $sp, -4
	move $t0, $a1
	addiu $t1, $a0, -10
	sw $a1, 0($sp)
	bgez $t1, label96
	nop
	sw $zero, 0($a1)
label96:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blt
blt:
	addiu $sp, $sp, -4
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	bgez $t1, label109
	nop
	sw $zero, 0($a2)
label109:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgez
bgez:
	addiu $sp, $sp, -4
	move $t0, $a1
	addiu $t1, $a0, 1
	sw $a1, 0($sp)
	blez $t1, label123
	nop
	sw $zero, 0($a1)
label123:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgei1
bgei1:
	addiu $sp, $sp, -4
	move $t0, $a1
	sw $a1, 0($sp)
	blez $a0, label135
	nop
	sw $zero, 0($a1)
label135:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgei2
bgei2:
	addiu $sp, $sp, -4
	move $t0, $a1
	addiu $t1, $a0, -9
	sw $a1, 0($sp)
	blez $t1, label145
	nop
	sw $zero, 0($a1)
label145:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bge
bge:
	addiu $sp, $sp, -4
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	bltz $t1, label157
	nop
	sw $zero, 0($a2)
label157:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgtz
bgtz:
	addiu $sp, $sp, -4
	move $t0, $a1
	sw $a1, 0($sp)
	blez $a0, label170
	nop
	sw $zero, 0($a1)
label170:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgti1
bgti1:
	addiu $sp, $sp, -4
	move $t0, $a1
	addiu $t1, $a0, 1
	sw $a1, 0($sp)
	blez $t1, label180
	nop
	sw $zero, 0($a1)
label180:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgti2
bgti2:
	addiu $sp, $sp, -4
	move $t0, $a1
	addiu $t1, $a0, -10
	sw $a1, 0($sp)
	blez $t1, label192
	nop
	sw $zero, 0($a1)
label192:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgt
bgt:
	addiu $sp, $sp, -4
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	blez $t1, label204
	nop
	sw $zero, 0($a2)
label204:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blez
blez:
	addiu $sp, $sp, -4
	move $t0, $a1
	addiu $t1, $a0, -1
	sw $a1, 0($sp)
	bgez $t1, label218
	nop
	sw $zero, 0($a1)
label218:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blei1
blei1:
	addiu $sp, $sp, -4
	move $t0, $a1
	sw $a1, 0($sp)
	bgez $a0, label230
	nop
	sw $zero, 0($a1)
label230:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blei2
blei2:
	addiu $sp, $sp, -4
	move $t0, $a1
	addiu $t1, $a0, -11
	sw $a1, 0($sp)
	bgez $t1, label241
	nop
	sw $zero, 0($a1)
label241:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl ble
ble:
	addiu $sp, $sp, -4
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	bgtz $t1, label254
	nop
	sw $zero, 0($a2)
label254:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bfeq
bfeq:
	addiu $sp, $sp, -4
	move $t0, $a2
	c.eq.s $f12, $f14
	li $t1, 1
	movt $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label267
	nop
	sw $zero, 0($a2)
label267:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bfne
bfne:
	addiu $sp, $sp, -4
	move $t0, $a2
	c.eq.s $f12, $f14
	li $t1, 1
	movf $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label279
	nop
	sw $zero, 0($a2)
label279:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bflt
bflt:
	addiu $sp, $sp, -4
	move $t0, $a2
	c.ult.s $f12, $f14
	li $t1, 1
	movt $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label291
	nop
	sw $zero, 0($a2)
label291:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bfle
bfle:
	addiu $sp, $sp, -4
	move $t0, $a2
	c.ule.s $f12, $f14
	li $t1, 1
	movt $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label303
	nop
	sw $zero, 0($a2)
label303:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bfge
bfge:
	addiu $sp, $sp, -4
	move $t0, $a2
	c.olt.s $f12, $f14
	li $t1, 1
	movf $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label315
	nop
	sw $zero, 0($a2)
label315:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bfgt
bfgt:
	addiu $sp, $sp, -4
	move $t0, $a2
	c.ole.s $f12, $f14
	li $t1, 1
	movf $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label327
	nop
	sw $zero, 0($a2)
label327:
	addiu $sp, $sp, 4
	jr $ra
	nop
