.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo4
foo4:
	push { r4, r5 }
	cmp r1, #0
	mov r2, r0
	ble label9
	mov r0, #0
	mov r3, r0
label2:
	add r4, r3, #4
	cmp r1, r4
	bgt label5
	str r0, [r2, r3, lsl #2]
	add r0, r0, #4
	add r3, r3, #1
	cmp r1, r3
	bgt label6
	b label9
label5:
	add r5, r2, r3, lsl #2
	str r0, [r2, r3, lsl #2]
	add r3, r0, #4
	str r3, [r5, #4]
	add r3, r0, #8
	str r3, [r5, #8]
	add r3, r0, #12
	add r0, r0, #16
	str r3, [r5, #12]
	mov r3, r4
	b label2
label6:
	str r0, [r2, r3, lsl #2]
	add r0, r0, #4
	add r3, r3, #1
	cmp r1, r3
	bgt label6
label9:
	pop { r4, r5 }
	bx lr
