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
	str r0, [sp, #24]
	bl getint
	movw r7, #:lower16:b
	mov r5, #0
	str r0, [sp, #16]
	movw r1, #:lower16:a
	mov r6, r0
	movt r7, #:upper16:b
	movt r1, #:upper16:a
	sub r6, r0, #8
	str r6, [sp, #12]
	str r1, [sp, #8]
	movw r1, #:lower16:res
	str r7, [sp, #4]
	movt r1, #:upper16:res
	str r1, [sp, #20]
label2:
	ldr r0, [sp, #24]
	cmp r0, r5
	ble label8
.p2align 4
label4:
	mov r0, #400
	ldr r1, [sp, #8]
	ldr r6, [sp, #16]
	mla r4, r5, r0, r1
	cmp r6, #0
	ble label54
	mov r6, #0
.p2align 4
label5:
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #16]
	cmp r6, r0
	bgt label63
	add r5, r5, #1
	ldr r0, [sp, #24]
	cmp r0, r5
	bgt label4
	b label8
.p2align 4
label63:
	mov r6, r0
	b label5
label8:
	bl getint
	mov r5, r0
	bl getint
	mov r6, #0
	str r0, [sp, #0]
	mov r7, r0
label9:
	cmp r5, r6
	ble label70
.p2align 4
label11:
	mov r0, #400
	ldr r7, [sp, #4]
	mla r4, r6, r0, r7
	ldr r7, [sp, #0]
	cmp r7, #0
	ble label75
	mov r7, #0
.p2align 4
label13:
	bl getint
	str r0, [r4, r7, lsl #2]
	add r0, r7, #1
	ldr r7, [sp, #0]
	cmp r7, r0
	bgt label85
	add r6, r6, #1
	cmp r5, r6
	bgt label11
	b label70
.p2align 4
label85:
	mov r7, r0
	b label13
label70:
	mov r3, #0
	mov r0, #400
	ldr r1, [sp, #20]
	mla r2, r3, r0, r1
	ldr r1, [sp, #8]
	mla r1, r3, r0, r1
	ldr r0, [sp, #24]
	cmp r0, r3
	bgt label93
label92:
	mov r5, #0
	b label17
.p2align 4
label93:
	mov r0, #0
	ldr r7, [sp, #0]
	cmp r7, r0
	bgt label27
	b label26
label17:
	ldr r0, [sp, #24]
	cmp r0, r5
	bgt label19
	b label23
.p2align 4
label256:
	add r3, r3, #1
	mov r0, #400
	ldr r1, [sp, #20]
	mla r2, r3, r0, r1
	ldr r1, [sp, #8]
	mla r1, r3, r0, r1
	ldr r0, [sp, #24]
	cmp r0, r3
	bgt label93
	b label92
.p2align 4
label27:
	ldr r6, [sp, #16]
	cmp r6, #0
	ble label118
	ldr r5, [r2, r0, lsl #2]
	cmp r6, #8
	bgt label125
	mov r4, #0
	mov r6, #400
	ldr r7, [sp, #4]
	mla r6, r4, r6, r7
	ldr r7, [r1, r4, lsl #2]
	add r4, r4, #1
	ldr r6, [r6, r0, lsl #2]
	mla r5, r7, r6, r5
	ldr r6, [sp, #16]
	cmp r6, r4
	bgt label29
	b label251
.p2align 4
label125:
	mov r4, #0
	b label33
.p2align 4
label29:
	mov r6, #400
	ldr r7, [sp, #4]
	mla r6, r4, r6, r7
	ldr r7, [r1, r4, lsl #2]
	add r4, r4, #1
	ldr r6, [r6, r0, lsl #2]
	mla r5, r7, r6, r5
	ldr r6, [sp, #16]
	cmp r6, r4
	bgt label29
	str r5, [r2, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #0]
	cmp r7, r0
	bgt label27
	b label256
.p2align 4
label33:
	mov r6, #400
	ldr r7, [sp, #4]
	mla r6, r4, r6, r7
	add r7, r1, r4, lsl #2
	add r4, r4, #8
	ldr r8, [r7, #0]
	add r10, r6, #400
	ldr r9, [r6, r0, lsl #2]
	ldr r11, [r7, #4]
	ldr r10, [r10, r0, lsl #2]
	mul r10, r11, r10
	mla r8, r8, r9, r10
	ldr r9, [r7, #8]
	add r10, r6, #800
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r7, #12]
	add r9, r6, #1200
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r9, [r7, #16]
	add r10, r6, #1600
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r7, #20]
	add r9, r6, #2000
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r9, [r7, #24]
	add r10, r6, #2400
	add r6, r6, #2800
	ldr r10, [r10, r0, lsl #2]
	ldr r7, [r7, #28]
	ldr r6, [r6, r0, lsl #2]
	mla r8, r9, r10, r8
	mla r6, r7, r6, r8
	add r5, r5, r6
	ldr r6, [sp, #12]
	cmp r6, r4
	bgt label33
	mov r6, #400
	ldr r7, [sp, #4]
	mla r6, r4, r6, r7
	ldr r7, [r1, r4, lsl #2]
	add r4, r4, #1
	ldr r6, [r6, r0, lsl #2]
	mla r5, r7, r6, r5
	ldr r6, [sp, #16]
	cmp r6, r4
	bgt label29
	str r5, [r2, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #0]
	cmp r7, r0
	bgt label27
	add r3, r3, #1
	mov r0, #400
	ldr r1, [sp, #20]
	mla r2, r3, r0, r1
	ldr r1, [sp, #8]
	mla r1, r3, r0, r1
	ldr r0, [sp, #24]
	cmp r0, r3
	bgt label93
	b label92
.p2align 4
label19:
	mov r0, #400
	ldr r1, [sp, #20]
	ldr r7, [sp, #0]
	mla r4, r5, r0, r1
	cmp r7, #0
	ble label20
	mov r6, #0
	b label21
.p2align 4
label20:
	mov r0, #10
	bl putch
	add r5, r5, #1
	ldr r0, [sp, #24]
	cmp r0, r5
	bgt label19
	b label23
.p2align 4
label21:
	ldr r0, [r4, r6, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	ldr r7, [sp, #0]
	add r6, r6, #1
	cmp r7, r6
	bgt label21
	b label20
label23:
	mov r0, #0
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label26:
	add r3, r3, #1
	mov r0, #400
	ldr r1, [sp, #20]
	mla r2, r3, r0, r1
	ldr r1, [sp, #8]
	mla r1, r3, r0, r1
	ldr r0, [sp, #24]
	cmp r0, r3
	bgt label93
	b label92
.p2align 4
label118:
	add r0, r0, #1
	ldr r7, [sp, #0]
	cmp r7, r0
	bgt label27
	b label26
.p2align 4
label251:
	str r5, [r2, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #0]
	cmp r7, r0
	bgt label27
	b label26
label75:
	add r6, r6, #1
	b label9
label54:
	add r5, r5, #1
	b label2
