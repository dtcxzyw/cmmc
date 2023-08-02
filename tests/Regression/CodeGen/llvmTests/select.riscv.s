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
	addw a3, a1, a2
	bne a0, zero, label19
	mv a1, a3
label19:
	mv a0, a1
	ret
.p2align 2
.globl select_add_3
select_add_3:
	addiw a2, a1, 42
	bne a0, zero, label28
	mv a1, a2
label28:
	mv a0, a1
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
	and a3, a1, a2
	bne a0, zero, label48
	mv a1, a3
label48:
	mv a0, a1
	ret
.p2align 2
.globl select_and_3
select_and_3:
	andi a2, a1, 42
	bne a0, zero, label57
	mv a1, a2
label57:
	mv a0, a1
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
	srlw a3, a1, a2
	bne a0, zero, label77
	mv a1, a3
label77:
	mv a0, a1
	ret
.p2align 2
.globl select_ashr_3
select_ashr_3:
	li a3, 42
	srlw a2, a1, a3
	bne a0, zero, label87
	mv a1, a2
label87:
	mv a0, a1
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
	srlw a3, a1, a2
	bne a0, zero, label107
	mv a1, a3
label107:
	mv a0, a1
	ret
.p2align 2
.globl select_lshr_3
select_lshr_3:
	li a3, 42
	srlw a2, a1, a3
	bne a0, zero, label117
	mv a1, a2
label117:
	mv a0, a1
	ret
.p2align 2
.globl select_or
select_or:
	andi a4, a2, 255
	or a1, a0, a1
	andi a3, a4, 1
	beq a3, zero, label129
	mv a0, a1
label129:
	ret
.p2align 2
.globl select_or_1
select_or_1:
	andi a3, a2, 1
	or a1, a0, a1
	beq a3, zero, label140
	mv a0, a1
label140:
	ret
.p2align 2
.globl select_or_1b
select_or_1b:
	andi a3, a2, 1
	or a1, a0, a1
	li a2, 1
	bne a3, a2, label153
	mv a0, a1
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
	andi a4, a2, 255
	li a2, 1
	andi a3, a4, 1
	beq a3, a2, label179
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
	andi a4, a2, 255
	or a1, a0, a1
	li a2, 1
	andi a3, a4, 1
	bne a3, a2, label217
	mv a0, a1
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
	sllw a3, a1, a2
	bne a0, zero, label237
	mv a1, a3
label237:
	mv a0, a1
	ret
.p2align 2
.globl select_shl_3
select_shl_3:
	bne a0, zero, label245
	mv a1, zero
label245:
	mv a0, a1
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
	subw a3, a1, a2
	bne a0, zero, label265
	mv a1, a3
label265:
	mv a0, a1
	ret
.p2align 2
.globl select_sub_3
select_sub_3:
	addiw a2, a1, -42
	bne a0, zero, label274
	mv a1, a2
label274:
	mv a0, a1
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
	andi a3, a1, 255
	zext.h a0, a0
	andi a2, a3, 1
	xori a1, a0, 43
	mv a3, a0
	beq a2, zero, label326
	mv a3, a1
label326:
	zext.h a0, a3
	ret
.p2align 2
.globl select_xor_1b
select_xor_1b:
	andi a3, a1, 255
	zext.h a0, a0
	andi a2, a3, 1
	xori a1, a0, 43
	li a3, 1
	bne a2, a3, label341
	mv a0, a1
label341:
	zext.h a0, a0
	ret
.p2align 2
.globl select_xor_2
select_xor_2:
	andi a4, a2, 255
	xor a1, a0, a1
	andi a3, a4, 1
	beq a3, zero, label353
	mv a0, a1
label353:
	ret
.p2align 2
.globl select_xor_2b
select_xor_2b:
	andi a4, a2, 255
	xor a1, a0, a1
	li a2, 1
	andi a3, a4, 1
	bne a3, a2, label367
	mv a0, a1
label367:
	ret
.p2align 2
.globl select_xor_3
select_xor_3:
	andi a3, a1, 255
	zext.h a1, a0
	andi a2, a3, 1
	mv a0, a1
	bne a2, zero, label380
	xori a0, a1, 43
label380:
	zext.h a0, a0
	ret
.p2align 2
.globl select_xor_3b
select_xor_3b:
	andi a3, a1, 255
	zext.h a1, a0
	andi a2, a3, 1
	mv a0, a1
	li a3, 1
	beq a2, a3, label395
	xori a0, a1, 43
label395:
	zext.h a0, a0
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
	andi a4, a2, 255
	li a2, 1
	andi a3, a4, 1
	beq a3, a2, label421
	xor a0, a0, a1
label421:
	ret
