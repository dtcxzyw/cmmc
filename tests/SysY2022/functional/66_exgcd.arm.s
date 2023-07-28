.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
exgcd:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	mov r6, r3
	mov r7, r2
	movs r5, r1
	mov r4, r0
	bne label5
	mov r0, #1
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r3, #0]
	mov r0, r4
label3:
	pop { r4, r5, r6, r7, r8, pc }
label5:
	sdiv r0, r4, r5
	mls r8, r0, r5, r4
	cmp r8, #0
	bne label9
	mov r0, #1
	str r0, [r7, #0]
	mov r0, #0
	str r0, [r6, #0]
	mov r0, r5
	ldr r1, [r7, #0]
	ldr r2, [r6, #0]
	str r2, [r7, #0]
	ldr r3, [r6, #0]
	sdiv r2, r4, r5
	mls r1, r2, r3, r1
	str r1, [r6, #0]
	b label3
label9:
	sdiv r0, r5, r8
	mls r1, r0, r8, r5
	mov r0, r8
	mov r2, r7
	mov r3, r6
	bl exgcd
	ldr r1, [r7, #0]
	ldr r2, [r6, #0]
	str r2, [r7, #0]
	ldr r3, [r6, #0]
	sdiv r2, r5, r8
	mls r1, r2, r3, r1
	str r1, [r6, #0]
	ldr r1, [r7, #0]
	ldr r2, [r6, #0]
	str r2, [r7, #0]
	ldr r3, [r6, #0]
	sdiv r2, r4, r5
	mls r1, r2, r3, r1
	str r1, [r6, #0]
	b label3
.globl main
main:
.p2align 4
	push { lr }
	mov r1, #15
	mov r0, #1
	sub sp, sp, #12
	str r0, [sp, #0]
	add r3, sp, #4
	mov r2, sp
	str r0, [sp, #4]
	mov r0, #7
	bl exgcd
	movw r2, #34953
	mov r1, #15
	ldr r0, [sp, #0]
	movt r2, #34952
	smmla r2, r0, r2, r0
	asr r3, r2, #3
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	cmp r0, #0
	add r1, r0, #15
	movlt r0, r1
	bl putint
	add sp, sp, #12
	mov r0, #0
	pop { pc }
