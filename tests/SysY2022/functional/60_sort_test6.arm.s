.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #132
	mov r2, #4
	add r1, sp, #80
	add r3, sp, #40
	mov r0, sp
	str r3, [sp, #120]
	mov r3, #1
	str r2, [sp, #80]
	mov r2, #3
	str r2, [r1, #4]
	mov r2, #9
	str r2, [r1, #8]
	mov r2, #2
	str r2, [r1, #12]
	mov r2, #0
	str r2, [r1, #16]
	str r3, [r1, #20]
	mov r3, #6
	str r3, [r1, #24]
	mov r3, #5
	str r3, [r1, #28]
	mov r3, #7
	str r3, [r1, #32]
	mov r3, #8
	str r3, [r1, #36]
	str r2, [sp, #0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #12]
	str r2, [r0, #16]
	str r2, [r0, #20]
	str r2, [r0, #24]
	str r2, [r0, #28]
	str r2, [r0, #32]
	str r2, [r0, #36]
.p2align 4
label2:
	add r3, r1, r2, lsl #2
	ldr r4, [r1, r2, lsl #2]
	ldr r5, [r0, r4, lsl #2]
	add r5, r5, #1
	str r5, [r0, r4, lsl #2]
	ldr r4, [r3, #4]
	ldr r5, [r0, r4, lsl #2]
	add r5, r5, #1
	str r5, [r0, r4, lsl #2]
	ldr r4, [r3, #8]
	ldr r5, [r0, r4, lsl #2]
	add r5, r5, #1
	str r5, [r0, r4, lsl #2]
	ldr r3, [r3, #12]
	ldr r4, [r0, r3, lsl #2]
	add r4, r4, #1
	str r4, [r0, r3, lsl #2]
	add r3, r2, #8
	cmp r3, #10
	add r2, r2, #4
	blt label2
	ldr r3, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #10
	ldr r4, [r0, r3, lsl #2]
	add r4, r4, #1
	str r4, [r0, r3, lsl #2]
	bge label6
label4:
	ldr r3, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #10
	ldr r4, [r0, r3, lsl #2]
	add r4, r4, #1
	str r4, [r0, r3, lsl #2]
	blt label4
label6:
	ldr r2, [r0, #4]
	ldr r3, [r0, #20]
	ldr r5, [sp, #0]
	ldr r6, [r0, #8]
	ldr r7, [r0, #12]
	add r3, r2, r3
	ldr r8, [r0, #16]
	add r2, r2, r5
	add r3, r3, r5
	ldr r4, [r0, #24]
	add r5, r6, r2
	add r3, r3, r6
	ldr r9, [r0, #36]
	add r6, r7, r5
	add r3, r3, r7
	ldr r10, [r0, #28]
	add r7, r8, r6
	add r3, r3, r8
	ldr r11, [r0, #32]
	add r4, r3, r4
	str r2, [r0, #4]
	add r9, r4, r9
	mov r2, #10
	str r5, [r0, #8]
	add r9, r9, r10
	str r6, [r0, #12]
	add r10, r4, r10
	add r9, r9, r11
	str r7, [r0, #16]
	add r11, r11, r10
	str r3, [r0, #20]
	str r4, [r0, #24]
	str r10, [r0, #28]
	str r11, [r0, #32]
	str r9, [r0, #36]
.p2align 4
label7:
	sub r3, r2, #1
	ldr r5, [r1, r3, lsl #2]
	add r4, r1, r3, lsl #2
	ldr r3, [r0, r5, lsl #2]
	sub r6, r3, #1
	str r6, [r0, r5, lsl #2]
	ldr r3, [sp, #120]
	str r5, [r3, r6, lsl #2]
	ldr r5, [r4, #-4]
	ldr r6, [r0, r5, lsl #2]
	sub r6, r6, #1
	str r6, [r0, r5, lsl #2]
	str r5, [r3, r6, lsl #2]
	ldr r5, [r4, #-8]
	ldr r6, [r0, r5, lsl #2]
	sub r6, r6, #1
	str r6, [r0, r5, lsl #2]
	str r5, [r3, r6, lsl #2]
	ldr r4, [r4, #-12]
	ldr r5, [r0, r4, lsl #2]
	sub r5, r5, #1
	str r5, [r0, r4, lsl #2]
	str r4, [r3, r5, lsl #2]
	subs r3, r2, #8
	sub r2, r2, #4
	bgt label7
	subs r2, r2, #1
	ldr r4, [r1, r2, lsl #2]
	ldr r3, [r0, r4, lsl #2]
	sub r5, r3, #1
	str r5, [r0, r4, lsl #2]
	ldr r3, [sp, #120]
	str r4, [r3, r5, lsl #2]
	bgt label9
label219:
	mov r4, #0
	b label11
label9:
	subs r2, r2, #1
	ldr r4, [r1, r2, lsl #2]
	ldr r3, [r0, r4, lsl #2]
	sub r5, r3, #1
	str r5, [r0, r4, lsl #2]
	ldr r3, [sp, #120]
	str r4, [r3, r5, lsl #2]
	bgt label9
	b label219
.p2align 4
label11:
	ldr r3, [sp, #120]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r4, r4, #1
	cmp r4, #10
	blt label11
	mov r0, #0
	add sp, sp, #132
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
