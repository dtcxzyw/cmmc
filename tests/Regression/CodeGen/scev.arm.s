.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo4
foo4:
.p2align 4
	push { r4, r5, r6, r7 }
	cmp r1, #0
	ble label13
	cmp r1, #4
	ble label21
	sub r2, r1, #4
	sub r5, r1, #20
	cmp r2, #16
	ble label27
	mov r3, #0
	mov r4, r3
label4:
	add r6, r0, r4, lsl #2
	add r7, r3, #4
	add r4, r4, #16
	str r3, [r6, #0]
	cmp r5, r4
	str r7, [r6, #4]
	add r7, r3, #8
	str r7, [r6, #8]
	add r7, r3, #12
	str r7, [r6, #12]
	add r7, r3, #16
	str r7, [r6, #16]
	add r7, r3, #20
	str r7, [r6, #20]
	add r7, r3, #24
	str r7, [r6, #24]
	add r7, r3, #28
	str r7, [r6, #28]
	add r7, r3, #32
	str r7, [r6, #32]
	add r7, r3, #36
	str r7, [r6, #36]
	add r7, r3, #40
	str r7, [r6, #40]
	add r7, r3, #44
	str r7, [r6, #44]
	add r7, r3, #48
	str r7, [r6, #48]
	add r7, r3, #52
	str r7, [r6, #52]
	add r7, r3, #56
	str r7, [r6, #56]
	add r7, r3, #60
	str r7, [r6, #60]
	add r6, r3, #64
	ble label65
	mov r3, r6
	b label4
label65:
	mov r3, r4
	mov r4, r6
label7:
	add r5, r0, r3, lsl #2
	add r6, r4, #4
	add r3, r3, #4
	str r4, [r5, #0]
	cmp r2, r3
	str r6, [r5, #4]
	add r6, r4, #8
	str r6, [r5, #8]
	add r6, r4, #12
	add r4, r4, #16
	str r6, [r5, #12]
	bgt label7
	mov r2, r4
label10:
	str r2, [r0, r3, lsl #2]
	add r2, r2, #4
	add r3, r3, #1
	cmp r1, r3
	bgt label10
label13:
	pop { r4, r5, r6, r7 }
	bx lr
label27:
	mov r3, #0
	mov r4, r3
	b label7
label21:
	mov r2, #0
	mov r3, r2
	b label10
