.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl select_add_1
select_add_1:
.p2align 4
	add r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_add_2
select_add_2:
.p2align 4
	add r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_add_3
select_add_3:
.p2align 4
	cmp r0, #0
	add r0, r1, #42
	movne r0, r1
	bx lr
.globl select_and_1
select_and_1:
.p2align 4
	and r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_and_2
select_and_2:
.p2align 4
	and r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_and_3
select_and_3:
.p2align 4
	cmp r0, #0
	and r0, r1, #42
	movne r0, r1
	bx lr
.globl select_ashr_1
select_ashr_1:
.p2align 4
	lsr r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_ashr_2
select_ashr_2:
.p2align 4
	lsr r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_ashr_3
select_ashr_3:
.p2align 4
	cmp r0, #0
	mov r0, #42
	lsr r0, r1, r0
	movne r0, r1
	bx lr
.globl select_lshr_1
select_lshr_1:
.p2align 4
	lsr r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_lshr_2
select_lshr_2:
.p2align 4
	lsr r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_lshr_3
select_lshr_3:
.p2align 4
	cmp r0, #0
	mov r0, #42
	lsr r0, r1, r0
	movne r0, r1
	bx lr
.globl select_or
select_or:
.p2align 4
	uxtb r2, r2
	orr r1, r0, r1
	ands r2, r2, #1
	moveq r1, r0
	mov r0, r1
	bx lr
.globl select_or_1
select_or_1:
.p2align 4
	ands r2, r2, #1
	orr r1, r0, r1
	moveq r1, r0
	mov r0, r1
	bx lr
.globl select_or_1b
select_or_1b:
.p2align 4
	and r2, r2, #1
	orr r1, r0, r1
	cmp r2, #1
	movne r1, r0
	mov r0, r1
	bx lr
.globl select_or_2
select_or_2:
.p2align 4
	uxtb r2, r2
	orr r1, r0, r1
	ands r2, r2, #1
	moveq r0, r1
	bx lr
.globl select_or_2b
select_or_2b:
.p2align 4
	uxtb r2, r2
	orr r1, r0, r1
	and r2, r2, #1
	cmp r2, #1
	movne r0, r1
	bx lr
.globl select_or_3
select_or_3:
.p2align 4
	ands r2, r2, #1
	orr r1, r0, r1
	moveq r0, r1
	bx lr
.globl select_or_3b
select_or_3b:
.p2align 4
	and r2, r2, #1
	orr r1, r0, r1
	cmp r2, #1
	movne r0, r1
	bx lr
.globl select_or_b
select_or_b:
.p2align 4
	uxtb r2, r2
	orr r1, r0, r1
	and r2, r2, #1
	cmp r2, #1
	movne r1, r0
	mov r0, r1
	bx lr
.globl select_shl_1
select_shl_1:
.p2align 4
	lsl r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_shl_2
select_shl_2:
.p2align 4
	lsl r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_shl_3
select_shl_3:
.p2align 4
	cmp r0, #0
	mov r0, #0
	movne r0, r1
	bx lr
.globl select_sub_1
select_sub_1:
.p2align 4
	sub r1, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_sub_2
select_sub_2:
.p2align 4
	sub r2, r1, r2
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_sub_3
select_sub_3:
.p2align 4
	cmp r0, #0
	sub r0, r1, #42
	movne r0, r1
	bx lr
.globl select_udiv_1
select_udiv_1:
.p2align 4
	cmp r0, #0
	bne label195
	mov r0, r2
label196:
	bx lr
label195:
	udiv r0, r1, r2
	b label196
.globl select_udiv_2
select_udiv_2:
.p2align 4
	cmp r0, #0
	bne label215
	udiv r0, r1, r2
	b label207
label215:
	mov r0, r1
label207:
	bx lr
.globl select_udiv_3
select_udiv_3:
.p2align 4
	cmp r0, #0
	bne label226
	mov r0, #42
	udiv r0, r1, r0
	b label219
label226:
	mov r0, r1
label219:
	bx lr
.globl select_xor_1
select_xor_1:
.p2align 4
	uxtb r1, r1
	uxth r0, r0
	ands r1, r1, #1
	eor r1, r0, #43
	moveq r1, r0
	uxth r0, r1
	bx lr
.globl select_xor_1b
select_xor_1b:
.p2align 4
	uxtb r1, r1
	uxth r0, r0
	and r1, r1, #1
	cmp r1, #1
	eor r1, r0, #43
	movne r1, r0
	uxth r0, r1
	bx lr
.globl select_xor_2
select_xor_2:
.p2align 4
	uxtb r2, r2
	eor r1, r0, r1
	ands r2, r2, #1
	moveq r1, r0
	mov r0, r1
	bx lr
.globl select_xor_2b
select_xor_2b:
.p2align 4
	uxtb r2, r2
	eor r1, r0, r1
	and r2, r2, #1
	cmp r2, #1
	movne r1, r0
	mov r0, r1
	bx lr
.globl select_xor_3
select_xor_3:
.p2align 4
	uxtb r1, r1
	uxth r0, r0
	ands r1, r1, #1
	eor r1, r0, #43
	moveq r0, r1
	uxth r0, r0
	bx lr
.globl select_xor_3b
select_xor_3b:
.p2align 4
	uxtb r1, r1
	uxth r0, r0
	and r1, r1, #1
	cmp r1, #1
	eor r1, r0, #43
	movne r0, r1
	uxth r0, r0
	bx lr
.globl select_xor_4
select_xor_4:
.p2align 4
	uxtb r2, r2
	eor r1, r0, r1
	ands r2, r2, #1
	moveq r0, r1
	bx lr
.globl select_xor_4b
select_xor_4b:
.p2align 4
	uxtb r2, r2
	eor r1, r0, r1
	and r2, r2, #1
	cmp r2, #1
	movne r0, r1
	bx lr
