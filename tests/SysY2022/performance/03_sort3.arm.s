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
	mov r5, r1
	sub sp, sp, #204
	mov r8, r2
	add r4, sp, #128
	add r6, sp, #64
	add r1, r2, #1
	mov r2, sp
	cmp r3, r1
	str r2, [sp, #192]
	mov r1, #0
	add r2, r0, #1
	movwle r1, #1
	clz r2, r2
	lsr r2, r2, #5
	orrs r1, r1, r2
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
	ldr r2, [sp, #192]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #12]
	str r1, [r2, #16]
	str r1, [r2, #20]
	str r1, [r2, #24]
	str r1, [r2, #28]
	str r1, [r2, #32]
	str r1, [r2, #36]
	str r1, [r2, #40]
	str r1, [r2, #44]
	str r1, [r2, #48]
	str r1, [r2, #52]
	str r1, [r2, #56]
	str r1, [r2, #60]
	bne label41
	sub r7, r0, #1
	cmp r8, r3
	bge label14
	mov r1, r8
	b label3
.p2align 4
label17:
	ldr r1, [r4, r2, lsl #2]
	ldr r3, [r6, r2, lsl #2]
	cmp r1, r3
	blt label20
	add r2, r2, #1
	cmp r2, #16
	blt label17
	str r8, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r8, r0
	mov r8, #0
	str r0, [sp, #64]
	cmp r8, #16
	blt label38
	b label41
.p2align 4
label20:
	ldr r1, [r4, r2, lsl #2]
	ldr r1, [r5, r1, lsl #2]
	cmp r0, #0
	bgt label23
	mov r10, r1
	asr r3, r1, #31
	add r3, r1, r3, lsr #28
	asr r3, r3, #4
	sub r3, r1, r3, lsl #4
	cmp r2, r3
	bne label32
	ldr r3, [r4, r2, lsl #2]
	str r1, [r5, r3, lsl #2]
	add r1, r3, #1
	str r1, [r4, r2, lsl #2]
	ldr r3, [r6, r2, lsl #2]
	cmp r1, r3
	blt label20
	add r2, r2, #1
	cmp r2, #16
	blt label17
	str r8, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r8, r0
	mov r8, #0
	str r0, [sp, #64]
	cmp r8, #16
	blt label38
	b label41
.p2align 4
label23:
	cmp r0, #4
	bgt label244
	mov r3, #0
	mov r10, r1
	add r3, r3, #1
	asr r9, r1, #31
	cmp r0, r3
	add r9, r1, r9, lsr #28
	asr r10, r9, #4
	bgt label24
	asr r3, r10, #31
	add r3, r10, r3, lsr #28
	asr r3, r3, #4
	sub r3, r10, r3, lsl #4
	cmp r2, r3
	bne label32
	ldr r3, [r4, r2, lsl #2]
	str r1, [r5, r3, lsl #2]
	add r1, r3, #1
	str r1, [r4, r2, lsl #2]
	ldr r3, [r6, r2, lsl #2]
	cmp r1, r3
	blt label20
	add r2, r2, #1
	cmp r2, #16
	blt label17
	str r8, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r8, r0
	mov r8, #0
	str r0, [sp, #64]
	cmp r8, #16
	blt label38
	b label41
.p2align 4
label244:
	mov r10, r1
	mov r3, #0
	add r9, r3, #8
	asr r11, r1, #31
	cmp r0, r9
	add r3, r3, #4
	add r10, r1, r11, lsr #16
	asr r10, r10, #16
	bgt label27
	add r3, r3, #1
	asr r9, r10, #31
	cmp r0, r3
	add r9, r10, r9, lsr #28
	asr r10, r9, #4
	bgt label24
	asr r3, r10, #31
	add r3, r10, r3, lsr #28
	asr r3, r3, #4
	sub r3, r10, r3, lsl #4
	cmp r2, r3
	bne label32
	ldr r3, [r4, r2, lsl #2]
	str r1, [r5, r3, lsl #2]
	add r1, r3, #1
	str r1, [r4, r2, lsl #2]
	ldr r3, [r6, r2, lsl #2]
	cmp r1, r3
	blt label20
	add r2, r2, #1
	cmp r2, #16
	blt label17
	str r8, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r8, r0
	mov r8, #0
	str r0, [sp, #64]
	cmp r8, #16
	blt label38
	b label41
.p2align 4
label24:
	add r3, r3, #1
	asr r9, r10, #31
	cmp r0, r3
	add r9, r10, r9, lsr #28
	asr r10, r9, #4
	bgt label24
	asr r3, r10, #31
	add r3, r10, r3, lsr #28
	asr r3, r3, #4
	sub r3, r10, r3, lsl #4
	cmp r2, r3
	bne label32
	ldr r3, [r4, r2, lsl #2]
	str r1, [r5, r3, lsl #2]
	add r1, r3, #1
	str r1, [r4, r2, lsl #2]
	ldr r3, [r6, r2, lsl #2]
	cmp r1, r3
	blt label20
	add r2, r2, #1
	cmp r2, #16
	blt label17
	str r8, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r8, r0
	mov r8, #0
	str r0, [sp, #64]
	cmp r8, #16
	blt label38
	b label41
.p2align 4
label27:
	add r9, r3, #8
	asr r11, r10, #31
	cmp r0, r9
	add r3, r3, #4
	add r10, r10, r11, lsr #16
	asr r10, r10, #16
	bgt label27
	add r3, r3, #1
	asr r9, r10, #31
	cmp r0, r3
	add r9, r10, r9, lsr #28
	asr r10, r9, #4
	bgt label24
	asr r3, r10, #31
	add r3, r10, r3, lsr #28
	asr r3, r3, #4
	sub r3, r10, r3, lsl #4
	cmp r2, r3
	bne label32
	ldr r3, [r4, r2, lsl #2]
	str r1, [r5, r3, lsl #2]
	add r1, r3, #1
	str r1, [r4, r2, lsl #2]
	ldr r3, [r6, r2, lsl #2]
	cmp r1, r3
	blt label20
	add r2, r2, #1
	cmp r2, #16
	blt label17
	str r8, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r8, r0
	mov r8, #0
	str r0, [sp, #64]
	cmp r8, #16
	blt label38
	b label41
.p2align 4
label32:
	ldr r10, [r4, r3, lsl #2]
	ldr r9, [r5, r10, lsl #2]
	str r1, [r5, r10, lsl #2]
	add r1, r10, #1
	str r1, [r4, r3, lsl #2]
	mov r1, r9
	cmp r0, #0
	bgt label23
	mov r10, r9
	asr r3, r9, #31
	add r3, r9, r3, lsr #28
	asr r3, r3, #4
	sub r3, r9, r3, lsl #4
	cmp r2, r3
	bne label32
	ldr r3, [r4, r2, lsl #2]
	str r9, [r5, r3, lsl #2]
	add r1, r3, #1
	str r1, [r4, r2, lsl #2]
	ldr r3, [r6, r2, lsl #2]
	cmp r1, r3
	blt label20
	add r2, r2, #1
	cmp r2, #16
	blt label17
	str r8, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r8, r0
	mov r8, #0
	str r0, [sp, #64]
	cmp r8, #16
	blt label38
label41:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label3:
	ldr r9, [r5, r1, lsl #2]
	cmp r0, #0
	bgt label7
	and r9, r9, #15
	ldr r2, [sp, #192]
	add r1, r1, #1
	cmp r3, r1
	ldr r10, [r2, r9, lsl #2]
	add r10, r10, #1
	str r10, [r2, r9, lsl #2]
	bgt label3
	b label14
.p2align 4
label7:
	cmp r0, #4
	bgt label128
	mov r2, #0
	add r2, r2, #1
	asr r10, r9, #31
	cmp r0, r2
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	bgt label11
	and r9, r9, #15
	ldr r2, [sp, #192]
	add r1, r1, #1
	cmp r3, r1
	ldr r10, [r2, r9, lsl #2]
	add r10, r10, #1
	str r10, [r2, r9, lsl #2]
	bgt label3
	b label14
.p2align 4
label128:
	mov r2, #0
.p2align 4
label8:
	add r10, r2, #8
	asr r11, r9, #31
	cmp r0, r10
	add r2, r2, #4
	add r9, r9, r11, lsr #16
	asr r9, r9, #16
	bgt label8
	add r2, r2, #1
	asr r10, r9, #31
	cmp r0, r2
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	bgt label11
	and r9, r9, #15
	ldr r2, [sp, #192]
	add r1, r1, #1
	cmp r3, r1
	ldr r10, [r2, r9, lsl #2]
	add r10, r10, #1
	str r10, [r2, r9, lsl #2]
	bgt label3
	b label14
.p2align 4
label11:
	add r2, r2, #1
	asr r10, r9, #31
	cmp r0, r2
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	bgt label11
	and r9, r9, #15
	ldr r2, [sp, #192]
	add r1, r1, #1
	cmp r3, r1
	ldr r10, [r2, r9, lsl #2]
	add r10, r10, #1
	str r10, [r2, r9, lsl #2]
	bgt label3
label14:
	str r8, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r8, r1
	str r1, [sp, #64]
	str r1, [r4, #4]
	ldr r2, [sp, #192]
	ldr r3, [r2, #4]
	add r1, r1, r3
	str r1, [r6, #4]
	str r1, [r4, #8]
	ldr r3, [r2, #8]
	add r1, r1, r3
	str r1, [r6, #8]
	str r1, [r4, #12]
	ldr r3, [r2, #12]
	add r1, r1, r3
	str r1, [r6, #12]
	str r1, [r4, #16]
	ldr r3, [r2, #16]
	add r1, r1, r3
	str r1, [r6, #16]
	str r1, [r4, #20]
	ldr r3, [r2, #20]
	add r1, r1, r3
	str r1, [r6, #20]
	str r1, [r4, #24]
	ldr r3, [r2, #24]
	add r1, r1, r3
	str r1, [r6, #24]
	str r1, [r4, #28]
	ldr r3, [r2, #28]
	add r1, r1, r3
	str r1, [r6, #28]
	str r1, [r4, #32]
	ldr r3, [r2, #32]
	add r1, r1, r3
	str r1, [r6, #32]
	str r1, [r4, #36]
	ldr r3, [r2, #36]
	add r1, r1, r3
	str r1, [r6, #36]
	str r1, [r4, #40]
	ldr r3, [r2, #40]
	add r1, r1, r3
	str r1, [r6, #40]
	str r1, [r4, #44]
	ldr r3, [r2, #44]
	add r1, r1, r3
	str r1, [r6, #44]
	str r1, [r4, #48]
	ldr r3, [r2, #48]
	add r1, r1, r3
	str r1, [r6, #48]
	str r1, [r4, #52]
	ldr r3, [r2, #52]
	add r1, r1, r3
	str r1, [r6, #52]
	str r1, [r4, #56]
	ldr r3, [r2, #56]
	add r1, r1, r3
	str r1, [r6, #56]
	str r1, [r4, #60]
	ldr r2, [r2, #60]
	add r1, r1, r2
	mov r2, #0
	str r1, [r6, #60]
	cmp r2, #16
	blt label17
	str r8, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r8, r0
	mov r8, #0
	str r0, [sp, #64]
	cmp r8, #16
	bge label41
.p2align 4
label38:
	cmp r8, #0
	ble label39
	sub r0, r8, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r4, r8, lsl #2]
	ldr r2, [sp, #192]
	ldr r1, [r2, r8, lsl #2]
	add r0, r0, r1
	str r0, [r6, r8, lsl #2]
.p2align 4
label39:
	ldr r2, [r4, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r7
	mov r1, r5
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	blt label38
	b label41
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r6, #:lower16:a
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
	bgt label450
	mov r4, #0
	b label457
label450:
	cmp r5, #4
	bgt label468
	mov r0, #0
	mov r2, r0
	b label454
label468:
	mov r0, #0
	mov r1, r0
label451:
	add r6, r4, r0, lsl #2
	ldr r2, [r4, r0, lsl #2]
	add r3, r0, #3
	ldr r7, [r6, #4]
	sdiv r8, r7, r3
	mls r7, r8, r3, r7
	mla r8, r7, r0, r7
	add r7, r0, #2
	sdiv r9, r2, r7
	mls r2, r9, r7, r2
	ldr r9, [r6, #8]
	ldr r6, [r6, #12]
	mla r8, r0, r2, r8
	add r2, r0, #4
	sdiv r10, r9, r2
	mls r9, r10, r2, r9
	mla r7, r7, r9, r8
	add r8, r0, #5
	add r0, r0, #8
	sdiv r9, r6, r8
	cmp r5, r0
	mls r6, r9, r8, r6
	mla r3, r3, r6, r7
	add r1, r1, r3
	bgt label499
	mov r0, r1
	b label454
label499:
	mov r0, r2
	b label451
label454:
	ldr r1, [r4, r2, lsl #2]
	add r3, r2, #2
	sdiv r6, r1, r3
	mls r1, r6, r3, r1
	mla r0, r2, r1, r0
	add r2, r2, #1
	cmp r5, r2
	bgt label454
	mov r4, r0
label457:
	mov r0, #102
	bl _sysy_stoptime
	movs r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
