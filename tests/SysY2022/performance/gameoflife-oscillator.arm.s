.arch armv7ve
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
	bgt label4
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label39
label221:
	mov r0, #2000
	ldr r1, [sp, #8]
	mla r7, r5, r0, r1
	mov r6, #1
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
	b label310
label39:
	bl getch
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r5, r7
	bgt label4
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label39
	b label221
label310:
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
label330:
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
	b label330
label4:
	mov r0, #95
	bl _sysy_starttime
	movw r1, #:lower16:sheet2
	movt r1, #:upper16:sheet2
	str r1, [sp, #12]
	cmp r4, #0
	ble label58
	str r4, [sp, #16]
	mov r0, #1
	b label22
label58:
	mov r4, #1
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	bne label62
	mov r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label86
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label21
	b label240
label22:
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
label25:
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
	bgt label37
	mov r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label29
	b label30
label232:
	str r4, [sp, #16]
	b label22
label29:
	add r1, r1, #1
	b label25
label37:
	ldr r4, [sp, #16]
	sub r4, r4, #1
	cmp r4, #0
	ble label177
	b label232
label30:
	sub r8, r7, #1
	ldr r10, [r3, r8, lsl #2]
	add r9, r3, r7, lsl #2
	ldr r11, [r3, r7, lsl #2]
	add r10, r10, r11
	ldr r9, [r9, #4]
	add r10, r10, r9
	add r9, r4, r8, lsl #2
	ldr r11, [r4, r8, lsl #2]
	add r10, r10, r11
	ldr r9, [r9, #8]
	add r9, r10, r9
	ldr r8, [r5, r8, lsl #2]
	add r9, r9, r8
	add r8, r5, r7, lsl #2
	ldr r10, [r5, r7, lsl #2]
	add r9, r9, r10
	ldr r8, [r8, #4]
	add r8, r9, r8
	ldr r9, [r4, r7, lsl #2]
	cmp r9, #1
	bne label161
	cmp r8, #2
	mov r9, #0
	movweq r9, #1
	cmp r9, #0
	beq label35
	mov r8, #1
	str r8, [r6, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label29
	b label30
label161:
	mov r9, #0
	cmp r9, #0
	beq label35
	mov r8, #1
	str r8, [r6, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label29
	b label30
label35:
	cmp r8, #3
	mov r8, #0
	movweq r8, #1
	str r8, [r6, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label29
	b label30
label240:
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
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	b label298
label62:
	mov r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label9
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label11
	b label223
label9:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label86:
	mov r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label9
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label11
	b label223
label298:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	b label308
label177:
	mov r4, r0
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	bne label62
	mov r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label86
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label21
	b label240
label223:
	mov r0, #2000
	ldr r1, [sp, #8]
	mla r6, r4, r0, r1
	mov r5, #1
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label11
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label11
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label11
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label11
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label11
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label11
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label11
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label11
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label11
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label11
label325:
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label11
	b label325
label227:
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
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
label308:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
label328:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label21
	b label328
label11:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label9
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label11
	b label223
label21:
	add r0, r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label86
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label21
	b label227
