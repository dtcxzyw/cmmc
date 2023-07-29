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
	sub r4, r1, #4
	ble label9
	cmp r1, #4
	bgt label19
	mov r2, #0
	mov r3, r2
	b label6
label19:
	mov r3, #0
	mov r2, r3
label3:
	add r5, r0, r3, lsl #2
	str r2, [r0, r3, lsl #2]
	add r6, r2, #4
	add r3, r3, #4
	str r6, [r5, #4]
	cmp r4, r3
	add r6, r2, #8
	str r6, [r5, #8]
	add r6, r2, #12
	add r2, r2, #16
	str r6, [r5, #12]
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
