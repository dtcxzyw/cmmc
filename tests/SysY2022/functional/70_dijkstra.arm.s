.arch armv7ve
.data
.bss
.align 8
e:
	.zero	1024
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[128] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r9, #0
	sub sp, sp, #132
	mov r6, sp
	str r9, [sp, #0]
	add r5, sp, #64
	str r9, [sp, #4]
	str r9, [sp, #8]
	str r9, [sp, #12]
	str r9, [sp, #16]
	str r9, [sp, #20]
	str r9, [sp, #24]
	str r9, [sp, #28]
	str r9, [sp, #32]
	str r9, [sp, #36]
	str r9, [sp, #40]
	str r9, [sp, #44]
	str r9, [sp, #48]
	str r9, [sp, #52]
	str r9, [sp, #56]
	str r9, [sp, #60]
	str r9, [sp, #64]
	str r9, [sp, #68]
	str r9, [sp, #72]
	str r9, [sp, #76]
	str r9, [sp, #80]
	str r9, [sp, #84]
	str r9, [sp, #88]
	str r9, [sp, #92]
	str r9, [sp, #96]
	str r9, [sp, #100]
	str r9, [sp, #104]
	str r9, [sp, #108]
	str r9, [sp, #112]
	str r9, [sp, #116]
	str r9, [sp, #120]
	str r9, [sp, #124]
	bl getint
	mov r4, r0
	bl getint
	cmp r4, #0
	movw r7, #:lower16:e
	movt r7, #:upper16:e
	mov r8, r0
	ble label12
	add r1, r7, #64
	mov r0, #1
	add r2, r1, #4
	mov r3, #1
	b label6
.p2align 4
label9:
	add r2, r2, #4
.p2align 4
label6:
	movw r9, #65535
	cmp r0, r3
	add r3, r3, #1
	moveq r9, #0
	cmp r4, r3
	str r9, [r2, #0]
	bge label9
.p2align 4
label103:
	add r0, r0, #1
	cmp r4, r0
	blt label12
	add r1, r1, #64
	mov r3, #1
	movw r9, #65535
	add r2, r1, #4
	cmp r0, r3
	add r3, r3, #1
	moveq r9, #0
	cmp r4, r3
	str r9, [r2, #0]
	bge label9
	b label103
label12:
	cmp r8, #0
	ble label15
	mov r9, #1
.p2align 4
label13:
	bl getint
	add r10, r7, r0, lsl #6
	bl getint
	mov r11, r0
	bl getint
	add r9, r9, #1
	str r0, [r10, r11, lsl #2]
	cmp r8, r9
	bge label13
label15:
	add r0, r7, #64
	cmp r4, #0
	ble label21
	add r0, r0, #4
	mov r1, #1
.p2align 4
label17:
	ldr r2, [r0, #0]
	mov r9, #0
	str r2, [r5, r1, lsl #2]
	str r9, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	blt label21
	add r0, r0, #4
	b label17
label21:
	subs r0, r4, #1
	mov r1, #1
	str r1, [sp, #4]
	ble label46
	b label22
.p2align 4
label31:
	ldr r10, [r5, r8, lsl #2]
	ldr r11, [r5, r2, lsl #2]
	add r9, r9, r11
	cmp r10, r9
	ble label180
	str r9, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	blt label187
.p2align 4
label34:
	add r3, r3, #4
	movw r10, #65535
	ldr r9, [r3, #0]
	cmp r9, r10
	blt label31
	add r8, r8, #1
	cmp r4, r8
	bge label34
	add r1, r1, #1
	cmp r0, r1
	blt label46
.p2align 4
label22:
	cmp r4, #0
	ble label151
	add r2, r5, #4
	mov r3, #1
	mov r9, #0
	movw r8, #65535
	ldr r10, [r2, #0]
	cmp r8, r10
	bgt label45
	add r3, r3, #1
	cmp r4, r3
	bge label44
	mov r2, r9
	mov r3, #1
	cmp r4, #0
	str r3, [r6, r9, lsl #2]
	add r3, r7, r9, lsl #6
	bgt label27
	b label26
.p2align 4
label45:
	ldr r11, [r6, r3, lsl #2]
	cmp r11, #0
	moveq r9, r3
	moveq r8, r10
	add r3, r3, #1
	cmp r4, r3
	blt label276
.p2align 4
label44:
	add r2, r2, #4
	ldr r10, [r2, #0]
	cmp r8, r10
	bgt label45
	add r3, r3, #1
	cmp r4, r3
	bge label44
	mov r2, r9
	mov r3, #1
	cmp r4, #0
	str r3, [r6, r9, lsl #2]
	add r3, r7, r9, lsl #6
	bgt label27
	b label26
.p2align 4
label276:
	mov r2, r9
	mov r3, #1
	cmp r4, #0
	str r3, [r6, r9, lsl #2]
	add r3, r7, r9, lsl #6
	ble label26
.p2align 4
label27:
	add r3, r3, #4
	mov r8, #1
	ldr r9, [r3, #0]
	movw r10, #65535
	cmp r9, r10
	blt label31
	add r8, r8, #1
	cmp r4, r8
	bge label34
	add r1, r1, #1
	cmp r0, r1
	bge label22
label46:
	cmp r4, #0
	ble label52
	add r5, r5, #4
	mov r6, #1
.p2align 4
label48:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #32
	bl putch
	add r6, r6, #1
	cmp r4, r6
	blt label52
	add r5, r5, #4
	b label48
.p2align 4
label180:
	add r8, r8, #1
	cmp r4, r8
	bge label34
	add r1, r1, #1
	cmp r0, r1
	bge label22
	b label46
label52:
	mov r0, #10
	bl putch
	add sp, sp, #132
	mov r9, #0
	mov r0, r9
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label151:
	mov r9, #0
	mov r2, r9
	mov r3, #1
	cmp r4, #0
	str r3, [r6, r9, lsl #2]
	add r3, r7, r9, lsl #6
	bgt label27
label26:
	add r1, r1, #1
	cmp r0, r1
	bge label22
	b label46
.p2align 4
label187:
	add r1, r1, #1
	cmp r0, r1
	bge label22
	b label46
