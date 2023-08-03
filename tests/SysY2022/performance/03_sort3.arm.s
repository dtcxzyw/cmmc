.arch armv7ve
.data
.bss
.align 8
a:
	.zero	120000040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
radixSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #212
	mov r4, #0
	mov r5, r2
	mov r7, r1
	str r0, [sp, #0]
	mov r8, r0
	str r1, [sp, #8]
	add r0, r2, #1
	str r4, [sp, #16]
	add r1, r8, #1
	cmp r3, r0
	str r4, [sp, #20]
	clz r1, r1
	mov r0, #0
	str r4, [sp, #24]
	lsr r1, r1, #5
	movwle r0, #1
	str r4, [sp, #28]
	str r4, [sp, #32]
	orrs r0, r0, r1
	str r4, [sp, #36]
	str r4, [sp, #40]
	str r4, [sp, #44]
	str r4, [sp, #48]
	str r4, [sp, #52]
	str r4, [sp, #56]
	str r4, [sp, #60]
	str r4, [sp, #64]
	str r4, [sp, #68]
	str r4, [sp, #72]
	str r4, [sp, #76]
	str r4, [sp, #80]
	str r4, [sp, #84]
	str r4, [sp, #88]
	str r4, [sp, #92]
	str r4, [sp, #96]
	str r4, [sp, #100]
	str r4, [sp, #104]
	str r4, [sp, #108]
	str r4, [sp, #112]
	str r4, [sp, #116]
	str r4, [sp, #120]
	str r4, [sp, #124]
	str r4, [sp, #128]
	str r4, [sp, #132]
	str r4, [sp, #136]
	str r4, [sp, #140]
	str r4, [sp, #144]
	str r4, [sp, #148]
	str r4, [sp, #152]
	str r4, [sp, #156]
	str r4, [sp, #160]
	str r4, [sp, #164]
	str r4, [sp, #168]
	str r4, [sp, #172]
	str r4, [sp, #176]
	str r4, [sp, #180]
	str r4, [sp, #184]
	str r4, [sp, #188]
	str r4, [sp, #192]
	str r4, [sp, #196]
	str r4, [sp, #200]
	str r4, [sp, #204]
	bne label2
	ldr r8, [sp, #0]
	mov r1, #0
	sub r9, r8, #1
	cmp r8, #8
	lsl r0, r8, #2
	str r9, [sp, #4]
	movwlt r1, #1
	cmp r2, r3
	bge label12
	ldr r7, [sp, #8]
	mov r6, r2
	add r2, r7, r2, lsl #2
	ldr r7, [r2, #0]
	cmp r8, #0
	ble label9
.p2align 4
label8:
	asr r8, r7, #31
	rsb r9, r0, #32
	cmp r1, #0
	add r7, r7, r8, lsr r9
	asr r8, r7, r0
	mov r7, #0
	movne r7, r8
.p2align 4
label9:
	and r7, r7, #15
	add r8, sp, #144
	add r6, r6, #1
	add r7, r8, r7, lsl #2
	cmp r3, r6
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	ble label12
	add r2, r2, #4
	ldr r7, [r2, #0]
	ldr r8, [sp, #0]
	cmp r8, #0
	bgt label8
	b label9
label2:
	add sp, sp, #212
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label35:
	cmp r4, #0
	bgt label37
	ldr r2, [r8, #0]
	ldr r3, [r6, #0]
.p2align 4
label38:
	ldr r7, [sp, #8]
	ldr r9, [sp, #4]
	mov r0, r9
	mov r1, r7
	bl radixSort
	add r5, r5, #4
	add r6, r6, #4
	add r8, r8, #4
	add r4, r4, #1
	cmp r4, #16
	blt label35
	b label2
label12:
	str r5, [sp, #16]
	add r8, sp, #16
	ldr r2, [sp, #144]
	add r2, r5, r2
	str r2, [sp, #80]
	str r2, [sp, #20]
	ldr r3, [sp, #148]
	add r2, r2, r3
	str r2, [sp, #84]
	str r2, [sp, #24]
	ldr r3, [sp, #152]
	add r2, r2, r3
	str r2, [sp, #88]
	str r2, [sp, #28]
	ldr r3, [sp, #156]
	add r2, r2, r3
	str r2, [sp, #92]
	str r2, [sp, #32]
	ldr r3, [sp, #160]
	add r2, r2, r3
	str r2, [sp, #96]
	str r2, [sp, #36]
	ldr r3, [sp, #164]
	add r2, r2, r3
	str r2, [sp, #100]
	str r2, [sp, #40]
	ldr r3, [sp, #168]
	add r2, r2, r3
	str r2, [sp, #104]
	str r2, [sp, #44]
	ldr r3, [sp, #172]
	add r2, r2, r3
	str r2, [sp, #108]
	str r2, [sp, #48]
	ldr r3, [sp, #176]
	add r2, r2, r3
	str r2, [sp, #112]
	str r2, [sp, #52]
	ldr r3, [sp, #180]
	add r2, r2, r3
	str r2, [sp, #116]
	str r2, [sp, #56]
	ldr r3, [sp, #184]
	add r2, r2, r3
	str r2, [sp, #120]
	str r2, [sp, #60]
	ldr r3, [sp, #188]
	add r2, r2, r3
	str r2, [sp, #124]
	str r2, [sp, #64]
	ldr r3, [sp, #192]
	add r2, r2, r3
	str r2, [sp, #128]
	str r2, [sp, #68]
	ldr r3, [sp, #196]
	add r2, r2, r3
	str r2, [sp, #132]
	str r2, [sp, #72]
	ldr r3, [sp, #200]
	add r2, r2, r3
	str r2, [sp, #136]
	str r2, [sp, #76]
	ldr r3, [sp, #204]
	add r2, r2, r3
	mov r3, r8
	str r2, [sp, #140]
	add r2, sp, #80
	mov r6, r2
	mov r2, r4
	cmp r4, #16
	blt label17
label209:
	str r5, [sp, #16]
	add r8, sp, #144
	add r2, sp, #80
	ldr r0, [sp, #144]
	mov r6, r2
	add r0, r5, r0
	mov r5, r8
	str r0, [sp, #80]
	add r8, sp, #16
	b label30
.p2align 4
label17:
	ldr r7, [r3, #0]
	ldr r8, [r6, #0]
	cmp r7, r8
	bge label215
.p2align 4
label20:
	ldr r8, [r3, #0]
	ldr r7, [sp, #8]
	ldr r9, [r7, r8, lsl #2]
	ldr r8, [sp, #0]
	cmp r8, #0
	bgt label27
	b label222
.p2align 4
label25:
	add r8, sp, #16
	add r8, r8, r7, lsl #2
	ldr r10, [r8, #0]
	ldr r7, [sp, #8]
	add r11, r7, r10, lsl #2
	ldr r7, [r11, #0]
	str r9, [r11, #0]
	add r9, r10, #1
	str r9, [r8, #0]
	ldr r8, [sp, #0]
	mov r9, r7
	cmp r8, #0
	bgt label27
	asr r8, r7, #31
	add r8, r7, r8, lsr #28
	asr r8, r8, #4
	sub r7, r7, r8, lsl #4
	cmp r2, r7
	bne label25
	b label351
.p2align 4
label27:
	asr r7, r9, #31
	rsb r8, r0, #32
	cmp r1, #0
	add r7, r9, r7, lsr r8
	mov r8, #0
	asr r7, r7, r0
	movne r8, r7
	mov r7, r8
	asr r8, r8, #31
	add r8, r7, r8, lsr #28
	asr r8, r8, #4
	sub r7, r7, r8, lsl #4
	cmp r2, r7
	bne label25
	ldr r8, [r3, #0]
	ldr r7, [sp, #8]
	str r9, [r7, r8, lsl #2]
	add r7, r8, #1
	str r7, [r3, #0]
	ldr r8, [r6, #0]
	cmp r7, r8
	blt label20
	add r2, r2, #1
	add r3, r3, #4
	add r6, r6, #4
	cmp r2, #16
	blt label17
	b label209
label30:
	cmp r4, #16
	blt label35
	b label2
.p2align 4
label222:
	asr r8, r9, #31
	add r8, r9, r8, lsr #28
	asr r8, r8, #4
	sub r7, r9, r8, lsl #4
	cmp r2, r7
	bne label25
	ldr r8, [r3, #0]
	ldr r7, [sp, #8]
	str r9, [r7, r8, lsl #2]
	add r7, r8, #1
	str r7, [r3, #0]
	ldr r8, [r6, #0]
	cmp r7, r8
	blt label20
label215:
	add r2, r2, #1
	add r3, r3, #4
	add r6, r6, #4
	cmp r2, #16
	blt label17
	b label209
.p2align 4
label351:
	ldr r8, [r3, #0]
	ldr r7, [sp, #8]
	str r9, [r7, r8, lsl #2]
	add r7, r8, #1
	str r7, [r3, #0]
	ldr r8, [r6, #0]
	cmp r7, r8
	blt label20
	b label215
.p2align 4
label37:
	sub r0, r4, #1
	add r2, sp, #80
	ldr r2, [r2, r0, lsl #2]
	str r2, [r8, #0]
	ldr r0, [r5, #0]
	add r3, r2, r0
	str r3, [r6, #0]
	b label38
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	sub sp, sp, #4
	mov r0, r4
	bl getarray
	mov r5, r0
	mov r0, #90
	bl _sysy_starttime
	mov r2, #0
	mov r1, r4
	mov r0, #8
	mov r3, r5
	bl radixSort
	cmp r5, #4
	sub r1, r5, #4
	ble label381
	mov r0, r4
	mov r3, #0
	mov r2, r3
.p2align 4
label369:
	ldr r6, [r0, #0]
	add r7, r3, #3
	ldr r8, [r0, #4]
	sdiv r9, r8, r7
	mls r8, r9, r7, r8
	mla r9, r8, r3, r8
	add r8, r3, #2
	sdiv r10, r6, r8
	mls r6, r10, r8, r6
	ldr r10, [r0, #8]
	mla r9, r3, r6, r9
	add r6, r3, #4
	cmp r1, r6
	add r3, r3, #5
	sdiv r11, r10, r6
	mls r10, r11, r6, r10
	mla r8, r8, r10, r9
	ldr r9, [r0, #12]
	sdiv r10, r9, r3
	mls r3, r10, r3, r9
	mla r3, r7, r3, r8
	add r2, r2, r3
	ble label421
	add r0, r0, #16
	mov r3, r6
	b label369
.p2align 4
label362:
	ldr r0, [r4, #0]
	add r1, r6, #2
	sdiv r3, r0, r1
	mls r0, r3, r1, r0
	mla r2, r6, r0, r2
	add r6, r6, #1
	cmp r5, r6
	ble label367
	add r4, r4, #4
	b label362
label421:
	add r4, r4, r6, lsl #2
	b label362
label367:
	cmp r2, #0
	mov r4, r2
	mov r0, #102
	rsbmi r4, r2, #0
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label381:
	mov r2, #0
	mov r6, r2
	b label362
