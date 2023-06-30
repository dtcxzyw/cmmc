.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t1
t1:
	push { r4, r5 }
	cmp r2, #10
	mov r4, #0
	movwgt r4, #1
	cmp r3, #4
	mov r5, #0
	movwlt r5, #1
	orr r4, r4, r5
	cmp r4, #0
	add r0, r0, r1
	add r1, r2, r0
	sub r1, r1, r3
	movne r0, r1
	pop { r4, r5 }
	bx lr
.globl t2
t2:
	push { r4, r5 }
	cmp r2, #10
	mov r4, #0
	movwgt r4, #1
	cmp r3, #4
	mov r5, #0
	movwlt r5, #1
	and r4, r4, r5
	add r0, r0, r1
	add r1, r2, r0
	sub r1, r1, r3
	cmp r4, #0
	movne r0, r1
	pop { r4, r5 }
	bx lr
