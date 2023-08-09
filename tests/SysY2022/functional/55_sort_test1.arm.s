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
	mov r0, #4
	sub sp, sp, #44
	mov r4, #0
	str r0, [sp, #0]
	mov r2, sp
	mov r3, r4
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #12]
	mov r0, #1
	str r4, [sp, #16]
	str r0, [sp, #20]
	mov r0, #6
	str r0, [sp, #24]
	mov r0, #5
	str r0, [sp, #28]
	mov r0, #7
	str r0, [sp, #32]
	mov r0, #8
	str r0, [sp, #36]
	cmp r4, #9
	blt label4
	b label30
.p2align 4
label10:
	add r3, r3, #1
	cmp r3, #9
	bge label30
.p2align 4
label4:
	rsb r0, r3, #10
	mov r5, r4
	sub r1, r0, #1
	mov r0, r2
	ldr r6, [r2, #0]
	ldr r7, [r2, #4]
	cmp r6, r7
	ble label39
.p2align 4
label8:
	str r6, [r0, #4]
	str r7, [r0, #0]
	add r5, r5, #1
	cmp r1, r5
	ble label10
.p2align 4
label11:
	add r0, r0, #4
	ldr r6, [r0, #0]
	ldr r7, [r0, #4]
	cmp r6, r7
	bgt label8
	add r5, r5, #1
	cmp r1, r5
	bgt label11
	add r3, r3, #1
	cmp r3, #9
	blt label4
	b label30
.p2align 4
label39:
	add r5, r5, #1
	cmp r1, r5
	bgt label11
	add r3, r3, #1
	cmp r3, #9
	blt label4
label30:
	mov r5, r2
	mov r6, r4
	b label13
.p2align 4
label16:
	add r5, r5, #4
.p2align 4
label13:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	blt label16
	mov r0, r4
	add sp, sp, #44
	pop { r4, r5, r6, r7, pc }
