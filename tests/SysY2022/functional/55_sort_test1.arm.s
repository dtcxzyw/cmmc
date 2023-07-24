.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #44
	mov r0, #4
	mov r1, #0
	mov r4, sp
	str r0, [sp, #0]
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #9
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #12]
	mov r0, #1
	str r1, [r4, #16]
	str r0, [r4, #20]
	mov r0, #6
	str r0, [r4, #24]
	mov r0, #5
	str r0, [r4, #28]
	mov r0, #7
	str r0, [r4, #32]
	mov r0, #8
	str r0, [r4, #36]
	rsb r0, r1, #10
	cmp r1, #9
	sub r2, r0, #1
	blt label27
label26:
	mov r5, #0
label9:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	blt label9
	mov r0, #0
	add sp, sp, #44
	pop { r4, r5, r6, r7, pc }
label27:
	mov r0, #0
	cmp r2, r0
	bgt label6
	add r1, r1, #1
	rsb r0, r1, #10
	cmp r1, #9
	sub r2, r0, #1
	blt label27
	b label26
label6:
	add r5, r4, r0, lsl #2
	ldr r3, [r4, r0, lsl #2]
	add r6, r0, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	bgt label7
	mov r0, r6
	cmp r2, r6
	bgt label6
	add r1, r1, #1
	rsb r0, r1, #10
	cmp r1, #9
	sub r2, r0, #1
	blt label27
	b label26
label7:
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r2, r6
	bgt label6
	add r1, r1, #1
	rsb r0, r1, #10
	cmp r1, #9
	sub r2, r0, #1
	blt label27
	b label26
