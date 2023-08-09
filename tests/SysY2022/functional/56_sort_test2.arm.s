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
	mov r5, #1
	mov r4, #0
	str r0, [sp, #0]
	mov r1, sp
	mov r0, #3
	add r2, r1, #4
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #12]
	mov r0, #6
	str r4, [sp, #16]
	str r5, [sp, #20]
	str r0, [sp, #24]
	mov r0, #5
	str r0, [sp, #28]
	mov r0, #7
	str r0, [sp, #32]
	mov r0, #8
	str r0, [sp, #36]
	cmp r5, #10
	blt label5
	b label33
.p2align 4
label46:
	str r0, [r3, #4]
	add r5, r5, #1
	add r2, r2, #4
	cmp r5, #10
	bge label33
.p2align 4
label5:
	ldr r0, [r2, #0]
	sub r6, r5, #1
	add r3, r1, r6, lsl #2
	cmn r6, #1
	ble label41
.p2align 4
label9:
	ldr r7, [r3, #0]
	cmp r0, r7
	mov r7, #0
	movwlt r7, #1
	cmp r7, #0
	beq label46
.p2align 4
label12:
	ldr r7, [r3, #0]
	sub r6, r6, #1
	cmn r6, #1
	str r7, [r3, #4]
	sub r3, r3, #4
	bgt label9
	movs r7, r4
	bne label12
	str r0, [r3, #4]
	add r5, r5, #1
	add r2, r2, #4
	cmp r5, #10
	blt label5
	b label33
.p2align 4
label41:
	movs r7, r4
	bne label12
	str r0, [r3, #4]
	add r5, r5, #1
	add r2, r2, #4
	cmp r5, #10
	blt label5
label33:
	mov r5, r1
	mov r6, r4
	b label15
.p2align 4
label18:
	add r5, r5, #4
.p2align 4
label15:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	blt label18
	mov r0, r4
	add sp, sp, #44
	pop { r4, r5, r6, r7, pc }
