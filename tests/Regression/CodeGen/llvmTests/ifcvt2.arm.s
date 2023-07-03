.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t1
t1:
	push { r4, r5 }
	add r0, r0, r1
	mov r5, #0
	mov r4, #0
	cmp r2, #10
	add r1, r2, r0
	movwgt r4, #1
	sub r1, r1, r3
	cmp r3, #4
	movwlt r5, #1
	orrs r4, r4, r5
	movne r0, r1
	pop { r4, r5 }
	bx lr
.globl t2
t2:
	push { r4, r5 }
	mov r5, #0
	add r0, r0, r1
	mov r4, #0
	cmp r2, #10
	add r1, r2, r0
	movwgt r4, #1
	sub r1, r1, r3
	cmp r3, #4
	movwlt r5, #1
	ands r4, r4, r5
	movne r0, r1
	pop { r4, r5 }
	bx lr
