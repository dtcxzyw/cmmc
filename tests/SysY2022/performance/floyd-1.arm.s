.arch armv7ve
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
dst:
	.zero	8388608
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	movw r5, #:lower16:w
	mov r4, r0
	movt r5, #:upper16:w
	mov r0, r5
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	movw r0, #:lower16:temp
	mov r1, #0
	movw r6, #:lower16:dst
	movt r0, #:upper16:temp
	movt r6, #:upper16:dst
	str r6, [sp, #0]
label2:
	cmp r4, r1
	bgt label4
label45:
	mov r3, #0
	b label11
.p2align 4
label5:
	mla r3, r4, r2, r1
	cmp r4, r2
	ble label55
	ldr r6, [r5, r3, lsl #2]
	add r2, r2, #1
	str r6, [r0, r3, lsl #2]
	cmp r4, r2
	bgt label5
	b label237
.p2align 4
label55:
	mvn r6, #0
	add r2, r2, #1
	str r6, [r0, r3, lsl #2]
	cmp r4, r2
	bgt label5
	add r1, r1, #1
	cmp r4, r1
	bgt label4
	b label45
label11:
	mul r1, r4, r3
	cmp r4, r3
	ble label25
.p2align 4
label71:
	mov r5, #0
	mul r6, r4, r5
	cmp r4, r5
	mla r2, r4, r5, r3
	ble label76
.p2align 4
label77:
	mov r7, #0
	cmp r4, r7
	bgt label17
	b label80
.p2align 4
label241:
	add r5, r5, #1
	mul r6, r4, r5
	cmp r4, r5
	mla r2, r4, r5, r3
	bgt label77
	add r3, r3, #1
	mul r1, r4, r3
	cmp r4, r3
	bgt label71
label25:
	mul r5, r4, r4
	cmp r4, #0
	bne label27
label26:
	mov r0, #64
	bl _sysy_stoptime
	ldr r6, [sp, #0]
	mov r0, r5
	mov r1, r6
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label27:
	cmp r5, #4
	bgt label30
	b label125
label28:
	ldr r2, [r0, r1, lsl #2]
	ldr r6, [sp, #0]
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bgt label28
	b label26
label30:
	sub r1, r5, #4
	sub r3, r5, #20
	cmp r1, #16
	ble label141
	mov r2, #0
label31:
	add r4, r0, r2, lsl #2
	ldr r7, [r4, #0]
	ldr r6, [sp, #0]
	add r6, r6, r2, lsl #2
	add r2, r2, #16
	str r7, [r6, #0]
	cmp r3, r2
	ldr r7, [r4, #4]
	str r7, [r6, #4]
	ldr r7, [r4, #8]
	str r7, [r6, #8]
	ldr r7, [r4, #12]
	str r7, [r6, #12]
	ldr r7, [r4, #16]
	str r7, [r6, #16]
	ldr r7, [r4, #20]
	str r7, [r6, #20]
	ldr r7, [r4, #24]
	str r7, [r6, #24]
	ldr r7, [r4, #28]
	str r7, [r6, #28]
	ldr r7, [r4, #32]
	str r7, [r6, #32]
	ldr r7, [r4, #36]
	str r7, [r6, #36]
	ldr r7, [r4, #40]
	str r7, [r6, #40]
	ldr r7, [r4, #44]
	str r7, [r6, #44]
	ldr r7, [r4, #48]
	str r7, [r6, #48]
	ldr r7, [r4, #52]
	str r7, [r6, #52]
	ldr r7, [r4, #56]
	str r7, [r6, #56]
	ldr r4, [r4, #60]
	str r4, [r6, #60]
	bgt label31
label33:
	add r3, r0, r2, lsl #2
	ldr r7, [r3, #0]
	ldr r6, [sp, #0]
	add r4, r6, r2, lsl #2
	add r2, r2, #4
	str r7, [r4, #0]
	cmp r1, r2
	ldr r6, [r3, #4]
	str r6, [r4, #4]
	ldr r6, [r3, #8]
	str r6, [r4, #8]
	ldr r3, [r3, #12]
	str r3, [r4, #12]
	bgt label33
	mov r1, r2
	b label28
label76:
	add r3, r3, #1
	mul r1, r4, r3
	cmp r4, r3
	bgt label71
	b label25
.p2align 4
label17:
	ldr r8, [r0, r2, lsl #2]
	cmn r8, #1
	bgt label18
	add r7, r7, #1
	cmp r4, r7
	bgt label17
	b label241
.p2align 4
label18:
	add r9, r1, r7
	ldr r9, [r0, r9, lsl #2]
	cmn r9, #1
	ble label95
	add r10, r6, r7
	add r8, r8, r9
	ldr r11, [r0, r10, lsl #2]
	cmp r11, #0
	blt label20
	ldr r9, [r0, r10, lsl #2]
	cmp r8, r9
	blt label20
	add r7, r7, #1
	cmp r4, r7
	bgt label17
	add r5, r5, #1
	mul r6, r4, r5
	cmp r4, r5
	mla r2, r4, r5, r3
	bgt label77
	b label76
.p2align 4
label95:
	add r7, r7, #1
	cmp r4, r7
	bgt label17
	add r5, r5, #1
	mul r6, r4, r5
	cmp r4, r5
	mla r2, r4, r5, r3
	bgt label77
	add r3, r3, #1
	mul r1, r4, r3
	cmp r4, r3
	bgt label71
	b label25
.p2align 4
label20:
	str r8, [r0, r10, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	bgt label17
	add r5, r5, #1
	mul r6, r4, r5
	cmp r4, r5
	mla r2, r4, r5, r3
	bgt label77
	add r3, r3, #1
	mul r1, r4, r3
	cmp r4, r3
	bgt label71
	b label25
.p2align 4
label4:
	cmp r4, #0
	ble label48
	mov r2, #0
	b label5
.p2align 4
label237:
	add r1, r1, #1
	cmp r4, r1
	bgt label4
	b label45
.p2align 4
label80:
	add r5, r5, #1
	mul r6, r4, r5
	cmp r4, r5
	mla r2, r4, r5, r3
	bgt label77
	add r3, r3, #1
	mul r1, r4, r3
	cmp r4, r3
	bgt label71
	b label25
label48:
	add r1, r1, #1
	b label2
label141:
	mov r2, #0
	b label33
label125:
	mov r1, #0
	b label28
