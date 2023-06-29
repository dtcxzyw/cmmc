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
	mov r3, r0
	str r0, [sp, #32]
	bl getint
	mov r6, r0
	str r0, [sp, #24]
	ldr r3, [sp, #32]
	mul r2, r3, r0
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
	asr r0, r0, #1
	str r0, [sp, #48]
	mov r0, #109
	bl _sysy_starttime
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #52]
	ldr r1, [sp, #44]
	cmp r1, #0
	ble label76
	mov r0, #0
	str r0, [sp, #56]
	ldr r1, [sp, #40]
	ldr r6, [r1, r0, lsl #2]
	str r6, [sp, #60]
	mov r1, #0
	str r1, [sp, #28]
label4:
	ldr r0, [sp, #48]
	ldr r1, [sp, #28]
	sub r1, r1, r0
	str r1, [sp, #0]
	ldr r1, [sp, #28]
	add r2, r0, r1
	str r2, [sp, #4]
	ldr r6, [sp, #24]
	ldr r1, [sp, #28]
	mul r0, r6, r1
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #20]
	ldr r0, [sp, #48]
	sub r3, r1, r0
	str r3, [sp, #12]
	add r0, r0, r1
	ldr r1, [sp, #0]
	mov r4, #0
	cmp r1, #0
	mov r2, #0
	movwlt r2, #1
	ldr r3, [sp, #32]
	cmp r1, r3
	mov r3, #0
	movwge r3, #1
	orr r2, r2, r3
	ldr r3, [sp, #12]
label11:
	cmp r3, #0
	mov r5, #0
	movwlt r5, #1
	orr r5, r2, r5
	ldr r6, [sp, #24]
	cmp r3, r6
	mov r6, #0
	movwge r6, #1
	orr r5, r5, r6
	cmp r5, #0
	beq label75
	mov r5, #0
	ldr r6, [sp, #60]
	cmp r6, #0
	bne label16
	add r4, r4, r5
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
label624:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	b label641
label16:
	ldr r6, [sp, #60]
	cmp r6, #1
	bne label17
	mov r6, #1
	mov r7, #0
	cmp r6, #1073741824
	bge label57
	b label43
label641:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	b label644
label57:
	add r3, r3, #1
	cmp r3, r0
	blt label215
	add r1, r1, #1
	ldr r2, [sp, #4]
	cmp r1, r2
	blt label220
	ldr r0, [sp, #8]
	ldr r1, [sp, #20]
	add r0, r1, r0
	ldr r2, [sp, #52]
	str r7, [r2, r0, lsl #2]
	ldr r1, [sp, #20]
	add r1, r1, #1
	ldr r6, [sp, #24]
	cmp r1, r6
	blt label228
	ldr r1, [sp, #28]
	add r1, r1, #1
	ldr r3, [sp, #32]
	cmp r1, r3
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label63
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label67
	b label66
label215:
	mov r4, r7
	b label11
label233:
	str r1, [sp, #28]
	b label4
label75:
	ldr r6, [sp, #24]
	mla r6, r1, r6, r3
	ldr r5, [sp, #36]
	ldr r5, [r5, r6, lsl #2]
	ldr r6, [sp, #60]
	cmp r6, #0
	bne label16
	add r4, r4, r5
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	b label624
label644:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label49
	b label644
label49:
	cmp r4, #0
	bge label51
	add r4, r4, #1073741824
	cmp r4, #0
	bge label51
	add r4, r4, #1073741824
	cmp r4, #0
	bge label51
	add r4, r4, #1073741824
	cmp r4, #0
	bge label51
	add r4, r4, #1073741824
	cmp r4, #0
	bge label51
	add r4, r4, #1073741824
	cmp r4, #0
	bge label51
	add r4, r4, #1073741824
	cmp r4, #0
	bge label51
	add r4, r4, #1073741824
	cmp r4, #0
	bge label51
	add r4, r4, #1073741824
	cmp r4, #0
	bge label51
	add r4, r4, #1073741824
	cmp r4, #0
	bge label51
	add r4, r4, #1073741824
	cmp r4, #0
	bge label51
label643:
	add r4, r4, #1073741824
	cmp r4, #0
	bge label51
	b label643
label43:
	sdiv r9, r4, r6
	mov r8, #2
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	mls r9, r10, r8, r9
	sdiv r10, r5, r6
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	mls r8, r11, r8, r10
	cmp r9, r8
	bne label46
	lsl r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	b label43
label46:
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	b label43
label17:
	ldr r6, [sp, #60]
	cmp r6, #2
	bne label18
	cmp r4, r5
	ble label39
	mov r7, r4
	add r3, r3, #1
	cmp r3, r0
	blt label215
	add r1, r1, #1
	ldr r2, [sp, #4]
	cmp r1, r2
	blt label220
	ldr r0, [sp, #8]
	ldr r1, [sp, #20]
	add r0, r1, r0
	ldr r2, [sp, #52]
	str r4, [r2, r0, lsl #2]
	ldr r1, [sp, #20]
	add r1, r1, #1
	ldr r6, [sp, #24]
	cmp r1, r6
	blt label228
	ldr r1, [sp, #28]
	add r1, r1, #1
	ldr r3, [sp, #32]
	cmp r1, r3
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label63
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label67
	b label66
label18:
	ldr r6, [sp, #60]
	cmp r6, #3
	bne label19
	mov r6, #1
	mov r7, #0
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	b label587
label19:
	ldr r6, [sp, #60]
	cmp r6, #4
	bne label131
	mov r6, #1
	mov r7, #0
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	sdiv r8, r5, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	sdiv r8, r5, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	sdiv r8, r5, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	b label550
label131:
	mov r7, #0
	add r3, r3, #1
	cmp r3, r0
	blt label215
	add r1, r1, #1
	ldr r2, [sp, #4]
	cmp r1, r2
	blt label220
	ldr r0, [sp, #8]
	ldr r1, [sp, #20]
	add r0, r1, r0
	ldr r2, [sp, #52]
	str r7, [r2, r0, lsl #2]
	ldr r1, [sp, #20]
	add r1, r1, #1
	ldr r6, [sp, #24]
	cmp r1, r6
	blt label228
	ldr r1, [sp, #28]
	add r1, r1, #1
	ldr r3, [sp, #32]
	cmp r1, r3
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label63
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label67
	b label66
label587:
	sdiv r8, r4, r6
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	b label612
label637:
	sdiv r8, r4, r6
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	b label612
label36:
	sdiv r8, r5, r6
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label37
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	b label639
label37:
	lsl r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
label612:
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	b label637
label639:
	sdiv r8, r4, r6
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label36
	b label612
label550:
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
label582:
	sdiv r8, r4, r6
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	sdiv r8, r5, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	b label632
label28:
	lsl r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	sdiv r8, r5, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	sdiv r8, r5, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	sdiv r8, r4, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	sdiv r8, r5, r6
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label28
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	b label582
label39:
	mov r7, r5
	add r3, r3, #1
	cmp r3, r0
	blt label215
	add r1, r1, #1
	ldr r2, [sp, #4]
	cmp r1, r2
	blt label220
	ldr r0, [sp, #8]
	ldr r1, [sp, #20]
	add r0, r1, r0
	ldr r2, [sp, #52]
	str r5, [r2, r0, lsl #2]
	ldr r1, [sp, #20]
	add r1, r1, #1
	ldr r6, [sp, #24]
	cmp r1, r6
	blt label228
	ldr r1, [sp, #28]
	add r1, r1, #1
	ldr r3, [sp, #32]
	cmp r1, r3
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label63
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label67
	b label66
label220:
	mov r4, r7
	cmp r1, #0
	mov r2, #0
	movwlt r2, #1
	ldr r3, [sp, #32]
	cmp r1, r3
	mov r3, #0
	movwge r3, #1
	orr r2, r2, r3
	ldr r3, [sp, #12]
	b label11
label66:
	ldr r2, [sp, #52]
	add r3, r2, r1, lsl #2
	ldr r2, [sp, #52]
	ldr r4, [r2, r1, lsl #2]
	ldr r5, [sp, #36]
	add r2, r5, r1, lsl #2
	str r4, [r5, r1, lsl #2]
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label67
	b label66
label51:
	mov r7, r4
	add r3, r3, #1
	cmp r3, r0
	blt label215
	add r1, r1, #1
	ldr r2, [sp, #4]
	cmp r1, r2
	blt label220
	ldr r0, [sp, #8]
	ldr r1, [sp, #20]
	add r0, r1, r0
	ldr r2, [sp, #52]
	str r4, [r2, r0, lsl #2]
	ldr r1, [sp, #20]
	add r1, r1, #1
	ldr r6, [sp, #24]
	cmp r1, r6
	blt label228
	ldr r1, [sp, #28]
	add r1, r1, #1
	ldr r3, [sp, #32]
	cmp r1, r3
	blt label233
	ldr r2, [sp, #16]
	cmp r2, #0
	ble label63
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label67
	b label66
label632:
	lsl r7, r7, #1
	add r7, r7, #1
	lsl r6, r6, #1
	cmp r6, #1073741824
	bge label57
	b label582
label228:
	str r1, [sp, #20]
	ldr r0, [sp, #48]
	sub r3, r1, r0
	str r3, [sp, #12]
	add r0, r0, r1
	ldr r1, [sp, #0]
	mov r4, #0
	cmp r1, #0
	mov r2, #0
	movwlt r2, #1
	ldr r3, [sp, #32]
	cmp r1, r3
	mov r3, #0
	movwge r3, #1
	orr r2, r2, r3
	ldr r3, [sp, #12]
	b label11
label67:
	add r0, r1, #4
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label70
label69:
	ldr r2, [sp, #52]
	add r3, r2, r1, lsl #2
	ldr r2, [sp, #52]
	ldr r4, [r2, r1, lsl #2]
	ldr r5, [sp, #36]
	add r2, r5, r1, lsl #2
	str r4, [r5, r1, lsl #2]
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label70
	b label69
label70:
	add r0, r1, #4
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label284
	b label74
label284:
	mov r0, r1
	ldr r2, [sp, #52]
	ldr r1, [r2, r1, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label63
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label63
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label63
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label63
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label63
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label63
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label63
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label63
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label63
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label63
label646:
	ldr r2, [sp, #52]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #36]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label63
	b label646
label74:
	ldr r2, [sp, #52]
	add r3, r2, r1, lsl #2
	ldr r2, [sp, #52]
	ldr r4, [r2, r1, lsl #2]
	ldr r5, [sp, #36]
	add r2, r5, r1, lsl #2
	str r4, [r5, r1, lsl #2]
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #16]
	cmp r0, r2
	bge label284
	b label74
label63:
	ldr r0, [sp, #56]
	add r0, r0, #1
	ldr r1, [sp, #44]
	cmp r0, r1
	bge label76
	str r0, [sp, #56]
	ldr r1, [sp, #40]
	ldr r6, [r1, r0, lsl #2]
	str r6, [sp, #60]
	mov r1, #0
	str r1, [sp, #28]
	b label4
label76:
	mov r0, #116
	bl _sysy_stoptime
	ldr r2, [sp, #16]
	ldr r5, [sp, #36]
	mov r0, r2
	mov r1, r5
	bl putarray
	mov r0, #0
	add sp, sp, #68
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
