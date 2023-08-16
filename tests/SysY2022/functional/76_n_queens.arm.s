.arch armv7ve
.data
.bss
.align 8
ans:
	.zero	200
.align 8
row:
	.zero	200
.align 8
line1:
	.zero	200
.align 8
line2:
	.zero	400
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
f:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[12] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, #1
	mov r4, r2
	mov r9, r0
	sub sp, sp, #20
	str r0, [sp, #0]
	add r0, r0, #1
	str r1, [sp, #4]
	ldr r1, [r2, #0]
	str r0, [sp, #8]
	cmp r1, #0
	ble label2
	movw r0, #:lower16:row
	movt r0, #:upper16:row
	mov r7, r5
	add r6, r0, #4
	ldr r0, [r6, #0]
	cmp r0, #1
	bne label8
	ldr r0, [r2, #0]
	add r7, r5, #1
	cmp r0, r7
	bge label23
	b label2
.p2align 4
label132:
	ldr r0, [r4, #0]
	add r7, r7, #1
	cmp r0, r7
	blt label2
.p2align 4
label23:
	add r6, r6, #4
	ldr r0, [r6, #0]
	cmp r0, #1
	beq label132
.p2align 4
label8:
	ldr r9, [sp, #0]
	movw r0, #:lower16:line1
	movt r0, #:upper16:line1
	add r8, r9, r7
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	beq label9
	ldr r0, [r4, #0]
	add r7, r7, #1
	cmp r0, r7
	bge label23
	b label2
.p2align 4
label9:
	ldr r0, [r4, #0]
	movw r10, #:lower16:line2
	movt r10, #:upper16:line2
	ldr r9, [sp, #0]
	add r1, r9, r0
	sub r1, r1, r7
	ldr r1, [r10, r1, lsl #2]
	cmp r1, #0
	beq label10
	add r7, r7, #1
	cmp r0, r7
	bge label23
	b label2
.p2align 4
label10:
	movw r1, #:lower16:ans
	movt r1, #:upper16:ans
	ldr r9, [sp, #0]
	cmp r9, r0
	str r7, [r1, r9, lsl #2]
	beq label14
	ldr r11, [r4, #0]
.p2align 4
label11:
	ldr r9, [sp, #0]
	movw r10, #:lower16:line2
	movt r10, #:upper16:line2
	str r5, [r6, #0]
	add r0, r9, r11
	sub r1, r0, r7
	movw r0, #:lower16:line1
	movt r0, #:upper16:line1
	add r8, r0, r8, lsl #2
	str r5, [r8, #0]
	str r5, [r10, r1, lsl #2]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	mov r2, r4
	bl f
	mov r1, #0
	str r1, [r6, #0]
	str r1, [r8, #0]
	ldr r0, [r4, #0]
	add r2, r9, r0
	sub r2, r2, r7
	add r7, r7, #1
	str r1, [r10, r2, lsl #2]
	cmp r0, r7
	bge label23
	b label2
.p2align 4
label14:
	ldr r1, [sp, #4]
	mov r10, r5
	ldr r0, [r1, #0]
	add r0, r0, #1
	str r0, [r1, #0]
	movw r1, #:lower16:ans
	movt r1, #:upper16:ans
	add r9, r1, #4
	ldr r11, [r4, #0]
	cmp r5, r11
	bgt label11
.p2align 4
label18:
	ldr r0, [r9, #0]
	bl putint
	cmp r10, r11
	bne label19
	mov r0, #10
	bl putch
	ldr r11, [r4, #0]
	b label11
label19:
	mov r0, #32
	bl putch
	ldr r11, [r4, #0]
	add r9, r9, #4
	add r10, r10, #1
	cmp r10, r11
	ble label18
	b label11
label2:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[8] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, lr }
	mov r6, #0
	sub sp, sp, #8
	str r6, [sp, #0]
	mov r5, sp
	add r4, sp, #4
	bl getint
	cmp r0, #0
	ble label151
	mov r6, r0
.p2align 4
label140:
	bl getint
	str r0, [sp, #4]
	mov r1, r5
	mov r0, #1
	mov r2, r4
	bl f
	subs r6, r6, #1
	bgt label140
	ldr r0, [sp, #0]
label143:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label151:
	mov r0, r6
	b label143
