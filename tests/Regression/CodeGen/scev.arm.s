.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo4
foo4:
	push { r4, r5, r6, r7 }
	cmp r1, #0
	ble label2
	cmp r1, #3
	ble label38
	sub r3, r1, #3
	sub r5, r1, #18
	cmp r3, #15
	ble label57
	mov r2, r0
	mov r4, #0
	mov r6, r4
	b label26
.p2align 4
label30:
	add r2, r2, #64
.p2align 4
label26:
	str r4, [r2, #0]
	add r7, r4, #4
	add r6, r6, #16
	str r7, [r2, #4]
	cmp r5, r6
	add r7, r4, #8
	str r7, [r2, #8]
	add r7, r4, #12
	str r7, [r2, #12]
	add r7, r4, #16
	str r7, [r2, #16]
	add r7, r4, #20
	str r7, [r2, #20]
	add r7, r4, #24
	str r7, [r2, #24]
	add r7, r4, #28
	str r7, [r2, #28]
	add r7, r4, #32
	str r7, [r2, #32]
	add r7, r4, #36
	str r7, [r2, #36]
	add r7, r4, #40
	str r7, [r2, #40]
	add r7, r4, #44
	str r7, [r2, #44]
	add r7, r4, #48
	str r7, [r2, #48]
	add r7, r4, #52
	str r7, [r2, #52]
	add r7, r4, #56
	str r7, [r2, #56]
	add r7, r4, #60
	add r4, r4, #64
	str r7, [r2, #60]
	bgt label30
	mov r5, r4
	mov r2, r6
label14:
	cmp r3, r2
	ble label61
	add r4, r0, r2, lsl #2
	b label20
label24:
	add r4, r4, #16
label20:
	str r5, [r4, #0]
	add r6, r5, #4
	add r2, r2, #4
	str r6, [r4, #4]
	cmp r3, r2
	add r6, r5, #8
	str r6, [r4, #8]
	add r6, r5, #12
	add r5, r5, #16
	str r6, [r4, #12]
	bgt label24
	mov r3, r5
label4:
	cmp r1, r2
	ble label2
	add r0, r0, r2, lsl #2
	b label8
label12:
	add r0, r0, #4
label8:
	str r3, [r0, #0]
	add r2, r2, #1
	add r3, r3, #4
	cmp r1, r2
	bgt label12
label2:
	pop { r4, r5, r6, r7 }
	bx lr
label38:
	mov r2, #0
	mov r3, r2
	b label4
label57:
	mov r5, #0
	mov r4, r5
	mov r2, r5
	mov r6, r5
	b label14
label61:
	mov r2, r6
	mov r3, r4
	b label4
