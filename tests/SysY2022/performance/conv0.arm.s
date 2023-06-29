.arch armv7ve
.data
.bss
.align 4
a:
	.zero	40000000
.align 4
b:
	.zero	40000000
.align 4
kernelid:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #68
	bl getint
	mov r4, r0
	bl getint
	mov r1, r0
	str r0, [sp, #32]
	bl getint
	mov r5, r0
	str r0, [sp, #24]
	ldr r1, [sp, #32]
	mul r2, r1, r0
	str r2, [sp, #16]
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r5, r0
	str r0, [sp, #36]
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	mov r1, r0
	str r0, [sp, #40]
	bl getarray
	mov r1, r0
	str r0, [sp, #44]
	add r0, r4, r4, lsr #31
	asr r1, r0, #1
	str r1, [sp, #48]
	mov r0, #109
	bl _sysy_starttime
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #52]
	ldr r1, [sp, #44]
	cmp r1, #0
	ble label2
	mov r0, #0
	str r0, [sp, #56]
	ldr r1, [sp, #40]
	ldr r6, [r1, r0, lsl #2]
	str r6, [sp, #60]
	str r0, [sp, #28]
label5:
	ldr r1, [sp, #48]
	ldr r0, [sp, #28]
	sub r0, r0, r1
	str r0, [sp, #0]
	ldr r1, [sp, #48]
	ldr r0, [sp, #28]
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r5, [sp, #24]
	ldr r0, [sp, #28]
	mul r1, r5, r0
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #20]
	ldr r1, [sp, #48]
	sub r1, r0, r1
	str r1, [sp, #12]
	ldr r1, [sp, #48]
	add r2, r1, r0
	ldr r0, [sp, #0]
	mov r4, #0
	b label9
label50:
	cmp r4, #0
	bge label58
	add r4, r4, #1073741824
	cmp r4, #0
	bge label58
	add r4, r4, #1073741824
	cmp r4, #0
	bge label58
	add r4, r4, #1073741824
	cmp r4, #0
	bge label58
	add r4, r4, #1073741824
	cmp r4, #0
	bge label58
	add r4, r4, #1073741824
	cmp r4, #0
	bge label58
	add r4, r4, #1073741824
	cmp r4, #0
	bge label58
	add r4, r4, #1073741824
	cmp r4, #0
	bge label58
	add r4, r4, #1073741824
	cmp r4, #0
	bge label58
	add r4, r4, #1073741824
	cmp r4, #0
	bge label58
	b label648
label58:
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label9
	ldr r1, [sp, #8]
	ldr r0, [sp, #20]
	add r0, r0, r1
	ldr r2, [sp, #52]
	str r4, [r2, r0, lsl #2]
	ldr r0, [sp, #20]
	add r0, r0, #1
	ldr r5, [sp, #24]
	cmp r0, r5
	blt label228
	ldr r0, [sp, #28]
	add r0, r0, #1
	ldr r1, [sp, #32]
	cmp r0, r1
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label64
	mov r0, #0
	add r1, r0, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label68
	b label67
label228:
	str r0, [sp, #20]
	ldr r1, [sp, #48]
	sub r1, r0, r1
	str r1, [sp, #12]
	ldr r1, [sp, #48]
	add r2, r1, r0
	ldr r0, [sp, #0]
	mov r4, #0
	cmp r0, #0
	mov r3, #0
	movwlt r3, #1
	ldr r1, [sp, #32]
	cmp r0, r1
	mov r1, #0
	movwge r1, #1
	orr r3, r3, r1
	ldr r1, [sp, #12]
	b label12
label233:
	str r0, [sp, #28]
	b label5
label648:
	add r4, r4, #1073741824
	cmp r4, #0
	bge label58
label649:
	add r4, r4, #1073741824
	cmp r4, #0
	bge label58
	b label649
label12:
	cmp r1, #0
	mov r5, #0
	movwlt r5, #1
	orr r6, r3, r5
	ldr r5, [sp, #24]
	cmp r1, r5
	mov r5, #0
	movwge r5, #1
	orr r5, r6, r5
	cmp r5, #0
	beq label76
	mov r5, #0
	ldr r6, [sp, #60]
	cmp r6, #0
	bne label17
	add r4, r4, r5
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
label630:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
label650:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	b label650
label76:
	ldr r5, [sp, #24]
	mla r6, r0, r5, r1
	ldr r5, [sp, #36]
	ldr r5, [r5, r6, lsl #2]
	ldr r6, [sp, #60]
	cmp r6, #0
	bne label17
	add r4, r4, r5
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label50
	b label630
label17:
	ldr r6, [sp, #60]
	cmp r6, #1
	bne label18
	mov r7, #1
	mov r6, #0
	cmp r7, #1073741824
	bge label179
label44:
	sdiv r9, r4, r7
	mov r8, #2
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	mls r9, r10, r8, r9
	sdiv r10, r5, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	mls r8, r11, r8, r10
	cmp r9, r8
	bne label47
	lsl r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label179
	b label44
label47:
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label179
	b label44
label179:
	mov r4, r6
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label9
	ldr r1, [sp, #8]
	ldr r0, [sp, #20]
	add r0, r0, r1
	ldr r2, [sp, #52]
	str r6, [r2, r0, lsl #2]
	ldr r0, [sp, #20]
	add r0, r0, #1
	ldr r5, [sp, #24]
	cmp r0, r5
	blt label228
	ldr r0, [sp, #28]
	add r0, r0, #1
	ldr r1, [sp, #32]
	cmp r0, r1
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label64
	mov r0, #0
	add r1, r0, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label68
	b label67
label18:
	ldr r6, [sp, #60]
	cmp r6, #2
	bne label19
	cmp r4, r5
	ble label40
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label9
	ldr r1, [sp, #8]
	ldr r0, [sp, #20]
	add r0, r0, r1
	ldr r2, [sp, #52]
	str r4, [r2, r0, lsl #2]
	ldr r0, [sp, #20]
	add r0, r0, #1
	ldr r5, [sp, #24]
	cmp r0, r5
	blt label228
	ldr r0, [sp, #28]
	add r0, r0, #1
	ldr r1, [sp, #32]
	cmp r0, r1
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label64
	mov r0, #0
	add r1, r0, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label68
	b label67
label19:
	ldr r6, [sp, #60]
	cmp r6, #3
	bne label20
	mov r7, #1
	mov r6, #0
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	b label593
label20:
	ldr r6, [sp, #60]
	cmp r6, #4
	bne label131
	mov r7, #1
	mov r6, #0
	cmp r7, #1073741824
	bge label135
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label135
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label135
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	b label555
label131:
	mov r4, #0
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label9
	ldr r1, [sp, #8]
	ldr r0, [sp, #20]
	add r0, r0, r1
	ldr r2, [sp, #52]
	str r4, [r2, r0, lsl #2]
	ldr r0, [sp, #20]
	add r0, r0, #1
	ldr r5, [sp, #24]
	cmp r0, r5
	blt label228
	ldr r0, [sp, #28]
	add r0, r0, #1
	ldr r1, [sp, #32]
	cmp r0, r1
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label64
	mov r0, #0
	add r1, r0, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label68
	b label67
label555:
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label135
	b label588
label593:
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	b label618
label40:
	mov r4, r5
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label9
	ldr r1, [sp, #8]
	ldr r0, [sp, #20]
	add r0, r0, r1
	ldr r2, [sp, #52]
	str r5, [r2, r0, lsl #2]
	ldr r0, [sp, #20]
	add r0, r0, #1
	ldr r5, [sp, #24]
	cmp r0, r5
	blt label228
	ldr r0, [sp, #28]
	add r0, r0, #1
	ldr r1, [sp, #32]
	cmp r0, r1
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label64
	mov r0, #0
	add r1, r0, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label68
	b label67
label68:
	add r1, r0, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label71
label70:
	ldr r2, [sp, #52]
	add r3, r2, r0, lsl #2
	ldr r2, [sp, #52]
	ldr r4, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	add r2, r5, r0, lsl #2
	ldr r5, [sp, #36]
	str r4, [r5, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r2, #4]
	ldr r0, [r3, #8]
	str r0, [r2, #8]
	ldr r0, [r3, #12]
	str r0, [r2, #12]
	mov r0, r1
	add r1, r1, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label71
	b label70
label71:
	add r1, r0, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label73
	b label75
label618:
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	b label618
label37:
	sdiv r8, r5, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label38
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	b label645
label38:
	lsl r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label155
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	b label618
label645:
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	b label618
label155:
	mov r4, r6
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label9
	ldr r1, [sp, #8]
	ldr r0, [sp, #20]
	add r0, r0, r1
	ldr r2, [sp, #52]
	str r6, [r2, r0, lsl #2]
	ldr r0, [sp, #20]
	add r0, r0, #1
	ldr r5, [sp, #24]
	cmp r0, r5
	blt label228
	ldr r0, [sp, #28]
	add r0, r0, #1
	ldr r1, [sp, #32]
	cmp r0, r1
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label64
	mov r0, #0
	add r1, r0, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label68
label67:
	ldr r2, [sp, #52]
	add r3, r2, r0, lsl #2
	ldr r2, [sp, #52]
	ldr r4, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	add r2, r5, r0, lsl #2
	ldr r5, [sp, #36]
	str r4, [r5, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r2, #4]
	ldr r0, [r3, #8]
	str r0, [r2, #8]
	ldr r0, [r3, #12]
	str r0, [r2, #12]
	mov r0, r1
	add r1, r1, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label68
	b label67
label73:
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label64
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label64
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label64
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label64
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label64
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label64
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label64
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label64
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label64
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label64
label652:
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label64
	b label652
label135:
	mov r4, r6
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label9
	ldr r1, [sp, #8]
	ldr r0, [sp, #20]
	add r0, r0, r1
	ldr r2, [sp, #52]
	str r6, [r2, r0, lsl #2]
	ldr r0, [sp, #20]
	add r0, r0, #1
	ldr r5, [sp, #24]
	cmp r0, r5
	blt label228
	ldr r0, [sp, #28]
	add r0, r0, #1
	ldr r1, [sp, #32]
	cmp r0, r1
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label64
	mov r0, #0
	add r1, r0, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label68
	b label67
label588:
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label135
	b label588
label29:
	lsl r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label135
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label135
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label135
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label29
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label135
	b label588
label9:
	cmp r0, #0
	mov r3, #0
	movwlt r3, #1
	ldr r1, [sp, #32]
	cmp r0, r1
	mov r1, #0
	movwge r1, #1
	orr r3, r3, r1
	ldr r1, [sp, #12]
	b label12
label75:
	ldr r2, [sp, #52]
	add r3, r2, r0, lsl #2
	ldr r2, [sp, #52]
	ldr r4, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	add r2, r5, r0, lsl #2
	ldr r5, [sp, #36]
	str r4, [r5, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r2, #4]
	ldr r0, [r3, #8]
	str r0, [r2, #8]
	ldr r0, [r3, #12]
	str r0, [r2, #12]
	mov r0, r1
	add r1, r1, #4
	ldr r2, [sp, #16]
	cmp r1, r2
	bge label73
	b label75
label64:
	ldr r0, [sp, #56]
	add r0, r0, #1
	ldr r1, [sp, #44]
	cmp r0, r1
	bge label2
	str r0, [sp, #56]
	ldr r1, [sp, #40]
	ldr r6, [r1, r0, lsl #2]
	str r6, [sp, #60]
	mov r0, #0
	str r0, [sp, #28]
	b label5
label2:
	mov r0, #116
	bl _sysy_stoptime
	ldr r2, [sp, #16]
	mov r0, r2
	ldr r5, [sp, #36]
	mov r1, r5
	bl putarray
	mov r0, #0
	add sp, sp, #68
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
