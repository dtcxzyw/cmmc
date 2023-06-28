.data
.section .rodata
.bss
.text
.globl select_add_1
select_add_1:
	beq $a0, $zero, label10
	nop
	addu $v0, $a1, $a2
	b label3
	nop
label10:
	move $v0, $a2
label3:
	jr $ra
	nop
.globl select_add_2
select_add_2:
	beq $a0, $zero, label22
	nop
	move $v0, $a1
	b label14
	nop
label22:
	addu $v0, $a1, $a2
label14:
	jr $ra
	nop
.globl select_add_3
select_add_3:
	beq $a0, $zero, label33
	nop
	move $v0, $a1
	b label26
	nop
label33:
	addiu $v0, $a1, 42
label26:
	jr $ra
	nop
.globl select_and_1
select_and_1:
	beq $a0, $zero, label45
	nop
	and $v0, $a1, $a2
	b label38
	nop
label45:
	move $v0, $a2
label38:
	jr $ra
	nop
.globl select_and_2
select_and_2:
	beq $a0, $zero, label57
	nop
	move $v0, $a1
	b label49
	nop
label57:
	and $v0, $a1, $a2
label49:
	jr $ra
	nop
.globl select_and_3
select_and_3:
	beq $a0, $zero, label68
	nop
	move $v0, $a1
	b label61
	nop
label68:
	andi $v0, $a1, 42
label61:
	jr $ra
	nop
.globl select_ashr_1
select_ashr_1:
	beq $a0, $zero, label80
	nop
	srlv $v0, $a1, $a2
	b label73
	nop
label80:
	move $v0, $a2
label73:
	jr $ra
	nop
.globl select_ashr_2
select_ashr_2:
	beq $a0, $zero, label92
	nop
	move $v0, $a1
	b label84
	nop
label92:
	srlv $v0, $a1, $a2
label84:
	jr $ra
	nop
.globl select_ashr_3
select_ashr_3:
	beq $a0, $zero, label103
	nop
	move $v0, $a1
	b label96
	nop
label103:
	li $t0, 42
	srlv $v0, $a1, $t0
label96:
	jr $ra
	nop
.globl select_lshr_1
select_lshr_1:
	beq $a0, $zero, label116
	nop
	srlv $v0, $a1, $a2
	b label109
	nop
label116:
	move $v0, $a2
label109:
	jr $ra
	nop
.globl select_lshr_2
select_lshr_2:
	beq $a0, $zero, label128
	nop
	move $v0, $a1
	b label120
	nop
label128:
	srlv $v0, $a1, $a2
label120:
	jr $ra
	nop
.globl select_lshr_3
select_lshr_3:
	beq $a0, $zero, label139
	nop
	move $v0, $a1
	b label132
	nop
label139:
	li $t0, 42
	srlv $v0, $a1, $t0
label132:
	jr $ra
	nop
.globl select_or
select_or:
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	bne $t0, $zero, label154
	nop
	move $v0, $a0
	b label144
	nop
label154:
	or $v0, $a0, $a1
label144:
	jr $ra
	nop
.globl select_or_1
select_or_1:
	andi $t0, $a2, 1
	sltu $t0, $zero, $t0
	bne $t0, $zero, label167
	nop
	move $v0, $a0
	b label158
	nop
label167:
	or $v0, $a0, $a1
label158:
	jr $ra
	nop
.globl select_or_1b
select_or_1b:
	andi $t0, $a2, 1
	xori $t0, $t0, 1
	sltiu $t0, $t0, 1
	bne $t0, $zero, label180
	nop
	move $v0, $a0
	b label171
	nop
label180:
	or $v0, $a0, $a1
label171:
	jr $ra
	nop
.globl select_or_2
select_or_2:
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	bne $t0, $zero, label195
	nop
	or $v0, $a0, $a1
	b label186
	nop
label195:
	move $v0, $a0
label186:
	jr $ra
	nop
.globl select_or_2b
select_or_2b:
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	li $t1, 1
	beq $t0, $t1, label209
	nop
	or $v0, $a0, $a1
	b label200
	nop
label209:
	move $v0, $a0
label200:
	jr $ra
	nop
.globl select_or_3
select_or_3:
	andi $t0, $a2, 1
	sltu $t0, $zero, $t0
	bne $t0, $zero, label224
	nop
	or $v0, $a0, $a1
	b label216
	nop
label224:
	move $v0, $a0
label216:
	jr $ra
	nop
