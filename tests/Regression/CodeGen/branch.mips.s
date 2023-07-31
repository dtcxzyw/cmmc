.data
.text
.globl beqz
beqz:
.p2align 2
	bne $a0, $zero, label3
	nop
	sw $zero, 0($a1)
label3:
	jr $ra
	nop
.globl beqi
beqi:
.p2align 2
	li $t0, 1
	bne $a0, $t0, label13
	nop
	sw $zero, 0($a1)
label13:
	jr $ra
	nop
.globl beq
beq:
.p2align 2
	bne $a0, $a1, label25
	nop
	sw $zero, 0($a2)
label25:
	jr $ra
	nop
.globl bnez
bnez:
.p2align 2
	beq $a0, $zero, label37
	nop
	sw $zero, 0($a1)
label37:
	jr $ra
	nop
.globl bnei
bnei:
.p2align 2
	li $t0, 1
	beq $a0, $t0, label47
	nop
	sw $zero, 0($a1)
label47:
	jr $ra
	nop
.globl bne
bne:
.p2align 2
	beq $a0, $a1, label59
	nop
	sw $zero, 0($a2)
label59:
	jr $ra
	nop
.globl bltz
bltz:
.p2align 2
	bgez $a0, label71
	nop
	sw $zero, 0($a1)
label71:
	jr $ra
	nop
.globl blti1
blti1:
.p2align 2
	addiu $t0, $a0, -1
	bgez $t0, label81
	nop
	sw $zero, 0($a1)
label81:
	jr $ra
	nop
.globl blti2
blti2:
.p2align 2
	addiu $t0, $a0, -10
	bgez $t0, label92
	nop
	sw $zero, 0($a1)
label92:
	jr $ra
	nop
.globl blt
blt:
.p2align 2
	subu $t0, $a0, $a1
	bgez $t0, label103
	nop
	sw $zero, 0($a2)
label103:
	jr $ra
	nop
.globl bgez
bgez:
.p2align 2
	addiu $t0, $a0, 1
	blez $t0, label115
	nop
	sw $zero, 0($a1)
label115:
	jr $ra
	nop
.globl bgei1
bgei1:
.p2align 2
	blez $a0, label127
	nop
	sw $zero, 0($a1)
label127:
	jr $ra
	nop
.globl bgei2
bgei2:
.p2align 2
	addiu $t0, $a0, -9
	blez $t0, label137
	nop
	sw $zero, 0($a1)
label137:
	jr $ra
	nop
.globl bge
bge:
.p2align 2
	subu $t0, $a0, $a1
	bltz $t0, label149
	nop
	sw $zero, 0($a2)
label149:
	jr $ra
	nop
.globl bgtz
bgtz:
.p2align 2
	blez $a0, label162
	nop
	sw $zero, 0($a1)
label162:
	jr $ra
	nop
.globl bgti1
bgti1:
.p2align 2
	addiu $t0, $a0, 1
	blez $t0, label172
	nop
	sw $zero, 0($a1)
label172:
	jr $ra
	nop
.globl bgti2
bgti2:
.p2align 2
	addiu $t0, $a0, -10
	blez $t0, label184
	nop
	sw $zero, 0($a1)
label184:
	jr $ra
	nop
.globl bgt
bgt:
.p2align 2
	subu $t0, $a0, $a1
	blez $t0, label196
	nop
	sw $zero, 0($a2)
label196:
	jr $ra
	nop
.globl blez
blez:
.p2align 2
	addiu $t0, $a0, -1
	bgez $t0, label208
	nop
	sw $zero, 0($a1)
label208:
	jr $ra
	nop
.globl blei1
blei1:
.p2align 2
	bgez $a0, label219
	nop
	sw $zero, 0($a1)
label219:
	jr $ra
	nop
.globl blei2
blei2:
.p2align 2
	addiu $t0, $a0, -11
	bgez $t0, label229
	nop
	sw $zero, 0($a1)
label229:
	jr $ra
	nop
.globl ble
ble:
.p2align 2
	subu $t0, $a0, $a1
	bgtz $t0, label240
	nop
	sw $zero, 0($a2)
label240:
	jr $ra
	nop
.globl bfeq
bfeq:
.p2align 2
	c.eq.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	beq $t0, $zero, label253
	nop
	sw $zero, 0($a2)
label253:
	jr $ra
	nop
.globl bfne
bfne:
.p2align 2
	c.eq.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	beq $t0, $zero, label264
	nop
	sw $zero, 0($a2)
label264:
	jr $ra
	nop
.globl bflt
bflt:
.p2align 2
	c.olt.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	beq $t0, $zero, label275
	nop
	sw $zero, 0($a2)
label275:
	jr $ra
	nop
.globl bfle
bfle:
.p2align 2
	c.ole.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	beq $t0, $zero, label286
	nop
	sw $zero, 0($a2)
label286:
	jr $ra
	nop
.globl bfge
bfge:
.p2align 2
	c.ult.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	beq $t0, $zero, label297
	nop
	sw $zero, 0($a2)
label297:
	jr $ra
	nop
.globl bfgt
bfgt:
.p2align 2
	c.ule.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	beq $t0, $zero, label308
	nop
	sw $zero, 0($a2)
label308:
	jr $ra
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
