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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r4, r0
	mov r6, r1
	sub sp, sp, #204
	mov r9, r2
	add r1, r0, #1
	add r5, sp, #128
	add r7, sp, #64
	add r0, r2, #1
	mov r2, sp
	clz r1, r1
	cmp r3, r0
	str r2, [sp, #192]
	lsr r1, r1, #5
	mov r0, #0
	movwle r0, #1
	orrs r0, r0, r1
	mov r0, #0
	str r0, [sp, #128]
	str r0, [r5, #4]
	str r0, [r5, #8]
	str r0, [r5, #12]
	str r0, [r5, #16]
	str r0, [r5, #20]
	str r0, [r5, #24]
	str r0, [r5, #28]
	str r0, [r5, #32]
	str r0, [r5, #36]
	str r0, [r5, #40]
	str r0, [r5, #44]
	str r0, [r5, #48]
	str r0, [r5, #52]
	str r0, [r5, #56]
	str r0, [r5, #60]
	str r0, [sp, #64]
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r0, [r7, #12]
	str r0, [r7, #16]
	str r0, [r7, #20]
	str r0, [r7, #24]
	str r0, [r7, #28]
	str r0, [r7, #32]
	str r0, [r7, #36]
	str r0, [r7, #40]
	str r0, [r7, #44]
	str r0, [r7, #48]
	str r0, [r7, #52]
	str r0, [r7, #56]
	str r0, [r7, #60]
	str r0, [sp, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #12]
	str r0, [r2, #16]
	str r0, [r2, #20]
	str r0, [r2, #24]
	str r0, [r2, #28]
	str r0, [r2, #32]
	str r0, [r2, #36]
	str r0, [r2, #40]
	str r0, [r2, #44]
	str r0, [r2, #48]
	str r0, [r2, #52]
	str r0, [r2, #56]
	str r0, [r2, #60]
	bne label2
	sub r0, r4, #4
	sub r8, r4, #1
	cmp r9, r3
	bge label4
	mov r1, r9
	b label31
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label7:
	ldr r1, [r5, r2, lsl #2]
	ldr r3, [r7, r2, lsl #2]
	cmp r1, r3
	blt label11
	add r2, r2, #1
	cmp r2, #16
	blt label7
	str r9, [sp, #128]
	mov r4, #0
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #64]
	cmp r4, #16
	blt label28
	b label2
.p2align 4
label17:
	ldr r11, [r5, r3, lsl #2]
	ldr r10, [r6, r11, lsl #2]
	str r1, [r6, r11, lsl #2]
	add r1, r11, #1
	str r1, [r5, r3, lsl #2]
	mov r1, r10
	cmp r4, #0
	bgt label18
	asr r3, r10, #31
	add r3, r10, r3, lsr #28
	asr r3, r3, #4
	sub r3, r10, r3, lsl #4
	cmp r2, r3
	bne label17
	ldr r3, [r5, r2, lsl #2]
	str r10, [r6, r3, lsl #2]
	add r1, r3, #1
	str r1, [r5, r2, lsl #2]
	ldr r3, [r7, r2, lsl #2]
	cmp r1, r3
	blt label11
	add r2, r2, #1
	cmp r2, #16
	blt label7
	str r9, [sp, #128]
	mov r4, #0
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #64]
	cmp r4, #16
	blt label28
	b label2
.p2align 4
label232:
	mov r10, r1
	mov r3, #0
.p2align 4
label19:
	add r3, r3, #4
	asr r11, r10, #31
	cmp r0, r3
	add r10, r10, r11, lsr #16
	asr r10, r10, #16
	bgt label19
	add r3, r3, #1
	asr r11, r10, #31
	cmp r4, r3
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	bgt label22
	asr r3, r10, #31
	add r3, r10, r3, lsr #28
	asr r3, r3, #4
	sub r3, r10, r3, lsl #4
	cmp r2, r3
	bne label17
	ldr r3, [r5, r2, lsl #2]
	str r1, [r6, r3, lsl #2]
	add r1, r3, #1
	str r1, [r5, r2, lsl #2]
	ldr r3, [r7, r2, lsl #2]
	cmp r1, r3
	blt label11
	add r2, r2, #1
	cmp r2, #16
	blt label7
	str r9, [sp, #128]
	mov r4, #0
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #64]
	cmp r4, #16
	blt label28
	b label2
.p2align 4
label22:
	add r3, r3, #1
	asr r11, r10, #31
	cmp r4, r3
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	bgt label22
	asr r3, r10, #31
	add r3, r10, r3, lsr #28
	asr r3, r3, #4
	sub r3, r10, r3, lsl #4
	cmp r2, r3
	bne label17
	ldr r3, [r5, r2, lsl #2]
	str r1, [r6, r3, lsl #2]
	add r1, r3, #1
	str r1, [r5, r2, lsl #2]
	ldr r3, [r7, r2, lsl #2]
	cmp r1, r3
	blt label11
	add r2, r2, #1
	cmp r2, #16
	blt label7
	str r9, [sp, #128]
	mov r4, #0
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #64]
	cmp r4, #16
	blt label28
	b label2
.p2align 4
label11:
	ldr r1, [r5, r2, lsl #2]
	ldr r1, [r6, r1, lsl #2]
	cmp r4, #0
	bgt label18
	mov r10, r1
	asr r3, r1, #31
	add r3, r1, r3, lsr #28
	asr r3, r3, #4
	sub r3, r1, r3, lsl #4
	cmp r2, r3
	bne label17
	ldr r3, [r5, r2, lsl #2]
	str r1, [r6, r3, lsl #2]
	add r1, r3, #1
	str r1, [r5, r2, lsl #2]
	ldr r3, [r7, r2, lsl #2]
	cmp r1, r3
	blt label11
	add r2, r2, #1
	cmp r2, #16
	blt label7
	str r9, [sp, #128]
	mov r4, #0
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #64]
	cmp r4, #16
	blt label28
	b label2
.p2align 4
label18:
	cmp r4, #4
	bgt label232
	mov r3, #0
	mov r10, r1
	add r3, r3, #1
	asr r11, r1, #31
	cmp r4, r3
	add r10, r1, r11, lsr #28
	asr r10, r10, #4
	bgt label22
	asr r3, r10, #31
	add r3, r10, r3, lsr #28
	asr r3, r3, #4
	sub r3, r10, r3, lsl #4
	cmp r2, r3
	bne label17
	ldr r3, [r5, r2, lsl #2]
	str r1, [r6, r3, lsl #2]
	add r1, r3, #1
	str r1, [r5, r2, lsl #2]
	ldr r3, [r7, r2, lsl #2]
	cmp r1, r3
	blt label11
	add r2, r2, #1
	cmp r2, #16
	blt label7
	str r9, [sp, #128]
	mov r4, #0
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #64]
	cmp r4, #16
	blt label28
	b label2
label4:
	str r9, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r9, r1
	str r1, [sp, #64]
	str r1, [r5, #4]
	ldr r2, [sp, #192]
	ldr r3, [r2, #4]
	add r1, r1, r3
	str r1, [r7, #4]
	str r1, [r5, #8]
	ldr r3, [r2, #8]
	add r1, r1, r3
	str r1, [r7, #8]
	str r1, [r5, #12]
	ldr r3, [r2, #12]
	add r1, r1, r3
	str r1, [r7, #12]
	str r1, [r5, #16]
	ldr r3, [r2, #16]
	add r1, r1, r3
	str r1, [r7, #16]
	str r1, [r5, #20]
	ldr r3, [r2, #20]
	add r1, r1, r3
	str r1, [r7, #20]
	str r1, [r5, #24]
	ldr r3, [r2, #24]
	add r1, r1, r3
	str r1, [r7, #24]
	str r1, [r5, #28]
	ldr r3, [r2, #28]
	add r1, r1, r3
	str r1, [r7, #28]
	str r1, [r5, #32]
	ldr r3, [r2, #32]
	add r1, r1, r3
	str r1, [r7, #32]
	str r1, [r5, #36]
	ldr r3, [r2, #36]
	add r1, r1, r3
	str r1, [r7, #36]
	str r1, [r5, #40]
	ldr r3, [r2, #40]
	add r1, r1, r3
	str r1, [r7, #40]
	str r1, [r5, #44]
	ldr r3, [r2, #44]
	add r1, r1, r3
	str r1, [r7, #44]
	str r1, [r5, #48]
	ldr r3, [r2, #48]
	add r1, r1, r3
	str r1, [r7, #48]
	str r1, [r5, #52]
	ldr r3, [r2, #52]
	add r1, r1, r3
	str r1, [r7, #52]
	str r1, [r5, #56]
	ldr r3, [r2, #56]
	add r1, r1, r3
	str r1, [r7, #56]
	str r1, [r5, #60]
	ldr r2, [r2, #60]
	add r1, r1, r2
	mov r2, #0
	str r1, [r7, #60]
	cmp r2, #16
	blt label7
	str r9, [sp, #128]
	mov r4, #0
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #64]
	cmp r4, #16
	blt label28
	b label2
.p2align 4
label33:
	cmp r4, #4
	bgt label282
	mov r2, #0
	add r2, r2, #1
	asr r11, r10, #31
	cmp r4, r2
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	bgt label37
	and r10, r10, #15
	ldr r2, [sp, #192]
	add r1, r1, #1
	cmp r3, r1
	ldr r11, [r2, r10, lsl #2]
	add r11, r11, #1
	str r11, [r2, r10, lsl #2]
	bgt label31
	b label4
.p2align 4
label282:
	mov r2, #0
.p2align 4
label34:
	add r2, r2, #4
	asr r11, r10, #31
	cmp r0, r2
	add r10, r10, r11, lsr #16
	asr r10, r10, #16
	bgt label34
	add r2, r2, #1
	asr r11, r10, #31
	cmp r4, r2
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	bgt label37
	and r10, r10, #15
	ldr r2, [sp, #192]
	add r1, r1, #1
	cmp r3, r1
	ldr r11, [r2, r10, lsl #2]
	add r11, r11, #1
	str r11, [r2, r10, lsl #2]
	bgt label31
	b label4
.p2align 4
label37:
	add r2, r2, #1
	asr r11, r10, #31
	cmp r4, r2
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	bgt label37
	and r10, r10, #15
	ldr r2, [sp, #192]
	add r1, r1, #1
	cmp r3, r1
	ldr r11, [r2, r10, lsl #2]
	add r11, r11, #1
	str r11, [r2, r10, lsl #2]
	ble label4
.p2align 4
label31:
	ldr r10, [r6, r1, lsl #2]
	cmp r4, #0
	bgt label33
	and r10, r10, #15
	ldr r2, [sp, #192]
	add r1, r1, #1
	cmp r3, r1
	ldr r11, [r2, r10, lsl #2]
	add r11, r11, #1
	str r11, [r2, r10, lsl #2]
	bgt label31
	b label4
.p2align 4
label28:
	cmp r4, #0
	ble label29
	sub r0, r4, #1
	ldr r0, [r7, r0, lsl #2]
	str r0, [r5, r4, lsl #2]
	ldr r2, [sp, #192]
	ldr r1, [r2, r4, lsl #2]
	add r0, r0, r1
	str r0, [r7, r4, lsl #2]
.p2align 4
label29:
	ldr r2, [r5, r4, lsl #2]
	ldr r3, [r7, r4, lsl #2]
	mov r0, r8
	mov r1, r6
	bl radixSort
	add r4, r4, #1
	cmp r4, #16
	blt label28
	b label2
.globl main
main:
.p2align 4
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
	sub r2, r5, #4
	bgt label456
	mov r4, #0
	b label463
label456:
	cmp r5, #4
	bgt label475
	mov r0, #0
	mov r3, r0
	b label460
label475:
	mov r1, #0
	mov r0, r1
label457:
	add r7, r4, r1, lsl #2
	ldr r3, [r4, r1, lsl #2]
	add r6, r1, #3
	ldr r8, [r7, #4]
	sdiv r9, r8, r6
	mls r8, r9, r6, r8
	mla r9, r8, r1, r8
	add r8, r1, #2
	sdiv r10, r3, r8
	mls r3, r10, r8, r3
	ldr r10, [r7, #8]
	ldr r7, [r7, #12]
	mla r9, r1, r3, r9
	add r3, r1, #4
	cmp r2, r3
	add r1, r1, #5
	sdiv r11, r10, r3
	mls r10, r11, r3, r10
	mla r8, r8, r10, r9
	sdiv r9, r7, r1
	mls r1, r9, r1, r7
	mla r1, r6, r1, r8
	add r0, r0, r1
	ble label460
	mov r1, r3
	b label457
label460:
	ldr r1, [r4, r3, lsl #2]
	add r2, r3, #2
	sdiv r6, r1, r2
	mls r1, r6, r2, r1
	mla r0, r3, r1, r0
	add r3, r3, #1
	cmp r5, r3
	bgt label460
	mov r4, r0
label463:
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
