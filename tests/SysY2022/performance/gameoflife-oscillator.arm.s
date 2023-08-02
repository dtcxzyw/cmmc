.arch armv7ve
.data
.bss
.align 8
sheet1:
	.zero	1000000
.align 8
sheet2:
	.zero	1000000
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
	str r0, [sp, #24]
	mov r8, r0
	bl getint
	str r0, [sp, #28]
	mov r7, r0
	bl getint
	mov r4, r0
	bl getch
	mov r6, #1
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	str r6, [sp, #20]
	mov r8, r6
	add r5, r3, #2000
	ldr r7, [sp, #28]
	cmp r7, r6
	blt label12
.p2align 4
label5:
	ldr r8, [sp, #24]
	cmp r8, #0
	ble label11
	add r7, r5, #4
	ldr r8, [sp, #20]
	b label7
.p2align 4
label11:
	bl getch
	add r5, r5, #2000
	add r6, r6, #1
	ldr r7, [sp, #28]
	cmp r7, r6
	bge label5
label12:
	mov r0, #95
	bl _sysy_starttime
	cmp r4, #0
	ble label89
	str r4, [sp, #16]
	ldr r8, [sp, #20]
	b label40
.p2align 4
label7:
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, #0]
	add r0, r8, #1
	ldr r8, [sp, #24]
	cmp r8, r0
	blt label11
	add r7, r7, #4
	mov r8, r0
	b label7
.p2align 4
label40:
	sub r0, r8, #1
	cmp r8, #1
	movw r2, #:lower16:sheet2
	movt r2, #:upper16:sheet2
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	clz r0, r0
	str r2, [sp, #12]
	mov r1, r2
	lsr r0, r0, #5
	moveq r1, r3
	add r8, r0, #1
	add r10, r1, #2000
	str r1, [sp, #12]
	str r3, [sp, #4]
	moveq r3, r2
	str r3, [sp, #4]
	str r8, [sp, #8]
	str r10, [sp, #0]
	ldr r8, [sp, #20]
	b label43
.p2align 4
label46:
	ldr r4, [sp, #16]
	subs r4, r4, #1
	ble label158
	str r4, [sp, #16]
	ldr r8, [sp, #8]
	b label40
.p2align 4
label43:
	sub r0, r8, #1
	mov r2, #2000
	ldr r1, [sp, #12]
	ldr r10, [sp, #0]
	mla r0, r0, r2, r1
	ldr r3, [sp, #4]
	ldr r7, [sp, #28]
	mla r3, r8, r2, r3
	add r2, r8, #1
	add r1, r10, #2000
	cmp r7, r8
	bge label47
	b label46
.p2align 4
label166:
	ldr r10, [sp, #0]
	mov r8, r2
	add r10, r10, #2000
	str r10, [sp, #0]
	b label43
.p2align 4
label54:
	sub r8, r7, #1
	add r7, r7, #1
	ldr r9, [r0, r8, lsl #2]
	ldr r10, [r6, #0]
	add r9, r9, r10
	ldr r10, [r6, #4]
	add r9, r9, r10
	ldr r10, [sp, #0]
	add r10, r10, r8, lsl #2
	ldr r11, [r10, #0]
	ldr r10, [r10, #8]
	ldr r8, [r1, r8, lsl #2]
	add r9, r9, r11
	add r9, r9, r10
	add r8, r9, r8
	ldr r9, [r5, #0]
	add r8, r8, r9
	ldr r9, [r5, #4]
	ldr r10, [r4, #0]
	add r8, r8, r9
	eor r10, r10, #1
	eor r9, r8, #2
	orrs r9, r9, r10
	beq label55
	sub r8, r8, #3
	add r6, r6, #4
	add r5, r5, #4
	add r4, r4, #4
	clz r8, r8
	lsr r8, r8, #5
	str r8, [r3, #0]
	add r3, r3, #4
	ldr r8, [sp, #24]
	cmp r8, r7
	bge label54
	b label166
.p2align 4
label55:
	ldr r8, [sp, #20]
	add r6, r6, #4
	add r5, r5, #4
	add r4, r4, #4
	str r8, [r3, #0]
	add r3, r3, #4
	ldr r8, [sp, #24]
	cmp r8, r7
	bge label54
	b label166
.p2align 4
label47:
	add r6, r0, #4
	add r5, r1, #4
	ldr r10, [sp, #0]
	add r3, r3, #4
	ldr r8, [sp, #20]
	add r4, r10, #4
	mov r7, r8
	ldr r8, [sp, #24]
	cmp r8, r7
	bge label54
	b label166
label13:
	mov r0, #106
	bl _sysy_stoptime
	cmp r8, #2
	beq label27
	b label15
label158:
	ldr r8, [sp, #8]
	b label13
label15:
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	ldr r8, [sp, #20]
	add r4, r3, #2000
	mov r5, r8
	ldr r7, [sp, #28]
	cmp r7, r8
	blt label26
.p2align 4
label19:
	ldr r8, [sp, #24]
	cmp r8, #0
	ble label20
	add r6, r4, #4
	ldr r8, [sp, #20]
.p2align 4
label22:
	ldr r0, [r6, #0]
	cmp r0, #1
	mov r0, #46
	moveq r0, #35
	bl putch
	add r0, r8, #1
	ldr r8, [sp, #24]
	cmp r8, r0
	blt label20
	add r6, r6, #4
	mov r8, r0
	b label22
.p2align 4
label20:
	mov r0, #10
	bl putch
	add r4, r4, #2000
	add r5, r5, #1
	ldr r7, [sp, #28]
	cmp r7, r5
	bge label19
label26:
	mov r0, #0
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label27:
	movw r2, #:lower16:sheet2
	movt r2, #:upper16:sheet2
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	ldr r8, [sp, #20]
	add r1, r2, #2000
	add r0, r3, #2000
	mov r2, r8
label28:
	ldr r7, [sp, #28]
	cmp r7, r2
	blt label15
.p2align 4
label33:
	ldr r8, [sp, #24]
	cmp r8, #0
	ble label123
	add r3, r1, #4
	ldr r8, [sp, #20]
	mov r4, r8
	b label35
.p2align 4
label132:
	add r2, r2, #1
	add r1, r1, #2000
	add r0, r0, #2000
	ldr r7, [sp, #28]
	cmp r7, r2
	bge label33
	b label15
.p2align 4
label35:
	ldr r5, [r3, #0]
	str r5, [r0, r4, lsl #2]
	ldr r8, [sp, #24]
	add r4, r4, #1
	cmp r8, r4
	blt label132
	add r3, r3, #4
	b label35
label123:
	add r2, r2, #1
	add r1, r1, #2000
	add r0, r0, #2000
	b label28
label89:
	ldr r8, [sp, #20]
	b label13
