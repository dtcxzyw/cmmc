.arch armv7ve
.data
.data
.align 4
.globl var32
var32:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl select_and
select_and:
	push { r4, r5 }
	ldr r4, [sp, #24]
	ldr r5, [sp, #28]
	cmp r0, r1
	mov r1, #0
	mov r0, #0
	movwlo r0, #1
	cmp r2, r3
	movwlo r1, #1
	ands r1, r0, r1
	mov r0, r5
	movne r0, r4
	pop { r4, r5 }
	bx lr
.globl select_noopt
select_noopt:
	push { r4 }
	ldr r4, [sp, #20]
	cmp r0, r1
	mov r0, #0
	movwlo r0, #1
	cmp r1, r2
	movw r2, #:lower16:var32
	mov r1, #0
	movt r2, #:upper16:var32
	movwlo r1, #1
	orrs r1, r0, r1
	str r1, [r2, #0]
	mov r0, r4
	movne r0, r3
	pop { r4 }
	bx lr
.globl select_or
select_or:
	push { r4, r5 }
	ldr r4, [sp, #24]
	ldr r5, [sp, #28]
	cmp r0, r1
	mov r1, #0
	mov r0, #0
	movwlo r0, #1
	cmp r2, r3
	movwlo r1, #1
	orrs r1, r0, r1
	mov r0, r5
	movne r0, r4
	pop { r4, r5 }
	bx lr
