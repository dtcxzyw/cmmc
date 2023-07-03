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
	ble label75
	mov r0, #0
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #52]
	str r0, [sp, #16]
label4:
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
label11:
	cmp r4, #0
	mov r6, #0
	movwlt r6, #1
	orr r6, r3, r6
	ldr r7, [sp, #12]
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label114
	mov r6, #0
label14:
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label43
	add r5, r5, r6
	cmp r5, #1073741824
	ble label17
label23:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label17
	b label23
label25:
	add r4, r4, #1
	cmp r1, r4
	bgt label141
	b label27
label141:
	mov r5, r8
	b label11
label27:
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label146
	b label28
label146:
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
	b label11
label28:
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r8, [r2, r0, lsl #2]
	ldr r1, [sp, #8]
	add r1, r1, #1
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label154
	b label29
label154:
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
	b label11
label29:
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r3, [sp, #20]
	cmp r3, r0
	bgt label159
	b label30
label159:
	str r0, [sp, #16]
	b label4
label30:
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label42
	mov r1, #0
label31:
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
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
	b label31
label43:
	ldr r7, [sp, #52]
	cmp r7, #1
	bne label52
	mov r7, #1
	mov r8, #0
label44:
	cmp r7, #1073741824
	bge label25
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
	lsl r8, r8, #1
	lsl r7, r7, #1
	b label44
label17:
	cmp r5, #0
	bge label126
label19:
	adds r5, r5, #1073741824
	bge label126
	b label19
label48:
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	b label44
label52:
	ldr r7, [sp, #52]
	cmp r7, #2
	bne label53
	cmp r5, r6
	mov r8, r5
	movle r8, r6
	b label25
label53:
	ldr r7, [sp, #52]
	cmp r7, #3
	bne label54
	mov r7, #1
	mov r8, #0
	b label64
label54:
	ldr r7, [sp, #52]
	cmp r7, #4
	bne label263
	mov r7, #1
	mov r8, #0
	b label55
label263:
	mov r8, #0
	b label25
label55:
	cmp r7, #1073741824
	bge label25
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
	b label55
label64:
	cmp r7, #1073741824
	bge label25
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label71
label292:
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	b label64
label71:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label72
	b label292
label72:
	lsl r8, r8, #1
	lsl r7, r7, #1
	b label64
label61:
	lsl r8, r8, #1
	lsl r7, r7, #1
	b label55
label33:
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label35
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
	b label33
label35:
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label177
	b label39
label177:
	mov r0, r1
	b label37
label39:
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
	b label35
label37:
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label42
	b label37
label114:
	ldr r7, [sp, #12]
	mla r7, r7, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	b label14
label126:
	mov r8, r5
	b label25
label42:
	ldr r0, [sp, #48]
	add r0, r0, #1
	ldr r1, [sp, #36]
	cmp r1, r0
	ble label75
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #52]
	mov r0, #0
	str r0, [sp, #16]
	b label4
label75:
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
