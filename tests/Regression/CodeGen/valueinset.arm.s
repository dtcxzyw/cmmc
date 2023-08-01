.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl basic_3
basic_3:
	cmp r0, #0
	mov r1, #0
	mov r2, #0
	movwne r1, #1
	cmp r0, #1
	movwne r2, #1
	cmp r0, #2
	and r1, r1, r2
	mov r0, #0
	movwne r0, #1
	and r0, r1, r0
	bx lr
.p2align 4
.globl basic_5
basic_5:
	mov r1, #1
	cmp r0, #0
	lsl r1, r1, r0
	and r1, r1, #31
	clz r1, r1
	lsr r1, r1, #5
	orrlt r1, r1, #1
	cmp r0, #4
	mov r0, r1
	orrgt r0, r1, #1
	bx lr
.p2align 4
.globl cross_64_with_9
cross_64_with_9:
	push { r4 }
	subs r2, r0, #35
	mov r1, #1
	movw r3, #3841
	movt r3, #2560
	lsl r2, r1, r2
	and r2, r3, r2
	sub r3, r0, #67
	clz r2, r2
	lsl r1, r1, r3
	lsr r2, r2, #5
	and r1, r1, #83886080
	orrlt r2, r2, #1
	clz r1, r1
	cmn r3, #1
	lsr r4, r1, #5
	mov r1, r2
	movgt r1, r4
	cmp r0, #93
	mov r0, r1
	orrgt r0, r1, #1
	pop { r4 }
	bx lr
.p2align 4
.globl cross_32_with_5
cross_32_with_5:
	subs r1, r0, #35
	mov r2, #1
	lsl r1, r2, r1
	movw r2, #3841
	and r1, r2, r1
	clz r1, r1
	lsr r1, r1, #5
	orrlt r1, r1, #1
	cmp r0, #46
	mov r0, r1
	orrgt r0, r1, #1
	bx lr
.p2align 4
.globl negative_5
negative_5:
	adds r1, r0, #7
	mov r2, #1
	lsl r1, r2, r1
	movw r2, #5201
	and r1, r2, r1
	clz r1, r1
	lsr r1, r1, #5
	orrlt r1, r1, #1
	cmp r0, #5
	mov r0, r1
	orrgt r0, r1, #1
	bx lr
