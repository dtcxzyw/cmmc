.data
.section .rodata
.bss
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
	sltu a0, zero, a0
	subw a0, zero, a0
	and a0, a1, a0
	ret
.globl select_sub_1
select_sub_1:
	beq a0, zero, label296
	subw a0, a1, a2
	j label289
label296:
	mv a0, a2
label289:
	ret
.globl select_sub_2
select_sub_2:
	beq a0, zero, label308
	mv a0, a1
	j label300
label308:
	subw a0, a1, a2
label300:
	ret
.globl select_sub_3
select_sub_3:
	beq a0, zero, label319
	mv a0, a1
	j label312
label319:
	addiw a0, a1, -42
label312:
	ret
.globl select_udiv_1
select_udiv_1:
	beq a0, zero, label331
	divuw a0, a1, a2
	j label324
label331:
	mv a0, a2
label324:
	ret
.globl select_udiv_2
select_udiv_2:
	beq a0, zero, label343
	mv a0, a1
	j label335
label343:
	divuw a0, a1, a2
label335:
	ret
.globl select_udiv_3
select_udiv_3:
	beq a0, zero, label354
	mv a0, a1
	j label347
label354:
	li a0, 42
	divuw a0, a1, a0
label347:
	ret
.globl select_xor_1
select_xor_1:
	andi a1, a1, 255
	andi a1, a1, 1
	bne a1, zero, label369
	li a1, 65535
	and a0, a0, a1
	j label360
label369:
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
label360:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_1b
select_xor_1b:
	andi a1, a1, 255
	andi a1, a1, 1
	li a2, 1
	beq a1, a2, label389
	li a1, 65535
	and a0, a0, a1
	j label380
label389:
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
label380:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_2
select_xor_2:
	andi a2, a2, 255
	andi a2, a2, 1
	bne a2, zero, label411
	j label401
label411:
	xor a0, a0, a1
label401:
	ret
.globl select_xor_2b
select_xor_2b:
	andi a2, a2, 255
	andi a2, a2, 1
	li a3, 1
	beq a2, a3, label425
	j label415
label425:
	xor a0, a0, a1
label415:
	ret
.globl select_xor_3
select_xor_3:
	andi a1, a1, 255
	andi a1, a1, 1
	bne a1, zero, label441
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
	j label432
label441:
	li a1, 65535
	and a0, a0, a1
label432:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_3b
select_xor_3b:
	andi a1, a1, 255
	andi a1, a1, 1
	li a2, 1
	beq a1, a2, label461
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
	j label452
label461:
	li a1, 65535
	and a0, a0, a1
label452:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_4
select_xor_4:
	andi a2, a2, 255
	andi a2, a2, 1
	bne a2, zero, label474
	xor a0, a0, a1
label474:
	ret
.globl select_xor_4b
select_xor_4b:
	andi a2, a2, 255
	andi a2, a2, 1
	li a3, 1
	beq a2, a3, label488
	xor a0, a0, a1
label488:
	ret
