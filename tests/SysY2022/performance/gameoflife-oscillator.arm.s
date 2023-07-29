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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	str r0, [sp, #4]
	mov r8, r0
	bl getint
	str r0, [sp, #0]
	mov r8, r0
	bl getint
	mov r4, r0
	bl getch
	mov r5, #1
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	str r3, [sp, #8]
	ldr r8, [sp, #0]
	cmp r8, r5
	blt label8
.p2align 4
label4:
	mov r0, #2000
	ldr r3, [sp, #8]
	ldr r8, [sp, #4]
	mla r6, r5, r0, r3
	cmp r8, #0
	ble label7
	mov r7, #1
.p2align 4
label5:
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	bge label5
.p2align 4
label7:
	bl getch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r8, r5
	bge label4
label8:
	mov r0, #95
	bl _sysy_starttime
	cmp r4, #0
	bgt label9
	mov r4, #1
	b label21
.p2align 4
label10:
	sub r0, r1, #1
	cmp r1, #1
	ldr r2, [sp, #12]
	clz r0, r0
	lsr r0, r0, #5
	add r0, r0, #1
	str r2, [sp, #20]
	mov r4, r2
	ldr r3, [sp, #8]
	mov r1, r3
	moveq r4, r3
	moveq r1, r2
	str r4, [sp, #20]
	mov r2, #1
.p2align 4
label13:
	sub r3, r2, #1
	mov r6, #2000
	ldr r4, [sp, #20]
	mla r7, r2, r6, r1
	ldr r8, [sp, #0]
	mla r3, r3, r6, r4
	mla r4, r2, r6, r4
	add r6, r2, #1
	cmp r8, r2
	add r5, r4, #2000
	bge label87
	ldr r4, [sp, #16]
	subs r4, r4, #1
	bgt label142
	mov r4, r0
	b label21
.p2align 4
label87:
	mov r2, #1
	ldr r8, [sp, #4]
	cmp r8, r2
	bge label17
.p2align 4
label90:
	mov r2, r6
	b label13
.p2align 4
label17:
	sub r8, r2, #1
	add r9, r3, r2, lsl #2
	ldr r10, [r3, r8, lsl #2]
	ldr r11, [r3, r2, lsl #2]
	ldr r9, [r9, #4]
	add r10, r10, r11
	ldr r11, [r4, r8, lsl #2]
	add r9, r10, r9
	add r10, r4, r8, lsl #2
	ldr r10, [r10, #8]
	add r9, r9, r11
	ldr r8, [r5, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r5, r2, lsl #2]
	add r8, r9, r8
	add r9, r5, r2, lsl #2
	ldr r9, [r9, #4]
	add r8, r8, r10
	ldr r10, [r4, r2, lsl #2]
	add r8, r8, r9
	eor r9, r8, #2
	eor r10, r10, #1
	orrs r9, r9, r10
	add r9, r2, #1
	beq label19
	sub r8, r8, #3
	clz r8, r8
	lsr r8, r8, #5
	str r8, [r7, r2, lsl #2]
	mov r2, r9
	ldr r8, [sp, #4]
	cmp r8, r9
	bge label17
	b label90
.p2align 4
label19:
	mov r8, #1
	str r8, [r7, r2, lsl #2]
	mov r2, r9
	ldr r8, [sp, #4]
	cmp r8, r9
	bge label17
	b label90
label142:
	str r4, [sp, #16]
	mov r1, r0
	b label10
label21:
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	beq label23
	mov r4, #1
	ldr r8, [sp, #0]
	cmp r8, r4
	bge label33
label32:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label33:
	mov r0, #2000
	ldr r3, [sp, #8]
	ldr r8, [sp, #4]
	mla r5, r4, r0, r3
	cmp r8, #0
	ble label34
	mov r6, #1
	b label35
.p2align 4
label34:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r8, [sp, #0]
	cmp r8, r4
	bge label33
	b label32
.p2align 4
label35:
	ldr r1, [r5, r6, lsl #2]
	mov r0, #35
	cmp r1, #1
	mov r1, #46
	moveq r1, r0
	mov r0, r1
	bl putch
	ldr r8, [sp, #4]
	add r6, r6, #1
	cmp r8, r6
	bge label35
	b label34
label23:
	movw r0, #:lower16:sheet2
	mov r1, #1
	movt r0, #:upper16:sheet2
	ldr r8, [sp, #0]
	cmp r8, r1
	bge label26
	mov r4, #1
	cmp r8, r4
	bge label33
	b label32
.p2align 4
label26:
	mov r4, #2000
	ldr r3, [sp, #8]
	mla r2, r1, r4, r0
	ldr r8, [sp, #4]
	mla r3, r1, r4, r3
	cmp r8, #0
	bgt label159
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	bge label26
	mov r4, #1
	cmp r8, r4
	bge label33
	b label32
.p2align 4
label159:
	mov r4, #1
.p2align 4
label27:
	ldr r5, [r2, r4, lsl #2]
	str r5, [r3, r4, lsl #2]
	ldr r8, [sp, #4]
	add r4, r4, #1
	cmp r8, r4
	bge label27
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	bge label26
	mov r4, #1
	cmp r8, r4
	bge label33
	b label32
label9:
	movw r2, #:lower16:sheet2
	mov r1, #1
	movt r2, #:upper16:sheet2
	str r2, [sp, #12]
	str r4, [sp, #16]
	b label10
