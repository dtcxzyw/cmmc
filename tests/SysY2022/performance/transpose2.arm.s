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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r5, r0
	mov r0, r6
	bl getarray
	sub r4, r0, #4
	str r0, [sp, #0]
	mov r0, #28
	bl _sysy_starttime
	cmp r5, #0
	ble label7
	sub r1, r5, #4
	cmp r5, #4
	ble label49
	mov r0, #0
.p2align 4
label3:
	movw r8, #:lower16:matrix
	movt r8, #:upper16:matrix
	add r3, r0, #1
	add r2, r8, r0, lsl #2
	str r0, [r2, #0]
	str r3, [r2, #4]
	add r3, r0, #2
	str r3, [r2, #8]
	add r3, r0, #3
	add r0, r0, #4
	str r3, [r2, #12]
	cmp r1, r0
	bgt label3
label5:
	movw r8, #:lower16:matrix
	movt r8, #:upper16:matrix
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bgt label5
label7:
	ldr r0, [sp, #0]
	cmp r0, #0
	ble label19
	mov r7, #0
.p2align 4
label9:
	ldr r1, [r6, r7, lsl #2]
	mov r0, #0
	sdiv r2, r5, r1
	mul r3, r1, r0
	cmp r2, r0
	ble label82
.p2align 4
label83:
	mov r8, #0
	cmp r1, r8
	ble label169
.p2align 4
label17:
	add r9, r8, #1
	cmp r0, r8
	blt label98
	mla r10, r2, r8, r0
	add r11, r3, r8
	movw r8, #:lower16:matrix
	movt r8, #:upper16:matrix
	ldr r11, [r8, r11, lsl #2]
	str r11, [r8, r10, lsl #2]
	mov r8, r9
	cmp r1, r9
	bgt label17
	b label175
.p2align 4
label98:
	mov r8, r9
	cmp r1, r9
	bgt label17
	add r0, r0, #1
	mul r3, r1, r0
	cmp r2, r0
	bgt label83
	add r7, r7, #1
	ldr r0, [sp, #0]
	cmp r0, r7
	bgt label9
label19:
	ldr r0, [sp, #0]
	cmp r0, #0
	bgt label22
	b label108
label20:
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
label22:
	ldr r0, [sp, #0]
	cmp r0, #4
	ble label113
	mov r0, #4
	mov r1, #3
	mov r6, #0
	mov r5, #1
	mov r2, r0
	mov r7, r6
	mov r3, r6
.p2align 4
label23:
	movw r8, #:lower16:matrix
	movt r8, #:upper16:matrix
	add r11, r5, r7
	add r8, r8, r3, lsl #2
	add r5, r5, #8
	add r3, r3, #4
	ldr r9, [r8, #0]
	cmp r4, r3
	ldr r10, [r8, #4]
	mul r10, r10, r11
	add r11, r2, r7
	mla r9, r7, r9, r10
	add r2, r2, #16
	ldr r10, [r8, #8]
	ldr r8, [r8, #12]
	mla r9, r10, r11, r9
	add r10, r1, #6
	add r1, r1, #24
	add r10, r7, r10
	mla r8, r8, r10, r9
	add r6, r6, r8
	add r8, r0, #12
	add r0, r0, #32
	add r7, r7, r8
	bgt label23
label31:
	movw r8, #:lower16:matrix
	movt r8, #:upper16:matrix
	ldr r0, [r8, r3, lsl #2]
	add r3, r3, #1
	mla r6, r7, r0, r6
	ldr r0, [sp, #0]
	add r7, r7, r5
	add r5, r5, #2
	cmp r0, r3
	bgt label31
	b label20
.p2align 4
label175:
	add r0, r0, #1
	mul r3, r1, r0
	cmp r2, r0
	bgt label83
	add r7, r7, #1
	ldr r0, [sp, #0]
	cmp r0, r7
	bgt label9
	b label19
.p2align 4
label169:
	add r0, r0, #1
	mul r3, r1, r0
	cmp r2, r0
	bgt label83
	add r7, r7, #1
	ldr r0, [sp, #0]
	cmp r0, r7
	bgt label9
	b label19
label82:
	add r7, r7, #1
	ldr r0, [sp, #0]
	cmp r0, r7
	bgt label9
	b label19
label108:
	mov r6, #0
	b label20
label49:
	mov r0, #0
	b label5
label113:
	mov r7, #0
	mov r5, #1
	mov r6, r7
	mov r3, r7
	b label31
