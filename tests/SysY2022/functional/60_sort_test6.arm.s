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
	mov r2, #4
	mov r3, #0
	sub sp, sp, #120
	str r2, [sp, #80]
	add r1, sp, #80
	add r4, sp, #40
	mov r0, sp
	mov r2, #3
	str r2, [r1, #4]
	mov r2, #9
	str r2, [r1, #8]
	mov r2, #2
	str r2, [r1, #12]
	mov r2, #1
	str r3, [r1, #16]
	str r2, [r1, #20]
	mov r2, #6
	str r2, [r1, #24]
	mov r2, #5
	str r2, [r1, #28]
	mov r2, #7
	str r2, [r1, #32]
	mov r2, #8
	str r2, [r1, #36]
	str r3, [sp, #0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #12]
	str r3, [r0, #16]
	str r3, [r0, #20]
	str r3, [r0, #24]
	str r3, [r0, #28]
	str r3, [r0, #32]
	str r3, [r0, #36]
.p2align 4
label2:
	add r2, r3, #4
	cmp r2, #10
	blt label15
label4:
	ldr r2, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #10
	ldr r5, [r0, r2, lsl #2]
	add r5, r5, #1
	str r5, [r0, r2, lsl #2]
	blt label4
	ldr r2, [r0, #4]
	ldr r3, [sp, #0]
	add r2, r2, r3
	str r2, [r0, #4]
	ldr r3, [r0, #8]
	add r2, r2, r3
	str r2, [r0, #8]
	ldr r3, [r0, #12]
	add r2, r2, r3
	str r2, [r0, #12]
	ldr r3, [r0, #16]
	add r2, r2, r3
	str r2, [r0, #16]
	ldr r3, [r0, #20]
	add r2, r2, r3
	str r2, [r0, #20]
	ldr r3, [r0, #24]
	add r2, r2, r3
	str r2, [r0, #24]
	ldr r3, [r0, #28]
	add r2, r2, r3
	str r2, [r0, #28]
	ldr r3, [r0, #32]
	add r2, r2, r3
	str r2, [r0, #32]
	ldr r3, [r0, #36]
	add r2, r2, r3
	mov r3, #10
	str r2, [r0, #36]
	b label7
label15:
	add r5, r1, r3, lsl #2
	ldr r3, [r1, r3, lsl #2]
	ldr r6, [r0, r3, lsl #2]
	add r6, r6, #1
	str r6, [r0, r3, lsl #2]
	ldr r3, [r5, #4]
	ldr r6, [r0, r3, lsl #2]
	add r6, r6, #1
	str r6, [r0, r3, lsl #2]
	ldr r3, [r5, #8]
	ldr r6, [r0, r3, lsl #2]
	add r6, r6, #1
	str r6, [r0, r3, lsl #2]
	ldr r3, [r5, #12]
	ldr r5, [r0, r3, lsl #2]
	add r5, r5, #1
	str r5, [r0, r3, lsl #2]
	mov r3, r2
	b label2
.p2align 4
label7:
	subs r2, r3, #4
	bgt label14
label9:
	subs r3, r3, #1
	ldr r2, [r1, r3, lsl #2]
	ldr r5, [r0, r2, lsl #2]
	sub r5, r5, #1
	str r5, [r0, r2, lsl #2]
	str r2, [r4, r5, lsl #2]
	bgt label9
	b label101
label14:
	sub r5, r3, #1
	add r3, r1, r5, lsl #2
	ldr r5, [r1, r5, lsl #2]
	ldr r6, [r0, r5, lsl #2]
	sub r6, r6, #1
	str r6, [r0, r5, lsl #2]
	str r5, [r4, r6, lsl #2]
	ldr r5, [r3, #-4]
	ldr r6, [r0, r5, lsl #2]
	sub r6, r6, #1
	str r6, [r0, r5, lsl #2]
	str r5, [r4, r6, lsl #2]
	ldr r5, [r3, #-8]
	ldr r6, [r0, r5, lsl #2]
	sub r6, r6, #1
	str r6, [r0, r5, lsl #2]
	str r5, [r4, r6, lsl #2]
	ldr r3, [r3, #-12]
	ldr r5, [r0, r3, lsl #2]
	sub r5, r5, #1
	str r5, [r0, r3, lsl #2]
	str r3, [r4, r5, lsl #2]
	mov r3, r2
	b label7
label101:
	mov r5, #0
.p2align 4
label11:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	blt label11
	mov r0, #0
	add sp, sp, #120
	pop { r4, r5, r6, pc }
