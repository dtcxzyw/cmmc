.arch armv7ve
.data
.bss
.align 4
b:
	.zero	12508
.align 4
a:
	.zero	16348
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #0
	movw r7, #:lower16:a
	sub sp, sp, #4
	movt r7, #:upper16:a
.p2align 4
label2:
	add r1, r7, r0, lsl #2
	mov r2, #0
	str r2, [r7, r0, lsl #2]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	movw r2, #4087
	add r1, r0, #8
	cmp r1, r2
	add r0, r0, #4
	blt label2
	mov r1, #0
	str r1, [r7, r0, lsl #2]
	movw r1, #4087
	add r0, r0, #1
	cmp r0, r1
	blt label4
label221:
	movw r0, #:lower16:b
	mov r1, #0
	movt r0, #:upper16:b
	b label7
label4:
	mov r1, #0
	str r1, [r7, r0, lsl #2]
	movw r1, #4087
	add r0, r0, #1
	cmp r0, r1
	blt label4
	b label221
.p2align 4
label7:
	add r2, r0, r1, lsl #2
	mov r3, #0
	str r3, [r0, r1, lsl #2]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	movw r3, #3127
	add r2, r1, #8
	cmp r2, r3
	add r1, r1, #4
	blt label7
	mov r2, #0
	str r2, [r0, r1, lsl #2]
	movw r2, #3127
	add r1, r1, #1
	cmp r1, r2
	bge label11
label9:
	mov r2, #0
	str r2, [r0, r1, lsl #2]
	movw r2, #3127
	add r1, r1, #1
	cmp r1, r2
	blt label9
label11:
	movw r1, #4584
	mov r10, #0
	add r2, r7, r1
	mov r1, #9
	str r1, [r2, #0]
	mov r2, #1
	str r2, [r0, #1420]
	mov r2, #2
	str r2, [r0, #1424]
	mov r2, #3
	str r2, [r0, #1428]
	str r1, [r0, #1452]
	ldr r6, [r0, #1416]
	movw r1, #1416
	add r5, r0, r1
	mov r4, r5
	movw r1, #8040
	add r1, r0, r1
	ldr r8, [r1, #0]
	movw r1, #12108
	add r0, r0, r1
	ldr r9, [r0, #0]
.p2align 4
label12:
	ldr r0, [r4, r10, lsl #2]
	bl putint
	add r10, r10, #1
	cmp r10, #10
	blt label12
	mov r0, #10
	bl putch
	movw r0, #4584
	add r0, r7, r0
	ldr r0, [r0, #0]
	bl putint
	mov r0, #10
	bl putch
	cmp r9, #10
	blt label19
label15:
	add r0, r6, #3
	add r5, r0, r0, lsl #1
	cmn r5, #1
	bgt label17
	b label16
label19:
	add r0, r9, #4
	cmp r0, #10
	blt label109
	mov r0, r9
	mov r1, r8
	b label20
label109:
	mov r0, r8
	mov r1, r9
	b label23
label20:
	movw r2, #63339
	movw r3, #18373
	movt r2, #1
	movt r3, #36041
	mul r2, r1, r2
	add r1, r1, #7
	smmla r3, r2, r3, r2
	asr r7, r3, #11
	add r3, r7, r3, lsr #31
	movw r7, #3724
	mls r2, r3, r7, r2
	str r2, [r5, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #10
	blt label20
	b label15
label23:
	add r2, r5, r1, lsl #2
	movw r3, #63339
	movw r7, #18373
	movt r3, #1
	movt r7, #36041
	mul r9, r0, r3
	smmla r8, r9, r7, r9
	asr r10, r8, #11
	add r10, r10, r8, lsr #31
	movw r8, #3724
	mls r9, r10, r8, r9
	str r9, [r5, r1, lsl #2]
	add r9, r0, #7
	mul r9, r9, r3
	smmla r10, r9, r7, r9
	asr r11, r10, #11
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	str r9, [r2, #4]
	add r9, r0, #14
	mul r9, r9, r3
	smmla r10, r9, r7, r9
	asr r11, r10, #11
	add r10, r11, r10, lsr #31
	mls r9, r10, r8, r9
	str r9, [r2, #8]
	add r9, r0, #21
	mul r3, r9, r3
	smmla r7, r3, r7, r3
	asr r9, r7, #11
	add r7, r9, r7, lsr #31
	mls r3, r7, r8, r3
	str r3, [r2, #12]
	add r2, r0, #28
	add r3, r1, #8
	cmp r3, #10
	add r1, r1, #4
	blt label142
	mov r0, r1
	mov r1, r2
	b label20
label142:
	mov r0, r2
	b label23
label16:
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label17:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	sub r5, r5, #1
	cmn r5, #1
	bgt label17
	b label16
