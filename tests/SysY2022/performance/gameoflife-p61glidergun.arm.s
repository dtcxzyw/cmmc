.arch armv7ve
.data
.data
.align 4
sheet1:
	.zero	1000000
.align 4
sheet2:
	.zero	1000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	mov r8, r0
	str r0, [sp, #0]
	bl getint
	mov r7, r0
	str r0, [sp, #4]
	bl getint
	mov r4, r0
	bl getch
	movw r1, #:lower16:sheet1
	movt r1, #:upper16:sheet1
	str r1, [sp, #8]
	mov r5, #1
	ldr r7, [sp, #4]
	cmp r5, r7
	bgt label9
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label5
	b label225
label226:
	str r4, [sp, #16]
	mov r0, #1
	b label27
label9:
	mov r0, #95
	bl _sysy_starttime
	movw r1, #:lower16:sheet2
	movt r1, #:upper16:sheet2
	str r1, [sp, #12]
	cmp r4, #0
	ble label72
	b label226
label72:
	mov r4, #1
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	bne label76
	mov r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label80
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label15
	b label248
label76:
	mov r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label21
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label23
	b label249
label80:
	mov r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label21
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label23
	b label249
label21:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label27:
	cmp r0, #1
	ldr r1, [sp, #12]
	mov r4, r1
	str r1, [sp, #20]
	ldr r1, [sp, #8]
	moveq r4, r1
	str r4, [sp, #20]
	ldr r1, [sp, #8]
	mov r2, r1
	ldr r1, [sp, #12]
	moveq r2, r1
	mov r3, #2
	mov r1, #1
	mov r0, r1
	moveq r0, r3
label30:
	sub r3, r1, #1
	mov r6, #2000
	ldr r4, [sp, #20]
	mla r3, r3, r6, r4
	ldr r4, [sp, #20]
	mla r4, r1, r6, r4
	add r5, r4, #2000
	mla r6, r1, r6, r2
	ldr r7, [sp, #4]
	cmp r1, r7
	bgt label39
	mov r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label138
	b label34
label241:
	str r4, [sp, #16]
	b label27
label138:
	add r1, r1, #1
	b label30
label39:
	ldr r4, [sp, #16]
	sub r4, r4, #1
	cmp r4, #0
	ble label190
	b label241
label34:
	sub r8, r7, #1
	ldr r10, [r3, r8, lsl #2]
	add r9, r3, r7, lsl #2
	ldr r11, [r3, r7, lsl #2]
	add r10, r10, r11
	ldr r9, [r9, #4]
	add r9, r10, r9
	add r10, r4, r8, lsl #2
	ldr r11, [r4, r8, lsl #2]
	add r9, r9, r11
	ldr r10, [r10, #8]
	add r9, r9, r10
	ldr r8, [r5, r8, lsl #2]
	add r9, r9, r8
	add r8, r5, r7, lsl #2
	ldr r10, [r5, r7, lsl #2]
	add r9, r9, r10
	ldr r8, [r8, #4]
	add r8, r9, r8
	eor r9, r8, #2
	ldr r10, [r4, r7, lsl #2]
	eor r10, r10, #1
	orr r9, r9, r10
	cmp r9, #0
	bne label35
	mov r8, #1
	str r8, [r6, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label138
	b label34
label35:
	sub r8, r8, #3
	clz r8, r8
	lsr r8, r8, #5
	str r8, [r6, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label138
	b label34
label225:
	mov r0, #2000
	ldr r1, [sp, #8]
	mla r7, r5, r0, r1
	mov r6, #1
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
label304:
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	b label304
label248:
	mov r3, #2000
	ldr r1, [sp, #8]
	mla r2, r0, r3, r1
	ldr r1, [sp, #12]
	mla r3, r0, r3, r1
	mov r1, #1
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	b label294
label190:
	mov r4, r0
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	bne label76
	mov r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label80
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label15
	b label248
label232:
	mov r3, #2000
	ldr r1, [sp, #8]
	mla r2, r0, r3, r1
	ldr r1, [sp, #12]
	mla r3, r0, r3, r1
	mov r1, #1
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
label294:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
label308:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label15
	b label308
label23:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label21
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label23
	b label249
label5:
	bl getch
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r5, r7
	bgt label9
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label5
	b label225
label249:
	mov r0, #2000
	ldr r1, [sp, #8]
	mla r6, r4, r0, r1
	mov r5, #1
label25:
	ldr r0, [r6, r5, lsl #2]
	mov r1, #35
	mov r2, #46
	cmp r0, #1
	mov r0, r2
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label23
	b label25
label15:
	add r0, r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label80
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label15
	b label232
