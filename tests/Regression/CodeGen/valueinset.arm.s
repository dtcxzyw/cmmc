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
	cmp r0, #2
	movwne r2, #1
	cmp r0, #1
	and r1, r1, r2
	mov r0, #0
	movwne r0, #1
	and r0, r1, r0
	bx lr
.globl basic_5
basic_5:
	mov r1, #1
	cmp r0, #4
	mov r2, #0
	lsl r1, r1, r0
	movwgt r2, #1
	and r1, r1, #31
	cmp r0, #0
	clz r1, r1
	mov r0, #0
	lsr r1, r1, #5
	movwlt r0, #1
	orr r1, r1, r2
	orr r0, r1, r0
	bx lr
.globl cross_64_with_9
cross_64_with_9:
	push { r4 }
	sub r2, r0, #35
	movw r4, #3841
	mov r1, #1
	cmp r2, #0
	movt r4, #2560
	lsl r3, r1, r2
	mov r2, #0
	and r3, r4, r3
	movwlt r2, #1
	clz r3, r3
	lsr r3, r3, #5
	orr r2, r3, r2
	subs r3, r0, #67
	lsl r1, r1, r3
	and r1, r1, #83886080
	clz r1, r1
	lsr r4, r1, #5
	mov r1, r2
	movge r1, r4
	cmp r0, #93
	mov r0, #0
	movwgt r0, #1
	orr r0, r1, r0
	pop { r4 }
	bx lr
.globl cross_32_with_5
cross_32_with_5:
	sub r1, r0, #35
	mov r2, #1
	movw r3, #3841
	cmp r0, #46
	lsl r2, r2, r1
	mov r0, #0
	and r2, r3, r2
	movwgt r0, #1
	clz r2, r2
	cmp r1, #0
	lsr r2, r2, #5
	mov r1, #0
	orr r0, r2, r0
	movwlt r1, #1
	orr r0, r0, r1
	bx lr
.globl negative_5
negative_5:
	add r1, r0, #7
	mov r2, #1
	movw r3, #5201
	cmp r0, #5
	lsl r2, r2, r1
	mov r0, #0
	and r2, r3, r2
	movwgt r0, #1
	clz r2, r2
	cmp r1, #0
	lsr r2, r2, #5
	mov r1, #0
	orr r0, r2, r0
	movwlt r1, #1
	orr r0, r0, r1
	bx lr
