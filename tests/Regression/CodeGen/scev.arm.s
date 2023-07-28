.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo4
foo4:
.p2align 4
	push { r4, r5 }
	cmp r1, #0
	ble label9
	cmp r1, #4
	bgt label18
	mov r2, #0
	mov r3, r2
	b label6
label18:
	mov r2, #0
	mov r3, r2
label3:
	add r4, r0, r2, lsl #2
	str r3, [r0, r2, lsl #2]
	add r5, r3, #4
	str r5, [r4, #4]
	add r5, r3, #8
	str r5, [r4, #8]
	add r5, r3, #12
	add r3, r3, #16
	str r5, [r4, #12]
	add r4, r2, #4
	add r5, r2, #8
	cmp r1, r5
	bgt label33
	mov r2, r3
	mov r3, r4
	b label6
label33:
	mov r2, r4
	b label3
label6:
	str r2, [r0, r3, lsl #2]
	add r2, r2, #4
	add r3, r3, #1
	cmp r1, r3
	bgt label6
label9:
	pop { r4, r5 }
	bx lr
