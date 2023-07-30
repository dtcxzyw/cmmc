.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl select_add_1
select_add_1:
.p2align 2
	addw a3, a1, a2
	mv a1, a3
	bne a0, zero, label9
	mv a1, a2
label9:
	mv a0, a1
	ret
.globl select_add_2
select_add_2:
.p2align 2
	addw a3, a1, a2
	bne a0, zero, label18
	mv a1, a3
label18:
	mv a0, a1
	ret
.globl select_add_3
select_add_3:
.p2align 2
	addiw a2, a1, 42
	bne a0, zero, label26
	mv a1, a2
label26:
	mv a0, a1
	ret
.globl select_and_1
select_and_1:
.p2align 2
	and a3, a1, a2
	mv a1, a3
	bne a0, zero, label35
	mv a1, a2
label35:
	mv a0, a1
	ret
.globl select_and_2
select_and_2:
.p2align 2
	and a3, a1, a2
	bne a0, zero, label44
	mv a1, a3
label44:
	mv a0, a1
	ret
.globl select_and_3
select_and_3:
.p2align 2
	andi a2, a1, 42
	bne a0, zero, label52
	mv a1, a2
label52:
	mv a0, a1
	ret
.globl select_ashr_1
select_ashr_1:
.p2align 2
	srlw a3, a1, a2
	mv a1, a3
	bne a0, zero, label61
	mv a1, a2
label61:
	mv a0, a1
	ret
.globl select_ashr_2
select_ashr_2:
.p2align 2
	srlw a3, a1, a2
	bne a0, zero, label70
	mv a1, a3
label70:
	mv a0, a1
	ret
.globl select_ashr_3
select_ashr_3:
.p2align 2
	li a3, 42
	srlw a2, a1, a3
	bne a0, zero, label79
	mv a1, a2
label79:
	mv a0, a1
	ret
.globl select_lshr_1
select_lshr_1:
.p2align 2
	srlw a3, a1, a2
	mv a1, a3
	bne a0, zero, label88
	mv a1, a2
label88:
	mv a0, a1
	ret
.globl select_lshr_2
select_lshr_2:
.p2align 2
	srlw a3, a1, a2
	bne a0, zero, label97
	mv a1, a3
label97:
	mv a0, a1
	ret
.globl select_lshr_3
select_lshr_3:
.p2align 2
	li a3, 42
	srlw a2, a1, a3
	bne a0, zero, label106
	mv a1, a2
label106:
	mv a0, a1
	ret
.globl select_or
select_or:
.p2align 2
	andi a4, a2, 255
	or a1, a0, a1
	andi a3, a4, 1
	beq a3, zero, label117
	mv a0, a1
label117:
	ret
.globl select_or_1
select_or_1:
.p2align 2
	andi a3, a2, 1
	or a1, a0, a1
	beq a3, zero, label127
	mv a0, a1
label127:
	ret
.globl select_or_1b
select_or_1b:
.p2align 2
	andi a3, a2, 1
	or a1, a0, a1
	li a2, 1
	bne a3, a2, label139
	mv a0, a1
label139:
	ret
.globl select_or_2
select_or_2:
.p2align 2
	andi a4, a2, 255
	andi a3, a4, 1
	bne a3, zero, label150
	or a0, a0, a1
label150:
	ret
.globl select_or_2b
select_or_2b:
.p2align 2
	andi a4, a2, 255
	li a2, 1
	andi a3, a4, 1
	beq a3, a2, label163
	or a0, a0, a1
label163:
	ret
.globl select_or_3
select_or_3:
.p2align 2
	andi a3, a2, 1
	bne a3, zero, label173
	or a0, a0, a1
label173:
	ret
.globl select_or_3b
select_or_3b:
.p2align 2
	andi a3, a2, 1
	li a4, 1
	beq a3, a4, label185
	or a0, a0, a1
label185:
	ret
.globl select_or_b
select_or_b:
.p2align 2
	andi a4, a2, 255
	or a1, a0, a1
	li a2, 1
	andi a3, a4, 1
	bne a3, a2, label198
	mv a0, a1
