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
	str r0, [sp, #16]
	mov r8, r0
	bl getint
	str r0, [sp, #20]
	mov r8, r0
	bl getint
	mov r4, r0
	bl getch
	mov r5, #1
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	str r3, [sp, #12]
	ldr r8, [sp, #20]
	cmp r8, r5
	blt label8
.p2align 4
label4:
	mov r0, #2000
	ldr r3, [sp, #12]
	ldr r8, [sp, #16]
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
	ldr r8, [sp, #16]
	add r7, r7, #1
	cmp r8, r7
	bge label5
.p2align 4
label7:
	bl getch
	add r5, r5, #1
	ldr r8, [sp, #20]
	cmp r8, r5
	bge label4
label8:
	mov r0, #95
	bl _sysy_starttime
	cmp r4, #0
	movw r2, #:lower16:sheet2
	movt r2, #:upper16:sheet2
	str r2, [sp, #8]
	ble label66
	str r4, [sp, #4]
	mov r1, #1
.p2align 4
label9:
	sub r0, r1, #1
	cmp r1, #1
	ldr r2, [sp, #8]
	clz r0, r0
	lsr r0, r0, #5
	add r0, r0, #1
	str r2, [sp, #0]
	mov r4, r2
	ldr r3, [sp, #12]
	mov r1, r3
	moveq r4, r3
	moveq r1, r2
	str r4, [sp, #0]
	mov r2, #1
.p2align 4
label12:
	sub r3, r2, #1
	mov r6, #2000
	ldr r4, [sp, #0]
	mla r7, r2, r6, r1
	ldr r8, [sp, #20]
	mla r3, r3, r6, r4
	mla r4, r2, r6, r4
	add r6, r2, #1
	cmp r8, r2
	add r5, r4, #2000
	blt label84
	mov r2, #1
	ldr r8, [sp, #16]
	cmp r8, r2
	bge label16
.p2align 4
label88:
	mov r2, r6
	b label12
.p2align 4
label16:
	sub r8, r2, #1
	add r9, r3, r2, lsl #2
	ldr r10, [r3, r8, lsl #2]
	ldr r11, [r9, #0]
	ldr r9, [r9, #4]
	add r10, r10, r11
	add r10, r10, r9
	add r9, r4, r8, lsl #2
	ldr r11, [r9, #0]
	ldr r9, [r9, #8]
	ldr r8, [r5, r8, lsl #2]
	add r10, r10, r11
	add r9, r10, r9
	add r9, r9, r8
	add r8, r5, r2, lsl #2
	ldr r10, [r8, #0]
	ldr r8, [r8, #4]
	add r9, r9, r10
	ldr r10, [r4, r2, lsl #2]
	add r8, r9, r8
	eor r9, r8, #2
	eor r10, r10, #1
	orrs r9, r9, r10
	add r9, r2, #1
	beq label17
	sub r8, r8, #3
	clz r8, r8
	lsr r8, r8, #5
	str r8, [r7, r2, lsl #2]
	mov r2, r9
	ldr r8, [sp, #16]
	cmp r8, r9
	bge label16
	b label88
.p2align 4
label84:
	ldr r4, [sp, #4]
	subs r4, r4, #1
	ble label227
	str r4, [sp, #4]
	mov r1, r0
	b label9
.p2align 4
label17:
	mov r8, #1
	str r8, [r7, r2, lsl #2]
	mov r2, r9
	ldr r8, [sp, #16]
	cmp r8, r9
	bge label16
	b label88
.p2align 4
label227:
	mov r4, r0
label20:
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	bne label143
	mov r0, #1
	ldr r8, [sp, #20]
	cmp r8, r0
	bge label31
	mov r4, #1
	cmp r8, r4
	bge label25
label24:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label143:
	mov r4, #1
	ldr r8, [sp, #20]
	cmp r8, r4
	blt label24
.p2align 4
label25:
	mov r0, #2000
	ldr r3, [sp, #12]
	ldr r8, [sp, #16]
	mla r5, r4, r0, r3
	cmp r8, #0
	ble label26
	mov r6, #1
	b label27
.p2align 4
label26:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r8, [sp, #20]
	cmp r8, r4
	bge label25
	b label24
.p2align 4
label27:
	ldr r1, [r5, r6, lsl #2]
	mov r0, #35
	cmp r1, #1
	mov r1, #46
	moveq r1, r0
	mov r0, r1
	bl putch
	ldr r8, [sp, #16]
	add r6, r6, #1
	cmp r8, r6
	bge label27
	b label26
.p2align 4
label31:
	mov r4, #2000
	ldr r2, [sp, #8]
	ldr r3, [sp, #12]
	mla r1, r0, r4, r2
	ldr r8, [sp, #16]
	mla r2, r0, r4, r3
	cmp r8, #0
	bgt label175
	add r0, r0, #1
	ldr r8, [sp, #20]
	cmp r8, r0
	bge label31
	mov r4, #1
	cmp r8, r4
	bge label25
	b label24
.p2align 4
label175:
	mov r3, #1
.p2align 4
label32:
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	ldr r8, [sp, #16]
	add r3, r3, #1
	cmp r8, r3
	bge label32
	add r0, r0, #1
	ldr r8, [sp, #20]
	cmp r8, r0
	bge label31
	mov r4, #1
	cmp r8, r4
	bge label25
	b label24
.p2align 4
label66:
	mov r4, #1
	b label20
