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
	str r0, [sp, #8]
	bl getint
	mov r5, r0
	bl getch
	mov r6, #1
	movw r2, #:lower16:sheet1
	movt r2, #:upper16:sheet1
	str r6, [sp, #0]
	mov r10, r6
	add r4, r2, #2000
	ldr r0, [sp, #8]
	cmp r0, r6
	bge label5
	b label12
.p2align 4
label11:
	bl getch
	ldr r0, [sp, #8]
	add r4, r4, #2000
	add r6, r6, #1
	cmp r0, r6
	blt label12
.p2align 4
label5:
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label11
	add r7, r4, #4
	ldr r10, [sp, #0]
.p2align 4
label7:
	bl getch
	add r10, r10, #1
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, #0]
	ldr r8, [sp, #4]
	cmp r8, r10
	blt label11
	add r7, r7, #4
	b label7
label12:
	mov r0, #95
	bl _sysy_starttime
	cmp r5, #0
	movw r4, #:lower16:sheet2
	movt r4, #:upper16:sheet2
	ble label90
	mov r3, r5
	ldr r10, [sp, #0]
	mov r5, r10
	b label14
.p2align 4
label238:
	add r6, r6, #2000
	ldr r0, [sp, #8]
	cmp r0, r7
	bge label21
	subs r3, r3, #1
	ble label32
.p2align 4
label14:
	sub r0, r5, #1
	cmp r5, #1
	ldr r10, [sp, #0]
	mov r1, r4
	movw r2, #:lower16:sheet1
	movt r2, #:upper16:sheet1
	clz r0, r0
	moveq r1, r2
	lsr r0, r0, #5
	moveq r2, r4
	add r6, r1, #2000
	mov r7, r10
	add r5, r0, #1
	ldr r0, [sp, #8]
	cmp r0, r10
	bge label21
label20:
	subs r3, r3, #1
	bgt label14
	b label32
.p2align 4
label30:
	ldr r10, [sp, #0]
	str r10, [r1, r8, lsl #2]
	ldr r8, [sp, #4]
	cmp r8, r9
	blt label238
.p2align 4
label29:
	add r0, r0, #4
	mov r8, r9
.p2align 4
label24:
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
	beq label30
	sub r10, r10, #3
	clz r10, r10
	lsr r10, r10, #5
	str r10, [r1, r8, lsl #2]
	ldr r8, [sp, #4]
	cmp r8, r9
	bge label29
	add r6, r6, #2000
	ldr r0, [sp, #8]
	cmp r0, r7
	blt label237
.p2align 4
label21:
	mov r0, #2000
	ldr r8, [sp, #4]
	mla r1, r7, r0, r2
	add r7, r7, #1
	sub r0, r6, #2000
	cmp r8, #1
	blt label22
	add r0, r0, #4
	ldr r10, [sp, #0]
	mov r8, r10
	b label24
.p2align 4
label22:
	add r6, r6, #2000
	ldr r0, [sp, #8]
	cmp r0, r7
	bge label21
	b label20
label32:
	mov r0, #106
	bl _sysy_stoptime
	cmp r5, #2
	bne label163
	add r0, r4, #2000
	movw r2, #:lower16:sheet1
	movt r2, #:upper16:sheet1
	ldr r10, [sp, #0]
	add r1, r2, #2000
	mov r2, r0
	mov r3, r10
	ldr r0, [sp, #8]
	cmp r0, r10
	bge label52
	b label163
.p2align 4
label58:
	add r0, r0, #4
.p2align 4
label55:
	ldr r5, [r0, #0]
	str r5, [r1, r4, lsl #2]
	ldr r8, [sp, #4]
	add r4, r4, #1
	cmp r8, r4
	bge label58
	add r3, r3, #1
	add r2, r2, #2000
	ldr r0, [sp, #8]
	add r1, r1, #2000
	cmp r0, r3
	blt label163
.p2align 4
label52:
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label53
	add r0, r2, #4
	ldr r10, [sp, #0]
	mov r4, r10
	b label55
label163:
	movw r2, #:lower16:sheet1
	movt r2, #:upper16:sheet1
	ldr r10, [sp, #0]
	add r4, r2, #2000
	mov r5, r10
	ldr r0, [sp, #8]
	cmp r0, r10
	bge label37
	b label44
.p2align 4
label42:
	add r6, r6, #4
.p2align 4
label39:
	ldr r0, [r6, #0]
	cmp r0, #1
	mov r0, #46
	moveq r0, #35
	bl putch
	ldr r8, [sp, #4]
	add r10, r10, #1
	cmp r8, r10
	bge label42
.p2align 4
label43:
	mov r0, #10
	bl putch
	ldr r0, [sp, #8]
	add r4, r4, #2000
	add r5, r5, #1
	cmp r0, r5
	blt label44
.p2align 4
label37:
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label43
	add r6, r4, #4
	ldr r10, [sp, #0]
	b label39
label44:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label53:
	add r3, r3, #1
	add r2, r2, #2000
	ldr r0, [sp, #8]
	add r1, r1, #2000
	cmp r0, r3
	bge label52
	b label163
.p2align 4
label237:
	subs r3, r3, #1
	bgt label14
	b label32
label90:
	ldr r10, [sp, #0]
	mov r5, r10
	b label32
