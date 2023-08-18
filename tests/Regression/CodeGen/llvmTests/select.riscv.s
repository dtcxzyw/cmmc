.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl select_add_1
select_add_1:
	addw a3, a1, a2
	mv a1, a3
	bne a0, zero, label9
	mv a1, a2
label9:
	mv a0, a1
	ret
.p2align 2
.globl select_add_2
select_add_2:
	addw a4, a1, a2
	mv a3, a1
	bne a0, zero, label18
	mv a3, a4
label18:
	mv a0, a3
	ret
.p2align 2
.globl select_add_3
select_add_3:
	addiw a3, a1, 42
	mv a2, a1
	bne a0, zero, label26
	mv a2, a3
label26:
	mv a0, a2
	ret
.p2align 2
.globl select_and_1
select_and_1:
	and a3, a1, a2
	mv a1, a3
	bne a0, zero, label35
	mv a1, a2
label35:
	mv a0, a1
	ret
.p2align 2
.globl select_and_2
select_and_2:
	and a4, a1, a2
	mv a3, a1
	bne a0, zero, label44
	mv a3, a4
label44:
	mv a0, a3
	ret
.p2align 2
.globl select_and_3
select_and_3:
	andi a3, a1, 42
	mv a2, a1
	bne a0, zero, label52
	mv a2, a3
label52:
	mv a0, a2
	ret
.p2align 2
.globl select_ashr_1
select_ashr_1:
	srlw a3, a1, a2
	mv a1, a3
	bne a0, zero, label61
	mv a1, a2
label61:
	mv a0, a1
	ret
.p2align 2
.globl select_ashr_2
select_ashr_2:
	srlw a4, a1, a2
	mv a3, a1
	bne a0, zero, label70
	mv a3, a4
label70:
	mv a0, a3
	ret
.p2align 2
.globl select_ashr_3
select_ashr_3:
	li a4, 42
	mv a2, a1
	srlw a3, a1, a4
	bne a0, zero, label79
	mv a2, a3
label79:
	mv a0, a2
	ret
.p2align 2
.globl select_lshr_1
select_lshr_1:
	srlw a3, a1, a2
	mv a1, a3
	bne a0, zero, label88
	mv a1, a2
label88:
	mv a0, a1
	ret
.p2align 2
.globl select_lshr_2
select_lshr_2:
	srlw a4, a1, a2
	mv a3, a1
	bne a0, zero, label97
	mv a3, a4
label97:
	mv a0, a3
	ret
.p2align 2
.globl select_lshr_3
select_lshr_3:
	li a4, 42
	mv a2, a1
	srlw a3, a1, a4
	bne a0, zero, label106
	mv a2, a3
label106:
	mv a0, a2
	ret
.p2align 2
.globl select_or
select_or:
	andi a5, a2, 255
	or a4, a0, a1
	andi a3, a5, 1
	beq a3, zero, label117
	mv a0, a4
label117:
	ret
.p2align 2
.globl select_or_1
select_or_1:
	andi a3, a2, 1
	or a4, a0, a1
	beq a3, zero, label127
	mv a0, a4
label127:
	ret
.p2align 2
.globl select_or_1b
select_or_1b:
	andi a3, a2, 1
	or a4, a0, a1
	li a5, 1
	bne a3, a5, label139
	mv a0, a4
label139:
	ret
.p2align 2
.globl select_or_2
select_or_2:
	andi a4, a2, 255
	andi a3, a4, 1
	bne a3, zero, label150
	or a0, a0, a1
label150:
	ret
.p2align 2
.globl select_or_2b
select_or_2b:
	andi a5, a2, 255
	li a4, 1
	andi a3, a5, 1
	beq a3, a4, label163
	or a0, a0, a1
label163:
	ret
.p2align 2
.globl select_or_3
select_or_3:
	andi a3, a2, 1
	bne a3, zero, label173
	or a0, a0, a1
label173:
	ret
.p2align 2
.globl select_or_3b
select_or_3b:
	andi a3, a2, 1
	li a4, 1
	beq a3, a4, label185
	or a0, a0, a1
label185:
	ret
