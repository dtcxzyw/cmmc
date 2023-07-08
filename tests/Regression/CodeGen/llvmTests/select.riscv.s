.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl select_add_1
select_add_1:
	addw a1, a1, a2
	bne a0, zero, label9
	mv a1, a2
label9:
	mv a0, a1
	ret
.globl select_add_2
select_add_2:
	addw a2, a1, a2
	bne a0, zero, label18
	mv a1, a2
label18:
	mv a0, a1
	ret
.globl select_add_3
select_add_3:
	addiw a2, a1, 42
	bne a0, zero, label26
	mv a1, a2
label26:
	mv a0, a1
	ret
.globl select_and_1
select_and_1:
	and a1, a1, a2
	bne a0, zero, label35
	mv a1, a2
label35:
	mv a0, a1
	ret
.globl select_and_2
select_and_2:
	and a2, a1, a2
	bne a0, zero, label44
	mv a1, a2
label44:
	mv a0, a1
	ret
.globl select_and_3
select_and_3:
	andi a2, a1, 42
	bne a0, zero, label52
	mv a1, a2
label52:
	mv a0, a1
	ret
.globl select_ashr_1
select_ashr_1:
	srlw a1, a1, a2
	bne a0, zero, label61
	mv a1, a2
label61:
	mv a0, a1
	ret
.globl select_ashr_2
select_ashr_2:
	srlw a2, a1, a2
	bne a0, zero, label70
	mv a1, a2
label70:
	mv a0, a1
	ret
.globl select_ashr_3
select_ashr_3:
	li a2, 42
	srlw a2, a1, a2
	bne a0, zero, label79
	mv a1, a2
label79:
	mv a0, a1
	ret
.globl select_lshr_1
select_lshr_1:
	srlw a1, a1, a2
	bne a0, zero, label88
	mv a1, a2
label88:
	mv a0, a1
	ret
.globl select_lshr_2
select_lshr_2:
	srlw a2, a1, a2
	bne a0, zero, label97
	mv a1, a2
label97:
	mv a0, a1
	ret
.globl select_lshr_3
select_lshr_3:
	li a2, 42
	srlw a2, a1, a2
	bne a0, zero, label106
	mv a1, a2
label106:
	mv a0, a1
	ret
.globl select_or
select_or:
	andi a2, a2, 255
	or a1, a0, a1
	andi a2, a2, 1
	beq a2, zero, label117
	mv a0, a1
label117:
	ret
.globl select_or_1
select_or_1:
	andi a2, a2, 1
	or a1, a0, a1
	beq a2, zero, label127
	mv a0, a1
label127:
	ret
.globl select_or_1b
select_or_1b:
	andi a2, a2, 1
	or a1, a0, a1
	li a3, 1
	bne a2, a3, label139
	mv a0, a1
label139:
	ret
.globl select_or_2
select_or_2:
	andi a2, a2, 255
	or a1, a0, a1
	andi a2, a2, 1
	beq a2, zero, label150
	mv a1, a0
label150:
	mv a0, a1
	ret
.globl select_or_2b
select_or_2b:
	andi a2, a2, 255
	or a1, a0, a1
	li a3, 1
	andi a2, a2, 1
	bne a2, a3, label163
	mv a1, a0
label163:
	mv a0, a1
	ret
.globl select_or_3
select_or_3:
	andi a2, a2, 1
	or a1, a0, a1
	beq a2, zero, label173
	mv a1, a0
label173:
	mv a0, a1
	ret
.globl select_or_3b
select_or_3b:
	andi a2, a2, 1
	or a1, a0, a1
	li a3, 1
	bne a2, a3, label185
	mv a1, a0
label185:
	mv a0, a1
	ret
.globl select_or_b
select_or_b:
	andi a2, a2, 255
	or a1, a0, a1
	li a3, 1
	andi a2, a2, 1
	bne a2, a3, label198
	mv a0, a1
label198:
	ret
.globl select_shl_1
select_shl_1:
	sllw a1, a1, a2
	bne a0, zero, label207
	mv a1, a2
label207:
	mv a0, a1
	ret
.globl select_shl_2
select_shl_2:
	sllw a2, a1, a2
	bne a0, zero, label216
	mv a1, a2
label216:
	mv a0, a1
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
	bne a0, zero, label231
	mv a1, a2
label231:
	mv a0, a1
	ret
.globl select_sub_2
select_sub_2:
	subw a2, a1, a2
	bne a0, zero, label240
	mv a1, a2
label240:
	mv a0, a1
	ret
.globl select_sub_3
select_sub_3:
	addiw a2, a1, -42
	bne a0, zero, label248
	mv a1, a2
label248:
	mv a0, a1
	ret
.globl select_udiv_1
select_udiv_1:
	beq a0, zero, label258
	divuw a0, a1, a2
	j label251
label258:
	mv a0, a2
label251:
	ret
.globl select_udiv_2
select_udiv_2:
	beq a0, zero, label270
	mv a0, a1
	j label262
label270:
	divuw a0, a1, a2
label262:
	ret
.globl select_udiv_3
select_udiv_3:
	beq a0, zero, label281
	mv a0, a1
	j label274
label281:
	li a0, 42
	divuw a0, a1, a0
label274:
	ret
.globl select_xor_1
select_xor_1:
	andi a1, a1, 255
	andi a1, a1, 1
	bne a1, zero, label296
	li a1, 65535
	and a0, a0, a1
	j label287
label296:
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
label287:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_1b
select_xor_1b:
	andi a1, a1, 255
	li a2, 1
	andi a1, a1, 1
	beq a1, a2, label316
	li a1, 65535
	and a0, a0, a1
	j label307
label316:
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
label307:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_2
select_xor_2:
	andi a2, a2, 255
	xor a1, a0, a1
	andi a2, a2, 1
	beq a2, zero, label337
	mv a0, a1
label337:
	ret
.globl select_xor_2b
select_xor_2b:
	andi a2, a2, 255
	xor a1, a0, a1
	li a3, 1
	andi a2, a2, 1
	bne a2, a3, label350
	mv a0, a1
label350:
	ret
.globl select_xor_3
select_xor_3:
	andi a1, a1, 255
	andi a1, a1, 1
	bne a1, zero, label362
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
	j label353
label362:
	li a1, 65535
	and a0, a0, a1
label353:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_3b
select_xor_3b:
	andi a1, a1, 255
	li a2, 1
	andi a1, a1, 1
	beq a1, a2, label382
	li a1, 65535
	and a0, a0, a1
	xori a0, a0, 43
	j label373
label382:
	li a1, 65535
	and a0, a0, a1
label373:
	li a1, 65535
	and a0, a0, a1
	ret
.globl select_xor_4
select_xor_4:
	andi a2, a2, 255
	xor a1, a0, a1
	andi a2, a2, 1
	beq a2, zero, label403
	mv a1, a0
label403:
	mv a0, a1
	ret
.globl select_xor_4b
select_xor_4b:
	andi a2, a2, 255
	xor a1, a0, a1
	li a3, 1
	andi a2, a2, 1
	bne a2, a3, label416
	mv a1, a0
label416:
	mv a0, a1
	ret
