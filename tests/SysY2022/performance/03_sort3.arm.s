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
radixSort:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #196
	mov r5, r0
	mov r7, r2
	mov r4, r1
	add r0, r2, #1
	add r1, r5, #1
	cmp r3, r0
	clz r1, r1
	mov r0, #0
	lsr r1, r1, #5
	movwle r0, #1
	orrs r0, r0, r1
	mov r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #12]
	str r0, [sp, #16]
	str r0, [sp, #20]
	str r0, [sp, #24]
	str r0, [sp, #28]
	str r0, [sp, #32]
	str r0, [sp, #36]
	str r0, [sp, #40]
	str r0, [sp, #44]
	str r0, [sp, #48]
	str r0, [sp, #52]
	str r0, [sp, #56]
	str r0, [sp, #60]
	str r0, [sp, #64]
	str r0, [sp, #68]
	str r0, [sp, #72]
	str r0, [sp, #76]
	str r0, [sp, #80]
	str r0, [sp, #84]
	str r0, [sp, #88]
	str r0, [sp, #92]
	str r0, [sp, #96]
	str r0, [sp, #100]
	str r0, [sp, #104]
	str r0, [sp, #108]
	str r0, [sp, #112]
	str r0, [sp, #116]
	str r0, [sp, #120]
	str r0, [sp, #124]
	str r0, [sp, #128]
	str r0, [sp, #132]
	str r0, [sp, #136]
	str r0, [sp, #140]
	str r0, [sp, #144]
	str r0, [sp, #148]
	str r0, [sp, #152]
	str r0, [sp, #156]
	str r0, [sp, #160]
	str r0, [sp, #164]
	str r0, [sp, #168]
	str r0, [sp, #172]
	str r0, [sp, #176]
	str r0, [sp, #180]
	str r0, [sp, #184]
	str r0, [sp, #188]
	bne label32
	lsl r0, r5, #2
	cmp r5, #8
	mov r2, #0
	sub r6, r5, #1
	movwlt r2, #1
	cmp r7, r3
	bge label3
	mov r1, r7
	b label27
.p2align 4
label21:
	cmp r5, #0
	bgt label23
	mov r9, sp
	add r8, sp, #64
	ldr r2, [r9, r5, lsl #2]
	ldr r3, [r8, r5, lsl #2]
.p2align 4
label24:
	mov r0, r6
	mov r1, r4
	bl radixSort
	add r5, r5, #1
	cmp r5, #16
	blt label21
label32:
	add sp, sp, #196
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	str r7, [sp, #0]
	ldr r1, [sp, #128]
	add r1, r7, r1
	str r1, [sp, #64]
	str r1, [sp, #4]
	ldr r3, [sp, #132]
	add r1, r1, r3
	str r1, [sp, #68]
	str r1, [sp, #8]
	ldr r3, [sp, #136]
	add r1, r1, r3
	str r1, [sp, #72]
	str r1, [sp, #12]
	ldr r3, [sp, #140]
	add r1, r1, r3
	str r1, [sp, #76]
	str r1, [sp, #16]
	ldr r3, [sp, #144]
	add r1, r1, r3
	str r1, [sp, #80]
	str r1, [sp, #20]
	ldr r3, [sp, #148]
	add r1, r1, r3
	str r1, [sp, #84]
	str r1, [sp, #24]
	ldr r3, [sp, #152]
	add r1, r1, r3
	str r1, [sp, #88]
	str r1, [sp, #28]
	ldr r3, [sp, #156]
	add r1, r1, r3
	str r1, [sp, #92]
	str r1, [sp, #32]
	ldr r3, [sp, #160]
	add r1, r1, r3
	str r1, [sp, #96]
	str r1, [sp, #36]
	ldr r3, [sp, #164]
	add r1, r1, r3
	str r1, [sp, #100]
	str r1, [sp, #40]
	ldr r3, [sp, #168]
	add r1, r1, r3
	str r1, [sp, #104]
	str r1, [sp, #44]
	ldr r3, [sp, #172]
	add r1, r1, r3
	str r1, [sp, #108]
	str r1, [sp, #48]
	ldr r3, [sp, #176]
	add r1, r1, r3
	str r1, [sp, #112]
	str r1, [sp, #52]
	ldr r3, [sp, #180]
	add r1, r1, r3
	str r1, [sp, #116]
	str r1, [sp, #56]
	ldr r3, [sp, #184]
	add r1, r1, r3
	str r1, [sp, #120]
	str r1, [sp, #60]
	ldr r3, [sp, #188]
	add r1, r1, r3
	str r1, [sp, #124]
	mov r1, #0
	cmp r1, #16
	blt label6
	b label181
.p2align 4
label27:
	ldr r8, [r4, r1, lsl #2]
	cmp r5, #0
	ble label257
	asr r9, r8, #31
	rsb r10, r0, #32
	cmp r2, #0
	add r8, r8, r9, lsr r10
	mov r9, #0
	asr r8, r8, r0
	movne r9, r8
.p2align 4
label30:
	and r8, r9, #15
	add r1, r1, #1
	add r9, sp, #128
	cmp r3, r1
	add r8, r9, r8, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	bgt label27
	b label3
label181:
	str r7, [sp, #0]
	mov r5, #0
	ldr r0, [sp, #128]
	add r0, r7, r0
	str r0, [sp, #64]
	b label19
.p2align 4
label6:
	mov r9, sp
	ldr r3, [r9, r1, lsl #2]
	add r8, sp, #64
	ldr r8, [r8, r1, lsl #2]
	cmp r3, r8
	bge label191
.p2align 4
label9:
	mov r9, sp
	ldr r3, [r9, r1, lsl #2]
	ldr r3, [r4, r3, lsl #2]
	cmp r5, #0
	ble label200
.p2align 4
label12:
	asr r8, r3, #31
	rsb r9, r0, #32
	cmp r2, #0
	add r8, r3, r8, lsr r9
	mov r9, #0
	asr r8, r8, r0
	movne r9, r8
	mov r8, r9
	asr r9, r9, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	bne label16
	mov r9, sp
	add r8, r9, r1, lsl #2
	ldr r9, [r8, #0]
	str r3, [r4, r9, lsl #2]
	add r3, r9, #1
	str r3, [r8, #0]
	add r8, sp, #64
	ldr r8, [r8, r1, lsl #2]
	cmp r3, r8
	blt label9
.p2align 4
label350:
	add r1, r1, #1
	cmp r1, #16
	blt label6
	b label181
.p2align 4
label16:
	mov r9, sp
	add r8, r9, r8, lsl #2
	ldr r9, [r8, #0]
	add r11, r4, r9, lsl #2
	ldr r10, [r11, #0]
	str r3, [r11, #0]
	add r3, r9, #1
	str r3, [r8, #0]
	mov r3, r10
	cmp r5, #0
	bgt label12
	mov r8, r10
	asr r9, r10, #31
	add r9, r10, r9, lsr #28
	asr r9, r9, #4
	sub r8, r10, r9, lsl #4
	cmp r1, r8
	bne label16
	mov r9, sp
	add r8, r9, r1, lsl #2
	ldr r9, [r8, #0]
	str r10, [r4, r9, lsl #2]
	add r3, r9, #1
	str r3, [r8, #0]
	add r8, sp, #64
	ldr r8, [r8, r1, lsl #2]
	cmp r3, r8
	blt label9
	b label350
label19:
	cmp r5, #16
	blt label21
	b label32
.p2align 4
label200:
	mov r8, r3
	asr r9, r3, #31
	add r9, r3, r9, lsr #28
	asr r9, r9, #4
	sub r8, r3, r9, lsl #4
	cmp r1, r8
	bne label16
	mov r9, sp
	add r8, r9, r1, lsl #2
	ldr r9, [r8, #0]
	str r3, [r4, r9, lsl #2]
	add r3, r9, #1
	str r3, [r8, #0]
	add r8, sp, #64
	ldr r8, [r8, r1, lsl #2]
	cmp r3, r8
	blt label9
	b label350
label191:
	add r1, r1, #1
	cmp r1, #16
	blt label6
	b label181
label257:
	mov r9, r8
	b label30
.p2align 4
label23:
	sub r0, r5, #1
	add r8, sp, #64
	mov r9, sp
	ldr r2, [r8, r0, lsl #2]
	str r2, [r9, r5, lsl #2]
	add r9, sp, #128
	ldr r0, [r9, r5, lsl #2]
	add r3, r2, r0
	str r3, [r8, r5, lsl #2]
	b label24
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
	ble label378
	sub r0, r5, #8
	cmp r5, #8
	ble label383
	mov r2, #0
	mov r1, r2
.p2align 4
label366:
	add r3, r4, r2, lsl #2
	add r6, r2, #3
	ldr r8, [r3, #0]
	ldr r7, [r3, #4]
	sdiv r9, r7, r6
	mls r7, r9, r6, r7
	mla r9, r7, r2, r7
	add r7, r2, #2
	sdiv r10, r8, r7
	mls r8, r10, r7, r8
	ldr r10, [r3, #8]
	mla r9, r2, r8, r9
	add r8, r2, #4
	sdiv r11, r10, r8
	mls r10, r11, r8, r10
	mla r7, r7, r10, r9
	add r9, r2, #5
	ldr r10, [r3, #12]
	sdiv r11, r10, r9
	mls r10, r11, r9, r10
	mla r6, r6, r10, r7
	add r7, r2, #6
	ldr r10, [r3, #16]
	sdiv r11, r10, r7
	mls r10, r11, r7, r10
	mla r6, r8, r10, r6
	add r8, r2, #7
	ldr r10, [r3, #20]
	sdiv r11, r10, r8
	mls r10, r11, r8, r10
	mla r9, r9, r10, r6
	add r6, r2, #8
	ldr r10, [r3, #24]
	add r2, r2, #9
	cmp r0, r6
	ldr r3, [r3, #28]
	sdiv r11, r10, r6
	mls r10, r11, r6, r10
	mla r7, r7, r10, r9
	sdiv r9, r3, r2
	mls r2, r9, r2, r3
	mla r2, r8, r2, r7
	add r1, r1, r2
	ble label437
	mov r2, r6
	b label366
label437:
	mov r0, r1
label369:
	ldr r1, [r4, r6, lsl #2]
	add r2, r6, #2
	sdiv r3, r1, r2
	mls r1, r3, r2, r1
	mla r0, r6, r1, r0
	add r6, r6, #1
	cmp r5, r6
	bgt label369
	mov r4, r0
label372:
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
label383:
	mov r0, #0
	mov r6, r0
	b label369
label378:
	mov r4, #0
	b label372
