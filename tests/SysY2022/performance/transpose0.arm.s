.arch armv7ve
.data
.bss
.align 4
matrix:
	.zero	80000000
.align 4
a:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	movw r5, #:lower16:a
	mov r6, r0
	movt r5, #:upper16:a
	mov r0, r5
	bl getarray
	mov r4, r0
	mov r0, #28
	bl _sysy_starttime
	cmp r6, #0
	ble label7
	movw r0, #:lower16:matrix
	cmp r6, #4
	movt r0, #:upper16:matrix
	bgt label46
	mov r1, #0
	b label5
label46:
	mov r1, #0
	b label3
label5:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	bgt label5
label7:
	cmp r4, #0
	bgt label8
	b label181
.p2align 4
label9:
	ldr r3, [r5, r1, lsl #2]
	mov r2, #0
	sdiv r7, r6, r3
	mul r9, r3, r2
	cmp r7, r2
	bgt label82
	add r1, r1, #1
	cmp r4, r1
	bgt label9
	cmp r4, #0
	bgt label23
label181:
	mov r5, #0
	b label21
.p2align 4
label82:
	mov r8, #0
	cmp r3, r8
	bgt label16
	add r2, r2, #1
	mul r9, r3, r2
	cmp r7, r2
	bgt label82
	add r1, r1, #1
	cmp r4, r1
	bgt label9
	cmp r4, #0
	bgt label23
	b label181
.p2align 4
label16:
	cmp r2, r8
	blt label17
	mla r10, r7, r8, r2
	add r11, r9, r8
	add r8, r8, #1
	ldr r11, [r0, r11, lsl #2]
	str r11, [r0, r10, lsl #2]
	cmp r3, r8
	bgt label16
	add r2, r2, #1
	mul r9, r3, r2
	cmp r7, r2
	bgt label82
	add r1, r1, #1
	cmp r4, r1
	bgt label9
	cmp r4, #0
	bgt label23
	b label181
label21:
	mov r0, #47
	bl _sysy_stoptime
	movs r0, r5
	rsbmi r0, r5, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label23:
	movw r0, #:lower16:matrix
	cmp r4, #4
	movt r0, #:upper16:matrix
	bgt label116
	mov r1, #0
	mov r3, #1
	mov r5, r1
	mov r2, r1
	b label29
label116:
	mov r5, #0
	mov r2, #1
	mov r3, r5
	mov r1, r5
label24:
	add r6, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	add r9, r2, r3
	ldr r8, [r6, #4]
	mul r8, r8, r9
	ldr r9, [r6, #8]
	mla r7, r3, r7, r8
	ldr r6, [r6, #12]
	add r8, r2, #1
	add r8, r3, r8, lsl #1
	mla r7, r8, r9, r7
	add r8, r2, r2, lsl #1
	add r8, r8, #6
	add r8, r3, r8
	mla r6, r8, r6, r7
	add r7, r1, #8
	cmp r4, r7
	add r5, r5, r6
	lsl r6, r2, #2
	add r2, r2, #8
	add r6, r6, #12
	add r3, r3, r6
	add r6, r1, #4
	bgt label150
	mov r1, r3
	mov r3, r2
	mov r2, r6
	b label29
label150:
	mov r1, r6
	b label24
label29:
	ldr r6, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r4, r2
	mla r5, r1, r6, r5
	add r1, r1, r3
	add r3, r3, #2
	bgt label29
	b label21
.p2align 4
label17:
	add r8, r8, #1
	cmp r3, r8
	bgt label16
	add r2, r2, #1
	mul r9, r3, r2
	cmp r7, r2
	bgt label82
	add r1, r1, #1
	cmp r4, r1
	bgt label9
	cmp r4, #0
	bgt label23
	b label181
label3:
	add r2, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r3, r1, #1
	str r3, [r2, #4]
	add r3, r1, #2
	str r3, [r2, #8]
	add r3, r1, #3
	str r3, [r2, #12]
	add r2, r1, #8
	cmp r6, r2
	add r1, r1, #4
	bgt label3
	b label5
label8:
	movw r0, #:lower16:matrix
	mov r1, #0
	movt r0, #:upper16:matrix
	b label9
