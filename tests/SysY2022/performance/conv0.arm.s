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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #76
	bl getint
	mov r4, r0
	bl getint
	str r0, [sp, #36]
	mov r3, r0
	bl getint
	str r0, [sp, #28]
	mov r6, r0
	ldr r3, [sp, #36]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mul r1, r3, r0
	str r1, [sp, #44]
	str r6, [sp, #20]
	mov r0, r6
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	str r0, [sp, #52]
	bl getarray
	str r0, [sp, #48]
	mov r1, r0
	mov r0, #109
	bl _sysy_starttime
	ldr r1, [sp, #48]
	cmp r1, #0
	bgt label2
label63:
	mov r0, #116
	bl _sysy_stoptime
	ldr r1, [sp, #44]
	ldr r6, [sp, #20]
	mov r0, r1
	mov r1, r6
	bl putarray
	add sp, sp, #76
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label164:
	mov r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #52]
	ldr r1, [sp, #8]
	ldr r7, [r0, r1, lsl #2]
	mov r0, #0
	str r7, [sp, #4]
	str r0, [sp, #24]
	b label5
.p2align 4
label33:
	ldr r2, [sp, #56]
	cmp r2, #16
	bgt label170
	mov r0, #0
	b label34
.p2align 4
label170:
	mov r0, #0
	b label36
.p2align 4
label34:
	ldr r1, [sp, #12]
	add r1, r1, r0, lsl #2
	ldr r3, [r1, #0]
	ldr r6, [sp, #20]
	add r2, r6, r0, lsl #2
	add r0, r0, #4
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r2, [sp, #56]
	cmp r2, r0
	bgt label34
	ldr r1, [sp, #12]
	ldr r1, [r1, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #44]
	add r0, r0, #1
	cmp r1, r0
	bgt label38
	ldr r1, [sp, #8]
	add r0, r1, #1
	ldr r1, [sp, #48]
	cmp r1, r0
	bgt label164
	b label63
.p2align 4
label38:
	ldr r1, [sp, #12]
	ldr r1, [r1, r0, lsl #2]
	ldr r6, [sp, #20]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #44]
	add r0, r0, #1
	cmp r1, r0
	bgt label38
	ldr r1, [sp, #8]
	add r0, r1, #1
	ldr r1, [sp, #48]
	cmp r1, r0
	bgt label164
	b label63
.p2align 4
label5:
	ldr r2, [sp, #64]
	mov r1, #0
	ldr r0, [sp, #24]
	sub r2, r0, r2
	str r2, [sp, #32]
	ldr r2, [sp, #64]
	add r3, r2, r0
	str r3, [sp, #40]
	ldr r6, [sp, #28]
	mul r0, r6, r0
	str r0, [sp, #0]
	str r1, [sp, #16]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #32]
	ldr r3, [sp, #36]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	cmp r6, r0
	mov r6, #0
	movwle r6, #1
	cmp r0, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r0
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	add r4, r0, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	beq label566
.p2align 4
label106:
	mov r6, #0
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	b label595
.p2align 4
label29:
	ldr r0, [sp, #24]
	ldr r3, [sp, #36]
	add r0, r0, #1
	cmp r3, r0
	ble label30
	str r0, [sp, #24]
	b label5
.p2align 4
label257:
	mov r7, #1
	mov r8, #0
	b label60
.p2align 4
label264:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label47
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
.p2align 4
label555:
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
.p2align 4
label582:
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	b label609
.p2align 4
label47:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label48
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label48
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label47
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	b label555
.p2align 4
label23:
	adds r5, r5, #1073741824
	blt label23
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	b label600
.p2align 4
label27:
	add r2, r2, #1
	ldr r3, [sp, #40]
	cmp r3, r2
	ble label28
	ldr r3, [sp, #36]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	ldr r6, [sp, #28]
	cmp r6, r0
	mov r6, #0
	movwle r6, #1
	cmp r0, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r0
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	mov r5, #0
	add r4, r0, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	b label593
.p2align 4
label568:
	ldr r7, [sp, #4]
	cmp r7, #2
	beq label42
.p2align 4
label595:
	ldr r7, [sp, #4]
	cmp r7, #3
	beq label264
	b label605
.p2align 4
label602:
	ldr r7, [sp, #4]
	cmp r7, #1
	beq label257
	b label568
.p2align 4
label605:
	ldr r7, [sp, #4]
	cmp r7, #4
	beq label287
	b label606
.p2align 4
label609:
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	b label602
.p2align 4
label287:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label56
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
.p2align 4
label589:
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	b label616
.p2align 4
label18:
	add r5, r5, r6
	cmp r5, #1073741824
	bgt label19
	cmp r5, #0
	blt label23
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	b label599
.p2align 4
label600:
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	b label602
.p2align 4
label19:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	bgt label19
	cmp r5, #0
	blt label23
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
.p2align 4
label599:
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	b label602
.p2align 4
label56:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label57
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label56
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
	b label589
.p2align 4
label42:
	cmp r5, r6
	movle r5, r6
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	b label602
.p2align 4
label616:
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	b label602
.p2align 4
label57:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r8, r9
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label56
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	b label616
.p2align 4
label48:
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label47
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
	b label582
.p2align 4
label566:
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
.p2align 4
label593:
	ldr r7, [sp, #4]
	cmp r7, #1
	beq label257
	b label568
.p2align 4
label28:
	ldr r0, [sp, #0]
	ldr r1, [sp, #16]
	add r0, r0, r1
	ldr r1, [sp, #12]
	str r5, [r1, r0, lsl #2]
	ldr r1, [sp, #16]
	ldr r6, [sp, #28]
	add r1, r1, #1
	cmp r6, r1
	ble label29
	str r1, [sp, #16]
	ldr r2, [sp, #64]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #32]
	ldr r3, [sp, #36]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	cmp r6, r0
	mov r6, #0
	movwle r6, #1
	cmp r0, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r0
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	add r4, r0, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	b label566
.p2align 4
label606:
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
	b label608
.p2align 4
label60:
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
	blt label60
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	cmp r7, #1
	beq label257
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label264
	cmp r7, #4
	beq label287
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label27
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	b label602
.p2align 4
label608:
	ldr r6, [sp, #28]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label106
	ldr r6, [sp, #28]
	mla r7, r6, r2, r4
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label18
	b label602
.p2align 4
label36:
	ldr r1, [sp, #12]
	add r1, r1, r0, lsl #2
	ldr r3, [r1, #0]
	ldr r6, [sp, #20]
	add r2, r6, r0, lsl #2
	add r0, r0, #16
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r3, [r1, #12]
	str r3, [r2, #12]
	ldr r3, [r1, #16]
	str r3, [r2, #16]
	ldr r3, [r1, #20]
	str r3, [r2, #20]
	ldr r3, [r1, #24]
	str r3, [r2, #24]
	ldr r3, [r1, #28]
	str r3, [r2, #28]
	ldr r3, [r1, #32]
	str r3, [r2, #32]
	ldr r3, [r1, #36]
	str r3, [r2, #36]
	ldr r3, [r1, #40]
	str r3, [r2, #40]
	ldr r3, [r1, #44]
	str r3, [r2, #44]
	ldr r3, [r1, #48]
	str r3, [r2, #48]
	ldr r3, [r1, #52]
	str r3, [r2, #52]
	ldr r3, [r1, #56]
	str r3, [r2, #56]
	ldr r1, [r1, #60]
	str r1, [r2, #60]
	ldr r1, [sp, #60]
	cmp r1, r0
	bgt label36
	b label34
.p2align 4
label30:
	ldr r1, [sp, #44]
	cmp r1, #0
	bgt label32
	ldr r1, [sp, #8]
	add r0, r1, #1
	ldr r1, [sp, #48]
	cmp r1, r0
	bgt label164
	b label63
.p2align 4
label32:
	ldr r1, [sp, #44]
	cmp r1, #4
	bgt label33
	mov r0, #0
	ldr r1, [sp, #12]
	ldr r1, [r1, r0, lsl #2]
	ldr r6, [sp, #20]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #44]
	add r0, r0, #1
	cmp r1, r0
	bgt label38
	ldr r1, [sp, #8]
	add r0, r1, #1
	ldr r1, [sp, #48]
	cmp r1, r0
	bgt label164
	b label63
label2:
	ldr r1, [sp, #44]
	add r0, r4, r4, lsr #31
	sub r2, r1, #4
	sub r1, r1, #20
	str r2, [sp, #56]
	asr r2, r0, #1
	str r1, [sp, #60]
	movw r1, #:lower16:b
	str r2, [sp, #64]
	movt r1, #:upper16:b
	str r1, [sp, #12]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [sp, #52]
	ldr r7, [r0, r1, lsl #2]
	mov r0, #0
	str r7, [sp, #4]
	str r0, [sp, #24]
	b label5
