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
	str r0, [sp, #12]
	mov r7, r0
	bl getint
	str r0, [sp, #16]
	mov r3, r0
	bl getint
	mov r4, r0
	bl getch
	mov r6, #1
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	str r6, [sp, #8]
	mov r9, r6
	add r5, r3, #2000
	ldr r3, [sp, #16]
	cmp r3, r6
	bge label5
	b label12
.p2align 4
label11:
	bl getch
	ldr r3, [sp, #16]
	add r5, r5, #2000
	add r6, r6, #1
	cmp r3, r6
	blt label12
.p2align 4
label5:
	ldr r7, [sp, #12]
	cmp r7, #0
	ble label11
	add r8, r5, #4
	ldr r9, [sp, #8]
.p2align 4
label7:
	bl getch
	add r9, r9, #1
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r8, #0]
	ldr r7, [sp, #12]
	cmp r7, r9
	blt label11
	add r8, r8, #4
	b label7
label12:
	mov r0, #95
	bl _sysy_starttime
	cmp r4, #0
	ble label90
	str r4, [sp, #4]
	ldr r9, [sp, #8]
	b label14
.p2align 4
label244:
	add r0, r0, #2000
	ldr r3, [sp, #16]
	cmp r3, r5
	bge label21
	ldr r4, [sp, #4]
	subs r4, r4, #1
	ble label105
.p2align 4
label106:
	str r4, [sp, #4]
	ldr r9, [sp, #0]
.p2align 4
label14:
	sub r0, r9, #1
	cmp r9, #1
	movw r2, #:lower16:sheet2
	movt r2, #:upper16:sheet2
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	clz r0, r0
	mov r1, r2
	mov r4, r3
	lsr r0, r0, #5
	moveq r1, r3
	moveq r4, r2
	add r9, r0, #1
	add r0, r1, #2000
	str r9, [sp, #0]
	ldr r9, [sp, #8]
	mov r5, r9
	ldr r3, [sp, #16]
	cmp r3, r9
	bge label21
label20:
	ldr r4, [sp, #4]
	subs r4, r4, #1
	bgt label106
	b label105
.p2align 4
label30:
	ldr r9, [sp, #8]
	str r9, [r3, r7, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r8
	blt label244
.p2align 4
label28:
	add r6, r6, #4
	mov r7, r8
.p2align 4
label23:
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
	beq label30
	sub r9, r9, #3
	clz r9, r9
	lsr r9, r9, #5
	str r9, [r3, r7, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r8
	bge label28
	add r0, r0, #2000
	ldr r3, [sp, #16]
	cmp r3, r5
	blt label249
.p2align 4
label21:
	sub r2, r0, #2000
	add r1, r0, #2000
	ldr r7, [sp, #12]
	mov r3, #2000
	mla r3, r5, r3, r4
	add r5, r5, #1
	cmp r7, #1
	blt label114
	add r6, r2, #4
	ldr r9, [sp, #8]
	mov r7, r9
	b label23
label105:
	ldr r9, [sp, #0]
label32:
	mov r0, #106
	bl _sysy_stoptime
	cmp r9, #2
	bne label34
	movw r2, #:lower16:sheet2
	movt r2, #:upper16:sheet2
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	ldr r9, [sp, #8]
	add r1, r2, #2000
	add r0, r3, #2000
	mov r2, r9
label47:
	ldr r3, [sp, #16]
	cmp r3, r2
	bge label52
	b label34
.p2align 4
label57:
	add r3, r3, #4
.p2align 4
label54:
	ldr r5, [r3, #0]
	str r5, [r0, r4, lsl #2]
	ldr r7, [sp, #12]
	add r4, r4, #1
	cmp r7, r4
	bge label57
	add r2, r2, #1
	add r1, r1, #2000
	ldr r3, [sp, #16]
	add r0, r0, #2000
	cmp r3, r2
	blt label34
.p2align 4
label52:
	ldr r7, [sp, #12]
	cmp r7, #0
	ble label200
	add r3, r1, #4
	ldr r9, [sp, #8]
	mov r4, r9
	b label54
label34:
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	ldr r9, [sp, #8]
	add r4, r3, #2000
	mov r5, r9
	ldr r3, [sp, #16]
	cmp r3, r9
	bge label38
	b label45
.p2align 4
label44:
	mov r0, #10
	bl putch
	ldr r3, [sp, #16]
	add r4, r4, #2000
	add r5, r5, #1
	cmp r3, r5
	blt label45
.p2align 4
label38:
	ldr r7, [sp, #12]
	cmp r7, #0
	ble label44
	add r6, r4, #4
	ldr r9, [sp, #8]
.p2align 4
label40:
	ldr r0, [r6, #0]
	cmp r0, #1
	mov r0, #46
	moveq r0, #35
	bl putch
	ldr r7, [sp, #12]
	add r9, r9, #1
	cmp r7, r9
	blt label44
	add r6, r6, #4
	b label40
label45:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label114:
	add r0, r0, #2000
	ldr r3, [sp, #16]
	cmp r3, r5
	bge label21
	b label20
.p2align 4
label249:
	ldr r4, [sp, #4]
	subs r4, r4, #1
	bgt label106
	b label105
label90:
	ldr r9, [sp, #8]
	b label32
label200:
	add r2, r2, #1
	add r1, r1, #2000
	add r0, r0, #2000
	b label47
