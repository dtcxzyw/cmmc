.arch armv7ve
.data
.bss
.align 8
a:
	.zero	40000000
.align 8
b:
	.zero	40000000
.align 8
kernelid:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #68
	bl getint
	mov r4, r0
	bl getint
	str r0, [sp, #24]
	mov r3, r0
	bl getint
	mov r7, r0
	str r0, [sp, #32]
	movw r6, #:lower16:a
	ldr r3, [sp, #24]
	mul r1, r3, r0
	str r1, [sp, #20]
	str r6, [sp, #28]
	movt r6, #:upper16:a
	str r6, [sp, #28]
	mov r0, r6
	bl getarray
	movw r1, #:lower16:kernelid
	str r1, [sp, #16]
	movt r1, #:upper16:kernelid
	str r1, [sp, #16]
	mov r0, r1
	bl getarray
	str r0, [sp, #12]
	mov r1, r0
	mov r0, #109
	bl _sysy_starttime
	ldr r1, [sp, #12]
	cmp r1, #0
	ble label60
	ldr r1, [sp, #20]
	add r0, r4, r4, lsr #31
	asr r2, r0, #1
	mov r0, #0
	sub r1, r1, #4
	str r1, [sp, #36]
	movw r1, #:lower16:b
	str r2, [sp, #40]
	str r1, [sp, #44]
	movt r1, #:upper16:b
	str r1, [sp, #44]
	str r0, [sp, #48]
	ldr r1, [sp, #16]
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #52]
	str r0, [sp, #4]
.p2align 4
label5:
	ldr r2, [sp, #40]
	mov r1, #0
	ldr r0, [sp, #4]
	sub r2, r0, r2
	str r2, [sp, #8]
	ldr r2, [sp, #40]
	add r3, r2, r0
	str r3, [sp, #60]
	ldr r7, [sp, #32]
	mul r0, r7, r0
	str r0, [sp, #56]
	str r1, [sp, #0]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #8]
	ldr r3, [sp, #24]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	orr r6, r2, r0
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label100
.p2align 4
label21:
	ldr r0, [sp, #4]
	ldr r3, [sp, #24]
	add r0, r0, #1
	cmp r3, r0
	ble label22
	str r0, [sp, #4]
	b label5
.p2align 4
label101:
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	cmp r7, #1
	beq label170
	b label310
.p2align 4
label20:
	ldr r0, [sp, #56]
	ldr r1, [sp, #0]
	add r0, r0, r1
	ldr r1, [sp, #44]
	str r5, [r1, r0, lsl #2]
	ldr r1, [sp, #0]
	ldr r7, [sp, #32]
	add r1, r1, #1
	cmp r7, r1
	ble label21
	str r1, [sp, #0]
	ldr r2, [sp, #40]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #8]
	ldr r3, [sp, #24]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	orr r6, r2, r0
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label355
.p2align 4
label170:
	mov r7, #1
	mov r8, #0
.p2align 4
label49:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	add r8, r8, #1
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	sub r9, r9, r10
	clz r9, r9
	lsr r9, r9, #5
	sub r8, r8, r9
	blt label49
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	cmp r7, #1
	beq label170
	cmp r7, #2
	beq label31
	cmp r7, #3
	beq label177
	cmp r7, #4
	beq label200
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
label420:
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	b label419
.p2align 4
label19:
	add r2, r2, #1
	ldr r3, [sp, #60]
	cmp r3, r2
	ble label20
	ldr r3, [sp, #24]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	orr r6, r2, r0
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	b label354
.p2align 4
label31:
	cmp r5, r6
	movle r5, r6
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	cmp r7, #1
	beq label170
	b label377
.p2align 4
label52:
	add r5, r5, r6
	cmp r5, #1073741824
	ble label235
.p2align 4
label53:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	bgt label53
	cmp r5, #0
	bge label244
.p2align 4
label57:
	adds r5, r5, #1073741824
	blt label57
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	cmp r7, #1
	beq label170
	cmp r7, #2
	beq label31
	cmp r7, #3
	beq label177
	cmp r7, #4
	beq label200
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	b label420
.p2align 4
label310:
	ldr r7, [sp, #52]
	cmp r7, #2
	beq label31
	cmp r7, #3
	bne label352
.p2align 4
label177:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label36
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	b label360
label398:
	ldr r7, [sp, #52]
	cmp r7, #3
	beq label177
	b label391
.p2align 4
label36:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label37
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label320
.p2align 4
label37:
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label36
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	cmp r7, #1
	beq label170
	cmp r7, #2
	beq label31
	b label398
.p2align 4
label22:
	ldr r1, [sp, #20]
	cmp r1, #0
	bgt label24
	b label23
.p2align 4
label135:
	str r0, [sp, #48]
	ldr r1, [sp, #16]
	ldr r7, [r1, r0, lsl #2]
	mov r0, #0
	str r7, [sp, #52]
	str r0, [sp, #4]
	b label5
.p2align 4
label24:
	ldr r1, [sp, #20]
	cmp r1, #4
	ble label137
	mov r0, #0
	b label27
.p2align 4
label25:
	ldr r1, [sp, #44]
	ldr r1, [r1, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #20]
	add r0, r0, #1
	cmp r1, r0
	bgt label25
.p2align 4
label147:
	ldr r0, [sp, #48]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label135
	b label60
.p2align 4
label27:
	ldr r1, [sp, #44]
	add r1, r1, r0, lsl #2
	ldr r3, [r1, #0]
	ldr r6, [sp, #28]
	add r2, r6, r0, lsl #2
	add r0, r0, #4
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r1, [sp, #36]
	cmp r1, r0
	bgt label27
	ldr r1, [sp, #44]
	ldr r1, [r1, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #20]
	add r0, r0, #1
	cmp r1, r0
	bgt label25
	ldr r0, [sp, #48]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label135
	b label60
.p2align 4
label354:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label170
	cmp r7, #2
	beq label31
	cmp r7, #3
	beq label177
	cmp r7, #4
	bne label421
.p2align 4
label200:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label45
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
label365:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label170
	cmp r7, #2
	beq label31
	b label372
.p2align 4
label45:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label48
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label45
	b label324
.p2align 4
label48:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r8, r9
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label45
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	b label365
label418:
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label429
.p2align 4
label355:
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	cmp r7, #1
	beq label170
	cmp r7, #2
	beq label31
	cmp r7, #3
	beq label177
	cmp r7, #4
	beq label200
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	b label418
.p2align 4
label100:
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	cmp r7, #1
	beq label170
	cmp r7, #2
	beq label31
	cmp r7, #3
	beq label177
	cmp r7, #4
	beq label200
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	b label418
.p2align 4
label352:
	ldr r7, [sp, #52]
	cmp r7, #4
	beq label200
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
label419:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label170
	cmp r7, #2
	beq label31
	b label372
label360:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label170
	b label379
.p2align 4
label320:
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label36
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	b label360
.p2align 4
label324:
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	b label365
.p2align 4
label377:
	ldr r7, [sp, #52]
	cmp r7, #2
	beq label31
	cmp r7, #3
	beq label177
	cmp r7, #4
	beq label200
	b label407
label311:
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	b label333
.p2align 4
label235:
	cmp r5, #0
	blt label57
.p2align 4
label244:
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label311
label429:
	ldr r7, [sp, #32]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label52
	b label419
label421:
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	orr r6, r2, r4
	ldr r7, [sp, #32]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label429
label372:
	ldr r7, [sp, #52]
	cmp r7, #3
	beq label177
label391:
	ldr r7, [sp, #52]
	cmp r7, #4
	beq label200
label407:
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	b label420
label23:
	ldr r0, [sp, #48]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label135
	b label60
label137:
	mov r0, #0
	ldr r1, [sp, #44]
	ldr r1, [r1, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #20]
	add r0, r0, #1
	cmp r1, r0
	bgt label25
	b label147
label60:
	mov r0, #116
	bl _sysy_stoptime
	ldr r1, [sp, #20]
	ldr r6, [sp, #28]
	mov r0, r1
	mov r1, r6
	bl putarray
	add sp, sp, #68
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label333:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label170
	cmp r7, #2
	beq label31
	b label372
label379:
	ldr r7, [sp, #52]
	cmp r7, #2
	beq label31
	b label398
