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
	mov r2, r0
	ble label2
	sub r4, r1, #3
	cmp r1, #3
	ble label24
	mov r5, #0
	b label5
.p2align 4
label8:
	add r0, r0, #16
.p2align 4
label5:
	ldr r6, [r0, #0]
	add r5, r5, #4
	cmp r4, r5
	smmul r6, r6, r3
	add r6, r6, r6, lsr #31
	str r6, [r0, #0]
	ldr r6, [r0, #4]
	smmul r6, r6, r3
	add r6, r6, r6, lsr #31
	str r6, [r0, #4]
	ldr r6, [r0, #8]
	smmul r6, r6, r3
	add r6, r6, r6, lsr #31
	str r6, [r0, #8]
	ldr r6, [r0, #12]
	smmul r6, r6, r3
	add r6, r6, r6, lsr #31
	str r6, [r0, #12]
	bgt label8
label9:
	cmp r1, r5
	ble label2
	add r0, r2, r5, lsl #2
	mov r2, r5
	b label12
label15:
	add r0, r0, #4
label12:
	ldr r4, [r0, #0]
	add r2, r2, #1
	cmp r1, r2
	smmul r4, r4, r3
	add r4, r4, r4, lsr #31
	str r4, [r0, #0]
	bgt label15
label2:
	pop { r4, r5, r6 }
	bx lr
label24:
	mov r5, #0
	b label9
