.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
exgcd:
	push { r4, r5, r6, r7, r8, lr }
	mov r6, r3
	mov r7, r2
	movs r5, r1
	mov r4, r0
	beq label2
	sdiv r0, r0, r1
	mls r8, r0, r1, r4
	cmp r8, #0
	beq label6
	b label9
label2:
	mov r0, #1
	str r0, [r7, #0]
	mov r0, #0
	str r0, [r6, #0]
	mov r0, r4
label3:
	pop { r4, r5, r6, r7, r8, pc }
label6:
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
	push { r4, lr }
	mov r1, #15
	mov r0, #1
	sub sp, sp, #8
	str r0, [sp, #0]
	add r3, sp, #4
	mov r2, sp
	str r0, [sp, #4]
	mov r0, #7
	bl exgcd
	ldr r2, [sp, #0]
	mov r0, #15
	movw r1, #34953
	movt r1, #34952
	smmla r3, r2, r1, r2
	asr r4, r3, #3
	add r3, r4, r3, lsr #31
	mls r2, r3, r0, r2
	add r2, r2, #15
	smmla r1, r2, r1, r2
	asr r3, r1, #3
	add r1, r3, r1, lsr #31
	mls r0, r1, r0, r2
	bl putint
	add sp, sp, #8
	mov r0, #0
	pop { r4, pc }
