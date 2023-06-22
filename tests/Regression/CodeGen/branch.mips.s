.data
.text
.globl beqz
beqz:
	addiu $sp, $sp, -4
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
	li $t0, 1
	sw $a1, 0($sp)
	bne $a0, $t0, label14
	nop
	sw $zero, 0($a1)
label14:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl beq
beq:
	addiu $sp, $sp, -4
	sw $a2, 0($sp)
	bne $a0, $a1, label28
	nop
	sw $zero, 0($a2)
label28:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bnez
bnez:
	addiu $sp, $sp, -4
	sw $a1, 0($sp)
	beq $a0, $zero, label42
	nop
	sw $zero, 0($a1)
label42:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bnei
bnei:
	addiu $sp, $sp, -4
	li $t0, 1
	sw $a1, 0($sp)
	beq $a0, $t0, label53
	nop
	sw $zero, 0($a1)
label53:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bne
bne:
	addiu $sp, $sp, -4
	sw $a2, 0($sp)
	beq $a0, $a1, label67
	nop
	sw $zero, 0($a2)
label67:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bltz
bltz:
	addiu $sp, $sp, -4
	sw $a1, 0($sp)
	bgez $a0, label81
	nop
	sw $zero, 0($a1)
label81:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blti1
blti1:
	addiu $sp, $sp, -4
	addiu $t0, $a0, -1
	sw $a1, 0($sp)
	bgez $t0, label93
	nop
	sw $zero, 0($a1)
label93:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blti2
blti2:
	addiu $sp, $sp, -4
	addiu $t0, $a0, -10
	sw $a1, 0($sp)
	bgez $t0, label106
	nop
	sw $zero, 0($a1)
label106:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blt
blt:
	addiu $sp, $sp, -4
	subu $t0, $a0, $a1
	sw $a2, 0($sp)
	bgez $t0, label120
	nop
	sw $zero, 0($a2)
label120:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgez
bgez:
	addiu $sp, $sp, -4
	addiu $t0, $a0, 1
	sw $a1, 0($sp)
	blez $t0, label136
	nop
	sw $zero, 0($a1)
label136:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgei1
bgei1:
	addiu $sp, $sp, -4
	sw $a1, 0($sp)
	blez $a0, label149
	nop
	sw $zero, 0($a1)
label149:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgei2
bgei2:
	addiu $sp, $sp, -4
	addiu $t0, $a0, -9
	sw $a1, 0($sp)
	blez $t0, label160
	nop
	sw $zero, 0($a1)
label160:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bge
bge:
	addiu $sp, $sp, -4
	subu $t0, $a0, $a1
	sw $a2, 0($sp)
	bltz $t0, label173
	nop
	sw $zero, 0($a2)
label173:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgtz
bgtz:
	addiu $sp, $sp, -4
	sw $a1, 0($sp)
	blez $a0, label188
	nop
	sw $zero, 0($a1)
label188:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgti1
bgti1:
	addiu $sp, $sp, -4
	addiu $t0, $a0, 1
	sw $a1, 0($sp)
	blez $t0, label199
	nop
	sw $zero, 0($a1)
label199:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgti2
bgti2:
	addiu $sp, $sp, -4
	addiu $t0, $a0, -10
	sw $a1, 0($sp)
	blez $t0, label212
	nop
	sw $zero, 0($a1)
label212:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bgt
bgt:
	addiu $sp, $sp, -4
	subu $t0, $a0, $a1
	sw $a2, 0($sp)
	blez $t0, label225
	nop
	sw $zero, 0($a2)
label225:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blez
blez:
	addiu $sp, $sp, -4
	addiu $t0, $a0, -1
	sw $a1, 0($sp)
	bgez $t0, label241
	nop
	sw $zero, 0($a1)
label241:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blei1
blei1:
	addiu $sp, $sp, -4
	sw $a1, 0($sp)
	bgez $a0, label254
	nop
	sw $zero, 0($a1)
label254:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl blei2
blei2:
	addiu $sp, $sp, -4
	addiu $t0, $a0, -11
	sw $a1, 0($sp)
	bgez $t0, label266
	nop
	sw $zero, 0($a1)
label266:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl ble
ble:
	addiu $sp, $sp, -4
	subu $t0, $a0, $a1
	sw $a2, 0($sp)
	bgtz $t0, label280
	nop
	sw $zero, 0($a2)
label280:
	addiu $sp, $sp, 4
	jr $ra
	nop
.globl bfeq
bfeq:
	addiu $sp, $sp, -4
	c.eq.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t0, $zero, label294
	nop
label295:
	addiu $sp, $sp, 4
	jr $ra
	nop
label294:
	lw $a2, 0($sp)
	sw $zero, 0($a2)
	b label295
	nop
.globl bfne
bfne:
	addiu $sp, $sp, -4
	c.eq.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t0, $zero, label308
	nop
label309:
	addiu $sp, $sp, 4
	jr $ra
	nop
label308:
	lw $a2, 0($sp)
	sw $zero, 0($a2)
	b label309
	nop
.globl bflt
bflt:
	addiu $sp, $sp, -4
	c.olt.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t0, $zero, label322
	nop
label323:
	addiu $sp, $sp, 4
	jr $ra
	nop
label322:
	lw $a2, 0($sp)
	sw $zero, 0($a2)
	b label323
	nop
.globl bfle
bfle:
	addiu $sp, $sp, -4
	c.ole.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t0, $zero, label336
	nop
label337:
	addiu $sp, $sp, 4
	jr $ra
	nop
label336:
	lw $a2, 0($sp)
	sw $zero, 0($a2)
	b label337
	nop
.globl bfge
bfge:
	addiu $sp, $sp, -4
	c.ult.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t0, $zero, label350
	nop
label351:
	addiu $sp, $sp, 4
	jr $ra
	nop
label350:
	lw $a2, 0($sp)
	sw $zero, 0($a2)
	b label351
	nop
.globl bfgt
bfgt:
	addiu $sp, $sp, -4
	c.ule.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	sw $a2, 0($sp)
	bne $t0, $zero, label364
	nop
label365:
	addiu $sp, $sp, 4
	jr $ra
	nop
label364:
	lw $a2, 0($sp)
	sw $zero, 0($a2)
	b label365
	nop
