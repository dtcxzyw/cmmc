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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[12] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	str r0, [sp, #4]
	mov r8, r0
	bl getint
	cmp r0, #0
	str r0, [sp, #8]
	mov r8, r0
	mov r0, #0
	str r0, [sp, #0]
	movwgt r0, #1
	str r0, [sp, #0]
	bl getint
	mov r5, r0
	bl getch
	cmp r8, #0
	ble label13
	movw r2, #:lower16:sheet1
	movt r2, #:upper16:sheet1
	mov r10, #1
	add r4, r2, #2000
	mov r6, r10
	ldr r8, [sp, #4]
	cmp r8, #0
	bgt label8
	b label6
.p2align 4
label12:
	add r7, r7, #4
.p2align 4
label9:
	bl getch
	add r10, r10, #1
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, #0]
	ldr r8, [sp, #4]
	cmp r8, r10
	bge label12
.p2align 4
label6:
	bl getch
	ldr r8, [sp, #8]
	add r6, r6, #1
	cmp r8, r6
	blt label13
	add r4, r4, #2000
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label6
.p2align 4
label8:
	add r7, r4, #4
	mov r10, #1
	b label9
label13:
	mov r0, #95
	bl _sysy_starttime
	cmp r5, #0
	movw r4, #:lower16:sheet2
	movt r4, #:upper16:sheet2
	ble label94
	mov r3, r5
	mov r10, #1
	mov r5, r10
	b label15
.p2align 4
label251:
	ldr r8, [sp, #8]
	cmp r8, r7
	bge label23
	subs r3, r3, #1
	ble label33
.p2align 4
label15:
	sub r0, r5, #1
	cmp r5, #1
	ldr r8, [sp, #8]
	movw r2, #:lower16:sheet1
	movt r2, #:upper16:sheet1
	clz r0, r0
	lsr r1, r0, #5
	add r5, r1, #1
	mov r0, r4
	moveq r0, r2
	moveq r2, r4
	cmp r8, #0
	ble label32
	add r6, r0, #2000
	mov r10, #1
	mov r8, #2000
	sub r0, r6, #2000
	mla r1, r10, r8, r2
	ldr r8, [sp, #4]
	add r7, r10, #1
	cmp r8, #0
	bgt label24
	ldr r8, [sp, #8]
	cmp r8, r7
	bge label23
	b label114
.p2align 4
label31:
	mov r10, #1
	str r10, [r1, r8, lsl #2]
	ldr r8, [sp, #4]
	cmp r8, r9
	blt label251
.p2align 4
label30:
	add r0, r0, #4
	mov r8, r9
.p2align 4
label25:
	ldr r9, [r0, #-4]
	ldr r10, [r0, #0]
	add r9, r9, r10
	ldr r10, [r0, #4]
	add r9, r9, r10
	ldr r10, [r0, #1996]
	add r9, r9, r10
	ldr r10, [r0, #2004]
	add r9, r9, r10
	ldr r10, [r0, #3996]
	add r9, r9, r10
	ldr r10, [r0, #4000]
	add r9, r9, r10
	ldr r10, [r0, #4004]
	ldr r11, [r0, #2000]
	add r10, r9, r10
	eor r11, r11, #1
	eor r9, r10, #2
	orrs r9, r9, r11
	add r9, r8, #1
	beq label31
	sub r10, r10, #3
	clz r10, r10
	lsr r10, r10, #5
	str r10, [r1, r8, lsl #2]
	ldr r8, [sp, #4]
	cmp r8, r9
	bge label30
	ldr r8, [sp, #8]
	cmp r8, r7
	blt label250
.p2align 4
label23:
	add r6, r6, #2000
	mov r8, #2000
	sub r0, r6, #2000
	mla r1, r7, r8, r2
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, #0
	ble label249
.p2align 4
label24:
	add r0, r0, #4
	mov r10, #1
	mov r8, r10
	b label25
label32:
	subs r3, r3, #1
	bgt label15
	b label33
.p2align 4
label250:
	subs r3, r3, #1
	bgt label15
label33:
	sub r0, r5, #2
	clz r0, r0
	lsr r1, r0, #5
	ldr r0, [sp, #0]
	and r5, r0, r1
	mov r0, #106
	bl _sysy_stoptime
	cmp r5, #0
	bne label169
label35:
	ldr r8, [sp, #8]
	cmp r8, #0
	ble label47
	movw r2, #:lower16:sheet1
	movt r2, #:upper16:sheet1
	mov r10, #1
	add r4, r2, #2000
	mov r5, r10
	ldr r8, [sp, #4]
	cmp r8, #0
	bgt label40
	b label45
.p2align 4
label44:
	add r6, r6, #4
.p2align 4
label41:
	ldr r0, [r6, #0]
	cmp r0, #1
	mov r0, #46
	moveq r0, #35
	bl putch
	ldr r8, [sp, #4]
	add r10, r10, #1
	cmp r8, r10
	bge label44
.p2align 4
label45:
	mov r0, #10
	bl putch
	ldr r8, [sp, #8]
	add r5, r5, #1
	cmp r8, r5
	blt label47
	add r4, r4, #2000
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label45
.p2align 4
label40:
	add r6, r4, #4
	mov r10, #1
	b label41
label47:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label249:
	ldr r8, [sp, #8]
	cmp r8, r7
	bge label23
label114:
	subs r3, r3, #1
	bgt label15
	b label33
label169:
	movw r2, #:lower16:sheet1
	movt r2, #:upper16:sheet1
	mov r10, #1
	add r0, r2, #2000
	mov r1, r10
	mov r8, #2000
	mla r2, r10, r8, r4
	ldr r8, [sp, #4]
	cmp r8, #0
	bgt label54
	b label52
.p2align 4
label58:
	add r2, r2, #4
.p2align 4
label55:
	ldr r5, [r2, #0]
	str r5, [r0, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	bge label58
	add r1, r1, #1
	ldr r8, [sp, #8]
	cmp r8, r1
	blt label35
.p2align 4
label53:
	add r0, r0, #2000
	mov r8, #2000
	mla r2, r1, r8, r4
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label52
.p2align 4
label54:
	add r2, r2, #4
	mov r10, #1
	mov r3, r10
	b label55
label52:
	add r1, r1, #1
	ldr r8, [sp, #8]
	cmp r8, r1
	bge label53
	b label35
label94:
	mov r10, #1
	mov r5, r10
	b label33
