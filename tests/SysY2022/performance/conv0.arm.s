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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[68] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #76
	bl getint
	mov r5, r0
	bl getint
	str r0, [sp, #24]
	mov r2, r0
	bl getint
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	str r0, [sp, #28]
	mov r7, r0
	mov r0, r3
	bl getarray
	movw r4, #:lower16:kernelid
	movt r4, #:upper16:kernelid
	mov r0, r4
	bl getarray
	str r0, [sp, #16]
	mov r1, r0
	mov r0, #109
	bl _sysy_starttime
	ldr r2, [sp, #24]
	add r0, r5, r5, lsr #31
	ldr r7, [sp, #28]
	asr r0, r0, #1
	mul r2, r2, r7
	sub r3, r2, #3
	str r2, [sp, #20]
	sub r2, r2, #18
	str r3, [sp, #32]
	str r2, [sp, #36]
	str r0, [sp, #40]
	mov r0, #0
	str r4, [sp, #44]
	str r0, [sp, #48]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r7, [r4, #0]
	mov r1, #0
	str r7, [sp, #52]
	str r2, [sp, #56]
	str r1, [sp, #12]
	b label5
.p2align 4
label185:
	cmp r5, #0
	blt label45
.p2align 4
label194:
	add r4, r4, #1
	cmp r0, r4
	bgt label49
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label80
.p2align 4
label433:
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	ble label451
.p2align 4
label53:
	ldr r7, [sp, #28]
	ldr r1, [sp, #56]
	add r1, r1, r7, lsl #2
	str r1, [sp, #56]
	str r0, [sp, #12]
	mov r1, r0
.p2align 4
label5:
	ldr r0, [sp, #40]
	ldr r1, [sp, #12]
	sub r1, r1, r0
	str r1, [sp, #64]
	ldr r1, [sp, #12]
	add r2, r0, r1
	str r2, [sp, #60]
	ldr r1, [sp, #56]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0]
	mov r5, #0
	sub r4, r1, r0
	add r0, r0, r1
	str r4, [sp, #4]
	ldr r1, [sp, #64]
.p2align 4
label11:
	ldr r2, [sp, #24]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	ldr r4, [sp, #4]
	cmp r2, r1
	add r3, r3, r4, lsl #2
	mov r2, #0
	movwle r2, #1
	orr r6, r1, r4
	ldr r7, [sp, #28]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r2, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label111
.p2align 4
label112:
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label40
	cmp r7, #1
	bne label119
.p2align 4
label120:
	mov r7, #1
	mov r8, #0
.p2align 4
label21:
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
	blt label21
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label49
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label80
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label53
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label58
	b label55
.p2align 4
label111:
	ldr r7, [sp, #28]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label40
	cmp r7, #1
	beq label120
	cmp r7, #2
	beq label25
	cmp r7, #3
	bne label470
.p2align 4
label143:
	mov r7, #1
	mov r8, #0
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label403
.p2align 4
label170:
	mov r9, #1
	lsl r7, r7, #1
	add r8, r9, r8, lsl #1
	cmp r7, #1073741824
	bge label407
.p2align 4
label34:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label170
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	blt label34
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	ble label448
.p2align 4
label49:
	add r3, r3, #4
	orr r6, r1, r4
	ldr r7, [sp, #28]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r2, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label112
	ldr r7, [sp, #28]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label434
.p2align 4
label40:
	add r5, r5, r6
	cmp r5, #1073741824
	ble label185
.p2align 4
label41:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	bgt label41
	cmp r5, #0
	bge label194
.p2align 4
label45:
	adds r5, r5, #1073741824
	blt label45
	add r4, r4, #1
	cmp r0, r4
	bgt label49
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	ble label433
.p2align 4
label80:
	ldr r1, [sp, #8]
	mov r5, #0
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r1, r1, #4
	str r1, [sp, #8]
	str r0, [sp, #0]
	ldr r0, [sp, #40]
	ldr r1, [sp, #0]
	sub r4, r1, r0
	add r3, r3, r4, lsl #2
	add r0, r0, r1
	str r4, [sp, #4]
	ldr r1, [sp, #64]
	ldr r2, [sp, #24]
	ldr r7, [sp, #28]
	orr r6, r1, r4
	cmp r2, r1
	lsr r6, r6, #31
	mov r2, #0
	and r6, r6, #1
	movwle r2, #1
	cmp r7, r4
	orr r6, r2, r6
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label112
	ldr r7, [sp, #28]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label40
	cmp r7, #1
	beq label120
	cmp r7, #2
	beq label25
	cmp r7, #3
	beq label143
	cmp r7, #4
	beq label147
	add r4, r4, #1
	cmp r0, r4
	bgt label49
	b label493
.p2align 4
label451:
	ldr r2, [sp, #20]
	cmp r2, #0
	ble label55
.p2align 4
label58:
	ldr r2, [sp, #20]
	cmp r2, #3
	ble label236
	ldr r3, [sp, #32]
	cmp r3, #15
	ble label255
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	mov r1, #0
	mov r0, r3
.p2align 4
label76:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r2, r2, r1, lsl #2
	add r1, r1, #16
	ldr r3, [r2, #0]
	str r3, [r0, #0]
	ldr r3, [r2, #4]
	str r3, [r0, #4]
	ldr r3, [r2, #8]
	str r3, [r0, #8]
	ldr r3, [r2, #12]
	str r3, [r0, #12]
	ldr r3, [r2, #16]
	str r3, [r0, #16]
	ldr r3, [r2, #20]
	str r3, [r0, #20]
	ldr r3, [r2, #24]
	str r3, [r0, #24]
	ldr r3, [r2, #28]
	str r3, [r0, #28]
	ldr r3, [r2, #32]
	str r3, [r0, #32]
	ldr r3, [r2, #36]
	str r3, [r0, #36]
	ldr r3, [r2, #40]
	str r3, [r0, #40]
	ldr r3, [r2, #44]
	str r3, [r0, #44]
	ldr r3, [r2, #48]
	str r3, [r0, #48]
	ldr r3, [r2, #52]
	str r3, [r0, #52]
	ldr r3, [r2, #56]
	str r3, [r0, #56]
	ldr r2, [r2, #60]
	str r2, [r0, #60]
	ldr r2, [sp, #36]
	cmp r2, r1
	ble label332
	add r0, r0, #64
	b label76
.p2align 4
label332:
	mov r2, r1
	ldr r3, [sp, #32]
	cmp r3, r1
	ble label418
.p2align 4
label70:
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	mov r1, r2
	add r0, r3, r2, lsl #2
.p2align 4
label71:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r2, r2, r1, lsl #2
	add r1, r1, #4
	ldr r3, [r2, #0]
	str r3, [r0, #0]
	ldr r3, [r2, #4]
	str r3, [r0, #4]
	ldr r3, [r2, #8]
	str r3, [r0, #8]
	ldr r2, [r2, #12]
	str r2, [r0, #12]
	ldr r3, [sp, #32]
	cmp r3, r1
	ble label278
	add r0, r0, #16
	b label71
.p2align 4
label278:
	ldr r2, [sp, #20]
	cmp r2, r1
	ble label417
.p2align 4
label61:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r0, r2, r1, lsl #2
.p2align 4
label62:
	ldr r2, [r0, #0]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	str r2, [r3, r1, lsl #2]
	ldr r2, [sp, #20]
	add r1, r1, #1
	cmp r2, r1
	ble label250
	add r0, r0, #4
	b label62
.p2align 4
label434:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label120
	cmp r7, #2
	bne label468
.p2align 4
label25:
	cmp r5, r6
	add r4, r4, #1
	movle r5, r6
	cmp r0, r4
	bgt label49
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label80
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label53
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label58
	b label55
.p2align 4
label119:
	ldr r7, [sp, #52]
	cmp r7, #2
	beq label25
	cmp r7, #3
	beq label143
	cmp r7, #4
	bne label439
.p2align 4
label147:
	mov r7, #1
	mov r8, #0
	b label28
.p2align 4
label152:
	mov r9, #0
	add r8, r9, r8, lsl #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label160
.p2align 4
label28:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label152
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	blt label28
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label49
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label80
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label53
label462:
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label58
	b label55
.p2align 4
label250:
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	ble label57
.p2align 4
label56:
	ldr r1, [sp, #44]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r1, r1, #4
	str r1, [sp, #44]
	str r0, [sp, #48]
	ldr r7, [r1, #0]
	mov r1, #0
	str r7, [sp, #52]
	str r2, [sp, #56]
	str r1, [sp, #12]
	b label5
.p2align 4
label407:
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label49
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label80
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label53
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label58
	b label55
.p2align 4
label468:
	ldr r7, [sp, #52]
	cmp r7, #3
	beq label143
	cmp r7, #4
	beq label147
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label49
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label80
	b label486
.p2align 4
label160:
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label49
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label80
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label53
	b label462
.p2align 4
label439:
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label49
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label80
.p2align 4
label486:
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label53
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label58
	b label55
.p2align 4
label448:
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label80
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label53
label466:
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label58
	b label55
.p2align 4
label470:
	ldr r7, [sp, #52]
	cmp r7, #4
	beq label147
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label49
.p2align 4
label493:
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label80
	b label486
label236:
	mov r1, #0
	ldr r2, [sp, #20]
	cmp r2, r1
	bgt label61
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label56
	b label57
label255:
	mov r2, #0
	mov r1, r2
	ldr r3, [sp, #32]
	cmp r3, r2
	bgt label70
	ldr r2, [sp, #20]
	cmp r2, r1
	bgt label61
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label56
	b label57
.p2align 4
label418:
	ldr r2, [sp, #20]
	cmp r2, r1
	bgt label61
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label56
label57:
	mov r0, #116
	bl _sysy_stoptime
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	ldr r2, [sp, #20]
	mov r0, r2
	mov r1, r3
	bl putarray
	add sp, sp, #76
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label403:
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	blt label34
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label49
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label80
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label53
	b label466
label55:
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label56
	b label57
.p2align 4
label417:
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label56
	b label57
