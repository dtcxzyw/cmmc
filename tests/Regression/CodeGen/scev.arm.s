.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo4
foo4:
	push { r4, r5, r6 }
	cmp r1, #0
	ble label2
	cmp r1, #3
	ble label32
	sub r3, r1, #3
	sub r5, r1, #18
	cmp r3, #15
	ble label38
	mov r2, r0
	mov r4, #0
.p2align 4
label14:
	lsl r6, r4, #2
	str r6, [r2, #0]
	add r6, r4, #1
	lsl r6, r6, #2
	str r6, [r2, #4]
	add r6, r4, #2
	lsl r6, r6, #2
	str r6, [r2, #8]
	add r6, r4, #3
	lsl r6, r6, #2
	str r6, [r2, #12]
	add r6, r4, #4
	lsl r6, r6, #2
	str r6, [r2, #16]
	add r6, r4, #5
	lsl r6, r6, #2
	str r6, [r2, #20]
	add r6, r4, #6
	lsl r6, r6, #2
	str r6, [r2, #24]
	add r6, r4, #7
	lsl r6, r6, #2
	str r6, [r2, #28]
	add r6, r4, #8
	lsl r6, r6, #2
	str r6, [r2, #32]
	add r6, r4, #9
	lsl r6, r6, #2
	str r6, [r2, #36]
	add r6, r4, #10
	lsl r6, r6, #2
	str r6, [r2, #40]
	add r6, r4, #11
	lsl r6, r6, #2
	str r6, [r2, #44]
	add r6, r4, #12
	lsl r6, r6, #2
	str r6, [r2, #48]
	add r6, r4, #13
	lsl r6, r6, #2
	str r6, [r2, #52]
	add r6, r4, #14
	lsl r6, r6, #2
	str r6, [r2, #56]
	add r6, r4, #15
	add r4, r4, #16
	lsl r6, r6, #2
	cmp r5, r4
	str r6, [r2, #60]
	ble label111
	add r2, r2, #64
	b label14
label111:
	mov r5, r4
label5:
	cmp r3, r5
	ble label42
	add r2, r0, r5, lsl #2
	mov r4, r5
	b label9
label12:
	add r2, r2, #16
label9:
	lsl r5, r4, #2
	str r5, [r2, #0]
	add r5, r4, #1
	lsl r5, r5, #2
	str r5, [r2, #4]
	add r5, r4, #2
	lsl r5, r5, #2
	str r5, [r2, #8]
	add r5, r4, #3
	add r4, r4, #4
	lsl r5, r5, #2
	cmp r3, r4
	str r5, [r2, #12]
	bgt label12
label42:
	mov r2, r4
label18:
	cmp r1, r2
	ble label2
	add r0, r0, r2, lsl #2
	b label21
label24:
	add r0, r0, #4
label21:
	lsl r3, r2, #2
	add r2, r2, #1
	str r3, [r0, #0]
	cmp r1, r2
	bgt label24
label2:
	pop { r4, r5, r6 }
	bx lr
label38:
	mov r5, #0
	mov r4, r5
	b label5
label32:
	mov r2, #0
	b label18
