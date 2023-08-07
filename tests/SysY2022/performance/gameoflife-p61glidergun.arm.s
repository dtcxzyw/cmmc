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
	sub sp, sp, #28
	bl getint
	str r0, [sp, #16]
	mov r7, r0
	bl getint
	str r0, [sp, #20]
	mov r3, r0
	bl getint
	mov r4, r0
	bl getch
	mov r6, #1
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	str r6, [sp, #12]
	mov r9, r6
	add r5, r3, #2000
	ldr r3, [sp, #20]
	cmp r3, r6
	blt label5
.p2align 4
label51:
	ldr r7, [sp, #16]
	cmp r7, #0
	bgt label53
.p2align 4
label52:
	bl getch
	ldr r3, [sp, #20]
	add r5, r5, #2000
	add r6, r6, #1
	cmp r3, r6
	bge label51
	b label5
.p2align 4
label53:
	add r8, r5, #4
	ldr r9, [sp, #12]
.p2align 4
label54:
	bl getch
	add r9, r9, #1
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r8, #0]
	ldr r7, [sp, #16]
	cmp r7, r9
	blt label52
	add r8, r8, #4
	b label54
label5:
	mov r0, #95
	bl _sysy_starttime
	cmp r4, #0
	ble label73
	str r4, [sp, #8]
	ldr r9, [sp, #12]
.p2align 4
label6:
	sub r0, r9, #1
	cmp r9, #1
	movw r2, #:lower16:sheet2
	movt r2, #:upper16:sheet2
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	clz r0, r0
	str r2, [sp, #4]
	mov r1, r2
	mov r4, r3
	lsr r0, r0, #5
	moveq r1, r3
	moveq r4, r2
	add r9, r0, #1
	str r1, [sp, #4]
	add r0, r1, #2000
	str r9, [sp, #0]
	ldr r9, [sp, #12]
	ldr r3, [sp, #20]
	cmp r3, r9
	bge label13
	b label12
label88:
	ldr r9, [sp, #0]
	b label24
.p2align 4
label89:
	str r4, [sp, #8]
	ldr r9, [sp, #0]
	b label6
.p2align 4
label13:
	add r5, r9, #1
	mov r3, #2000
	ldr r1, [sp, #4]
	sub r2, r0, #2000
	ldr r7, [sp, #16]
	mla r1, r5, r3, r1
	mla r3, r9, r3, r4
	cmp r7, #0
	ble label14
	add r6, r2, #4
	ldr r9, [sp, #12]
	mov r7, r9
.p2align 4
label16:
	sub r8, r7, #1
	ldr r9, [r2, r8, lsl #2]
	ldr r10, [r6, #0]
	add r9, r9, r10
	ldr r10, [r6, #4]
	add r10, r9, r10
	add r9, r0, r8, lsl #2
	ldr r11, [r9, #0]
	ldr r9, [r9, #8]
	ldr r8, [r1, r8, lsl #2]
	add r10, r10, r11
	add r9, r10, r9
	add r9, r9, r8
	add r8, r1, r7, lsl #2
	ldr r10, [r8, #0]
	ldr r8, [r8, #4]
	add r9, r9, r10
	ldr r10, [r0, r7, lsl #2]
	add r9, r9, r8
	eor r8, r9, #2
	eor r10, r10, #1
	orrs r8, r8, r10
	add r8, r7, #1
	beq label23
	b label19
.p2align 4
label22:
	add r6, r6, #4
	mov r7, r8
	b label16
.p2align 4
label23:
	ldr r9, [sp, #12]
	str r9, [r3, r7, lsl #2]
	ldr r7, [sp, #16]
	cmp r7, r8
	bge label22
	add r0, r0, #2000
	mov r9, r5
	ldr r3, [sp, #20]
	cmp r3, r5
	bge label13
	ldr r4, [sp, #8]
	subs r4, r4, #1
	bgt label89
	b label88
label24:
	mov r0, #106
	bl _sysy_stoptime
	cmp r9, #2
	beq label37
label153:
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	ldr r9, [sp, #12]
	add r4, r3, #2000
	mov r5, r9
	ldr r3, [sp, #20]
	cmp r3, r9
	blt label29
.p2align 4
label30:
	ldr r7, [sp, #16]
	cmp r7, #0
	ble label31
	add r6, r4, #4
	ldr r9, [sp, #12]
	b label33
.p2align 4
label19:
	sub r9, r9, #3
	clz r9, r9
	lsr r9, r9, #5
	str r9, [r3, r7, lsl #2]
	ldr r7, [sp, #16]
	cmp r7, r8
	bge label22
	add r0, r0, #2000
	mov r9, r5
	ldr r3, [sp, #20]
	cmp r3, r5
	bge label13
	ldr r4, [sp, #8]
	subs r4, r4, #1
	bgt label89
	b label88
.p2align 4
label33:
	ldr r0, [r6, #0]
	cmp r0, #1
	mov r0, #46
	moveq r0, #35
	bl putch
	ldr r7, [sp, #16]
	add r9, r9, #1
	cmp r7, r9
	blt label31
	add r6, r6, #4
	b label33
.p2align 4
label31:
	mov r0, #10
	bl putch
	ldr r3, [sp, #20]
	add r4, r4, #2000
	add r5, r5, #1
	cmp r3, r5
	bge label30
	b label29
.p2align 4
label14:
	add r0, r0, #2000
	mov r9, r5
	ldr r3, [sp, #20]
	cmp r3, r5
	bge label13
label12:
	ldr r4, [sp, #8]
	subs r4, r4, #1
	bgt label89
	b label88
label29:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label37:
	movw r2, #:lower16:sheet2
	movt r2, #:upper16:sheet2
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	ldr r9, [sp, #12]
	add r1, r2, #2000
	add r0, r3, #2000
	mov r2, r9
	ldr r3, [sp, #20]
	cmp r3, r9
	blt label153
.p2align 4
label43:
	ldr r7, [sp, #16]
	cmp r7, #0
	ble label44
	add r3, r1, #4
	ldr r9, [sp, #12]
	mov r4, r9
	b label46
.p2align 4
label194:
	add r2, r2, #1
	add r1, r1, #2000
	ldr r3, [sp, #20]
	add r0, r0, #2000
	cmp r3, r2
	bge label43
	b label153
.p2align 4
label46:
	ldr r5, [r3, #0]
	str r5, [r0, r4, lsl #2]
	ldr r7, [sp, #16]
	add r4, r4, #1
	cmp r7, r4
	blt label194
	add r3, r3, #4
	b label46
label44:
	add r2, r2, #1
	add r1, r1, #2000
	ldr r3, [sp, #20]
	add r0, r0, #2000
	cmp r3, r2
	bge label43
	b label153
label73:
	ldr r9, [sp, #12]
	b label24
