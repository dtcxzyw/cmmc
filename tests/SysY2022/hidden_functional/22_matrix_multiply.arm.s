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
	sub sp, sp, #36
	bl getint
	str r0, [sp, #20]
	bl getint
	mov r5, #0
	str r0, [sp, #12]
	movw r1, #:lower16:a
	mov r6, r0
	movw r7, #:lower16:b
	sub r6, r0, #4
	str r6, [sp, #4]
	str r1, [sp, #16]
	movt r1, #:upper16:a
	str r1, [sp, #16]
	movw r1, #:lower16:res
	str r7, [sp, #0]
	movt r7, #:upper16:b
	str r7, [sp, #0]
	str r1, [sp, #24]
	movt r1, #:upper16:res
	str r1, [sp, #24]
label2:
	ldr r0, [sp, #20]
	cmp r0, r5
	ble label8
.p2align 4
label4:
	mov r0, #400
	ldr r1, [sp, #16]
	ldr r6, [sp, #12]
	mla r4, r5, r0, r1
	cmp r6, #0
	ble label54
	mov r6, #0
	b label5
.p2align 4
label62:
	add r5, r5, #1
	ldr r0, [sp, #20]
	cmp r0, r5
	bgt label4
label8:
	bl getint
	mov r5, r0
	bl getint
	mov r6, #0
	str r0, [sp, #8]
	mov r7, r0
label9:
	cmp r5, r6
	bgt label33
	b label70
.p2align 4
label5:
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #12]
	cmp r6, r0
	ble label62
	mov r6, r0
	b label5
label70:
	mov r3, #0
	mov r0, #400
	ldr r1, [sp, #24]
	mla r2, r3, r0, r1
	ldr r1, [sp, #16]
	mla r1, r3, r0, r1
	ldr r0, [sp, #20]
	cmp r0, r3
	bgt label79
	b label78
.p2align 4
label33:
	mov r0, #400
	ldr r7, [sp, #0]
	mla r4, r6, r0, r7
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label172
	mov r7, #0
	b label34
.p2align 4
label180:
	add r6, r6, #1
	cmp r5, r6
	bgt label33
	b label70
label78:
	mov r5, #0
	b label13
.p2align 4
label79:
	mov r0, #0
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label23
	b label22
label13:
	ldr r0, [sp, #20]
	cmp r0, r5
	bgt label16
	b label15
.p2align 4
label23:
	ldr r6, [sp, #12]
	cmp r6, #0
	ble label24
	ldr r5, [r2, r0, lsl #2]
	cmp r6, #4
	ble label111
	mov r4, #0
.p2align 4
label26:
	mov r6, #400
	ldr r7, [sp, #0]
	mla r7, r4, r6, r7
	add r6, r1, r4, lsl #2
	add r4, r4, #4
	ldr r8, [r6, #0]
	add r11, r7, #400
	ldr r9, [r7, r0, lsl #2]
	ldr r10, [r6, #4]
	ldr r11, [r11, r0, lsl #2]
	mul r10, r10, r11
	mla r8, r8, r9, r10
	ldr r10, [r6, #8]
	add r9, r7, #800
	add r7, r7, #1200
	ldr r9, [r9, r0, lsl #2]
	ldr r6, [r6, #12]
	ldr r7, [r7, r0, lsl #2]
	mla r8, r10, r9, r8
	mla r6, r6, r7, r8
	add r5, r5, r6
	ldr r6, [sp, #4]
	cmp r6, r4
	bgt label26
.p2align 4
label29:
	mov r6, #400
	ldr r7, [sp, #0]
	mla r6, r4, r6, r7
	ldr r7, [r1, r4, lsl #2]
	add r4, r4, #1
	ldr r6, [r6, r0, lsl #2]
	mla r5, r7, r6, r5
	ldr r6, [sp, #12]
	cmp r6, r4
	bgt label29
	str r5, [r2, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label23
.p2align 4
label219:
	add r3, r3, #1
	mov r0, #400
	ldr r1, [sp, #24]
	mla r2, r3, r0, r1
	ldr r1, [sp, #16]
	mla r1, r3, r0, r1
	ldr r0, [sp, #20]
	cmp r0, r3
	bgt label79
	b label78
.p2align 4
label34:
	bl getint
	str r0, [r4, r7, lsl #2]
	add r0, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	ble label180
	mov r7, r0
	b label34
.p2align 4
label24:
	add r0, r0, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label23
	b label22
.p2align 4
label16:
	mov r0, #400
	ldr r1, [sp, #24]
	ldr r7, [sp, #8]
	mla r4, r5, r0, r1
	cmp r7, #0
	ble label17
	mov r6, #0
	b label18
.p2align 4
label17:
	mov r0, #10
	bl putch
	add r5, r5, #1
	ldr r0, [sp, #20]
	cmp r0, r5
	bgt label16
	b label15
.p2align 4
label18:
	ldr r0, [r4, r6, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	ldr r7, [sp, #8]
	add r6, r6, #1
	cmp r7, r6
	bgt label18
	b label17
.p2align 4
label111:
	mov r4, #0
	mov r6, #400
	ldr r7, [sp, #0]
	mla r6, r4, r6, r7
	ldr r7, [r1, r4, lsl #2]
	add r4, r4, #1
	ldr r6, [r6, r0, lsl #2]
	mla r5, r7, r6, r5
	ldr r6, [sp, #12]
	cmp r6, r4
	bgt label29
	str r5, [r2, r0, lsl #2]
	add r0, r0, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label23
	b label219
label22:
	add r3, r3, #1
	mov r0, #400
	ldr r1, [sp, #24]
	mla r2, r3, r0, r1
	ldr r1, [sp, #16]
	mla r1, r3, r0, r1
	ldr r0, [sp, #20]
	cmp r0, r3
	bgt label79
	b label78
label15:
	mov r0, #0
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label172:
	add r6, r6, #1
	b label9
label54:
	add r5, r5, #1
	b label2
