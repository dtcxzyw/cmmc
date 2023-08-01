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
	sub sp, sp, #36
	bl getint
	movw r4, #:lower16:a
	mov r5, r0
	movt r4, #:upper16:a
	mov r0, r4
	bl getarray
	sub r9, r0, #8
	str r0, [sp, #28]
	mov r0, #28
	str r9, [sp, #20]
	bl _sysy_starttime
	cmp r5, #0
	movw r7, #:lower16:matrix
	movt r7, #:upper16:matrix
	str r7, [sp, #24]
	ble label7
	sub r1, r5, #8
	cmp r5, #8
	ble label53
	mov r0, #0
.p2align 4
label3:
	ldr r7, [sp, #24]
	add r3, r0, #1
	add r2, r7, r0, lsl #2
	str r0, [r2, #0]
	str r3, [r2, #4]
	add r3, r0, #2
	str r3, [r2, #8]
	add r3, r0, #3
	str r3, [r2, #12]
	add r3, r0, #4
	str r3, [r2, #16]
	add r3, r0, #5
	str r3, [r2, #20]
	add r3, r0, #6
	str r3, [r2, #24]
	add r3, r0, #7
	add r0, r0, #8
	str r3, [r2, #28]
	cmp r1, r0
	bgt label3
label5:
	ldr r7, [sp, #24]
	str r0, [r7, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bgt label5
label7:
	ldr r0, [sp, #28]
	cmp r0, #0
	ble label19
	mov r6, #0
.p2align 4
label9:
	ldr r1, [r4, r6, lsl #2]
	mov r0, #0
	sdiv r2, r5, r1
	mul r3, r1, r0
	cmp r2, r0
	ble label94
.p2align 4
label95:
	mov r7, #0
	cmp r1, r7
	bgt label17
	b label216
.p2align 4
label222:
	add r0, r0, #1
	mul r3, r1, r0
	cmp r2, r0
	bgt label95
	add r6, r6, #1
	ldr r0, [sp, #28]
	cmp r0, r6
	bgt label9
label19:
	ldr r0, [sp, #28]
	cmp r0, #0
	ble label120
	cmp r0, #8
	ble label125
	mov r9, #8
	mov r8, #7
	mov r7, #6
	mov r10, #5
	str r9, [sp, #16]
	mov r0, #4
	mov r1, #3
	str r8, [sp, #8]
	mov r6, #0
	mov r4, #1
	str r7, [sp, #4]
	mov r2, r0
	mov r3, r6
	str r10, [sp, #0]
	str r4, [sp, #12]
	mov r5, r6
.p2align 4
label23:
	ldr r7, [sp, #24]
	add r8, r7, r3, lsl #2
	add r3, r3, #8
	ldr r7, [r8, #0]
	ldr r9, [r8, #4]
	ldr r4, [sp, #12]
	add r10, r4, r5
	add r4, r4, #16
	mul r9, r9, r10
	add r10, r2, r5
	mla r7, r5, r7, r9
	add r2, r2, #32
	ldr r9, [r8, #8]
	mla r7, r9, r10, r7
	add r10, r1, #6
	ldr r9, [r8, #12]
	add r1, r1, #48
	add r10, r5, r10
	mla r7, r9, r10, r7
	add r10, r0, #12
	ldr r9, [r8, #16]
	add r0, r0, #64
	add r10, r5, r10
	mla r7, r9, r10, r7
	ldr r9, [r8, #20]
	ldr r10, [sp, #0]
	add r10, r10, #20
	add r10, r5, r10
	mla r9, r9, r10, r7
	ldr r10, [r8, #24]
	ldr r7, [sp, #4]
	add r11, r7, #30
	add r7, r7, #96
	add r11, r5, r11
	mla r9, r10, r11, r9
	ldr r10, [r8, #28]
	ldr r8, [sp, #8]
	add r11, r8, #42
	add r8, r8, #112
	add r11, r5, r11
	mla r9, r10, r11, r9
	add r6, r6, r9
	ldr r9, [sp, #16]
	add r11, r9, #128
	add r10, r9, #56
	add r5, r5, r10
	ldr r10, [sp, #0]
	ldr r9, [sp, #20]
	add r10, r10, #80
	cmp r9, r3
	ble label185
	mov r9, r11
	str r11, [sp, #16]
	str r8, [sp, #8]
	str r7, [sp, #4]
	str r10, [sp, #0]
	str r4, [sp, #12]
	b label23
.p2align 4
label17:
	add r8, r7, #1
	cmp r0, r7
	blt label110
	mla r9, r2, r7, r0
	add r10, r3, r7
	ldr r7, [sp, #24]
	ldr r10, [r7, r10, lsl #2]
	str r10, [r7, r9, lsl #2]
	mov r7, r8
	cmp r1, r8
	bgt label17
	b label222
.p2align 4
label110:
	mov r7, r8
	cmp r1, r8
	bgt label17
	add r0, r0, #1
	mul r3, r1, r0
	cmp r2, r0
	bgt label95
	add r6, r6, #1
	ldr r0, [sp, #28]
	cmp r0, r6
	bgt label9
	b label19
label20:
	mov r0, #47
	bl _sysy_stoptime
	movs r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label185:
	mov r1, r6
label35:
	ldr r7, [sp, #24]
	ldr r0, [r7, r3, lsl #2]
	add r3, r3, #1
	mla r1, r5, r0, r1
	ldr r0, [sp, #28]
	add r5, r5, r4
	add r4, r4, #2
	cmp r0, r3
	bgt label35
	mov r4, r1
	b label20
.p2align 4
label216:
	add r0, r0, #1
	mul r3, r1, r0
	cmp r2, r0
	bgt label95
	add r6, r6, #1
	ldr r0, [sp, #28]
	cmp r0, r6
	bgt label9
	b label19
label94:
	add r6, r6, #1
	ldr r0, [sp, #28]
	cmp r0, r6
	bgt label9
	b label19
label120:
	mov r4, #0
	b label20
label53:
	mov r0, #0
	b label5
label125:
	mov r5, #0
	mov r4, #1
	mov r1, r5
	mov r3, r5
	b label35
