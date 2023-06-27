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
	movw r2, #:lower16:sheet1
	movt r2, #:upper16:sheet1
	str r2, [sp, #8]
	mov r5, #1
	ldr r7, [sp, #4]
	cmp r5, r7
	bgt label4
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label39
label214:
	mov r0, #2000
	mul r0, r5, r0
	ldr r2, [sp, #8]
	add r7, r2, r0
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
label328:
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label39
	b label328
label4:
	mov r0, #95
	bl _sysy_starttime
	movw r2, #:lower16:sheet2
	movt r2, #:upper16:sheet2
	str r2, [sp, #12]
	cmp r4, #0
	ble label58
	str r4, [sp, #16]
	mov r0, #1
	b label5
label58:
	mov r4, #1
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	bne label135
	mov r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label159
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label37
	mov r1, #2000
	mul r3, r0, r1
	ldr r2, [sp, #8]
	add r3, r2, r3
	mul r1, r0, r1
	ldr r2, [sp, #12]
	add r2, r2, r1
	mov r1, #1
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	b label293
label5:
	cmp r0, #1
	ldr r2, [sp, #12]
	mov r1, r2
	ldr r2, [sp, #8]
	moveq r1, r2
	ldr r2, [sp, #8]
	ldr r2, [sp, #12]
	moveq r2, r2
	mov r4, #2
	mov r3, #1
	mov r0, r3
	str r3, [sp, #20]
	moveq r0, r4
	str r0, [sp, #20]
	mov r0, r3
label8:
	sub r3, r0, #1
	mov r6, #2000
	mul r3, r3, r6
	add r3, r1, r3
	mul r4, r0, r6
	add r4, r1, r4
	add r5, r4, #2000
	mul r6, r0, r6
	add r6, r2, r6
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label20
	mov r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label12
	b label13
label217:
	str r4, [sp, #16]
	ldr r0, [sp, #20]
	b label5
label12:
	add r0, r0, #1
	b label8
label13:
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
	bne label115
	cmp r8, #2
	mov r9, #0
	movweq r9, #1
	cmp r9, #0
	beq label18
	mov r8, #1
	str r8, [r6, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label12
	b label13
label115:
	mov r9, #0
	cmp r9, #0
	beq label18
	mov r8, #1
	str r8, [r6, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label12
	b label13
label18:
	cmp r8, #3
	mov r8, #0
	movweq r8, #1
	str r8, [r6, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label12
	b label13
label20:
	ldr r4, [sp, #16]
	sub r4, r4, #1
	cmp r4, #0
	ble label131
	b label217
label226:
	mov r1, #2000
	mul r3, r0, r1
	ldr r2, [sp, #8]
	add r3, r2, r3
	mul r1, r0, r1
	ldr r2, [sp, #12]
	add r2, r2, r1
	mov r1, #1
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
label304:
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	b label315
label37:
	add r0, r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label159
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label37
	b label226
label315:
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	b label326
label131:
	ldr r0, [sp, #20]
	mov r4, r0
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	bne label135
	mov r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label159
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label37
	mov r1, #2000
	mul r3, r0, r1
	ldr r2, [sp, #8]
	add r3, r2, r3
	mul r1, r0, r1
	ldr r2, [sp, #12]
	add r2, r2, r1
	mov r1, #1
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	b label293
label135:
	mov r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label25
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label27
	b label222
label25:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label159:
	mov r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label25
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label27
	b label222
label293:
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	b label304
label222:
	mov r0, #2000
	mul r0, r4, r0
	ldr r2, [sp, #8]
	add r6, r2, r0
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
	bgt label27
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label27
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label27
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label27
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label27
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label27
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label27
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label27
	b label301
label27:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label25
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label27
	b label222
label301:
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label27
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label27
label323:
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label27
	b label323
label326:
	ldr r4, [r2, r1, lsl #2]
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label37
	b label326
label39:
	bl getch
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r5, r7
	bgt label4
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label39
	b label214
