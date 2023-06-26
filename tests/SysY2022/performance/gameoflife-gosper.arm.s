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
	sub sp, sp, #44
	bl getint
	mov r5, r0
	str r0, [sp, #0]
	bl getint
	mov r5, r0
	str r0, [sp, #4]
	bl getint
	mov r4, r0
	bl getch
	movw r1, #:lower16:sheet1
	movt r1, #:upper16:sheet1
	str r1, [sp, #8]
	mov r6, #1
	ldr r5, [sp, #4]
	cmp r6, r5
	bgt label4
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label39
label218:
	mov r0, #2000
	mul r0, r6, r0
	ldr r1, [sp, #8]
	add r7, r1, r0
	mov r5, #1
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label39
	mov r5, r0
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label39
	mov r5, r0
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label39
	mov r5, r0
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label39
	mov r5, r0
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label39
	mov r5, r0
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label39
	mov r5, r0
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label39
	mov r5, r0
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label39
	mov r5, r0
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label39
	mov r5, r0
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label39
label311:
	mov r5, r0
	bl getch
	cmp r0, #35
	mov r0, #0
	movweq r0, #1
	str r0, [r7, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label39
	b label311
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
	b label5
label58:
	mov r4, #1
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	bne label135
	mov r0, #1
	ldr r5, [sp, #4]
	cmp r0, r5
	bgt label159
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label37
	mov r3, #2000
	mul r2, r0, r3
	ldr r1, [sp, #8]
	add r2, r1, r2
	mul r3, r0, r3
	ldr r1, [sp, #12]
	add r3, r1, r3
	mov r1, #1
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	b label277
label5:
	cmp r0, #1
	ldr r1, [sp, #12]
	mov r0, r1
	str r1, [sp, #24]
	ldr r1, [sp, #8]
	moveq r0, r1
	str r0, [sp, #24]
	ldr r1, [sp, #8]
	mov r3, r1
	str r1, [sp, #28]
	ldr r1, [sp, #12]
	moveq r3, r1
	str r3, [sp, #28]
	mov r1, #2
	mov r3, #1
	mov r0, r3
	str r3, [sp, #20]
	moveq r0, r1
	str r0, [sp, #20]
	str r3, [sp, #32]
	b label8
label277:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	b label285
label8:
	ldr r3, [sp, #32]
	sub r0, r3, #1
	mov r2, #2000
	mul r1, r0, r2
	ldr r0, [sp, #24]
	add r6, r0, r1
	str r6, [sp, #36]
	ldr r3, [sp, #32]
	mul r1, r3, r2
	ldr r0, [sp, #24]
	add r0, r0, r1
	add r1, r0, #2000
	ldr r3, [sp, #32]
	mul r2, r3, r2
	ldr r3, [sp, #28]
	add r2, r3, r2
	ldr r5, [sp, #4]
	ldr r3, [sp, #32]
	cmp r3, r5
	bgt label20
	mov r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bgt label12
	b label13
label221:
	str r4, [sp, #16]
	ldr r0, [sp, #20]
	b label5
label12:
	ldr r3, [sp, #32]
	add r3, r3, #1
	str r3, [sp, #32]
	b label8
label20:
	ldr r4, [sp, #16]
	sub r4, r4, #1
	cmp r4, #0
	ble label131
	b label221
label13:
	sub r5, r3, #1
	ldr r6, [sp, #36]
	ldr r4, [r6, r5, lsl #2]
	ldr r6, [sp, #36]
	add r7, r6, r3, lsl #2
	ldr r6, [sp, #36]
	ldr r6, [r6, r3, lsl #2]
	ldr r7, [r7, #4]
	add r9, r0, r5, lsl #2
	ldr r8, [r0, r5, lsl #2]
	ldr r9, [r9, #8]
	ldr r5, [r1, r5, lsl #2]
	add r10, r1, r3, lsl #2
	ldr r11, [r1, r3, lsl #2]
	ldr r10, [r10, #4]
	add r4, r4, r6
	add r4, r4, r7
	add r4, r4, r8
	add r4, r4, r9
	add r4, r4, r5
	add r4, r4, r11
	add r4, r4, r10
	ldr r5, [r0, r3, lsl #2]
	cmp r5, #1
	bne label115
	cmp r4, #2
	mov r5, #0
	movweq r5, #1
	cmp r5, #0
	beq label18
	mov r4, #1
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bgt label12
	b label13
label115:
	mov r5, #0
	cmp r5, #0
	beq label18
	mov r4, #1
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bgt label12
	b label13
label18:
	cmp r4, #3
	mov r4, #0
	movweq r4, #1
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r3, r5
	bgt label12
	b label13
label131:
	ldr r0, [sp, #20]
	mov r4, r0
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	bne label135
	mov r0, #1
	ldr r5, [sp, #4]
	cmp r0, r5
	bgt label159
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label37
	mov r3, #2000
	mul r2, r0, r3
	ldr r1, [sp, #8]
	add r2, r1, r2
	mul r3, r0, r3
	ldr r1, [sp, #12]
	add r3, r1, r3
	mov r1, #1
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	b label285
label135:
	mov r4, #1
	ldr r5, [sp, #4]
	cmp r4, r5
	bgt label25
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label27
	b label226
label285:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	b label293
label226:
	mov r0, #2000
	mul r0, r4, r0
	ldr r1, [sp, #8]
	add r6, r1, r0
	mov r5, #1
	ldr r0, [r6, r5, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label27
label154:
	mov r5, r0
	ldr r0, [r6, r0, lsl #2]
	cmp r0, #1
	mov r1, #35
	mov r0, #46
	moveq r0, r1
	bl putch
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bgt label27
	b label154
label230:
	mov r3, #2000
	mul r2, r0, r3
	ldr r1, [sp, #8]
	add r2, r1, r2
	mul r3, r0, r3
	ldr r1, [sp, #12]
	add r3, r1, r3
	mov r1, #1
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
label293:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
label309:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bgt label37
	b label309
label27:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r5, [sp, #4]
	cmp r4, r5
	bgt label25
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label27
	b label226
label159:
	mov r4, #1
	ldr r5, [sp, #4]
	cmp r4, r5
	bgt label25
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label27
	b label226
label39:
	bl getch
	add r6, r6, #1
	ldr r5, [sp, #4]
	cmp r6, r5
	bgt label4
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label39
	b label218
label37:
	add r0, r0, #1
	ldr r5, [sp, #4]
	cmp r0, r5
	bgt label159
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label37
	b label230
label25:
	mov r0, #0
	add sp, sp, #44
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
