.arch armv7ve
.data
.bss
.align 4
a:
	.zero	120000040
.text
.syntax unified
.arm
.fpu vfpv4
radixSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	add r7, r0, #1
	mov r5, r1
	sub sp, sp, #204
	clz r7, r7
	add r1, r2, #1
	add r4, sp, #128
	add r6, sp, #64
	mov r9, sp
	lsr r7, r7, #5
	cmp r3, r1
	str r9, [sp, #192]
	mov r1, #0
	movwle r1, #1
	orrs r1, r1, r7
	mov r1, #0
	str r1, [sp, #128]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #12]
	str r1, [r4, #16]
	str r1, [r4, #20]
	str r1, [r4, #24]
	str r1, [r4, #28]
	str r1, [r4, #32]
	str r1, [r4, #36]
	str r1, [r4, #40]
	str r1, [r4, #44]
	str r1, [r4, #48]
	str r1, [r4, #52]
	str r1, [r4, #56]
	str r1, [r4, #60]
	str r1, [sp, #64]
	str r1, [r6, #4]
	str r1, [r6, #8]
	str r1, [r6, #12]
	str r1, [r6, #16]
	str r1, [r6, #20]
	str r1, [r6, #24]
	str r1, [r6, #28]
	str r1, [r6, #32]
	str r1, [r6, #36]
	str r1, [r6, #40]
	str r1, [r6, #44]
	str r1, [r6, #48]
	str r1, [r6, #52]
	str r1, [r6, #56]
	str r1, [r6, #60]
	str r1, [sp, #0]
	str r1, [r9, #4]
	str r1, [r9, #8]
	str r1, [r9, #12]
	str r1, [r9, #16]
	str r1, [r9, #20]
	str r1, [r9, #24]
	str r1, [r9, #28]
	str r1, [r9, #32]
	str r1, [r9, #36]
	str r1, [r9, #40]
	str r1, [r9, #44]
	str r1, [r9, #48]
	str r1, [r9, #52]
	str r1, [r9, #56]
	str r1, [r9, #60]
	bne label44
	sub r7, r0, #1
	cmp r2, r3
	bge label110
	mov r1, r2
	b label3
label197:
	str r2, [sp, #128]
	mov r8, #0
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
label21:
	cmp r8, #16
	bge label44
	cmp r8, #0
	bgt label208
	b label24
label26:
	ldr r3, [r4, r1, lsl #2]
	b label27
label236:
	add r1, r1, #1
	cmp r1, #16
	blt label26
	b label197
label29:
	ldr r3, [r4, r1, lsl #2]
	ldr r3, [r5, r3, lsl #2]
	b label30
label250:
	ldr r8, [r4, r1, lsl #2]
	str r3, [r5, r8, lsl #2]
	add r3, r8, #1
	str r3, [r4, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	blt label29
	b label236
label36:
	add r9, r10, #4
	cmp r0, r9
	bgt label42
	add r10, r10, #1
	asr r9, r8, #31
	cmp r0, r10
	add r8, r8, r9, lsr #28
	asr r8, r8, #4
	ble label274
label39:
	add r10, r10, #1
	asr r9, r8, #31
	cmp r0, r10
	add r8, r8, r9, lsr #28
	asr r8, r8, #4
	bgt label39
label274:
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	bne label34
	b label250
label42:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	b label36
label44:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label30:
	cmp r0, #0
	bgt label246
	mov r8, r3
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r8, r3, r9, lsl #4
	cmp r1, r8
	bne label34
	b label250
label246:
	mov r10, #0
	mov r8, r3
	b label36
label34:
	ldr r10, [r4, r8, lsl #2]
	ldr r9, [r5, r10, lsl #2]
	str r3, [r5, r10, lsl #2]
	add r3, r10, #1
	str r3, [r4, r8, lsl #2]
	mov r3, r9
	b label30
label27:
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	blt label29
	b label236
label3:
	ldr r8, [r5, r1, lsl #2]
	cmp r0, #0
	bgt label117
	and r8, r8, #15
	ldr r9, [sp, #192]
	add r1, r1, #1
	cmp r3, r1
	ldr r10, [r9, r8, lsl #2]
	add r10, r10, #1
	str r10, [r9, r8, lsl #2]
	bgt label3
	b label110
label117:
	mov r10, #0
label5:
	add r9, r10, #4
	cmp r0, r9
	bgt label8
	add r10, r10, #1
	asr r9, r8, #31
	cmp r0, r10
	add r8, r8, r9, lsr #28
	asr r8, r8, #4
	bgt label9
	b label128
label8:
	asr r10, r8, #31
	add r8, r8, r10, lsr #16
	mov r10, r9
	asr r8, r8, #16
	b label5
label9:
	add r10, r10, #1
	asr r9, r8, #31
	cmp r0, r10
	add r8, r8, r9, lsr #28
	asr r8, r8, #4
	bgt label9
label128:
	and r8, r8, #15
	ldr r9, [sp, #192]
	add r1, r1, #1
	cmp r3, r1
	ldr r10, [r9, r8, lsl #2]
	add r10, r10, #1
	str r10, [r9, r8, lsl #2]
	bgt label3
label110:
	str r2, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #64]
	mov r1, #1
label15:
	sub r3, r1, #1
	ldr r10, [r6, r3, lsl #2]
	add r3, r4, r1, lsl #2
	str r10, [r4, r1, lsl #2]
	ldr r9, [sp, #192]
	add r8, r9, r1, lsl #2
	ldr r9, [r9, r1, lsl #2]
	add r10, r10, r9
	str r10, [r6, r1, lsl #2]
	add r9, r6, r1, lsl #2
	str r10, [r3, #4]
	ldr r11, [r8, #4]
	add r10, r10, r11
	str r10, [r9, #4]
	str r10, [r3, #8]
	ldr r11, [r8, #8]
	add r10, r10, r11
	str r10, [r9, #8]
	str r10, [r3, #12]
	ldr r3, [r8, #12]
	add r3, r10, r3
	str r3, [r9, #12]
	add r3, r1, #4
	cmp r3, #13
	bge label17
	mov r1, r3
	b label15
label17:
	add r8, r1, #3
	ldr r11, [r6, r8, lsl #2]
	add r1, r6, r8, lsl #2
	add r8, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	ldr r9, [sp, #192]
	add r10, r9, r3, lsl #2
	ldr r3, [r9, r3, lsl #2]
	add r3, r11, r3
	str r3, [r1, #4]
	str r3, [r8, #4]
	ldr r9, [r10, #4]
	add r3, r3, r9
	str r3, [r1, #8]
	str r3, [r8, #8]
	ldr r8, [r10, #8]
	add r3, r3, r8
	str r3, [r1, #12]
	mov r1, #0
	b label18
label208:
	sub r0, r8, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r4, r8, lsl #2]
	ldr r9, [sp, #192]
	ldr r1, [r9, r8, lsl #2]
	add r0, r0, r1
	str r0, [r6, r8, lsl #2]
label24:
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	b label21
label18:
	cmp r1, #16
	blt label26
	b label197
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r6, #:lower16:a
	sub sp, sp, #4
	movt r6, #:upper16:a
	mov r0, r6
	mov r4, r6
	bl getarray
	mov r5, r0
	mov r0, #90
	bl _sysy_starttime
	mov r2, #0
	mov r1, r6
	mov r0, #8
	mov r3, r5
	bl radixSort
	cmp r5, #0
	bgt label368
	mov r4, #0
	b label361
label368:
	mov r2, #0
	mov r0, r2
label354:
	add r1, r0, #4
	cmp r5, r1
	bgt label357
	ldr r1, [r4, r0, lsl #2]
	add r3, r0, #2
	sdiv r6, r1, r3
	mls r1, r6, r3, r1
	mla r2, r0, r1, r2
	add r0, r0, #1
	cmp r5, r0
	bgt label358
	b label409
label357:
	add r6, r4, r0, lsl #2
	ldr r8, [r4, r0, lsl #2]
	add r3, r0, #3
	add r10, r0, #1
	ldr r7, [r6, #4]
	sdiv r9, r7, r3
	mls r9, r9, r3, r7
	add r7, r0, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r2, r0, r8, r2
	add r0, r0, #5
	ldr r8, [r6, #8]
	mla r2, r9, r10, r2
	ldr r6, [r6, #12]
	sdiv r9, r8, r1
	mls r8, r9, r1, r8
	mla r2, r7, r8, r2
	sdiv r7, r6, r0
	mls r0, r7, r0, r6
	mla r2, r3, r0, r2
	mov r0, r1
	b label354
label358:
	ldr r1, [r4, r0, lsl #2]
	add r3, r0, #2
	sdiv r6, r1, r3
	mls r1, r6, r3, r1
	mla r2, r0, r1, r2
	add r0, r0, #1
	cmp r5, r0
	bgt label358
label409:
	mov r4, r2
label361:
	mov r0, #102
	bl _sysy_stoptime
	movs r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
