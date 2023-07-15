.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
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
.globl basic_5
basic_5:
	mov r1, #1
	cmp r0, #0
	mov r2, #0
	lsl r1, r1, r0
	movwlt r2, #1
	and r1, r1, #31
	cmp r0, #4
	clz r1, r1
	mov r0, #0
	lsr r1, r1, #5
	movwgt r0, #1
	orr r1, r1, r2
	orr r0, r1, r0
	bx lr
.globl cross_64_with_9
cross_64_with_9:
	subs r2, r0, #35
	mov r1, #1
	movw r3, #3841
	lsl r2, r1, r2
	movt r3, #2560
	and r2, r3, r2
	mov r3, #0
	clz r2, r2
	movwlt r3, #1
	lsr r2, r2, #5
	orr r2, r2, r3
	subs r3, r0, #67
	lsl r1, r1, r3
	and r1, r1, #83886080
	clz r1, r1
	lsr r3, r1, #5
	mov r1, r2
	movge r1, r3
	cmp r0, #93
	mov r0, #0
	movwgt r0, #1
	orr r0, r1, r0
	bx lr
.globl cross_32_with_5
cross_32_with_5:
	subs r1, r0, #35
	mov r2, #1
	lsl r1, r2, r1
	movw r2, #3841
	and r1, r2, r1
	mov r2, #0
	clz r1, r1
	movwlt r2, #1
	lsr r1, r1, #5
	cmp r0, #46
	orr r1, r1, r2
	mov r0, #0
	movwgt r0, #1
	orr r0, r1, r0
	bx lr
.globl negative_5
negative_5:
	adds r1, r0, #7
	mov r2, #1
	lsl r1, r2, r1
	movw r2, #5201
	and r1, r2, r1
	mov r2, #0
	clz r1, r1
	movwlt r2, #1
	lsr r1, r1, #5
	cmp r0, #5
	orr r1, r1, r2
	mov r0, #0
	movwgt r0, #1
	orr r0, r1, r0
	bx lr
