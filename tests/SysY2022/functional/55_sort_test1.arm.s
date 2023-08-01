.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #44
	mov r0, #4
	mov r5, #0
	mov r4, sp
	str r0, [sp, #0]
	mov r1, r5
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #12]
	mov r0, #1
	str r5, [sp, #16]
	str r0, [sp, #20]
	mov r0, #6
	str r0, [sp, #24]
	mov r0, #5
	str r0, [sp, #28]
	mov r0, #7
	str r0, [sp, #32]
	mov r0, #8
	str r0, [sp, #36]
	rsb r0, r5, #10
	cmp r5, #9
	sub r0, r0, #1
	bge label26
.p2align 4
label27:
	mov r2, r5
	cmp r0, r5
	ble label30
.p2align 4
label6:
	add r6, r4, r2, lsl #2
	add r7, r2, #1
	ldr r3, [r6, #0]
	ldr r6, [r6, #4]
	cmp r3, r6
	bgt label7
	mov r2, r7
	cmp r0, r7
	bgt label6
	b label68
.p2align 4
label7:
	add r2, r4, r2, lsl #2
	str r3, [r2, #4]
	str r6, [r2, #0]
	mov r2, r7
	cmp r0, r7
	bgt label6
	add r1, r1, #1
	rsb r0, r1, #10
	cmp r1, #9
	sub r0, r0, #1
	blt label27
label26:
	mov r6, r5
	b label9
.p2align 4
label68:
	add r1, r1, #1
	rsb r0, r1, #10
	cmp r1, #9
	sub r0, r0, #1
	blt label27
	b label26
.p2align 4
label9:
	ldr r0, [r4, r6, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	blt label9
	mov r0, r5
	add sp, sp, #44
	pop { r4, r5, r6, r7, pc }
label30:
	add r1, r1, #1
	rsb r0, r1, #10
	cmp r1, #9
	sub r0, r0, #1
	blt label27
	b label26
