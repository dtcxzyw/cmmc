.arch armv7ve
.data
.bss
.align 8
a:
	.zero	40000
.align 8
b:
	.zero	40000
.align 8
res:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #36
	bl getint
	str r0, [sp, #0]
	bl getint
	mov r6, r0
	str r0, [sp, #8]
	sub r4, r0, #4
	movw r1, #:lower16:a
	movw r7, #:lower16:b
	str r4, [sp, #12]
	movt r1, #:upper16:a
	movt r7, #:upper16:b
	mov r4, #0
	str r1, [sp, #16]
	movw r1, #:lower16:res
	str r7, [sp, #20]
	movt r1, #:upper16:res
	str r1, [sp, #4]
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label4
label8:
	bl getint
	mov r4, r0
	bl getint
	mov r5, #0
	str r0, [sp, #24]
	mov r7, r0
	cmp r4, r5
	bgt label11
	mov r2, #0
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #16]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label93
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label93:
	mov r0, #0
	ldr r7, [sp, #24]
	cmp r7, r0
	bgt label27
	add r2, r2, #1
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #16]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label93
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label27:
	ldr r6, [sp, #8]
	cmp r6, #0
	bgt label28
	add r0, r0, #1
	ldr r7, [sp, #24]
	cmp r7, r0
	bgt label27
	add r2, r2, #1
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #16]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label93
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label28:
	ldr r5, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	cmp r6, #4
	bgt label125
	mov r4, r5
	mov r5, #0
	mov r6, #400
	ldr r7, [sp, #20]
	mla r7, r5, r6, r7
	ldr r6, [r1, r5, lsl #2]
	add r5, r5, #1
	ldr r7, [r7, r0, lsl #2]
	mla r4, r6, r7, r4
	ldr r6, [sp, #8]
	cmp r6, r5
	bgt label29
	str r4, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #24]
	cmp r7, r0
	bgt label27
	add r2, r2, #1
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #16]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label93
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label125:
	mov r4, #0
	b label33
.p2align 4
label29:
	mov r6, #400
	ldr r7, [sp, #20]
	mla r7, r5, r6, r7
	ldr r6, [r1, r5, lsl #2]
	add r5, r5, #1
	ldr r7, [r7, r0, lsl #2]
	mla r4, r6, r7, r4
	ldr r6, [sp, #8]
	cmp r6, r5
	bgt label29
	str r4, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #24]
	cmp r7, r0
	bgt label27
	add r2, r2, #1
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #16]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label93
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label33:
	mov r6, #400
	ldr r7, [sp, #20]
	ldr r8, [r1, r4, lsl #2]
	mla r6, r4, r6, r7
	add r7, r1, r4, lsl #2
	add r11, r6, #400
	ldr r9, [r6, r0, lsl #2]
	ldr r10, [r7, #4]
	ldr r11, [r11, r0, lsl #2]
	mul r10, r10, r11
	mla r8, r8, r9, r10
	ldr r10, [r7, #8]
	add r9, r6, #800
	add r6, r6, #1200
	ldr r9, [r9, r0, lsl #2]
	ldr r7, [r7, #12]
	ldr r6, [r6, r0, lsl #2]
	mla r8, r10, r9, r8
	mla r6, r7, r6, r8
	add r5, r5, r6
	add r6, r4, #4
	ldr r4, [sp, #12]
	cmp r4, r6
	bgt label181
	mov r4, r5
	mov r5, r6
	mov r6, #400
	ldr r7, [sp, #20]
	mla r7, r5, r6, r7
	ldr r6, [r1, r5, lsl #2]
	add r5, r5, #1
	ldr r7, [r7, r0, lsl #2]
	mla r4, r6, r7, r4
	ldr r6, [sp, #8]
	cmp r6, r5
	bgt label29
	str r4, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #24]
	cmp r7, r0
	bgt label27
	add r2, r2, #1
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #16]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label93
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label181:
	mov r4, r6
	b label33
.p2align 4
label11:
	mov r0, #400
	ldr r7, [sp, #20]
	mla r6, r5, r0, r7
	ldr r7, [sp, #24]
	cmp r7, #0
	bgt label76
	add r5, r5, #1
	cmp r4, r5
	bgt label11
	mov r2, #0
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #16]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label93
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label76:
	mov r7, #0
.p2align 4
label13:
	bl getint
	str r0, [r6, r7, lsl #2]
	add r0, r7, #1
	ldr r7, [sp, #24]
	cmp r7, r0
	bgt label85
	add r5, r5, #1
	cmp r4, r5
	bgt label11
	mov r2, #0
	mov r0, #400
	ldr r1, [sp, #4]
	mla r3, r2, r0, r1
	ldr r1, [sp, #16]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label93
	mov r4, #0
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label85:
	mov r7, r0
	b label13
label19:
	mov r0, #0
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label20:
	mov r0, #400
	ldr r1, [sp, #4]
	ldr r7, [sp, #24]
	mla r5, r4, r0, r1
	cmp r7, #0
	ble label21
	mov r6, #0
	b label22
.p2align 4
label21:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label20
	b label19
.p2align 4
label22:
	ldr r0, [r5, r6, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	ldr r7, [sp, #24]
	add r6, r6, #1
	cmp r7, r6
	bgt label22
	b label21
.p2align 4
label4:
	mov r0, #400
	ldr r1, [sp, #16]
	ldr r6, [sp, #8]
	mla r5, r4, r0, r1
	cmp r6, #0
	bgt label55
	add r4, r4, #1
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label4
	b label8
.p2align 4
label55:
	mov r6, #0
.p2align 4
label6:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r0
	bgt label64
	add r4, r4, #1
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label4
	b label8
.p2align 4
label64:
	mov r6, r0
	b label6