.globl select_or_3b
select_or_3b:
	andi $t0, $a2, 1
	xori $t0, $t0, 1
	sltiu $t0, $t0, 1
	bne $t0, $zero, label237
	nop
	or $v0, $a0, $a1
	b label229
	nop
label237:
	move $v0, $a0
label229:
	jr $ra
	nop
.globl select_or_b
select_or_b:
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	li $t1, 1
	beq $t0, $t1, label252
	nop
	move $v0, $a0
	b label242
	nop
label252:
	or $v0, $a0, $a1
label242:
	jr $ra
	nop
.globl select_shl_1
select_shl_1:
	beq $a0, $zero, label266
	nop
	sllv $v0, $a1, $a2
	b label259
	nop
label266:
	move $v0, $a2
label259:
	jr $ra
	nop
.globl select_shl_2
select_shl_2:
	beq $a0, $zero, label278
	nop
	move $v0, $a1
	b label270
	nop
label278:
	sllv $v0, $a1, $a2
label270:
	jr $ra
	nop
.globl select_shl_3
select_shl_3:
	sltu $t0, $zero, $a0
	subu $t0, $zero, $t0
	and $v0, $a1, $t0
	jr $ra
	nop
.globl select_sub_1
select_sub_1:
	beq $a0, $zero, label296
	nop
	subu $v0, $a1, $a2
	b label289
	nop
label296:
	move $v0, $a2
label289:
	jr $ra
	nop
.globl select_sub_2
select_sub_2:
	beq $a0, $zero, label308
	nop
	move $v0, $a1
	b label300
	nop
label308:
	subu $v0, $a1, $a2
label300:
	jr $ra
	nop
.globl select_sub_3
select_sub_3:
	beq $a0, $zero, label319
	nop
	move $v0, $a1
	b label312
	nop
label319:
	addiu $v0, $a1, -42
label312:
	jr $ra
	nop
.globl select_udiv_1
select_udiv_1:
	beq $a0, $zero, label331
	nop
	divu $zero, $a1, $a2
	mflo $v0
	b label324
	nop
label331:
	move $v0, $a2
label324:
	jr $ra
	nop
.globl select_udiv_2
select_udiv_2:
	beq $a0, $zero, label343
	nop
	move $v0, $a1
	b label335
	nop
label343:
	divu $zero, $a1, $a2
	mflo $v0
label335:
	jr $ra
	nop
.globl select_udiv_3
select_udiv_3:
	beq $a0, $zero, label354
	nop
	move $v0, $a1
	b label347
	nop
label354:
	li $t0, 42
	divu $zero, $a1, $t0
	mflo $v0
label347:
	jr $ra
	nop
.globl select_xor_1
select_xor_1:
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	bne $t0, $zero, label369
	nop
	andi $t0, $a0, 65535
	b label360
	nop
label369:
	andi $t0, $a0, 65535
	xori $t0, $t0, 43
label360:
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_1b
select_xor_1b:
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	li $t1, 1
	beq $t0, $t1, label386
	nop
	andi $t0, $a0, 65535
	b label377
	nop
label386:
	andi $t0, $a0, 65535
	xori $t0, $t0, 43
label377:
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_2
select_xor_2:
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	bne $t0, $zero, label405
	nop
	move $v0, $a0
	b label395
	nop
label405:
	xor $v0, $a0, $a1
label395:
	jr $ra
	nop
.globl select_xor_2b
select_xor_2b:
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	li $t1, 1
	beq $t0, $t1, label419
	nop
	move $v0, $a0
	b label409
	nop
label419:
	xor $v0, $a0, $a1
label409:
	jr $ra
	nop
.globl select_xor_3
select_xor_3:
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	bne $t0, $zero, label435
	nop
	andi $t0, $a0, 65535
	xori $t0, $t0, 43
	b label426
	nop
label435:
	andi $t0, $a0, 65535
label426:
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_3b
select_xor_3b:
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	li $t1, 1
	beq $t0, $t1, label452
	nop
	andi $t0, $a0, 65535
	xori $t0, $t0, 43
	b label443
	nop
label452:
	andi $t0, $a0, 65535
label443:
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_4
select_xor_4:
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	bne $t0, $zero, label471
	nop
	xor $v0, $a0, $a1
	b label462
	nop
label471:
	move $v0, $a0
label462:
	jr $ra
	nop
.globl select_xor_4b
select_xor_4b:
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	li $t1, 1
	beq $t0, $t1, label485
	nop
	xor $v0, $a0, $a1
	b label476
	nop
label485:
	move $v0, $a0
label476:
	jr $ra
	nop
