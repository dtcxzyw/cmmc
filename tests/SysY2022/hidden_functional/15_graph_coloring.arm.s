.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
graphColoring:
	push { r4, r5, r6, r7, r8, lr }
	cmp r2, #4
	mov r4, r3
	mov r6, r2
	mov r5, r0
	bne label32
	mov r6, #0
label3:
	cmp r6, #4
	bge label6
	add r1, r6, #1
	mov r5, r1
	add r2, r4, r1, lsl #2
	add r3, r0, r1, lsl #2
label13:
	cmp r5, #4
	bge label17
	ldr r7, [r3, #0]
	cmp r7, #0
	bne label19
label58:
	add r5, r5, #1
	add r3, r3, #4
	add r2, r2, #4
	b label13
label19:
	ldr r7, [r2, #0]
	ldr r8, [r4, r6, lsl #2]
	cmp r7, r8
	beq label67
	b label58
label32:
	mov r7, #1
label23:
	cmp r7, #4
	bge label67
	str r7, [r4, r6, lsl #2]
	add r2, r6, #1
	mov r1, #3
	mov r0, r5
	mov r3, r4
	bl graphColoring
	cmp r0, #0
	bne label82
	mov r0, #0
	add r7, r7, #1
	str r0, [r4, r6, lsl #2]
	b label23
label67:
	mov r0, #0
label21:
	pop { r4, r5, r6, r7, r8, pc }
label17:
	add r0, r0, #16
	mov r6, r1
	b label3
label6:
	mov r5, #0
label7:
	ldr r0, [r4, #0]
	bl putint
	mov r0, #32
	bl putch
	add r5, r5, #1
	cmp r5, #4
	bge label11
	add r4, r4, #4
	b label7
label11:
	mov r0, #10
	bl putch
	mov r0, #1
	b label21
label82:
	mov r0, #1
	b label21
.p2align 4
.globl main
main:
	push { r4, lr }
	sub sp, sp, #80
	mov r4, #0
	mov r1, #1
	add r3, sp, #64
	str r4, [sp, #0]
	mov r0, sp
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #12]
	str r1, [sp, #16]
	str r4, [sp, #20]
	str r1, [sp, #24]
	str r4, [sp, #28]
	str r1, [sp, #32]
	str r1, [sp, #36]
	str r4, [sp, #40]
	str r1, [sp, #44]
	str r1, [sp, #48]
	str r4, [sp, #52]
	str r1, [sp, #56]
	mov r1, #3
	str r4, [sp, #60]
	str r4, [sp, #64]
	str r4, [sp, #68]
	str r4, [sp, #72]
	str r4, [sp, #76]
	mov r2, r4
	bl graphColoring
	cmp r0, #0
	bne label103
	mov r0, #78
	bl putch
	mov r0, #111
	bl putch
	mov r0, #116
	bl putch
	mov r0, #32
	bl putch
	mov r0, #101
	bl putch
	mov r0, #120
	bl putch
	mov r0, #105
	bl putch
	mov r0, #115
	bl putch
	mov r0, #116
	bl putch
label103:
	mov r0, r4
	add sp, sp, #80
	pop { r4, pc }
