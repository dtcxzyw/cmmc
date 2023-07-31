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
	sub r3, r1, #4
	sub r5, r1, #20
	cmp r3, #16
	ble label27
	mov r2, #0
	mov r4, r2
label4:
	add r6, r0, r4, lsl #2
	add r7, r2, #4
	add r4, r4, #16
	str r2, [r6, #0]
	cmp r5, r4
	str r7, [r6, #4]
	add r7, r2, #8
	str r7, [r6, #8]
	add r7, r2, #12
	str r7, [r6, #12]
	add r7, r2, #16
	str r7, [r6, #16]
	add r7, r2, #20
	str r7, [r6, #20]
	add r7, r2, #24
	str r7, [r6, #24]
	add r7, r2, #28
	str r7, [r6, #28]
	add r7, r2, #32
	str r7, [r6, #32]
	add r7, r2, #36
	str r7, [r6, #36]
	add r7, r2, #40
	str r7, [r6, #40]
	add r7, r2, #44
	str r7, [r6, #44]
	add r7, r2, #48
	str r7, [r6, #48]
	add r7, r2, #52
	str r7, [r6, #52]
	add r7, r2, #56
	str r7, [r6, #56]
	add r7, r2, #60
	add r2, r2, #64
	str r7, [r6, #60]
	bgt label4
label7:
	add r5, r0, r4, lsl #2
	add r6, r2, #4
	add r4, r4, #4
	str r2, [r5, #0]
	cmp r3, r4
	str r6, [r5, #4]
	add r6, r2, #8
	str r6, [r5, #8]
	add r6, r2, #12
	add r2, r2, #16
	str r6, [r5, #12]
	bgt label7
	mov r3, r4
label10:
	str r2, [r0, r3, lsl #2]
	add r2, r2, #4
	add r3, r3, #1
	cmp r1, r3
	bgt label10
label13:
	pop { r4, r5, r6, r7 }
	bx lr
label21:
	mov r2, #0
	mov r3, r2
	b label10
label27:
	mov r4, #0
	mov r2, r4
	b label7
