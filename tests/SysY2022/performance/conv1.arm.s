.arch armv7ve
.data
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
	sub sp, sp, #60
	bl getint
	str r0, [sp, #20]
	bl getint
	mov r6, r0
	str r0, [sp, #16]
	bl getint
	mov r5, r0
	str r0, [sp, #8]
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r5, r0
	str r0, [sp, #12]
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	mov r1, r0
	str r0, [sp, #24]
	bl getarray
	mov r1, r0
	str r0, [sp, #28]
	mov r0, #109
	bl _sysy_starttime
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #36]
	ldr r5, [sp, #8]
	ldr r6, [sp, #16]
	mul r2, r6, r5
	str r2, [sp, #32]
	ldr r1, [sp, #28]
	cmp r1, #0
	ble label2
	mov r0, #0
	str r0, [sp, #40]
	ldr r1, [sp, #24]
	ldr r6, [r1, r0, lsl #2]
	str r6, [sp, #44]
	mov r1, #0
	str r1, [sp, #48]
	ldr r5, [sp, #8]
	mul r0, r1, r5
	str r0, [sp, #52]
	str r1, [sp, #0]
label7:
	ldr r0, [sp, #20]
	add r0, r0, r0, lsr #31
	asr r3, r0, #1
	ldr r1, [sp, #48]
	sub r0, r1, r3
	ldr r1, [sp, #0]
	sub r1, r1, r3
	str r1, [sp, #4]
	ldr r1, [sp, #0]
	add r2, r1, r3
	ldr r1, [sp, #48]
	add r3, r1, r3
	mov r4, #0
label9:
	ldr r1, [sp, #4]
label12:
	cmp r0, #0
	bge label15
	mov r5, #0
	ldr r6, [sp, #44]
	cmp r6, #0
	bne label48
	add r4, r4, r5
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	b label753
label169:
	str r1, [sp, #0]
	b label7
label71:
	mov r4, r5
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	cmp r0, r3
	blt label9
	ldr r0, [sp, #52]
	ldr r1, [sp, #0]
	add r0, r1, r0
	ldr r2, [sp, #36]
	str r5, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	add r1, r1, #1
	ldr r5, [sp, #8]
	cmp r1, r5
	blt label169
	ldr r1, [sp, #48]
	add r1, r1, #1
	ldr r6, [sp, #16]
	cmp r1, r6
	blt label174
	ldr r2, [sp, #32]
	cmp r2, #0
	ble label47
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label39
	b label38
label15:
	cmp r1, #0
	bge label16
	mov r5, #0
	ldr r6, [sp, #44]
	cmp r6, #0
	bne label48
	add r4, r4, r5
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	b label786
label16:
	ldr r6, [sp, #16]
	cmp r0, r6
	blt label17
	mov r5, #0
	ldr r6, [sp, #44]
	cmp r6, #0
	bne label48
	add r4, r4, r5
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
label786:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
label790:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	b label790
label782:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	b label786
label48:
	ldr r6, [sp, #44]
	cmp r6, #1
	bne label49
	mov r7, #1
	mov r6, #0
	cmp r7, #1073741824
	bge label418
label75:
	sdiv r9, r4, r7
	add r8, r9, r9, lsr #31
	asr r10, r8, #1
	mov r8, #2
	mul r10, r10, r8
	sub r9, r9, r10
	sdiv r10, r5, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	mul r8, r11, r8
	sub r8, r10, r8
	cmp r9, r8
	bne label78
	lsl r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label418
	b label75
label78:
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label418
	b label75
label753:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	b label782
label22:
	cmp r4, #0
	bge label30
	add r4, r4, #1073741824
	cmp r4, #0
	bge label30
	add r4, r4, #1073741824
	cmp r4, #0
	bge label30
	add r4, r4, #1073741824
	cmp r4, #0
	bge label30
	add r4, r4, #1073741824
	cmp r4, #0
	bge label30
	add r4, r4, #1073741824
	cmp r4, #0
	bge label30
	add r4, r4, #1073741824
	cmp r4, #0
	bge label30
	add r4, r4, #1073741824
	cmp r4, #0
	bge label30
	add r4, r4, #1073741824
	cmp r4, #0
	bge label30
	add r4, r4, #1073741824
	cmp r4, #0
	bge label30
	add r4, r4, #1073741824
	cmp r4, #0
	bge label30
label789:
	add r4, r4, #1073741824
	cmp r4, #0
	bge label30
	b label789
label30:
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	cmp r0, r3
	blt label9
	ldr r0, [sp, #52]
	ldr r1, [sp, #0]
	add r0, r1, r0
	ldr r2, [sp, #36]
	str r4, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	add r1, r1, #1
	ldr r5, [sp, #8]
	cmp r1, r5
	blt label169
	ldr r1, [sp, #48]
	add r1, r1, #1
	ldr r6, [sp, #16]
	cmp r1, r6
	blt label174
	ldr r2, [sp, #32]
	cmp r2, #0
	ble label47
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label39
	b label38
label17:
	ldr r5, [sp, #8]
	cmp r1, r5
	blt label18
	mov r5, #0
	ldr r6, [sp, #44]
	cmp r6, #0
	bne label48
	add r4, r4, r5
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	b label786
label18:
	ldr r5, [sp, #8]
	mla r6, r0, r5, r1
	ldr r5, [sp, #12]
	ldr r5, [r5, r6, lsl #2]
	ldr r6, [sp, #44]
	cmp r6, #0
	bne label48
	add r4, r4, r5
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label22
	b label786
label418:
	mov r4, r6
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	cmp r0, r3
	blt label9
	ldr r0, [sp, #52]
	ldr r1, [sp, #0]
	add r0, r1, r0
	ldr r2, [sp, #36]
	str r6, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	add r1, r1, #1
	ldr r5, [sp, #8]
	cmp r1, r5
	blt label169
	ldr r1, [sp, #48]
	add r1, r1, #1
	ldr r6, [sp, #16]
	cmp r1, r6
	blt label174
	ldr r2, [sp, #32]
	cmp r2, #0
	ble label47
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label39
	b label38
label49:
	ldr r6, [sp, #44]
	cmp r6, #2
	bne label50
	cmp r4, r5
	ble label71
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	cmp r0, r3
	blt label9
	ldr r0, [sp, #52]
	ldr r1, [sp, #0]
	add r0, r1, r0
	ldr r2, [sp, #36]
	str r4, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	add r1, r1, #1
	ldr r5, [sp, #8]
	cmp r1, r5
	blt label169
	ldr r1, [sp, #48]
	add r1, r1, #1
	ldr r6, [sp, #16]
	cmp r1, r6
	blt label174
	ldr r2, [sp, #32]
	cmp r2, #0
	ble label47
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label39
	b label38
label50:
	ldr r6, [sp, #44]
	cmp r6, #3
	bne label60
	mov r7, #1
	mov r6, #0
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mov r10, #2
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	b label741
label370:
	mov r4, r6
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	cmp r0, r3
	blt label9
	ldr r0, [sp, #52]
	ldr r1, [sp, #0]
	add r0, r1, r0
	ldr r2, [sp, #36]
	str r6, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	add r1, r1, #1
	ldr r5, [sp, #8]
	cmp r1, r5
	blt label169
	ldr r1, [sp, #48]
	add r1, r1, #1
	ldr r6, [sp, #16]
	cmp r1, r6
	blt label174
	ldr r2, [sp, #32]
	cmp r2, #0
	ble label47
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label39
	b label38
label741:
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mov r10, #2
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	b label770
label60:
	ldr r6, [sp, #44]
	cmp r6, #4
	bne label390
	mov r7, #1
	mov r6, #0
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mov r10, #2
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	sdiv r8, r5, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	sdiv r8, r5, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	sdiv r8, r5, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	b label718
label390:
	mov r4, #0
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	cmp r0, r3
	blt label9
	ldr r0, [sp, #52]
	ldr r1, [sp, #0]
	add r0, r1, r0
	ldr r2, [sp, #36]
	str r4, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	add r1, r1, #1
	ldr r5, [sp, #8]
	cmp r1, r5
	blt label169
	ldr r1, [sp, #48]
	add r1, r1, #1
	ldr r6, [sp, #16]
	cmp r1, r6
	blt label174
	ldr r2, [sp, #32]
	cmp r2, #0
	ble label47
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label39
	b label38
label44:
	ldr r2, [sp, #36]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #32]
	cmp r0, r2
	bge label47
	ldr r2, [sp, #36]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #32]
	cmp r0, r2
	bge label47
	ldr r2, [sp, #36]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #32]
	cmp r0, r2
	bge label47
	ldr r2, [sp, #36]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #32]
	cmp r0, r2
	bge label47
	ldr r2, [sp, #36]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #32]
	cmp r0, r2
	bge label47
	ldr r2, [sp, #36]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #32]
	cmp r0, r2
	bge label47
	ldr r2, [sp, #36]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #32]
	cmp r0, r2
	bge label47
	ldr r2, [sp, #36]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #32]
	cmp r0, r2
	bge label47
	ldr r2, [sp, #36]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #32]
	cmp r0, r2
	bge label47
	ldr r2, [sp, #36]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #32]
	cmp r0, r2
	bge label47
	b label794
label47:
	ldr r0, [sp, #40]
	add r0, r0, #1
	ldr r1, [sp, #28]
	cmp r0, r1
	bge label2
	b label491
label794:
	ldr r2, [sp, #36]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #32]
	cmp r0, r2
	bge label47
	b label794
label770:
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	b label799
label58:
	lsl r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mov r10, #2
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	b label770
label799:
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mov r10, #2
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	b label770
label57:
	sdiv r8, r5, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mov r10, #2
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label58
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	b label799
label394:
	mov r4, r6
	add r1, r1, #1
	cmp r1, r2
	blt label12
	add r0, r0, #1
	cmp r0, r3
	blt label9
	ldr r0, [sp, #52]
	ldr r1, [sp, #0]
	add r0, r1, r0
	ldr r2, [sp, #36]
	str r6, [r2, r0, lsl #2]
	ldr r1, [sp, #0]
	add r1, r1, #1
	ldr r5, [sp, #8]
	cmp r1, r5
	blt label169
	ldr r1, [sp, #48]
	add r1, r1, #1
	ldr r6, [sp, #16]
	cmp r1, r6
	blt label174
	ldr r2, [sp, #32]
	cmp r2, #0
	ble label47
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label39
	b label38
label69:
	lsl r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mov r10, #2
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	sdiv r8, r5, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	sdiv r8, r5, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	sdiv r8, r5, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
label751:
	sdiv r8, r4, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mov r10, #2
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	b label780
label809:
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	b label751
label718:
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	b label751
label780:
	sdiv r8, r5, r7
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	mov r10, #2
	mul r9, r9, r10
	sub r8, r8, r9
	cmp r8, #1
	bne label69
	b label809
label174:
	str r1, [sp, #48]
	ldr r5, [sp, #8]
	mul r0, r1, r5
	str r0, [sp, #52]
	mov r1, #0
	str r1, [sp, #0]
	b label7
label39:
	add r1, r0, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label42
	b label41
label38:
	ldr r5, [sp, #12]
	add r3, r5, r0, lsl #2
	ldr r2, [sp, #36]
	add r4, r2, r0, lsl #2
	ldr r2, [sp, #36]
	ldr r2, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r2, [r5, r0, lsl #2]
	ldr r0, [r4, #4]
	str r0, [r3, #4]
	ldr r0, [r4, #8]
	str r0, [r3, #8]
	ldr r0, [r4, #12]
	str r0, [r3, #12]
	ldr r0, [r4, #16]
	str r0, [r3, #16]
	ldr r0, [r4, #20]
	str r0, [r3, #20]
	ldr r0, [r4, #24]
	str r0, [r3, #24]
	ldr r0, [r4, #28]
	str r0, [r3, #28]
	ldr r0, [r4, #32]
	str r0, [r3, #32]
	ldr r0, [r4, #36]
	str r0, [r3, #36]
	ldr r0, [r4, #40]
	str r0, [r3, #40]
	ldr r0, [r4, #44]
	str r0, [r3, #44]
	ldr r0, [r4, #48]
	str r0, [r3, #48]
	ldr r0, [r4, #52]
	str r0, [r3, #52]
	ldr r0, [r4, #56]
	str r0, [r3, #56]
	ldr r0, [r4, #60]
	str r0, [r3, #60]
	mov r0, r1
	add r1, r1, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label39
	b label38
label41:
	ldr r5, [sp, #12]
	add r3, r5, r0, lsl #2
	ldr r2, [sp, #36]
	add r4, r2, r0, lsl #2
	ldr r2, [sp, #36]
	ldr r2, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r2, [r5, r0, lsl #2]
	ldr r0, [r4, #4]
	str r0, [r3, #4]
	ldr r0, [r4, #8]
	str r0, [r3, #8]
	ldr r0, [r4, #12]
	str r0, [r3, #12]
	ldr r0, [r4, #16]
	str r0, [r3, #16]
	ldr r0, [r4, #20]
	str r0, [r3, #20]
	ldr r0, [r4, #24]
	str r0, [r3, #24]
	ldr r0, [r4, #28]
	str r0, [r3, #28]
	ldr r0, [r4, #32]
	str r0, [r3, #32]
	ldr r0, [r4, #36]
	str r0, [r3, #36]
	ldr r0, [r4, #40]
	str r0, [r3, #40]
	ldr r0, [r4, #44]
	str r0, [r3, #44]
	ldr r0, [r4, #48]
	str r0, [r3, #48]
	ldr r0, [r4, #52]
	str r0, [r3, #52]
	ldr r0, [r4, #56]
	str r0, [r3, #56]
	ldr r0, [r4, #60]
	str r0, [r3, #60]
	mov r0, r1
	add r1, r1, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label42
	b label41
label42:
	add r1, r0, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label44
label46:
	ldr r5, [sp, #12]
	add r3, r5, r0, lsl #2
	ldr r2, [sp, #36]
	add r4, r2, r0, lsl #2
	ldr r2, [sp, #36]
	ldr r2, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r2, [r5, r0, lsl #2]
	ldr r0, [r4, #4]
	str r0, [r3, #4]
	ldr r0, [r4, #8]
	str r0, [r3, #8]
	ldr r0, [r4, #12]
	str r0, [r3, #12]
	ldr r0, [r4, #16]
	str r0, [r3, #16]
	ldr r0, [r4, #20]
	str r0, [r3, #20]
	ldr r0, [r4, #24]
	str r0, [r3, #24]
	ldr r0, [r4, #28]
	str r0, [r3, #28]
	ldr r0, [r4, #32]
	str r0, [r3, #32]
	ldr r0, [r4, #36]
	str r0, [r3, #36]
	ldr r0, [r4, #40]
	str r0, [r3, #40]
	ldr r0, [r4, #44]
	str r0, [r3, #44]
	ldr r0, [r4, #48]
	str r0, [r3, #48]
	ldr r0, [r4, #52]
	str r0, [r3, #52]
	ldr r0, [r4, #56]
	str r0, [r3, #56]
	ldr r0, [r4, #60]
	str r0, [r3, #60]
	mov r0, r1
	add r1, r1, #16
	ldr r2, [sp, #32]
	cmp r1, r2
	bge label44
	b label46
label491:
	str r0, [sp, #40]
	ldr r1, [sp, #24]
	ldr r6, [r1, r0, lsl #2]
	str r6, [sp, #44]
	mov r1, #0
	str r1, [sp, #48]
	ldr r5, [sp, #8]
	mul r0, r1, r5
	str r0, [sp, #52]
	str r1, [sp, #0]
	b label7
label2:
	mov r0, #116
	bl _sysy_stoptime
	ldr r2, [sp, #32]
	mov r0, r2
	ldr r5, [sp, #12]
	mov r1, r5
	bl putarray
	mov r0, #0
	add sp, sp, #60
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
