.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo4
foo4:
.p2align 4
	push { r4, r5, r6 }
	cmp r1, #0
	ble label9
	sub r4, r1, #8
	cmp r1, #8
	ble label18
	mov r3, #0
	mov r2, r3
.p2align 4
label3:
	add r5, r0, r3, lsl #2
	add r6, r2, #4
	add r3, r3, #8
	str r2, [r5, #0]
	cmp r4, r3
	str r6, [r5, #4]
	add r6, r2, #8
	str r6, [r5, #8]
	add r6, r2, #12
	str r6, [r5, #12]
	add r6, r2, #16
	str r6, [r5, #16]
	add r6, r2, #20
	str r6, [r5, #20]
	add r6, r2, #24
	str r6, [r5, #24]
	add r6, r2, #28
	add r2, r2, #32
	str r6, [r5, #28]
	bgt label3
label6:
	str r2, [r0, r3, lsl #2]
	add r2, r2, #4
	add r3, r3, #1
	cmp r1, r3
	bgt label6
label9:
	pop { r4, r5, r6 }
	bx lr
label18:
	mov r2, #0
	mov r3, r2
	b label6
