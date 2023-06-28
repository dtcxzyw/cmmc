.data
.text
.globl select_add_1
select_add_1:
	beq a0, zero, label10
	addw a0, a1, a2
	j label3
label10:
	mv a0, a2
label3:
	ret
.globl select_add_2
select_add_2:
	beq a0, zero, label22
	mv a0, a1
	j label14
label22:
	addw a0, a1, a2
label14:
	ret
.globl select_add_3
select_add_3:
	beq a0, zero, label33
	mv a0, a1
	j label26
label33:
	addiw a0, a1, 42
label26:
	ret
.globl select_and_1
select_and_1:
	beq a0, zero, label45
	and a0, a1, a2
	j label38
label45:
	mv a0, a2
label38:
	ret
.globl select_and_2
select_and_2:
	beq a0, zero, label57
	mv a0, a1
	j label49
label57:
	and a0, a1, a2
label49:
	ret
.globl select_and_3
select_and_3:
	beq a0, zero, label68
	mv a0, a1
	j label61
label68:
	andi a0, a1, 42
label61:
	ret
.globl select_ashr_1
select_ashr_1:
	beq a0, zero, label80
	srlw a0, a1, a2
	j label73
label80:
	mv a0, a2
label73:
	ret
.globl select_ashr_2
select_ashr_2:
	beq a0, zero, label92
	mv a0, a1
	j label84
label92:
	srlw a0, a1, a2
label84:
	ret
.globl select_ashr_3
select_ashr_3:
	beq a0, zero, label103
	mv a0, a1
	j label96
label103:
	li a0, 42
	srlw a0, a1, a0
label96:
	ret
.globl select_lshr_1
select_lshr_1:
	beq a0, zero, label116
	srlw a0, a1, a2
	j label109
label116:
	mv a0, a2
label109:
	ret
.globl select_lshr_2
select_lshr_2:
	beq a0, zero, label128
	mv a0, a1
	j label120
label128:
	srlw a0, a1, a2
label120:
	ret
.globl select_lshr_3
select_lshr_3:
	beq a0, zero, label139
	mv a0, a1
	j label132
label139:
	li a0, 42
	srlw a0, a1, a0
label132:
	ret
.globl select_or
select_or:
	andi a2, a2, 255
	andi a2, a2, 1
	bne a2, zero, label154
	j label144
label154:
	or a0, a0, a1
label144:
	ret
.globl select_or_1
select_or_1:
	andi a2, a2, 1
	sltu a2, zero, a2
	bne a2, zero, label167
	j label158
label167:
	or a0, a0, a1
label158:
	ret
.globl select_or_1b
select_or_1b:
	andi a2, a2, 1
	xori a2, a2, 1
	sltiu a2, a2, 1
	bne a2, zero, label180
	j label171
label180:
	or a0, a0, a1
label171:
	ret
.globl select_or_2
select_or_2:
	andi a2, a2, 255
	andi a2, a2, 1
	bne a2, zero, label186
	or a0, a0, a1
label186:
	ret
.globl select_or_2b
select_or_2b:
	andi a2, a2, 255
	andi a2, a2, 1
	li a3, 1
	beq a2, a3, label200
	or a0, a0, a1
label200:
	ret
.globl select_or_3
select_or_3:
	andi a2, a2, 1
	sltu a2, zero, a2
	bne a2, zero, label216
	or a0, a0, a1
label216:
	ret
.globl select_or_3b
select_or_3b:
	andi a2, a2, 1
	xori a2, a2, 1
	sltiu a2, a2, 1
	bne a2, zero, label229
	or a0, a0, a1
label229:
	ret
.globl select_or_b
select_or_b:
	andi a2, a2, 255
	andi a2, a2, 1
	li a3, 1
	beq a2, a3, label252
	j label242
label252:
	or a0, a0, a1
label242:
	ret
.globl select_shl_1
select_shl_1:
	beq a0, zero, label266
	sllw a0, a1, a2
	j label259
label266:
	mv a0, a2
label259:
	ret
.globl select_shl_2
select_shl_2:
	beq a0, zero, label278
	mv a0, a1
	j label270
label278:
	sllw a0, a1, a2
label270:
	ret
.globl select_shl_3
select_shl_3:
	sltu a2, zero, a0
	mv a0, a1
	bne a2, zero, label287
	mv a0, zero
label287:
	ret
.globl select_sub_1
select_sub_1:
	beq a0, zero, label297
	subw a0, a1, a2
	j label290
label297:
	mv a0, a2
label290:
	ret
.globl select_sub_2
select_sub_2:
	beq a0, zero, label309
	mv a0, a1
	j label301
label309:
	subw a0, a1, a2
label301:
	ret
.globl select_sub_3
select_sub_3:
	beq a0, zero, label320
	mv a0, a1
	j label313
label320:
	addiw a0, a1, -42
label313:
	ret
.globl select_udiv_1
select_udiv_1:
	beq a0, zero, label332
	divuw a0, a1, a2
	j label325
label332:
	mv a0, a2
label325:
	ret
.globl select_udiv_2
select_udiv_2:
	beq a0, zero, label344
	mv a0, a1
	j label336
label344:
	divuw a0, a1, a2
label336:
	ret
.globl select_udiv_3
select_udiv_3:
	beq a0, zero, label355
	mv a0, a1
	j label348
label355:
	li a0, 42
	divuw a0, a1, a0
label348:
	ret
.globl select_xor_1
select_xor_1:
	andi a1, a1, 255
	andi a1, a1, 1
	bne a1, zero, label370
	li a1, 65535
	and a0, a0, a1
	j label361
label370:
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
label361:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_1b
select_xor_1b:
	andi a1, a1, 255
	andi a1, a1, 1
	li a2, 1
	beq a1, a2, label390
	li a1, 65535
	and a0, a0, a1
	j label381
label390:
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
label381:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_2
select_xor_2:
	andi a2, a2, 255
	andi a2, a2, 1
	bne a2, zero, label412
	j label402
label412:
	xor a0, a0, a1
label402:
	ret
.globl select_xor_2b
select_xor_2b:
	andi a2, a2, 255
	andi a2, a2, 1
	li a3, 1
	beq a2, a3, label426
	j label416
label426:
	xor a0, a0, a1
label416:
	ret
.globl select_xor_3
select_xor_3:
	andi a1, a1, 255
	andi a1, a1, 1
	bne a1, zero, label442
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
	j label433
label442:
	li a1, 65535
	and a0, a0, a1
label433:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_3b
select_xor_3b:
	andi a1, a1, 255
	andi a1, a1, 1
	li a2, 1
	beq a1, a2, label462
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
	j label453
label462:
	li a1, 65535
	and a0, a0, a1
label453:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_4
select_xor_4:
	andi a2, a2, 255
	andi a2, a2, 1
	bne a2, zero, label475
	xor a0, a0, a1
label475:
	ret
.globl select_xor_4b
select_xor_4b:
	andi a2, a2, 255
	andi a2, a2, 1
	li a3, 1
	beq a2, a3, label489
	xor a0, a0, a1
label489:
	ret
