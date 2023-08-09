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
	sub r3, r2, #4
	str r2, [sp, #20]
	sub r2, r2, #20
	str r3, [sp, #32]
	str r2, [sp, #36]
	str r0, [sp, #40]
	mov r0, #0
	str r4, [sp, #44]
	str r0, [sp, #48]
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r7, [r4, #0]
	mov r1, #0
	str r7, [sp, #52]
	str r0, [sp, #56]
	str r1, [sp, #12]
	b label5
.p2align 4
label136:
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r1, [sp, #4]
	ldr r7, [sp, #28]
	add r0, r1, #1
	cmp r7, r0
	bgt label32
.p2align 4
label410:
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	ble label428
.p2align 4
label57:
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
	str r1, [sp, #4]
	mov r5, #0
	sub r4, r1, r0
	add r0, r0, r1
	str r4, [sp, #0]
	ldr r1, [sp, #64]
.p2align 4
label11:
	ldr r2, [sp, #24]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	ldr r4, [sp, #0]
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
	bne label109
	ldr r7, [sp, #28]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label20
	cmp r7, #1
	beq label263
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label286
	cmp r7, #4
	beq label290
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label29
.p2align 4
label479:
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r1, [sp, #4]
	ldr r7, [sp, #28]
	add r0, r1, #1
	cmp r7, r0
	bgt label32
	b label480
.p2align 4
label312:
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	bge label423
.p2align 4
label72:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label312
.p2align 4
label313:
	mov r9, #1
	add r8, r9, r8, lsl #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label72
.p2align 4
label320:
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r1, [sp, #4]
	ldr r7, [sp, #28]
	add r0, r1, #1
	cmp r7, r0
	ble label441
.p2align 4
label32:
	ldr r1, [sp, #8]
	mov r5, #0
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r1, r1, #4
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #40]
	ldr r1, [sp, #4]
	sub r4, r1, r0
	add r3, r3, r4, lsl #2
	add r0, r0, r1
	str r4, [sp, #0]
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
	bne label109
	ldr r7, [sp, #28]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label20
	cmp r7, #1
	beq label263
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label286
	cmp r7, #4
	beq label290
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	b label479
.p2align 4
label428:
	ldr r2, [sp, #20]
	cmp r2, #0
	ble label54
.p2align 4
label35:
	ldr r2, [sp, #20]
	cmp r2, #4
	ble label161
	ldr r3, [sp, #32]
	cmp r3, #16
	ble label37
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	mov r1, #0
.p2align 4
label44:
	ldr r4, [r0, #0]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r2, r3, r1, lsl #2
	add r1, r1, #16
	str r4, [r2, #0]
	ldr r3, [r0, #4]
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	str r3, [r2, #8]
	ldr r3, [r0, #12]
	str r3, [r2, #12]
	ldr r3, [r0, #16]
	str r3, [r2, #16]
	ldr r3, [r0, #20]
	str r3, [r2, #20]
	ldr r3, [r0, #24]
	str r3, [r2, #24]
	ldr r3, [r0, #28]
	str r3, [r2, #28]
	ldr r3, [r0, #32]
	str r3, [r2, #32]
	ldr r3, [r0, #36]
	str r3, [r2, #36]
	ldr r3, [r0, #40]
	str r3, [r2, #40]
	ldr r3, [r0, #44]
	str r3, [r2, #44]
	ldr r3, [r0, #48]
	str r3, [r2, #48]
	ldr r3, [r0, #52]
	str r3, [r2, #52]
	ldr r3, [r0, #56]
	str r3, [r2, #56]
	ldr r3, [r0, #60]
	str r3, [r2, #60]
	ldr r2, [sp, #36]
	cmp r2, r1
	ble label47
	add r0, r0, #64
	b label44
.p2align 4
label109:
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label112
.p2align 4
label20:
	add r5, r5, r6
	cmp r5, #1073741824
	ble label117
.p2align 4
label21:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	bgt label21
	cmp r5, #0
	bge label126
.p2align 4
label25:
	adds r5, r5, #1073741824
	blt label25
	add r4, r4, #1
	cmp r0, r4
	ble label136
.p2align 4
label29:
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
	bne label109
	ldr r7, [sp, #28]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label20
	cmp r7, #1
	beq label263
	cmp r7, #2
	bne label445
.p2align 4
label63:
	cmp r5, r6
	add r4, r4, #1
	movle r5, r6
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r1, [sp, #4]
	ldr r7, [sp, #28]
	add r0, r1, #1
	cmp r7, r0
	bgt label32
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label57
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label35
	b label54
.p2align 4
label263:
	mov r7, #1
	mov r8, #0
.p2align 4
label59:
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
	blt label59
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r1, [sp, #4]
	ldr r7, [sp, #28]
	add r0, r1, #1
	cmp r7, r0
	bgt label32
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label57
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label35
	b label54
.p2align 4
label112:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label263
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label286
	cmp r7, #4
	bne label443
.p2align 4
label290:
	mov r7, #1
	mov r8, #0
	b label66
.p2align 4
label295:
	mov r9, #0
	add r8, r9, r8, lsl #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label303
.p2align 4
label66:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label295
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	blt label66
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r1, [sp, #4]
	ldr r7, [sp, #28]
	add r0, r1, #1
	cmp r7, r0
	bgt label32
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label57
label453:
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label35
	b label54
.p2align 4
label47:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	add r0, r0, r1, lsl #2
	b label38
.p2align 4
label42:
	add r0, r0, #16
.p2align 4
label38:
	ldr r4, [r0, #0]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r2, r3, r1, lsl #2
	add r1, r1, #4
	str r4, [r2, #0]
	ldr r3, [r0, #4]
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	str r3, [r2, #8]
	ldr r3, [r0, #12]
	str r3, [r2, #12]
	ldr r3, [sp, #32]
	cmp r3, r1
	bgt label42
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r0, r0, r1, lsl #2
	ldr r2, [r0, #0]
	str r2, [r3, r1, lsl #2]
	ldr r2, [sp, #20]
	add r1, r1, #1
	cmp r2, r1
	ble label393
.p2align 4
label53:
	add r0, r0, #4
	ldr r2, [r0, #0]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	str r2, [r3, r1, lsl #2]
	ldr r2, [sp, #20]
	add r1, r1, #1
	cmp r2, r1
	bgt label53
.p2align 4
label249:
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	ble label55
.p2align 4
label56:
	ldr r1, [sp, #44]
	add r1, r1, #4
	str r1, [sp, #44]
	str r0, [sp, #48]
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r7, [r1, #0]
	mov r1, #0
	str r7, [sp, #52]
	str r0, [sp, #56]
	str r1, [sp, #12]
	b label5
.p2align 4
label445:
	ldr r7, [sp, #52]
	cmp r7, #3
	bne label459
.p2align 4
label286:
	mov r7, #1
	mov r8, #0
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label313
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	blt label72
	b label320
.p2align 4
label423:
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r1, [sp, #4]
	ldr r7, [sp, #28]
	add r0, r1, #1
	cmp r7, r0
	bgt label32
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label57
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label35
	b label54
.p2align 4
label303:
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r1, [sp, #4]
	ldr r7, [sp, #28]
	add r0, r1, #1
	cmp r7, r0
	bgt label32
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label57
	b label453
.p2align 4
label459:
	ldr r7, [sp, #52]
	cmp r7, #4
	beq label290
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r1, [sp, #4]
	ldr r7, [sp, #28]
	add r0, r1, #1
	cmp r7, r0
	bgt label32
	b label480
.p2align 4
label443:
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r1, [sp, #4]
	ldr r7, [sp, #28]
	add r0, r1, #1
	cmp r7, r0
	bgt label32
.p2align 4
label480:
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label57
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label35
	b label54
.p2align 4
label117:
	cmp r5, #0
	blt label25
.p2align 4
label126:
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r1, [sp, #4]
	ldr r7, [sp, #28]
	add r0, r1, #1
	cmp r7, r0
	bgt label32
	b label410
label37:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	mov r1, #0
	b label38
.p2align 4
label441:
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label57
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label35
	b label54
label161:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	mov r1, #0
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	ldr r2, [r0, #0]
	str r2, [r3, r1, lsl #2]
	ldr r2, [sp, #20]
	add r1, r1, #1
	cmp r2, r1
	bgt label53
	b label249
label55:
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
label54:
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label56
	b label55
.p2align 4
label393:
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label56
	b label55
