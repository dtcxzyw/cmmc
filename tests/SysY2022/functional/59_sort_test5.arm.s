.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, lr }
	sub sp, sp, #40
	mov r2, #8
	mov r0, #4
	mov r1, #3
	mov r4, sp
	str r0, [sp, #0]
	str r1, [sp, #4]
	mov r1, #9
	str r1, [sp, #8]
	mov r1, #2
	str r1, [sp, #12]
	mov r1, #0
	str r1, [sp, #16]
	mov r1, #1
	str r1, [sp, #20]
	mov r1, #6
	str r1, [sp, #24]
	mov r1, #5
	str r1, [sp, #28]
	mov r1, #7
	str r1, [sp, #32]
	str r2, [sp, #36]
	sub r1, r2, #2
	add r3, r2, #1
	mov r2, r0
.p2align 4
label5:
	cmp r3, #10
	blt label8
	sub r0, r0, #1
	cmn r0, #1
	bgt label76
	b label151
.p2align 4
label8:
	cmp r3, #9
	blt label9
	mov r5, #0
	b label10
label9:
	add r5, r4, r3, lsl #2
	ldr r6, [r5, #0]
	ldr r5, [r5, #4]
	cmp r6, r5
	mov r5, #0
	movwlt r5, #1
.p2align 4
label10:
	add r3, r3, r5
	ldr r5, [r4, r2, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r5, r6
	bgt label13
	str r6, [r4, r2, lsl #2]
	lsl r2, r3, #1
	str r5, [r4, r3, lsl #2]
	add r5, r2, #1
	mov r2, r3
	mov r3, r5
	b label5
label13:
	sub r0, r0, #1
	cmn r0, #1
	bgt label76
label151:
	mov r0, #9
	add r1, r4, r0, lsl #2
	ldr r2, [sp, #0]
	ldr r3, [r1, #0]
	str r3, [sp, #0]
	mov r3, #1
	str r2, [r1, #0]
	mov r2, #0
	sub r1, r0, #1
	b label16
.p2align 4
label76:
	mov r2, r1
	sub r1, r1, #2
	add r3, r2, #1
	mov r2, r0
	cmp r3, #10
	blt label8
	sub r0, r0, #1
	cmn r0, #1
	bgt label76
	b label151
.p2align 4
label16:
	cmp r0, r3
	bgt label19
	cmp r1, #0
	bgt label117
.p2align 4
label152:
	mov r5, #0
	b label25
.p2align 4
label19:
	cmp r1, r3
	bgt label20
	mov r5, #0
	add r3, r3, r5
	ldr r5, [r4, r2, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r5, r6
	bgt label24
	str r6, [r4, r2, lsl #2]
	lsl r2, r3, #1
	str r5, [r4, r3, lsl #2]
	add r5, r2, #1
	mov r2, r3
	mov r3, r5
	cmp r0, r5
	bgt label19
	cmp r1, #0
	bgt label117
	b label152
.p2align 4
label25:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	blt label25
	mov r0, #0
	add sp, sp, #40
	pop { r4, r5, r6, pc }
.p2align 4
label20:
	add r5, r4, r3, lsl #2
	ldr r6, [r5, #0]
	ldr r5, [r5, #4]
	cmp r6, r5
	mov r5, #0
	movwlt r5, #1
	add r3, r3, r5
	ldr r5, [r4, r2, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r5, r6
	bgt label24
	str r6, [r4, r2, lsl #2]
	lsl r2, r3, #1
	str r5, [r4, r3, lsl #2]
	add r5, r2, #1
	mov r2, r3
	mov r3, r5
	cmp r0, r5
	bgt label19
	cmp r1, #0
	bgt label117
	b label152
.p2align 4
label24:
	cmp r1, #0
	ble label152
.p2align 4
label117:
	mov r0, r1
	add r1, r4, r1, lsl #2
	ldr r2, [sp, #0]
	ldr r3, [r1, #0]
	str r3, [sp, #0]
	mov r3, #1
	str r2, [r1, #0]
	mov r2, #0
	sub r1, r0, #1
	cmp r0, r3
	bgt label19
	cmp r1, #0
	bgt label117
	b label152
