.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl select_add_1
select_add_1:
	addw a1, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label9
	mv a0, a2
label9:
	ret
.globl select_add_2
select_add_2:
	addw a2, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label18
	mv a0, a2
label18:
	ret
.globl select_add_3
select_add_3:
	sltu a3, zero, a0
	addiw a2, a1, 42
	mv a0, a1
	bne a3, zero, label26
	mv a0, a2
label26:
	ret
.globl select_and_1
select_and_1:
	and a1, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label35
	mv a0, a2
label35:
	ret
.globl select_and_2
select_and_2:
	and a2, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label44
	mv a0, a2
label44:
	ret
.globl select_and_3
select_and_3:
	sltu a3, zero, a0
	andi a2, a1, 42
	mv a0, a1
	bne a3, zero, label52
	mv a0, a2
label52:
	ret
.globl select_ashr_1
select_ashr_1:
	srlw a1, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label61
	mv a0, a2
label61:
	ret
.globl select_ashr_2
select_ashr_2:
	srlw a2, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label70
	mv a0, a2
label70:
	ret
.globl select_ashr_3
select_ashr_3:
	sltu a3, zero, a0
	li a0, 42
	srlw a2, a1, a0
	mv a0, a1
	bne a3, zero, label79
	mv a0, a2
label79:
	ret
.globl select_lshr_1
select_lshr_1:
	srlw a1, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label88
	mv a0, a2
label88:
	ret
.globl select_lshr_2
select_lshr_2:
	srlw a2, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label97
	mv a0, a2
label97:
	ret
.globl select_lshr_3
select_lshr_3:
	sltu a3, zero, a0
	li a0, 42
	srlw a2, a1, a0
	mv a0, a1
	bne a3, zero, label106
	mv a0, a2
label106:
	ret
.globl select_or
select_or:
	andi a2, a2, 255
	or a1, a0, a1
	andi a2, a2, 1
	sltiu a2, a2, 1
	bne a2, zero, label117
	mv a0, a1
label117:
	ret
.globl select_or_1
select_or_1:
	andi a2, a2, 1
	or a1, a0, a1
	sltiu a2, a2, 1
	bne a2, zero, label127
	mv a0, a1
label127:
	ret
.globl select_or_1b
select_or_1b:
	andi a2, a2, 1
	or a1, a0, a1
	xori a2, a2, 1
	sltu a2, zero, a2
	bne a2, zero, label138
	mv a0, a1
label138:
	ret
.globl select_or_2
select_or_2:
	mv a3, a0
	andi a0, a2, 255
	andi a0, a0, 1
	sltiu a2, a0, 1
	or a0, a3, a1
	bne a2, zero, label149
	mv a0, a3
label149:
	ret
.globl select_or_2b
select_or_2b:
	mv a3, a0
	andi a0, a2, 255
	andi a0, a0, 1
	xori a0, a0, 1
	sltu a2, zero, a0
	or a0, a3, a1
	bne a2, zero, label161
	mv a0, a3
label161:
	ret
.globl select_or_3
select_or_3:
	mv a3, a0
	andi a0, a2, 1
	sltiu a2, a0, 1
	or a0, a3, a1
	bne a2, zero, label171
	mv a0, a3
label171:
	ret
.globl select_or_3b
select_or_3b:
	mv a3, a0
	andi a0, a2, 1
	xori a0, a0, 1
	sltu a2, zero, a0
	or a0, a3, a1
	bne a2, zero, label182
	mv a0, a3
label182:
	ret
.globl select_or_b
select_or_b:
	andi a2, a2, 255
	or a1, a0, a1
	andi a2, a2, 1
	xori a2, a2, 1
	sltu a2, zero, a2
	bne a2, zero, label194
	mv a0, a1
label194:
	ret
.globl select_shl_1
select_shl_1:
	sllw a1, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label203
	mv a0, a2
label203:
	ret
.globl select_shl_2
select_shl_2:
	sllw a2, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label212
	mv a0, a2
label212:
	ret
.globl select_shl_3
select_shl_3:
	sltu a0, zero, a0
	subw a0, zero, a0
	and a0, a1, a0
	ret
.globl select_sub_1
select_sub_1:
	subw a1, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label227
	mv a0, a2
label227:
	ret
.globl select_sub_2
select_sub_2:
	subw a2, a1, a2
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label236
	mv a0, a2
label236:
	ret
.globl select_sub_3
select_sub_3:
	sltu a3, zero, a0
	addiw a2, a1, -42
	mv a0, a1
	bne a3, zero, label244
	mv a0, a2
label244:
	ret
.globl select_udiv_1
select_udiv_1:
	beq a0, zero, label254
	divuw a0, a1, a2
	j label247
label254:
	mv a0, a2
label247:
	ret
.globl select_udiv_2
select_udiv_2:
	beq a0, zero, label266
	mv a0, a1
	j label258
label266:
	divuw a0, a1, a2
label258:
	ret
.globl select_udiv_3
select_udiv_3:
	beq a0, zero, label277
	mv a0, a1
	j label270
label277:
	li a0, 42
	divuw a0, a1, a0
label270:
	ret
.globl select_xor_1
select_xor_1:
	andi a1, a1, 255
	andi a1, a1, 1
	bne a1, zero, label292
	li a1, 65535
	and a0, a0, a1
	j label283
label292:
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
label283:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_1b
select_xor_1b:
	andi a1, a1, 255
	li a2, 1
	andi a1, a1, 1
	beq a1, a2, label312
	li a1, 65535
	and a0, a0, a1
	j label303
label312:
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
label303:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_2
select_xor_2:
	andi a2, a2, 255
	xor a1, a0, a1
	andi a2, a2, 1
	sltiu a2, a2, 1
	bne a2, zero, label333
	mv a0, a1
label333:
	ret
.globl select_xor_2b
select_xor_2b:
	andi a2, a2, 255
	xor a1, a0, a1
	andi a2, a2, 1
	xori a2, a2, 1
	sltu a2, zero, a2
	bne a2, zero, label345
	mv a0, a1
label345:
	ret
.globl select_xor_3
select_xor_3:
	andi a1, a1, 255
	andi a1, a1, 1
	bne a1, zero, label357
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
	j label348
label357:
	li a1, 65535
	and a0, a0, a1
label348:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_3b
select_xor_3b:
	andi a1, a1, 255
	li a2, 1
	andi a1, a1, 1
	beq a1, a2, label377
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
	j label368
label377:
	li a1, 65535
	and a0, a0, a1
label368:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_4
select_xor_4:
	mv a3, a0
	andi a0, a2, 255
	andi a0, a0, 1
	sltiu a2, a0, 1
	xor a0, a3, a1
	bne a2, zero, label398
	mv a0, a3
label398:
	ret
.globl select_xor_4b
select_xor_4b:
	mv a3, a0
	andi a0, a2, 255
	andi a0, a0, 1
	xori a0, a0, 1
	sltu a2, zero, a0
	xor a0, a3, a1
	bne a2, zero, label410
	mv a0, a3
label410:
	ret
