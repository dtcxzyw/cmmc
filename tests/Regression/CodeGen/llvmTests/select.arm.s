.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl select_add_1
select_add_1:
	cmp r0, #0
	add r1, r1, r2
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_add_2
select_add_2:
	cmp r0, #0
	add r0, r1, r2
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
	cmp r0, #0
	and r1, r1, r2
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_and_2
select_and_2:
	cmp r0, #0
	and r0, r1, r2
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
	cmp r0, #0
	lsr r1, r1, r2
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_ashr_2
select_ashr_2:
	cmp r0, #0
	lsr r0, r1, r2
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
	cmp r0, #0
	lsr r1, r1, r2
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_lshr_2
select_lshr_2:
	cmp r0, #0
	lsr r0, r1, r2
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
	and r2, r2, #1
	orr r1, r0, r1
	cmp r2, #0
	moveq r1, r0
	mov r0, r1
	bx lr
.globl select_or_1
select_or_1:
	and r2, r2, #1
	cmp r2, #0
	orr r1, r0, r1
	moveq r1, r0
	mov r0, r1
	bx lr
.globl select_or_1b
select_or_1b:
	and r2, r2, #1
	cmp r2, #1
	orr r1, r0, r1
	movne r1, r0
	mov r0, r1
	bx lr
.globl select_or_2
select_or_2:
	uxtb r2, r2
	and r2, r2, #1
	orr r1, r0, r1
	cmp r2, #0
	moveq r0, r1
	bx lr
.globl select_or_2b
select_or_2b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	orr r1, r0, r1
	movne r0, r1
	bx lr
.globl select_or_3
select_or_3:
	and r2, r2, #1
	cmp r2, #0
	orr r1, r0, r1
	moveq r0, r1
	bx lr
.globl select_or_3b
select_or_3b:
	and r2, r2, #1
	cmp r2, #1
	orr r1, r0, r1
	movne r0, r1
	bx lr
.globl select_or_b
select_or_b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	orr r1, r0, r1
	movne r1, r0
	mov r0, r1
	bx lr
.globl select_shl_1
select_shl_1:
	cmp r0, #0
	lsl r1, r1, r2
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_shl_2
select_shl_2:
	cmp r0, #0
	lsl r0, r1, r2
	movne r0, r1
	bx lr
.globl select_shl_3
select_shl_3:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	rsb r0, r0, #0
	and r0, r1, r0
	bx lr
.globl select_sub_1
select_sub_1:
	cmp r0, #0
	sub r1, r1, r2
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_sub_2
select_sub_2:
	cmp r0, #0
	sub r0, r1, r2
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
	beq label202
	udiv r0, r1, r2
	b label195
label202:
	mov r0, r2
label195:
	bx lr
.globl select_udiv_2
select_udiv_2:
	cmp r0, #0
	beq label215
	mov r0, r1
	b label207
label215:
	udiv r0, r1, r2
label207:
	bx lr
.globl select_udiv_3
select_udiv_3:
	cmp r0, #0
	beq label227
	mov r0, r1
	b label220
label227:
	mov r0, #42
	udiv r0, r1, r0
label220:
	bx lr
.globl select_xor_1
select_xor_1:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #0
	bne label243
	uxth r0, r0
	b label234
label243:
	uxth r0, r0
	eor r0, r0, #43
label234:
	uxth r0, r0
	bx lr
.globl select_xor_1b
select_xor_1b:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #1
	beq label260
	uxth r0, r0
	b label251
label260:
	uxth r0, r0
	eor r0, r0, #43
label251:
	uxth r0, r0
	bx lr
.globl select_xor_2
select_xor_2:
	uxtb r2, r2
	and r2, r2, #1
	eor r1, r0, r1
	cmp r2, #0
	moveq r1, r0
	mov r0, r1
	bx lr
.globl select_xor_2b
select_xor_2b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	eor r1, r0, r1
	movne r1, r0
	mov r0, r1
	bx lr
.globl select_xor_3
select_xor_3:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #0
	bne label298
	uxth r0, r0
	eor r0, r0, #43
	b label289
label298:
	uxth r0, r0
label289:
	uxth r0, r0
	bx lr
.globl select_xor_3b
select_xor_3b:
	uxtb r1, r1
	and r1, r1, #1
	cmp r1, #1
	beq label315
	uxth r0, r0
	eor r0, r0, #43
	b label306
label315:
	uxth r0, r0
label306:
	uxth r0, r0
	bx lr
.globl select_xor_4
select_xor_4:
	uxtb r2, r2
	and r2, r2, #1
	eor r1, r0, r1
	cmp r2, #0
	moveq r0, r1
	bx lr
.globl select_xor_4b
select_xor_4b:
	uxtb r2, r2
	and r2, r2, #1
	cmp r2, #1
	eor r1, r0, r1
	movne r0, r1
	bx lr