.p2align 2
.globl select_or_b
select_or_b:
	andi a5, a2, 255
	or a4, a0, a1
	li a2, 1
	andi a3, a5, 1
	bne a3, a2, label198
	mv a0, a4
label198:
	ret
.p2align 2
.globl select_shl_1
select_shl_1:
	sllw a3, a1, a2
	mv a1, a3
	bne a0, zero, label207
	mv a1, a2
label207:
	mv a0, a1
	ret
.p2align 2
.globl select_shl_2
select_shl_2:
	sllw a4, a1, a2
	mv a3, a1
	bne a0, zero, label216
	mv a3, a4
label216:
	mv a0, a3
	ret
.p2align 2
.globl select_shl_3
select_shl_3:
	mv a2, a1
	bne a0, zero, label223
	mv a2, zero
label223:
	mv a0, a2
	ret
.p2align 2
.globl select_sub_1
select_sub_1:
	subw a3, a1, a2
	mv a1, a3
	bne a0, zero, label232
	mv a1, a2
label232:
	mv a0, a1
	ret
.p2align 2
.globl select_sub_2
select_sub_2:
	subw a4, a1, a2
	mv a3, a1
	bne a0, zero, label241
	mv a3, a4
label241:
	mv a0, a3
	ret
.p2align 2
.globl select_sub_3
select_sub_3:
	addiw a3, a1, -42
	mv a2, a1
	bne a0, zero, label249
	mv a2, a3
label249:
	mv a0, a2
	ret
.p2align 2
.globl select_udiv_1
select_udiv_1:
	beq a0, zero, label258
	divuw a0, a1, a2
	j label252
label258:
	mv a0, a2
label252:
	ret
.p2align 2
.globl select_udiv_2
select_udiv_2:
	beq a0, zero, label271
	mv a0, a1
	j label264
label271:
	divuw a0, a1, a2
label264:
	ret
.p2align 2
.globl select_udiv_3
select_udiv_3:
	beq a0, zero, label283
	mv a0, a1
	j label277
label283:
	li a2, 42
	divuw a0, a1, a2
label277:
	ret
.p2align 2
.globl select_xor_1
select_xor_1:
	andi a5, a1, 255
	zext.h a4, a0
	andi a2, a5, 1
	mv a1, a4
	xori a3, a4, 43
	beq a2, zero, label300
	mv a1, a3
label300:
	zext.h a0, a1
	ret
.p2align 2
.globl select_xor_1b
select_xor_1b:
	andi a4, a1, 255
	zext.h a3, a0
	li a5, 1
	andi a2, a4, 1
	xori a1, a3, 43
	mv a4, a3
	bne a2, a5, label314
	mv a4, a1
label314:
	zext.h a0, a4
	ret
.p2align 2
.globl select_xor_2
select_xor_2:
	andi a5, a2, 255
	xor a4, a0, a1
	andi a3, a5, 1
	beq a3, zero, label325
	mv a0, a4
label325:
	ret
.p2align 2
.globl select_xor_2b
select_xor_2b:
	andi a5, a2, 255
	xor a4, a0, a1
	li a2, 1
	andi a3, a5, 1
	bne a3, a2, label338
	mv a0, a4
label338:
	ret
.p2align 2
.globl select_xor_3
select_xor_3:
	andi a3, a1, 255
	zext.h a4, a0
	andi a2, a3, 1
	mv a1, a4
	bne a2, zero, label350
	xori a1, a4, 43
label350:
	zext.h a0, a1
	ret
.p2align 2
.globl select_xor_3b
select_xor_3b:
	andi a5, a1, 255
	zext.h a3, a0
	li a4, 1
	andi a2, a5, 1
	mv a1, a3
	beq a2, a4, label364
	xori a1, a3, 43
label364:
	zext.h a0, a1
	ret
.p2align 2
.globl select_xor_4
select_xor_4:
	andi a4, a2, 255
	andi a3, a4, 1
	bne a3, zero, label375
	xor a0, a0, a1
label375:
	ret
.p2align 2
.globl select_xor_4b
select_xor_4b:
	andi a5, a2, 255
	li a4, 1
	andi a3, a5, 1
	beq a3, a4, label388
	xor a0, a0, a1
label388:
	ret
