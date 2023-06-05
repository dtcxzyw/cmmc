.data
.text
.globl beqz
beqz:
	addiu $sp, $sp, -8
	move $t0, $a1
	sw $a1, 0($sp)
	bne $a0, $zero, label3
	nop
	sw $zero, 0($a1)
label3:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl beqi
beqi:
	addiu $sp, $sp, -8
	move $t0, $a1
	li $t1, 1
	sw $a1, 0($sp)
	bne $a0, $t1, label14
	nop
	sw $zero, 0($a1)
label14:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl beq
beq:
	addiu $sp, $sp, -8
	move $t0, $a2
	sw $a2, 0($sp)
	bne $a0, $a1, label28
	nop
	sw $zero, 0($a2)
label28:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bnez
bnez:
	addiu $sp, $sp, -8
	move $t0, $a1
	sw $a1, 0($sp)
	beq $a0, $zero, label41
	nop
	sw $zero, 0($a1)
label41:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bnei
bnei:
	addiu $sp, $sp, -8
	move $t0, $a1
	li $t1, 1
	sw $a1, 0($sp)
	beq $a0, $t1, label51
	nop
	sw $zero, 0($a1)
label51:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bne
bne:
	addiu $sp, $sp, -8
	move $t0, $a2
	sw $a2, 0($sp)
	beq $a0, $a1, label64
	nop
	sw $zero, 0($a2)
label64:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bltz
bltz:
	addiu $sp, $sp, -8
	move $t0, $a1
	sw $a1, 0($sp)
	bgez $a0, label76
	nop
	sw $zero, 0($a1)
label76:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl blti
blti:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, -1
	sw $a1, 0($sp)
	bgez $t1, label87
	nop
	sw $zero, 0($a1)
label87:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl blt
blt:
	addiu $sp, $sp, -8
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	bgez $t1, label99
	nop
	sw $zero, 0($a2)
label99:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgez
bgez:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, 1
	sw $a1, 0($sp)
	blez $t1, label113
	nop
	sw $zero, 0($a1)
label113:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgei
bgei:
	addiu $sp, $sp, -8
	move $t0, $a1
	sw $a1, 0($sp)
	blez $a0, label125
	nop
	sw $zero, 0($a1)
label125:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bge
bge:
	addiu $sp, $sp, -8
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	bltz $t1, label135
	nop
	sw $zero, 0($a2)
label135:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgtz
bgtz:
	addiu $sp, $sp, -8
	move $t0, $a1
	sw $a1, 0($sp)
	blez $a0, label148
	nop
	sw $zero, 0($a1)
label148:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgti
bgti:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, -1
	sw $a1, 0($sp)
	blez $t1, label158
	nop
	sw $zero, 0($a1)
label158:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgt
bgt:
	addiu $sp, $sp, -8
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	blez $t1, label170
	nop
	sw $zero, 0($a2)
label170:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl blez
blez:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, -1
	sw $a1, 0($sp)
	bgez $t1, label184
	nop
	sw $zero, 0($a1)
label184:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl blei
blei:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, -2
	sw $a1, 0($sp)
	bgez $t1, label196
	nop
	sw $zero, 0($a1)
label196:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl ble
ble:
	addiu $sp, $sp, -8
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	bgtz $t1, label209
	nop
	sw $zero, 0($a2)
label209:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bfeq
bfeq:
	addiu $sp, $sp, -8
	move $t0, $a2
	c.eq.s $f12, $f14
	li $t1, 1
	movt $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label222
	nop
	sw $zero, 0($a2)
label222:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bfne
bfne:
	addiu $sp, $sp, -8
	move $t0, $a2
	c.eq.s $f12, $f14
	li $t1, 1
	movf $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label234
	nop
	sw $zero, 0($a2)
label234:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bflt
bflt:
	addiu $sp, $sp, -8
	move $t0, $a2
	c.ult.s $f12, $f14
	li $t1, 1
	movt $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label246
	nop
	sw $zero, 0($a2)
label246:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bfle
bfle:
	addiu $sp, $sp, -8
	move $t0, $a2
	c.ule.s $f12, $f14
	li $t1, 1
	movt $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label258
	nop
	sw $zero, 0($a2)
label258:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bfge
bfge:
	addiu $sp, $sp, -8
	move $t0, $a2
	c.olt.s $f12, $f14
	li $t1, 1
	movf $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label270
	nop
	sw $zero, 0($a2)
label270:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bfgt
bfgt:
	addiu $sp, $sp, -8
	move $t0, $a2
	c.ole.s $f12, $f14
	li $t1, 1
	movf $t1, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t1, $zero, label282
	nop
	sw $zero, 0($a2)
label282:
	addiu $sp, $sp, 8
	jr $ra
	nop
