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
	mov r5, #0
	sub sp, sp, #212
	mov r8, r0
	mov r7, r1
	str r2, [sp, #0]
	mov r6, r2
	str r0, [sp, #4]
	add r0, r2, #1
	str r1, [sp, #12]
	add r2, r8, #1
	cmp r3, r0
	str r5, [sp, #16]
	add r1, sp, #16
	clz r2, r2
	str r5, [sp, #20]
	mov r0, #0
	lsr r2, r2, #5
	str r5, [sp, #24]
	movwle r0, #1
	str r5, [sp, #28]
	str r5, [sp, #32]
	orrs r0, r0, r2
	str r5, [sp, #36]
	str r5, [sp, #40]
	str r5, [sp, #44]
	str r5, [sp, #48]
	str r5, [sp, #52]
	str r5, [sp, #56]
	str r5, [sp, #60]
	str r5, [sp, #64]
	str r5, [sp, #68]
	str r5, [sp, #72]
	str r5, [sp, #76]
	str r5, [sp, #80]
	str r5, [sp, #84]
	str r5, [sp, #88]
	str r5, [sp, #92]
	str r5, [sp, #96]
	str r5, [sp, #100]
	str r5, [sp, #104]
	str r5, [sp, #108]
	str r5, [sp, #112]
	str r5, [sp, #116]
	str r5, [sp, #120]
	str r5, [sp, #124]
	str r5, [sp, #128]
	str r5, [sp, #132]
	str r5, [sp, #136]
	str r5, [sp, #140]
	str r5, [sp, #144]
	str r5, [sp, #148]
	str r5, [sp, #152]
	str r5, [sp, #156]
	str r5, [sp, #160]
	str r5, [sp, #164]
	str r5, [sp, #168]
	str r5, [sp, #172]
	str r5, [sp, #176]
	str r5, [sp, #180]
	str r5, [sp, #184]
	str r5, [sp, #188]
	str r5, [sp, #192]
	str r5, [sp, #196]
	str r5, [sp, #200]
	str r5, [sp, #204]
	bne label57
	ldr r8, [sp, #4]
	mov r2, #0
	sub r6, r8, #1
	cmp r8, #8
	lsl r0, r8, #2
	str r6, [sp, #8]
	movwlt r2, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	bge label30
	sub r9, r3, #4
	add r4, r6, #4
	cmp r3, r4
	ble label131
	ldr r7, [sp, #12]
	add r4, r7, r6, lsl #2
	ldr r7, [r4, #0]
	cmp r8, #0
	ble label9
.p2align 4
label8:
	asr r8, r7, #31
	rsb r10, r0, #32
	cmp r2, #0
	add r7, r7, r8, lsr r10
	asr r8, r7, r0
	mov r7, #0
	movne r7, r8
.p2align 4
label9:
	and r8, r7, #15
	add r7, sp, #144
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	ldr r7, [sp, #12]
	add r8, r6, #1
	ldr r7, [r7, r8, lsl #2]
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label12
	asr r8, r7, #31
	rsb r10, r0, #32
	cmp r2, #0
	add r7, r7, r8, lsr r10
	asr r8, r7, r0
	mov r7, #0
	movne r7, r8
.p2align 4
label12:
	and r8, r7, #15
	add r7, sp, #144
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	ldr r7, [sp, #12]
	add r8, r6, #2
	ldr r7, [r7, r8, lsl #2]
	ldr r8, [sp, #4]
	cmp r8, #0
	bgt label21
.p2align 4
label14:
	and r8, r7, #15
	add r7, sp, #144
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	ldr r7, [sp, #12]
	add r8, r6, #3
	ldr r7, [r7, r8, lsl #2]
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label17
	asr r8, r7, #31
	rsb r10, r0, #32
	cmp r2, #0
	add r7, r7, r8, lsr r10
	asr r8, r7, r0
	mov r7, #0
	movne r7, r8
.p2align 4
label17:
	and r8, r7, #15
	add r6, r6, #4
	add r7, sp, #144
	cmp r9, r6
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	ble label19
	add r4, r4, #16
	ldr r7, [r4, #0]
	ldr r8, [sp, #4]
	cmp r8, #0
	bgt label8
	b label9
.p2align 4
label21:
	asr r8, r7, #31
	rsb r10, r0, #32
	cmp r2, #0
	add r7, r7, r8, lsr r10
	asr r8, r7, r0
	mov r7, #0
	movne r7, r8
	b label14
label57:
	add sp, sp, #212
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label19:
	ldr r7, [sp, #12]
	add r4, r7, r6, lsl #2
label22:
	ldr r7, [r4, #0]
	ldr r8, [sp, #4]
	cmp r8, #0
	bgt label28
label25:
	and r8, r7, #15
	add r6, r6, #1
	add r7, sp, #144
	cmp r3, r6
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	ble label30
	add r4, r4, #4
	b label22
label28:
	asr r8, r7, #31
	rsb r9, r0, #32
	cmp r2, #0
	add r7, r7, r8, lsr r9
	asr r8, r7, r0
	mov r7, #0
	movne r7, r8
	b label25
label30:
	ldr r6, [sp, #0]
	str r6, [sp, #16]
	ldr r3, [sp, #144]
	add r3, r6, r3
	add r6, sp, #80
	str r3, [sp, #80]
	str r3, [sp, #20]
	ldr r4, [sp, #148]
	add r3, r3, r4
	str r3, [sp, #84]
	str r3, [sp, #24]
	ldr r4, [sp, #152]
	add r3, r3, r4
	str r3, [sp, #88]
	str r3, [sp, #28]
	ldr r4, [sp, #156]
	add r3, r3, r4
	str r3, [sp, #92]
	str r3, [sp, #32]
	ldr r4, [sp, #160]
	add r3, r3, r4
	str r3, [sp, #96]
	str r3, [sp, #36]
	ldr r4, [sp, #164]
	add r3, r3, r4
	str r3, [sp, #100]
	str r3, [sp, #40]
	ldr r4, [sp, #168]
	add r3, r3, r4
	str r3, [sp, #104]
	str r3, [sp, #44]
	ldr r4, [sp, #172]
	add r3, r3, r4
	str r3, [sp, #108]
	str r3, [sp, #48]
	ldr r4, [sp, #176]
	add r3, r3, r4
	str r3, [sp, #112]
	str r3, [sp, #52]
	ldr r4, [sp, #180]
	add r3, r3, r4
	str r3, [sp, #116]
	str r3, [sp, #56]
	ldr r4, [sp, #184]
	add r3, r3, r4
	str r3, [sp, #120]
	str r3, [sp, #60]
	ldr r4, [sp, #188]
	add r3, r3, r4
	str r3, [sp, #124]
	str r3, [sp, #64]
	ldr r4, [sp, #192]
	add r3, r3, r4
	str r3, [sp, #128]
	str r3, [sp, #68]
	ldr r4, [sp, #196]
	add r3, r3, r4
	str r3, [sp, #132]
	str r3, [sp, #72]
	ldr r4, [sp, #200]
	add r3, r3, r4
	str r3, [sp, #136]
	str r3, [sp, #76]
	ldr r4, [sp, #204]
	add r3, r3, r4
	mov r4, r1
	str r3, [sp, #140]
	mov r3, r5
	cmp r5, #16
	blt label45
label35:
	ldr r6, [sp, #0]
	mov r4, r1
	str r6, [sp, #16]
	ldr r0, [sp, #144]
	add r0, r6, r0
	str r0, [sp, #80]
	cmp r5, #0
	bgt label39
	b label305
.p2align 4
label45:
	ldr r7, [r4, #0]
	ldr r8, [r6, #0]
	cmp r7, r8
	bge label48
.p2align 4
label49:
	ldr r8, [r4, #0]
	ldr r7, [sp, #12]
	ldr r9, [r7, r8, lsl #2]
	ldr r8, [sp, #4]
	cmp r8, #0
	bgt label56
	b label341
.p2align 4
label55:
	add r8, r1, r7, lsl #2
	ldr r10, [r8, #0]
	ldr r7, [sp, #12]
	add r11, r7, r10, lsl #2
	ldr r7, [r11, #0]
	str r9, [r11, #0]
	add r9, r10, #1
	str r9, [r8, #0]
	ldr r8, [sp, #4]
	mov r9, r7
	cmp r8, #0
	bgt label56
	asr r8, r7, #31
	add r8, r7, r8, lsr #28
	asr r8, r8, #4
	sub r7, r7, r8, lsl #4
	cmp r3, r7
	bne label55
	b label472
.p2align 4
label56:
	asr r7, r9, #31
	rsb r8, r0, #32
	cmp r2, #0
	add r7, r9, r7, lsr r8
	mov r8, #0
	asr r7, r7, r0
	movne r8, r7
	mov r7, r8
	asr r8, r8, #31
	add r8, r7, r8, lsr #28
	asr r8, r8, #4
	sub r7, r7, r8, lsl #4
	cmp r3, r7
	bne label55
	ldr r8, [r4, #0]
	ldr r7, [sp, #12]
	str r9, [r7, r8, lsl #2]
	add r7, r8, #1
	str r7, [r4, #0]
	ldr r8, [r6, #0]
	cmp r7, r8
	blt label49
	add r3, r3, #1
	add r4, r4, #4
	add r6, r6, #4
	cmp r3, #16
	blt label45
	b label35
.p2align 4
label341:
	asr r8, r9, #31
	add r8, r9, r8, lsr #28
	asr r8, r8, #4
	sub r7, r9, r8, lsl #4
	cmp r3, r7
	bne label55
	ldr r8, [r4, #0]
	ldr r7, [sp, #12]
	str r9, [r7, r8, lsl #2]
	add r7, r8, #1
	str r7, [r4, #0]
	ldr r8, [r6, #0]
	cmp r7, r8
	blt label49
	b label467
label305:
	ldr r2, [r4, #0]
	add r6, sp, #80
	ldr r3, [r6, r5, lsl #2]
	b label40
label39:
	sub r0, r5, #1
	add r6, sp, #80
	add r7, sp, #144
	ldr r2, [r6, r0, lsl #2]
	str r2, [r4, #0]
	ldr r0, [r7, r5, lsl #2]
	add r3, r2, r0
	str r3, [r6, r5, lsl #2]
.p2align 4
label40:
	ldr r7, [sp, #12]
	ldr r6, [sp, #8]
	mov r0, r6
	mov r1, r7
	bl radixSort
	add r5, r5, #1
	cmp r5, #16
	bge label57
	add r4, r4, #4
	cmp r5, #0
	bgt label39
	b label305
label48:
	add r3, r3, #1
	add r4, r4, #4
	add r6, r6, #4
	cmp r3, #16
	blt label45
	b label35
label467:
	add r3, r3, #1
	add r4, r4, #4
	add r6, r6, #4
	cmp r3, #16
	blt label45
	b label35
.p2align 4
label472:
	ldr r8, [r4, #0]
	ldr r7, [sp, #12]
	str r9, [r7, r8, lsl #2]
	add r7, r8, #1
	str r7, [r4, #0]
	ldr r8, [r6, #0]
	cmp r7, r8
	blt label49
	b label467
label131:
	ldr r7, [sp, #12]
	ldr r6, [sp, #0]
	add r4, r7, r6, lsl #2
	b label22
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
	ble label511
	mov r0, r4
	mov r3, #0
	mov r2, r3
.p2align 4
label493:
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
	ble label497
	add r0, r0, #16
	mov r3, r6
	b label493
label497:
	add r4, r4, r6, lsl #2
.p2align 4
label499:
	ldr r0, [r4, #0]
	add r1, r6, #2
	sdiv r3, r0, r1
	mls r0, r3, r1, r0
	mla r2, r6, r0, r2
	add r6, r6, #1
	cmp r5, r6
	ble label504
	add r4, r4, #4
	b label499
label504:
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
label511:
	mov r2, #0
	mov r6, r2
	b label499
