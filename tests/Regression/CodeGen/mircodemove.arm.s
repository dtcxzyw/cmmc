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
	movw r2, #21846
	cmp r1, #0
	movt r2, #21845
	bgt label3
label2:
	pop { r4, r5, r6 }
	bx lr
label3:
	sub r3, r1, #4
	cmp r1, #4
	ble label16
	mov r4, #0
.p2align 4
label4:
	add r5, r0, r4, lsl #2
	add r4, r4, #4
	ldr r6, [r5, #0]
	cmp r3, r4
	smmul r6, r6, r2
	add r6, r6, r6, lsr #31
	str r6, [r5, #0]
	ldr r6, [r5, #4]
	smmul r6, r6, r2
	add r6, r6, r6, lsr #31
	str r6, [r5, #4]
	ldr r6, [r5, #8]
	smmul r6, r6, r2
	add r6, r6, r6, lsr #31
	str r6, [r5, #8]
	ldr r6, [r5, #12]
	smmul r6, r6, r2
	add r6, r6, r6, lsr #31
	str r6, [r5, #12]
	bgt label4
label6:
	add r3, r0, r4, lsl #2
	add r4, r4, #1
	ldr r5, [r3, #0]
	cmp r1, r4
	smmul r5, r5, r2
	add r5, r5, r5, lsr #31
	str r5, [r3, #0]
	bgt label6
	b label2
label16:
	mov r4, #0
	b label6
