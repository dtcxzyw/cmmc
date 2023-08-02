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
	bne a0, zero, label19
	mv a3, a4
label19:
	mv a0, a3
	ret
.p2align 2
.globl select_add_3
select_add_3:
	addiw a3, a1, 42
	mv a2, a1
	bne a0, zero, label28
	mv a2, a3
label28:
	mv a0, a2
	ret
.p2align 2
.globl select_and_1
select_and_1:
	and a3, a1, a2
	mv a1, a3
	bne a0, zero, label38
	mv a1, a2
label38:
	mv a0, a1
	ret
.p2align 2
.globl select_and_2
select_and_2:
	and a4, a1, a2
	mv a3, a1
	bne a0, zero, label48
	mv a3, a4
label48:
	mv a0, a3
	ret
.p2align 2
.globl select_and_3
select_and_3:
	andi a3, a1, 42
	mv a2, a1
	bne a0, zero, label57
	mv a2, a3
label57:
	mv a0, a2
	ret
.p2align 2
.globl select_ashr_1
select_ashr_1:
	srlw a3, a1, a2
	mv a1, a3
	bne a0, zero, label67
	mv a1, a2
label67:
	mv a0, a1
	ret
.p2align 2
.globl select_ashr_2
select_ashr_2:
	srlw a4, a1, a2
	mv a3, a1
	bne a0, zero, label77
	mv a3, a4
label77:
	mv a0, a3
	ret
.p2align 2
.globl select_ashr_3
select_ashr_3:
	li a4, 42
	mv a2, a1
	srlw a3, a1, a4
	bne a0, zero, label87
	mv a2, a3
label87:
	mv a0, a2
	ret
.p2align 2
.globl select_lshr_1
select_lshr_1:
	srlw a3, a1, a2
	mv a1, a3
	bne a0, zero, label97
	mv a1, a2
label97:
	mv a0, a1
	ret
.p2align 2
.globl select_lshr_2
select_lshr_2:
	srlw a4, a1, a2
	mv a3, a1
	bne a0, zero, label107
	mv a3, a4
label107:
	mv a0, a3
	ret
.p2align 2
.globl select_lshr_3
select_lshr_3:
	li a4, 42
	mv a2, a1
	srlw a3, a1, a4
	bne a0, zero, label117
	mv a2, a3
label117:
	mv a0, a2
	ret
.p2align 2
.globl select_or
select_or:
	andi a5, a2, 255
	or a4, a0, a1
	andi a3, a5, 1
	beq a3, zero, label129
	mv a0, a4
label129:
	ret
.p2align 2
.globl select_or_1
select_or_1:
	andi a3, a2, 1
	or a4, a0, a1
	beq a3, zero, label140
	mv a0, a4
label140:
	ret
.p2align 2
.globl select_or_1b
select_or_1b:
	andi a3, a2, 1
	or a4, a0, a1
	li a5, 1
	bne a3, a5, label153
	mv a0, a4
label153:
	ret
.p2align 2
.globl select_or_2
select_or_2:
	andi a4, a2, 255
	andi a3, a4, 1
	bne a3, zero, label165
	or a0, a0, a1
label165:
	ret
.p2align 2
.globl select_or_2b
select_or_2b:
	andi a5, a2, 255
	li a4, 1
	andi a3, a5, 1
	beq a3, a4, label179
	or a0, a0, a1
label179:
	ret
.p2align 2
.globl select_or_3
select_or_3:
	andi a3, a2, 1
	bne a3, zero, label190
	or a0, a0, a1
label190:
	ret
.p2align 2
.globl select_or_3b
select_or_3b:
	andi a3, a2, 1
	li a4, 1
	beq a3, a4, label203
	or a0, a0, a1
label203:
	ret
.p2align 2
.globl select_or_b
select_or_b:
	andi a5, a2, 255
	or a4, a0, a1
	li a2, 1
	andi a3, a5, 1
	bne a3, a2, label217
	mv a0, a4
label217:
	ret
.p2align 2
.globl select_shl_1
select_shl_1:
	sllw a3, a1, a2
	mv a1, a3
	bne a0, zero, label227
	mv a1, a2
label227:
	mv a0, a1
	ret
.p2align 2
.globl select_shl_2
select_shl_2:
	sllw a4, a1, a2
	mv a3, a1
	bne a0, zero, label237
	mv a3, a4
label237:
	mv a0, a3
	ret
.p2align 2
.globl select_shl_3
select_shl_3:
	mv a2, a1
	bne a0, zero, label245
	mv a2, zero
label245:
	mv a0, a2
	ret
.p2align 2
.globl select_sub_1
select_sub_1:
	subw a3, a1, a2
	mv a1, a3
	bne a0, zero, label255
	mv a1, a2
label255:
	mv a0, a1
	ret
.p2align 2
.globl select_sub_2
select_sub_2:
	subw a4, a1, a2
	mv a3, a1
	bne a0, zero, label265
	mv a3, a4
label265:
	mv a0, a3
	ret
.p2align 2
.globl select_sub_3
select_sub_3:
	addiw a3, a1, -42
	mv a2, a1
	bne a0, zero, label274
	mv a2, a3
label274:
	mv a0, a2
	ret
.p2align 2
.globl select_udiv_1
select_udiv_1:
	beq a0, zero, label284
	divuw a0, a1, a2
	j label278
label284:
	mv a0, a2
label278:
	ret
.p2align 2
.globl select_udiv_2
select_udiv_2:
	beq a0, zero, label297
	mv a0, a1
	j label290
label297:
	divuw a0, a1, a2
label290:
	ret
.p2align 2
.globl select_udiv_3
select_udiv_3:
	beq a0, zero, label309
	mv a0, a1
	j label303
label309:
	li a2, 42
	divuw a0, a1, a2
label303:
	ret
.p2align 2
.globl select_xor_1
select_xor_1:
	andi a4, a1, 255
	zext.h a3, a0
	andi a2, a4, 1
	xori a1, a3, 43
	mv a4, a3
	beq a2, zero, label326
	mv a4, a1
label326:
	zext.h a0, a4
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
	bne a2, a5, label341
	mv a4, a1
label341:
	zext.h a0, a4
	ret
.p2align 2
.globl select_xor_2
select_xor_2:
	andi a5, a2, 255
	xor a4, a0, a1
	andi a3, a5, 1
	beq a3, zero, label353
	mv a0, a4
label353:
	ret
.p2align 2
.globl select_xor_2b
select_xor_2b:
	andi a5, a2, 255
	xor a4, a0, a1
	li a2, 1
	andi a3, a5, 1
	bne a3, a2, label367
	mv a0, a4
label367:
	ret
.p2align 2
.globl select_xor_3
select_xor_3:
	andi a3, a1, 255
	zext.h a4, a0
	andi a2, a3, 1
	mv a1, a4
	bne a2, zero, label380
	xori a1, a4, 43
label380:
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
	beq a2, a4, label395
	xori a1, a3, 43
label395:
	zext.h a0, a1
	ret
.p2align 2
.globl select_xor_4
select_xor_4:
	andi a4, a2, 255
	andi a3, a4, 1
	bne a3, zero, label407
	xor a0, a0, a1
label407:
	ret
.p2align 2
.globl select_xor_4b
select_xor_4b:
	andi a5, a2, 255
	li a4, 1
	andi a3, a5, 1
	beq a3, a4, label421
	xor a0, a0, a1
label421:
	ret