label198:
	ret
.globl select_shl_1
select_shl_1:
.p2align 2
	sllw a3, a1, a2
	mv a1, a3
	bne a0, zero, label207
	mv a1, a2
label207:
	mv a0, a1
	ret
.globl select_shl_2
select_shl_2:
.p2align 2
	sllw a3, a1, a2
	bne a0, zero, label216
	mv a1, a3
label216:
	mv a0, a1
	ret
.globl select_shl_3
select_shl_3:
.p2align 2
	bne a0, zero, label223
	mv a1, zero
label223:
	mv a0, a1
	ret
.globl select_sub_1
select_sub_1:
.p2align 2
	subw a3, a1, a2
	mv a1, a3
	bne a0, zero, label232
	mv a1, a2
label232:
	mv a0, a1
	ret
.globl select_sub_2
select_sub_2:
.p2align 2
	subw a3, a1, a2
	bne a0, zero, label241
	mv a1, a3
label241:
	mv a0, a1
	ret
.globl select_sub_3
select_sub_3:
.p2align 2
	addiw a2, a1, -42
	bne a0, zero, label249
	mv a1, a2
label249:
	mv a0, a1
	ret
.globl select_udiv_1
select_udiv_1:
.p2align 2
	bne a0, zero, label251
	mv a0, a2
label252:
	ret
label251:
	divuw a0, a1, a2
	j label252
.globl select_udiv_2
select_udiv_2:
.p2align 2
	bne a0, zero, label271
	divuw a0, a1, a2
	j label263
label271:
	mv a0, a1
label263:
	ret
.globl select_udiv_3
select_udiv_3:
.p2align 2
	bne a0, zero, label282
	li a2, 42
	divuw a0, a1, a2
	j label275
label282:
	mv a0, a1
label275:
	ret
.globl select_xor_1
select_xor_1:
.p2align 2
	andi a3, a1, 255
	li a1, 65535
	andi a2, a3, 1
	and a0, a0, a1
	mv a4, a0
	xori a3, a0, 43
	beq a2, zero, label299
	mv a4, a3
label299:
	and a0, a4, a1
	ret
.globl select_xor_1b
select_xor_1b:
.p2align 2
	andi a3, a1, 255
	li a4, 1
	li a1, 65535
	andi a2, a3, 1
	and a3, a0, a1
	xori a0, a3, 43
	bne a2, a4, label315
	mv a3, a0
label315:
	and a0, a3, a1
	ret
.globl select_xor_2
select_xor_2:
.p2align 2
	andi a4, a2, 255
	xor a1, a0, a1
	andi a3, a4, 1
	beq a3, zero, label326
	mv a0, a1
label326:
	ret
.globl select_xor_2b
select_xor_2b:
.p2align 2
	andi a4, a2, 255
	xor a1, a0, a1
	li a2, 1
	andi a3, a4, 1
	bne a3, a2, label339
	mv a0, a1
label339:
	ret
.globl select_xor_3
select_xor_3:
.p2align 2
	andi a3, a1, 255
	li a1, 65535
	andi a2, a3, 1
	and a3, a0, a1
	mv a0, a3
	bne a2, zero, label353
	xori a0, a3, 43
label353:
	and a0, a0, a1
	ret
.globl select_xor_3b
select_xor_3b:
.p2align 2
	andi a3, a1, 255
	li a4, 1
	li a1, 65535
	andi a2, a3, 1
	and a3, a0, a1
	mv a0, a3
	beq a2, a4, label369
	xori a0, a3, 43
label369:
	and a0, a0, a1
	ret
.globl select_xor_4
select_xor_4:
.p2align 2
	andi a4, a2, 255
	andi a3, a4, 1
	bne a3, zero, label380
	xor a0, a0, a1
label380:
	ret
.globl select_xor_4b
select_xor_4b:
.p2align 2
	andi a4, a2, 255
	li a2, 1
	andi a3, a4, 1
	beq a3, a2, label393
	xor a0, a0, a1
label393:
	ret
