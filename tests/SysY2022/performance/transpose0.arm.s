.arch armv7ve
.data
.bss
.align 8
matrix:
	.zero	80000000
.align 8
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
	sub sp, sp, #12
	bl getint
	movw r4, #:lower16:a
	mov r5, r0
	movt r4, #:upper16:a
	mov r0, r4
	bl getarray
	sub r8, r0, #4
	str r0, [sp, #0]
	mov r2, r0
	str r8, [sp, #4]
	mov r0, #28
	bl _sysy_starttime
	cmp r5, #0
	ble label7
	sub r2, r5, #4
	movw r0, #:lower16:matrix
	cmp r5, #4
	movt r0, #:upper16:matrix
	bgt label51
	mov r1, #0
	b label5
label51:
	mov r1, #0
	b label3
label5:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bgt label5
label7:
	ldr r2, [sp, #0]
	cmp r2, #0
	bgt label8
	b label182
.p2align 4
label9:
	ldr r3, [r4, r1, lsl #2]
	mov r2, #0
	sdiv r6, r5, r3
	mul r8, r3, r2
	cmp r6, r2
	bgt label86
	add r1, r1, #1
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label9
	cmp r2, #0
	bgt label23
label182:
	mov r6, #0
	b label21
.p2align 4
label86:
	mov r7, #0
	cmp r3, r7
	bgt label17
	add r2, r2, #1
	mul r8, r3, r2
	cmp r6, r2
	bgt label86
	add r1, r1, #1
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label9
	cmp r2, #0
	bgt label23
	b label182
.p2align 4
label17:
	cmp r2, r7
	blt label19
	mla r9, r6, r7, r2
	add r10, r8, r7
	add r7, r7, #1
	ldr r10, [r0, r10, lsl #2]
	str r10, [r0, r9, lsl #2]
	cmp r3, r7
	bgt label17
	add r2, r2, #1
	mul r8, r3, r2
	cmp r6, r2
	bgt label86
	add r1, r1, #1
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label9
	cmp r2, #0
	bgt label23
	b label182
.p2align 4
label19:
	add r7, r7, #1
	cmp r3, r7
	bgt label17
	add r2, r2, #1
	mul r8, r3, r2
	cmp r6, r2
	bgt label86
	add r1, r1, #1
	ldr r2, [sp, #0]
	cmp r2, r1
	bgt label9
	cmp r2, #0
	bgt label23
	b label182
label21:
	mov r0, #47
	bl _sysy_stoptime
	movs r0, r6
	rsbmi r0, r6, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label23:
	movw r0, #:lower16:matrix
	ldr r2, [sp, #0]
	movt r0, #:upper16:matrix
	cmp r2, #4
	bgt label120
	mov r1, #0
	mov r3, #1
	mov r6, r1
	mov r2, r1
	b label24
label120:
	mov r1, #4
	mov r4, #3
	mov r6, #0
	mov r5, #1
	mov r3, r1
	mov r7, r6
	mov r2, r6
	b label29
label24:
	ldr r4, [r0, r2, lsl #2]
	mla r6, r1, r4, r6
	add r1, r1, r3
	add r4, r2, #1
	add r3, r3, #2
	ldr r2, [sp, #0]
	cmp r2, r4
	ble label21
	mov r2, r4
	b label24
label29:
	add r8, r0, r2, lsl #2
	ldr r9, [r0, r2, lsl #2]
	add r11, r5, r7
	add r2, r2, #4
	add r5, r5, #8
	ldr r10, [r8, #4]
	mul r10, r10, r11
	add r11, r3, r7
	mla r9, r7, r9, r10
	add r3, r3, #16
	ldr r10, [r8, #8]
	ldr r8, [r8, #12]
	mla r9, r10, r11, r9
	add r10, r4, #6
	add r4, r4, #24
	add r10, r7, r10
	mla r8, r8, r10, r9
	add r6, r6, r8
	add r8, r1, #12
	add r1, r1, #32
	add r7, r7, r8
	ldr r8, [sp, #4]
	cmp r8, r2
	bgt label29
	mov r1, r7
	mov r3, r5
	b label24
label3:
	add r3, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r6, r1, #1
	str r6, [r3, #4]
	add r6, r1, #2
	str r6, [r3, #8]
	add r6, r1, #3
	add r1, r1, #4
	str r6, [r3, #12]
	cmp r2, r1
	bgt label3
	b label5
label8:
	movw r0, #:lower16:matrix
	mov r1, #0
	movt r0, #:upper16:matrix
	b label9
