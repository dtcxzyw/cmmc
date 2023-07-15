.arch armv7ve
.data
.bss
.align 4
ans:
	.zero	200
.align 4
row:
	.zero	200
.align 4
line1:
	.zero	200
.align 4
line2:
	.zero	400
.text
.syntax unified
.arm
.fpu vfpv4
f:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r6, #1
	movw r8, #:lower16:line2
	mov r10, r0
	sub sp, sp, #20
	mov r11, r2
	movw r5, #:lower16:ans
	str r0, [sp, #8]
	movw r4, #:lower16:row
	movw r7, #:lower16:line1
	str r2, [sp, #4]
	movt r8, #:upper16:line2
	movt r5, #:upper16:ans
	str r1, [sp, #0]
	add r0, r0, #1
	movt r4, #:upper16:row
	movt r7, #:upper16:line1
	str r0, [sp, #12]
	ldr r0, [r2, #0]
	cmp r6, r0
	bgt label17
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #1
	beq label16
	ldr r10, [sp, #8]
	add r9, r10, r6
	ldr r1, [r7, r9, lsl #2]
	cmp r1, #0
	bne label16
	add r1, r10, r0
	sub r1, r1, r6
	ldr r1, [r8, r1, lsl #2]
	cmp r1, #0
	bne label16
	cmp r10, r0
	str r6, [r5, r10, lsl #2]
	bne label14
	ldr r1, [sp, #0]
	mov r10, #1
	ldr r0, [r1, #0]
	add r0, r0, #1
	str r0, [r1, #0]
	ldr r11, [r2, #0]
	cmp r10, r11
	bgt label70
label11:
	ldr r0, [r5, r10, lsl #2]
	bl putint
	cmp r10, r11
	bne label13
	mov r0, #10
	bl putch
	ldr r11, [sp, #4]
	ldr r0, [r11, #0]
	b label14
label13:
	mov r0, #32
	bl putch
	add r10, r10, #1
	ldr r11, [sp, #4]
	ldr r11, [r11, #0]
	cmp r10, r11
	bgt label70
	b label11
label17:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label16:
	add r6, r6, #1
	ldr r11, [sp, #4]
	ldr r0, [r11, #0]
	cmp r6, r0
	bgt label17
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #1
	beq label16
	ldr r10, [sp, #8]
	add r9, r10, r6
	ldr r1, [r7, r9, lsl #2]
	cmp r1, #0
	bne label16
	add r1, r10, r0
	sub r1, r1, r6
	ldr r1, [r8, r1, lsl #2]
	cmp r1, #0
	bne label16
	cmp r10, r0
	str r6, [r5, r10, lsl #2]
	bne label14
	ldr r1, [sp, #0]
	mov r10, #1
	ldr r0, [r1, #0]
	add r0, r0, #1
	str r0, [r1, #0]
	ldr r11, [r11, #0]
	cmp r10, r11
	bgt label70
	b label11
label14:
	ldr r10, [sp, #8]
	mov r1, #1
	str r1, [r4, r6, lsl #2]
	str r1, [r7, r9, lsl #2]
	add r0, r10, r0
	sub r0, r0, r6
	str r1, [r8, r0, lsl #2]
	ldr r1, [sp, #0]
	ldr r11, [sp, #4]
	ldr r0, [sp, #12]
	mov r2, r11
	bl f
	mov r0, #0
	str r0, [r4, r6, lsl #2]
	str r0, [r7, r9, lsl #2]
	ldr r1, [r11, #0]
	add r1, r10, r1
	sub r1, r1, r6
	str r0, [r8, r1, lsl #2]
	b label16
label70:
	mov r0, r11
	b label14
.globl main
main:
	push { r4, r5, r6, lr }
	mov r0, #0
	sub sp, sp, #8
	str r0, [sp, #4]
	add r5, sp, #4
	mov r4, sp
	bl getint
	cmp r0, #0
	mov r6, r0
	ble label160
	b label148
label160:
	mov r0, #0
	b label151
label148:
	bl getint
	str r0, [sp, #0]
	mov r1, r5
	mov r0, #1
	mov r2, r4
	bl f
	subs r6, r6, #1
	ble label150
	b label148
label150:
	ldr r0, [sp, #4]
label151:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
