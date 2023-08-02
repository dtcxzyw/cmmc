.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	push { r4, r5, r6 }
	movw r3, #21846
	movt r3, #21845
	cmp r1, #0
	ble label2
	sub r4, r1, #4
	cmp r1, #4
	ble label23
	mov r2, r0
	mov r5, #0
.p2align 4
label5:
	ldr r6, [r2, #0]
	add r5, r5, #4
	cmp r4, r5
	smmul r6, r6, r3
	add r6, r6, r6, lsr #31
	str r6, [r2, #0]
	ldr r6, [r2, #4]
	smmul r6, r6, r3
	add r6, r6, r6, lsr #31
	str r6, [r2, #4]
	ldr r6, [r2, #8]
	smmul r6, r6, r3
	add r6, r6, r6, lsr #31
	str r6, [r2, #8]
	ldr r6, [r2, #12]
	smmul r6, r6, r3
	add r6, r6, r6, lsr #31
	str r6, [r2, #12]
	ble label39
	add r2, r2, #16
	b label5
label39:
	add r0, r0, r5, lsl #2
label10:
	ldr r2, [r0, #0]
	add r5, r5, #1
	cmp r1, r5
	smmul r2, r2, r3
	add r2, r2, r2, lsr #31
	str r2, [r0, #0]
	ble label2
	add r0, r0, #4
	b label10
label2:
	pop { r4, r5, r6 }
	bx lr
label23:
	mov r5, #0
	b label10
