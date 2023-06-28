.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t1
t1:
	push { r4, r5 }
	cmp r3, #4
	mov r4, #0
	movwlt r4, #1
	cmp r2, #10
	mov r5, #0
	movwgt r5, #1
	orr r4, r4, r5
	add r0, r0, r1
	cmp r4, #0
	beq label3
	add r0, r2, r0
	sub r0, r0, r3
label3:
	pop { r4, r5 }
	bx lr
.globl t2
t2:
	add r0, r0, r1
	cmp r3, #4
	bge label27
	cmp r2, #10
	ble label27
	add r0, r2, r0
	sub r0, r0, r3
label27:
	bx lr
