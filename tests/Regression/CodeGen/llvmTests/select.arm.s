.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl select_add_1
select_add_1:
	add r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_add_2
select_add_2:
	add r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_add_3
select_add_3:
	cmp r0, #0
	add r0, r1, #42
	movne r0, r1
	bx lr
.globl select_and_1
select_and_1:
	and r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_and_2
select_and_2:
	and r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_and_3
select_and_3:
	cmp r0, #0
	and r0, r1, #42
	movne r0, r1
	bx lr
.globl select_ashr_1
select_ashr_1:
	lsr r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_ashr_2
select_ashr_2:
	lsr r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_ashr_3
select_ashr_3:
	cmp r0, #0
	mov r0, #42
	lsr r0, r1, r0
	movne r0, r1
	bx lr
.globl select_lshr_1
select_lshr_1:
	lsr r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_lshr_2
select_lshr_2:
	lsr r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_lshr_3
select_lshr_3:
	cmp r0, #0
	mov r0, #42
	lsr r0, r1, r0
	movne r0, r1
	bx lr
.globl select_or
select_or:
	uxtb r2, r2
	orr r1, r0, r1
	ands r2, r2, #1
	moveq r1, r0
	mov r0, r1
	bx lr
.globl select_or_1
select_or_1:
	and r2, r2, #1
	orr r1, r0, r1
	cmp r2, #0
	moveq r1, r0
	mov r0, r1
	bx lr
.globl select_or_1b
select_or_1b:
	and r2, r2, #1
	orr r1, r0, r1
	cmp r2, #1
	movne r1, r0
	mov r0, r1
	bx lr
.globl select_or_2
select_or_2:
	uxtb r2, r2
	orr r1, r0, r1
	ands r2, r2, #1
	moveq r0, r1
	bx lr
.globl select_or_2b
select_or_2b:
	uxtb r2, r2
	orr r1, r0, r1
	and r2, r2, #1
	cmp r2, #1
	movne r0, r1
	bx lr
.globl select_or_3
select_or_3:
	and r2, r2, #1
	orr r1, r0, r1
	cmp r2, #0
	moveq r0, r1
	bx lr
.globl select_or_3b
select_or_3b:
	and r2, r2, #1
	orr r1, r0, r1
	cmp r2, #1
	movne r0, r1
	bx lr
.globl select_or_b
select_or_b:
	uxtb r2, r2
	orr r1, r0, r1
	and r2, r2, #1
	cmp r2, #1
	movne r1, r0
	mov r0, r1
	bx lr
.globl select_shl_1
select_shl_1:
	lsl r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_shl_2
select_shl_2:
	lsl r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_shl_3
select_shl_3:
	cmp r0, #0
	mov r0, #0
	movne r0, r1
	bx lr
.globl select_sub_1
select_sub_1:
	sub r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_sub_2
select_sub_2:
	sub r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_sub_3
select_sub_3:
	cmp r0, #0
	sub r0, r1, #42
	movne r0, r1
	bx lr
.globl select_udiv_1
select_udiv_1:
	cmp r0, #0
	beq label203
	udiv r0, r1, r2
	b label196
label203:
	mov r0, r2
label196:
	bx lr
.globl select_udiv_2
select_udiv_2:
	cmp r0, #0
	beq label216
	mov r0, r1
	b label208
label216:
	udiv r0, r1, r2
label208:
	bx lr
.globl select_udiv_3
select_udiv_3:
	cmp r0, #0
	beq label228
	mov r0, r1
	b label221
label228:
	mov r0, #42
	udiv r0, r1, r0
label221:
	bx lr
.globl select_xor_1
select_xor_1:
	uxtb r1, r1
	ands r1, r1, #1
	bne label244
	uxth r0, r0
	b label235
label244:
	uxth r0, r0
	eor r0, r0, #43
label235:
	uxth r0, r0
	bx lr
.globl select_xor_1b
select_xor_1b:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #1
	beq label261
	uxth r0, r0
	b label252
label261:
	uxth r0, r0
	eor r0, r0, #43
label252:
	uxth r0, r0
	bx lr
.globl select_xor_2
select_xor_2:
	uxtb r2, r2
	eor r1, r0, r1
	ands r2, r2, #1
	moveq r1, r0
	mov r0, r1
	bx lr
.globl select_xor_2b
select_xor_2b:
	uxtb r2, r2
	eor r1, r0, r1
	and r2, r2, #1
	cmp r2, #1
	movne r1, r0
	mov r0, r1
	bx lr
.globl select_xor_3
select_xor_3:
	uxtb r1, r1
	ands r1, r1, #1
	bne label299
	uxth r0, r0
	eor r0, r0, #43
	b label290
label299:
	uxth r0, r0
label290:
	uxth r0, r0
	bx lr
.globl select_xor_3b
select_xor_3b:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #1
	beq label316
	uxth r0, r0
	eor r0, r0, #43
	b label307
label316:
	uxth r0, r0
label307:
	uxth r0, r0
	bx lr
.globl select_xor_4
select_xor_4:
	uxtb r2, r2
	eor r1, r0, r1
	ands r2, r2, #1
	moveq r0, r1
	bx lr
.globl select_xor_4b
select_xor_4b:
	uxtb r2, r2
	eor r1, r0, r1
	and r2, r2, #1
	cmp r2, #1
	movne r0, r1
	bx lr