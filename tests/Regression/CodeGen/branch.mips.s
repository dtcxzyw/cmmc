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
.globl blti1
blti1:
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
.globl blti2
blti2:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, -10
	sw $a1, 0($sp)
	bgez $t1, label99
	nop
	sw $zero, 0($a1)
label99:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl blt
blt:
	addiu $sp, $sp, -8
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	bgez $t1, label112
	nop
	sw $zero, 0($a2)
label112:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgez
bgez:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, 1
	sw $a1, 0($sp)
	blez $t1, label126
	nop
	sw $zero, 0($a1)
label126:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgei1
bgei1:
	addiu $sp, $sp, -8
	move $t0, $a1
	sw $a1, 0($sp)
	blez $a0, label138
	nop
	sw $zero, 0($a1)
label138:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgei2
bgei2:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, -9
	sw $a1, 0($sp)
	blez $t1, label148
	nop
	sw $zero, 0($a1)
label148:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bge
bge:
	addiu $sp, $sp, -8
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	bltz $t1, label160
	nop
	sw $zero, 0($a2)
label160:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgtz
bgtz:
	addiu $sp, $sp, -8
	move $t0, $a1
	sw $a1, 0($sp)
	blez $a0, label173
	nop
	sw $zero, 0($a1)
label173:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgti1
bgti1:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, 1
	sw $a1, 0($sp)
	blez $t1, label183
	nop
	sw $zero, 0($a1)
label183:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgti2
bgti2:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, -10
	sw $a1, 0($sp)
	blez $t1, label195
	nop
	sw $zero, 0($a1)
label195:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl bgt
bgt:
	addiu $sp, $sp, -8
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	blez $t1, label207
	nop
	sw $zero, 0($a2)
label207:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl blez
blez:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, -1
	sw $a1, 0($sp)
	bgez $t1, label221
	nop
	sw $zero, 0($a1)
label221:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl blei1
blei1:
	addiu $sp, $sp, -8
	move $t0, $a1
	sw $a1, 0($sp)
	bgez $a0, label233
	nop
	sw $zero, 0($a1)
label233:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl blei2
blei2:
	addiu $sp, $sp, -8
	move $t0, $a1
	addiu $t1, $a0, -11
	sw $a1, 0($sp)
	bgez $t1, label244
	nop
	sw $zero, 0($a1)
label244:
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl ble
ble:
	addiu $sp, $sp, -8
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	bgtz $t1, label257
	nop
	sw $zero, 0($a2)
label257:
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
	bne $t1, $zero, label270
	nop
	sw $zero, 0($a2)
label270:
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
	bne $t1, $zero, label282
	nop
	sw $zero, 0($a2)
label282:
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
	bne $t1, $zero, label294
	nop
	sw $zero, 0($a2)
label294:
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
	bne $t1, $zero, label306
	nop
	sw $zero, 0($a2)
label306:
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
	bne $t1, $zero, label318
	nop
	sw $zero, 0($a2)
label318:
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
	bne $t1, $zero, label330
	nop
	sw $zero, 0($a2)
label330:
	addiu $sp, $sp, 8
	jr $ra
	nop
