.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t1
t1:
	push { r4 }
	add r0, r0, r1
	cmp r3, #4
	mov r1, #0
	movwlt r1, #1
	cmp r2, #10
	mov r4, #0
	movwgt r4, #1
	orr r1, r1, r4
	cmp r1, #0
	beq label3
	add r0, r2, r0
	sub r0, r0, r3
label3:
	pop { r4 }
	bx lr
.globl t2
t2:
	add r0, r0, r1
	cmp r3, #4
	bge label26
	cmp r2, #10
	ble label26
	add r0, r2, r0
	sub r0, r0, r3
label26:
	bx lr
