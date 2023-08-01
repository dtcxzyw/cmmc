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
	str r0, [sp, #8]
	mov r8, r0
	bl getint
	str r0, [sp, #16]
	bl getint
	mov r5, r0
	bl getch
	mov r6, #1
	str r6, [sp, #12]
	mov r8, r6
	ldr r0, [sp, #16]
	cmp r0, r6
	blt label8
.p2align 4
label4:
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	mov r0, #2000
	ldr r8, [sp, #8]
	mla r4, r6, r0, r3
	cmp r8, #0
	bgt label49
.p2align 4
label7:
	bl getch
	add r6, r6, #1
	ldr r0, [sp, #16]
	cmp r0, r6
	bge label4
label8:
	mov r0, #95
	bl _sysy_starttime
	cmp r5, #0
	ble label66
	str r5, [sp, #4]
	ldr r8, [sp, #12]
	mov r6, r8
	b label9
.p2align 4
label49:
	ldr r8, [sp, #12]
.p2align 4
label5:
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r4, r8, lsl #2]
	add r0, r8, #1
	ldr r8, [sp, #8]
	cmp r8, r0
	blt label7
	mov r8, r0
	b label5
.p2align 4
label9:
	sub r0, r6, #1
	cmp r6, #1
	movw r1, #:lower16:sheet2
	movt r1, #:upper16:sheet2
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	clz r0, r0
	str r1, [sp, #0]
	mov r2, r1
	mov r5, r3
	lsr r0, r0, #5
	moveq r2, r3
	moveq r5, r1
	add r6, r0, #1
	str r2, [sp, #0]
	ldr r8, [sp, #12]
	b label12
.p2align 4
label84:
	ldr r5, [sp, #4]
	subs r5, r5, #1
	ble label20
	str r5, [sp, #4]
	b label9
.p2align 4
label12:
	sub r1, r8, #1
	mov r0, #2000
	ldr r2, [sp, #0]
	add r7, r8, #1
	mla r4, r8, r0, r5
	mla r1, r1, r0, r2
	mla r2, r8, r0, r2
	ldr r0, [sp, #16]
	add r3, r2, #2000
	cmp r0, r8
	bge label85
	b label84
.p2align 4
label88:
	mov r8, r7
	b label12
.p2align 4
label85:
	ldr r8, [sp, #12]
	mov r0, r8
	ldr r8, [sp, #8]
	cmp r8, r0
	blt label88
.p2align 4
label16:
	sub r8, r0, #1
	add r9, r1, r0, lsl #2
	ldr r10, [r1, r8, lsl #2]
	ldr r11, [r9, #0]
	ldr r9, [r9, #4]
	add r10, r10, r11
	add r10, r10, r9
	add r9, r2, r8, lsl #2
	ldr r11, [r9, #0]
	ldr r9, [r9, #8]
	ldr r8, [r3, r8, lsl #2]
	add r10, r10, r11
	add r9, r10, r9
	add r9, r9, r8
	add r8, r3, r0, lsl #2
	ldr r10, [r8, #0]
	ldr r8, [r8, #4]
	add r9, r9, r10
	ldr r10, [r2, r0, lsl #2]
	add r8, r9, r8
	eor r9, r8, #2
	eor r10, r10, #1
	orrs r9, r9, r10
	add r9, r0, #1
	beq label17
	sub r8, r8, #3
	clz r8, r8
	lsr r8, r8, #5
	str r8, [r4, r0, lsl #2]
	mov r0, r9
	ldr r8, [sp, #8]
	cmp r8, r9
	bge label16
	b label88
.p2align 4
label17:
	ldr r8, [sp, #12]
	str r8, [r4, r0, lsl #2]
	mov r0, r9
	ldr r8, [sp, #8]
	cmp r8, r9
	bge label16
	b label88
label20:
	mov r0, #106
	bl _sysy_stoptime
	cmp r6, #2
	bne label143
	ldr r8, [sp, #12]
	mov r2, r8
label29:
	ldr r0, [sp, #16]
	cmp r0, r2
	bge label31
label143:
	ldr r8, [sp, #12]
	mov r5, r8
	ldr r0, [sp, #16]
	cmp r0, r8
	bge label25
	b label24
.p2align 4
label31:
	mov r0, #2000
	movw r1, #:lower16:sheet2
	movt r1, #:upper16:sheet2
	ldr r8, [sp, #8]
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	mla r1, r2, r0, r1
	mla r0, r2, r0, r3
	cmp r8, #0
	ble label174
	ldr r8, [sp, #12]
	b label32
.p2align 4
label184:
	add r2, r2, #1
	ldr r0, [sp, #16]
	cmp r0, r2
	bge label31
	b label143
.p2align 4
label32:
	ldr r3, [r1, r8, lsl #2]
	str r3, [r0, r8, lsl #2]
	add r3, r8, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	blt label184
	mov r8, r3
	b label32
.p2align 4
label25:
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	mov r0, #2000
	ldr r8, [sp, #8]
	mla r4, r5, r0, r3
	cmp r8, #0
	ble label26
	ldr r8, [sp, #12]
	b label27
.p2align 4
label26:
	mov r0, #10
	bl putch
	add r5, r5, #1
	ldr r0, [sp, #16]
	cmp r0, r5
	bge label25
	b label24
.p2align 4
label27:
	ldr r0, [r4, r8, lsl #2]
	cmp r0, #1
	mov r0, #46
	moveq r0, #35
	bl putch
	add r0, r8, #1
	ldr r8, [sp, #8]
	cmp r8, r0
	blt label26
	mov r8, r0
	b label27
label24:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label174:
	add r2, r2, #1
	b label29
label66:
	ldr r8, [sp, #12]
	mov r6, r8
	b label20
