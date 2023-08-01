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
	sub sp, sp, #204
	mov r4, r0
	mov r8, r1
	mov r6, r2
	add r0, r2, #1
	str r1, [sp, #128]
	mov r1, r3
	add r2, r4, #1
	cmp r3, r0
	clz r2, r2
	mov r3, #0
	mov r0, #0
	lsr r2, r2, #5
	str r3, [sp, #0]
	movwle r0, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	orrs r0, r0, r2
	str r3, [sp, #12]
	str r3, [sp, #16]
	str r3, [sp, #20]
	str r3, [sp, #24]
	str r3, [sp, #28]
	str r3, [sp, #32]
	str r3, [sp, #36]
	str r3, [sp, #40]
	str r3, [sp, #44]
	str r3, [sp, #48]
	str r3, [sp, #52]
	str r3, [sp, #56]
	str r3, [sp, #60]
	str r3, [sp, #64]
	str r3, [sp, #68]
	str r3, [sp, #72]
	str r3, [sp, #76]
	str r3, [sp, #80]
	str r3, [sp, #84]
	str r3, [sp, #88]
	str r3, [sp, #92]
	str r3, [sp, #96]
	str r3, [sp, #100]
	str r3, [sp, #104]
	str r3, [sp, #108]
	str r3, [sp, #112]
	str r3, [sp, #116]
	str r3, [sp, #120]
	str r3, [sp, #124]
	str r3, [sp, #136]
	str r3, [sp, #140]
	str r3, [sp, #144]
	str r3, [sp, #148]
	str r3, [sp, #152]
	str r3, [sp, #156]
	str r3, [sp, #160]
	str r3, [sp, #164]
	str r3, [sp, #168]
	str r3, [sp, #172]
	str r3, [sp, #176]
	str r3, [sp, #180]
	str r3, [sp, #184]
	str r3, [sp, #188]
	str r3, [sp, #192]
	str r3, [sp, #196]
	bne label32
	lsl r0, r4, #2
	cmp r4, #8
	mov r2, #0
	sub r5, r4, #1
	movwlt r2, #1
	cmp r6, r1
	bge label3
	mov r7, r6
	b label27
label3:
	str r6, [sp, #0]
	ldr r1, [sp, #136]
	add r1, r6, r1
	str r1, [sp, #64]
	str r1, [sp, #4]
	ldr r7, [sp, #140]
	add r1, r1, r7
	str r1, [sp, #68]
	str r1, [sp, #8]
	ldr r7, [sp, #144]
	add r1, r1, r7
	str r1, [sp, #72]
	str r1, [sp, #12]
	ldr r7, [sp, #148]
	add r1, r1, r7
	str r1, [sp, #76]
	str r1, [sp, #16]
	ldr r7, [sp, #152]
	add r1, r1, r7
	str r1, [sp, #80]
	str r1, [sp, #20]
	ldr r7, [sp, #156]
	add r1, r1, r7
	str r1, [sp, #84]
	str r1, [sp, #24]
	ldr r7, [sp, #160]
	add r1, r1, r7
	str r1, [sp, #88]
	str r1, [sp, #28]
	ldr r7, [sp, #164]
	add r1, r1, r7
	str r1, [sp, #92]
	str r1, [sp, #32]
	ldr r7, [sp, #168]
	add r1, r1, r7
	str r1, [sp, #96]
	str r1, [sp, #36]
	ldr r7, [sp, #172]
	add r1, r1, r7
	str r1, [sp, #100]
	str r1, [sp, #40]
	ldr r7, [sp, #176]
	add r1, r1, r7
	str r1, [sp, #104]
	str r1, [sp, #44]
	ldr r7, [sp, #180]
	add r1, r1, r7
	str r1, [sp, #108]
	str r1, [sp, #48]
	ldr r7, [sp, #184]
	add r1, r1, r7
	str r1, [sp, #112]
	str r1, [sp, #52]
	ldr r7, [sp, #188]
	add r1, r1, r7
	str r1, [sp, #116]
	str r1, [sp, #56]
	ldr r7, [sp, #192]
	add r1, r1, r7
	str r1, [sp, #120]
	str r1, [sp, #60]
	ldr r7, [sp, #196]
	add r1, r1, r7
	str r1, [sp, #124]
	mov r1, r3
	cmp r3, #16
	blt label6
	b label181
.p2align 4
label27:
	ldr r8, [sp, #128]
	cmp r4, #0
	ldr r8, [r8, r7, lsl #2]
	ble label30
	asr r9, r8, #31
	rsb r10, r0, #32
	cmp r2, #0
	add r8, r8, r9, lsr r10
	asr r9, r8, r0
	mov r8, #0
	movne r8, r9
.p2align 4
label30:
	and r8, r8, #15
	add r9, sp, #136
	add r7, r7, #1
	add r8, r9, r8, lsl #2
	cmp r1, r7
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	bgt label27
	b label3
label181:
	str r6, [sp, #0]
	mov r4, r3
	ldr r0, [sp, #136]
	add r0, r6, r0
	str r0, [sp, #64]
	b label19
.p2align 4
label6:
	mov r9, sp
	ldr r7, [r9, r1, lsl #2]
	add r8, sp, #64
	ldr r8, [r8, r1, lsl #2]
	cmp r7, r8
	blt label9
	b label191
.p2align 4
label351:
	add r1, r1, #1
	cmp r1, #16
	blt label6
	b label181
label19:
	cmp r4, #16
	blt label21
	b label32
.p2align 4
label9:
	mov r9, sp
	ldr r7, [r9, r1, lsl #2]
	ldr r8, [sp, #128]
	ldr r7, [r8, r7, lsl #2]
	cmp r4, #0
	ble label200
.p2align 4
label12:
	asr r8, r7, #31
	rsb r9, r0, #32
	cmp r2, #0
	add r8, r7, r8, lsr r9
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
.p2align 4
label15:
	mov r9, sp
	add r9, r9, r1, lsl #2
	ldr r10, [r9, #0]
	ldr r8, [sp, #128]
	str r7, [r8, r10, lsl #2]
	add r7, r10, #1
	str r7, [r9, #0]
	add r8, sp, #64
	ldr r8, [r8, r1, lsl #2]
	cmp r7, r8
	blt label9
	b label351
.p2align 4
label16:
	mov r9, sp
	add r9, r9, r8, lsl #2
	ldr r10, [r9, #0]
	ldr r8, [sp, #128]
	add r11, r8, r10, lsl #2
	ldr r8, [r11, #0]
	str r7, [r11, #0]
	add r7, r10, #1
	str r7, [r9, #0]
	mov r7, r8
	cmp r4, #0
	bgt label12
	asr r9, r8, #31
	add r9, r8, r9, lsr #28
	asr r9, r9, #4
	sub r8, r8, r9, lsl #4
	cmp r1, r8
	bne label16
	b label15
.p2align 4
label21:
	cmp r4, #0
	bgt label23
	mov r9, sp
	add r8, sp, #64
	ldr r2, [r9, r4, lsl #2]
	ldr r3, [r8, r4, lsl #2]
.p2align 4
label24:
	ldr r8, [sp, #128]
	mov r0, r5
	mov r1, r8
	bl radixSort
	add r4, r4, #1
	cmp r4, #16
	blt label21
label32:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label200:
	mov r8, r7
	asr r9, r7, #31
	add r9, r7, r9, lsr #28
	asr r9, r9, #4
	sub r8, r7, r9, lsl #4
	cmp r1, r8
	bne label16
	b label15
label191:
	add r1, r1, #1
	cmp r1, #16
	blt label6
	b label181
.p2align 4
label23:
	sub r0, r4, #1
	add r8, sp, #64
	mov r9, sp
	ldr r2, [r8, r0, lsl #2]
	str r2, [r9, r4, lsl #2]
	add r9, sp, #136
	ldr r0, [r9, r4, lsl #2]
	add r3, r2, r0
	str r3, [r8, r4, lsl #2]
	b label24
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
	cmp r5, #0
	ble label378
	sub r0, r5, #4
	cmp r5, #4
	ble label383
	mov r2, #0
	mov r1, r2
.p2align 4
label366:
	add r6, r4, r2, lsl #2
	add r3, r2, #3
	ldr r7, [r6, #0]
	ldr r8, [r6, #4]
	sdiv r9, r8, r3
	mls r8, r9, r3, r8
	mla r9, r8, r2, r8
	add r8, r2, #2
	sdiv r10, r7, r8
	mls r7, r10, r8, r7
	ldr r10, [r6, #8]
	ldr r6, [r6, #12]
	mla r9, r2, r7, r9
	add r7, r2, #4
	cmp r0, r7
	add r2, r2, #5
	sdiv r11, r10, r7
	mls r10, r11, r7, r10
	mla r8, r8, r10, r9
	sdiv r9, r6, r2
	mls r2, r9, r2, r6
	mla r2, r3, r2, r8
	add r1, r1, r2
	ble label369
	mov r2, r7
	b label366
label369:
	ldr r0, [r4, r7, lsl #2]
	add r2, r7, #2
	sdiv r3, r0, r2
	mls r0, r3, r2, r0
	mla r1, r7, r0, r1
	add r7, r7, #1
	cmp r5, r7
	bgt label369
	mov r4, r1
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
	mov r1, #0
	mov r7, r1
	b label369
label378:
	mov r4, #0
	b label372
