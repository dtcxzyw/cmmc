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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	str r0, [sp, #12]
	bl getint
	mov r5, #0
	str r0, [sp, #8]
	mov r6, r0
	sub r6, r0, #4
	str r6, [sp, #0]
label2:
	ldr r0, [sp, #12]
	cmp r0, r5
	ble label8
.p2align 4
label4:
	mov r0, #400
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	ldr r6, [sp, #8]
	mla r4, r5, r0, r1
	cmp r6, #0
	ble label53
	mov r6, #0
	b label5
.p2align 4
label61:
	add r5, r5, #1
	ldr r0, [sp, #12]
	cmp r0, r5
	bgt label4
label8:
	bl getint
	mov r5, r0
	bl getint
	mov r6, #0
	str r0, [sp, #4]
	mov r7, r0
label9:
	cmp r5, r6
	bgt label11
	b label69
.p2align 4
label5:
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r0
	ble label61
	mov r6, r0
	b label5
label69:
	mov r3, #0
	b label15
.p2align 4
label11:
	mov r0, #400
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	mla r4, r6, r0, r7
	ldr r7, [sp, #4]
	cmp r7, #0
	ble label74
	mov r7, #0
	b label13
.p2align 4
label83:
	add r6, r6, #1
	cmp r5, r6
	bgt label11
	b label69
label15:
	mov r0, #400
	movw r1, #:lower16:res
	movt r1, #:upper16:res
	mla r2, r3, r0, r1
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mla r1, r3, r0, r1
	ldr r0, [sp, #12]
	cmp r0, r3
	bgt label92
	b label91
.p2align 4
label13:
	bl getint
	str r0, [r4, r7, lsl #2]
	add r0, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	ble label83
	mov r7, r0
	b label13
label91:
	mov r5, #0
	b label17
.p2align 4
label92:
	mov r0, #0
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label27
	b label26
label17:
	ldr r0, [sp, #12]
	cmp r0, r5
	bgt label20
	b label19
.p2align 4
label217:
	str r5, [r2, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label27
.p2align 4
label218:
	add r3, r3, #1
	mov r0, #400
	movw r1, #:lower16:res
	movt r1, #:upper16:res
	mla r2, r3, r0, r1
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mla r1, r3, r0, r1
	ldr r0, [sp, #12]
	cmp r0, r3
	bgt label92
	b label91
.p2align 4
label27:
	ldr r6, [sp, #8]
	cmp r6, #0
	ble label28
	ldr r5, [r2, r0, lsl #2]
	cmp r6, #4
	bgt label126
	mov r4, #0
	mov r6, #400
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	mla r6, r4, r6, r7
	ldr r7, [r1, r4, lsl #2]
	add r4, r4, #1
	ldr r6, [r6, r0, lsl #2]
	mla r5, r7, r6, r5
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label30
	b label217
.p2align 4
label126:
	mov r4, #0
	b label34
.p2align 4
label30:
	mov r6, #400
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	mla r6, r4, r6, r7
	ldr r7, [r1, r4, lsl #2]
	add r4, r4, #1
	ldr r6, [r6, r0, lsl #2]
	mla r5, r7, r6, r5
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label30
	str r5, [r2, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label27
	b label218
.p2align 4
label34:
	mov r6, #400
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	mla r6, r4, r6, r7
	add r7, r1, r4, lsl #2
	add r4, r4, #4
	ldr r8, [r7, #0]
	add r11, r6, #400
	ldr r9, [r6, r0, lsl #2]
	ldr r10, [r7, #4]
	ldr r11, [r11, r0, lsl #2]
	mul r10, r10, r11
	mla r8, r8, r9, r10
	ldr r9, [r7, #8]
	add r10, r6, #800
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	add r9, r6, #1200
	ldr r6, [r7, #12]
	ldr r7, [r9, r0, lsl #2]
	mla r6, r6, r7, r8
	add r5, r5, r6
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label34
	mov r6, #400
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	mla r6, r4, r6, r7
	ldr r7, [r1, r4, lsl #2]
	add r4, r4, #1
	ldr r6, [r6, r0, lsl #2]
	mla r5, r7, r6, r5
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label30
	str r5, [r2, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label27
	add r3, r3, #1
	mov r0, #400
	movw r1, #:lower16:res
	movt r1, #:upper16:res
	mla r2, r3, r0, r1
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mla r1, r3, r0, r1
	ldr r0, [sp, #12]
	cmp r0, r3
	bgt label92
	b label91
.p2align 4
label28:
	add r0, r0, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label27
	b label26
label19:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label20:
	mov r0, #400
	movw r1, #:lower16:res
	movt r1, #:upper16:res
	ldr r7, [sp, #4]
	mla r4, r5, r0, r1
	cmp r7, #0
	ble label23
	mov r6, #0
.p2align 4
label21:
	ldr r0, [r4, r6, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	ldr r7, [sp, #4]
	add r6, r6, #1
	cmp r7, r6
	bgt label21
.p2align 4
label23:
	mov r0, #10
	bl putch
	add r5, r5, #1
	ldr r0, [sp, #12]
	cmp r0, r5
	bgt label20
	b label19
label26:
	add r3, r3, #1
	mov r0, #400
	movw r1, #:lower16:res
	movt r1, #:upper16:res
	mla r2, r3, r0, r1
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mla r1, r3, r0, r1
	ldr r0, [sp, #12]
	cmp r0, r3
	bgt label92
	b label91
label74:
	add r6, r6, #1
	b label9
label53:
	add r5, r5, #1
	b label2
