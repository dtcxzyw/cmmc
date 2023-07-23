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
	bgt label2
	cmp r4, #0
	bgt label9
	ble label168
label24:
	movw r0, #:lower16:matrix
	mov r1, #0
	mov r2, #1
	movt r0, #:upper16:matrix
	mov r6, r1
	mov r5, r1
	b label25
label10:
	ldr r3, [r5, r1, lsl #2]
	mov r2, #0
	sdiv r7, r6, r3
	mul r9, r3, r2
	cmp r7, r2
	bgt label79
	add r1, r1, #1
	cmp r4, r1
	bgt label10
	cmp r4, #0
	bgt label24
	b label168
label79:
	mov r8, #0
	cmp r3, r8
	bgt label16
	add r2, r2, #1
	mul r9, r3, r2
	cmp r7, r2
	bgt label79
	add r1, r1, #1
	cmp r4, r1
	bgt label10
	cmp r4, #0
	bgt label24
	b label168
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
	bgt label79
	add r1, r1, #1
	cmp r4, r1
	bgt label10
	cmp r4, #0
	bgt label24
	b label168
label17:
	add r8, r8, #1
	cmp r3, r8
	bgt label16
	add r2, r2, #1
	mul r9, r3, r2
	cmp r7, r2
	bgt label79
	add r1, r1, #1
	cmp r4, r1
	bgt label10
	cmp r4, #0
	bgt label24
	b label168
label188:
	mov r4, r3
label22:
	mov r0, #47
	bl _sysy_stoptime
	movs r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label25:
	add r3, r5, #4
	cmp r4, r3
	bgt label30
	ldr r3, [r0, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	mla r3, r1, r3, r6
	add r1, r1, r2
	add r2, r2, #2
	bgt label155
	b label188
label30:
	add r7, r0, r5, lsl #2
	add r9, r1, r2
	ldr r5, [r0, r5, lsl #2]
	ldr r8, [r7, #4]
	mla r5, r1, r5, r6
	add r6, r1, #2
	mla r5, r8, r9, r5
	add r6, r6, r2, lsl #1
	ldr r8, [r7, #8]
	ldr r7, [r7, #12]
	mla r5, r6, r8, r5
	add r8, r1, #6
	add r6, r2, r2, lsl #1
	add r1, r1, #12
	add r6, r6, r8
	add r1, r1, r2, lsl #2
	mla r6, r6, r7, r5
	add r2, r2, #8
	mov r5, r3
	b label25
label31:
	ldr r3, [r0, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	mla r3, r1, r3, r6
	add r1, r1, r2
	add r2, r2, #2
	ble label188
label155:
	mov r6, r3
	b label31
label2:
	movw r0, #:lower16:matrix
	mov r1, #0
	movt r0, #:upper16:matrix
label3:
	add r2, r1, #4
	cmp r6, r2
	bgt label5
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	bgt label6
	cmp r4, #0
	bgt label9
	b label168
label5:
	add r3, r0, r1, lsl #2
	str r1, [r0, r1, lsl #2]
	add r7, r1, #1
	str r7, [r3, #4]
	add r7, r1, #2
	add r1, r1, #3
	str r7, [r3, #8]
	str r1, [r3, #12]
	mov r1, r2
	b label3
label6:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	bgt label6
	cmp r4, #0
	ble label168
label9:
	movw r0, #:lower16:matrix
	mov r1, #0
	movt r0, #:upper16:matrix
	b label10
label168:
	mov r4, #0
	b label22
