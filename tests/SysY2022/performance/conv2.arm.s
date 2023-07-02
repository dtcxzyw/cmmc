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
	str r0, [sp, #20]
	bl getint
	mov r7, r0
	str r0, [sp, #12]
	ldr r3, [sp, #20]
	mul r2, r3, r0
	str r2, [sp, #24]
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r6, r0
	str r0, [sp, #28]
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	mov r1, r0
	str r0, [sp, #32]
	bl getarray
	mov r1, r0
	str r0, [sp, #36]
	add r0, r4, r4, lsr #31
	asr r2, r0, #1
	str r2, [sp, #40]
	mov r0, #109
	bl _sysy_starttime
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #44]
	ldr r1, [sp, #36]
	cmp r1, #0
	ble label2
	mov r0, #0
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #52]
	str r0, [sp, #16]
label5:
	ldr r2, [sp, #40]
	ldr r0, [sp, #16]
	sub r3, r0, r2
	str r3, [sp, #0]
	ldr r0, [sp, #16]
	add r3, r2, r0
	str r3, [sp, #4]
	ldr r7, [sp, #12]
	ldr r0, [sp, #16]
	mul r0, r7, r0
	str r0, [sp, #56]
	mov r1, #0
	str r1, [sp, #8]
	ldr r2, [sp, #40]
	sub r0, r1, r2
	add r1, r2, r1
	ldr r3, [sp, #0]
	mov r2, r3
	mov r5, #0
	ldr r3, [sp, #20]
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	mov r4, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	movwlt r6, #1
	orr r6, r3, r6
	ldr r7, [sp, #12]
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label15
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label45
	add r5, r5, r6
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label572
label164:
	str r0, [sp, #16]
	b label5
label638:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label639
label15:
	ldr r7, [sp, #12]
	mla r7, r7, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label45
	add r5, r5, r6
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
label639:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label644
label27:
	add r4, r4, #1
	cmp r1, r4
	bgt label146
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label151
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r8, [r2, r0, lsl #2]
	ldr r1, [sp, #8]
	add r1, r1, #1
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label159
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r3, [sp, #20]
	cmp r3, r0
	bgt label164
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label44
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label35
	b label43
label146:
	mov r5, r8
	cmp r4, #0
	mov r6, #0
	movwlt r6, #1
	orr r6, r3, r6
	ldr r7, [sp, #12]
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label15
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label45
	add r5, r8, r6
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label638
label45:
	ldr r7, [sp, #52]
	cmp r7, #1
	bne label54
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label50
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label50
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label50
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label50
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	b label590
label651:
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label50
	b label623
label50:
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label50
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label50
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label50
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label50
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	b label651
label590:
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label50
label623:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	b label654
label644:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label644
label606:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label638
label151:
	mov r5, r8
	ldr r3, [sp, #20]
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	mov r4, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	movwlt r6, #1
	orr r6, r3, r6
	ldr r7, [sp, #12]
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label15
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label45
	add r5, r8, r6
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label606
label572:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label606
label159:
	str r1, [sp, #8]
	ldr r2, [sp, #40]
	sub r0, r1, r2
	add r1, r2, r1
	ldr r3, [sp, #0]
	mov r2, r3
	mov r5, #0
	ldr r3, [sp, #20]
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	mov r4, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	movwlt r6, #1
	orr r6, r3, r6
	ldr r7, [sp, #12]
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label15
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label45
	add r5, r5, r6
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label572
label54:
	ldr r7, [sp, #52]
	cmp r7, #2
	bne label55
	cmp r5, r6
	mov r8, r5
	movle r8, r6
	add r4, r4, #1
	cmp r1, r4
	bgt label146
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label151
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r8, [r2, r0, lsl #2]
	ldr r1, [sp, #8]
	add r1, r1, #1
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label159
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r3, [sp, #20]
	cmp r3, r0
	bgt label164
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label44
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label35
	b label43
label19:
	cmp r5, #0
	bge label23
	adds r5, r5, #1073741824
	bge label23
	adds r5, r5, #1073741824
	bge label23
	adds r5, r5, #1073741824
	bge label23
	adds r5, r5, #1073741824
	bge label23
	adds r5, r5, #1073741824
	bge label23
	adds r5, r5, #1073741824
	bge label23
	adds r5, r5, #1073741824
	bge label23
	adds r5, r5, #1073741824
	bge label23
	adds r5, r5, #1073741824
	bge label23
	adds r5, r5, #1073741824
	bge label23
label643:
	adds r5, r5, #1073741824
	bge label23
	b label643
label654:
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label50
	b label623
label55:
	ldr r7, [sp, #52]
	cmp r7, #3
	bne label56
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
label635:
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
label666:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	b label635
label37:
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label182
	b label41
label182:
	mov r0, r1
	ldr r2, [sp, #44]
	ldr r1, [r2, r1, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label44
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label44
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label44
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label44
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label44
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label44
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label44
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label44
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label44
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label44
	b label649
label41:
	ldr r2, [sp, #44]
	add r3, r2, r1, lsl #2
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	ldr r6, [sp, #28]
	add r2, r6, r1, lsl #2
	str r4, [r6, r1, lsl #2]
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label182
	b label41
label44:
	ldr r0, [sp, #48]
	add r0, r0, #1
	ldr r1, [sp, #36]
	cmp r1, r0
	ble label2
	b label349
label649:
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label44
	b label649
label73:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label74
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	b label666
label74:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label73
	b label635
label43:
	ldr r2, [sp, #44]
	add r3, r2, r1, lsl #2
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	ldr r6, [sp, #28]
	add r2, r6, r1, lsl #2
	str r4, [r6, r1, lsl #2]
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label35
	b label43
label56:
	ldr r7, [sp, #52]
	cmp r7, #4
	bne label268
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	b label563
label268:
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	bgt label146
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label151
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r8, [r2, r0, lsl #2]
	ldr r1, [sp, #8]
	add r1, r1, #1
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label159
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r3, [sp, #20]
	cmp r3, r0
	bgt label164
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label44
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label35
	b label43
label657:
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	b label599
label61:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	b label657
label599:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	b label599
label563:
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label27
	b label599
label35:
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label37
label42:
	ldr r2, [sp, #44]
	add r3, r2, r1, lsl #2
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	ldr r6, [sp, #28]
	add r2, r6, r1, lsl #2
	str r4, [r6, r1, lsl #2]
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label37
	b label42
label23:
	mov r8, r5
	add r4, r4, #1
	cmp r1, r4
	bgt label146
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label151
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r5, [r2, r0, lsl #2]
	ldr r1, [sp, #8]
	add r1, r1, #1
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label159
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r3, [sp, #20]
	cmp r3, r0
	bgt label164
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label44
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label35
	b label43
label349:
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #52]
	mov r0, #0
	str r0, [sp, #16]
	b label5
label2:
	mov r0, #116
	bl _sysy_stoptime
	ldr r2, [sp, #24]
	ldr r6, [sp, #28]
	mov r0, r2
	mov r1, r6
	bl putarray
	mov r0, #0
	add sp, sp, #68
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
