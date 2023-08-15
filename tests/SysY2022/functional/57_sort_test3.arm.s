.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
QuickSort:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r1, r2
	mov r3, r0
	mov r5, r2
	sub sp, sp, #20
	str r0, [sp, #8]
	str r2, [sp, #12]
	bge label85
	mov r0, r1
label2:
	ldr r3, [sp, #8]
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r5, [sp, #12]
	str r0, [sp, #4]
	sub r2, r1, #1
label4:
	ldr r6, [sp, #4]
	cmp r5, r6
	bgt label7
	b label21
.p2align 4
label123:
	str r6, [sp, #4]
	cmp r5, r6
	ble label21
.p2align 4
label7:
	ldr r3, [sp, #8]
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label12
	cmp r5, r6
	add r3, r3, r6, lsl #2
	ble label123
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label338
.p2align 4
label20:
	add r6, r6, #1
	add r3, r3, #4
	cmp r5, r6
	ble label123
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label20
label338:
	str r7, [r4, #0]
	sub r5, r5, #1
	str r6, [sp, #4]
	b label4
.p2align 4
label12:
	ldr r7, [r4, #0]
	cmp r2, r7
	bge label13
	sub r5, r5, #1
	sub r4, r4, #4
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label12
	ldr r3, [sp, #8]
	cmp r5, r6
	add r3, r3, r6, lsl #2
	ble label123
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label20
	b label338
label21:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	str r1, [r3, r6, lsl #2]
	sub r6, r6, #1
	cmp r0, r6
	str r6, [sp, #0]
	blt label22
label84:
	ldr r6, [sp, #4]
	ldr r5, [sp, #12]
	add r0, r6, #1
	cmp r5, r0
	bgt label2
	b label85
label13:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	str r7, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	cmp r5, r6
	ble label123
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label20
	b label338
label85:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label28:
	add r0, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label84
label22:
	ldr r3, [sp, #8]
	mov r4, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r6, [sp, #0]
	sub r2, r1, #1
	b label24
.p2align 4
label81:
	ldr r7, [r5, #0]
	cmp r2, r7
	bge label82
	sub r6, r6, #1
	sub r5, r5, #4
	cmp r4, r6
	blt label81
	ldr r3, [sp, #8]
	cmp r6, r4
	add r3, r3, r4, lsl #2
	bgt label350
.p2align 4
label24:
	cmp r6, r4
	ble label27
	ldr r3, [sp, #8]
	add r5, r3, r6, lsl #2
	cmp r4, r6
	blt label81
	add r3, r3, r4, lsl #2
.p2align 4
label75:
	cmp r6, r4
	ble label24
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label275
.p2align 4
label79:
	add r4, r4, #1
	add r3, r3, #4
	cmp r6, r4
	ble label24
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label79
label275:
	str r7, [r5, #0]
	sub r6, r6, #1
	b label24
label27:
	ldr r3, [sp, #8]
	sub r5, r4, #1
	cmp r0, r5
	str r1, [r3, r4, lsl #2]
	bge label28
label29:
	ldr r3, [sp, #8]
	mov r8, r5
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
	b label31
.p2align 4
label332:
	ldr r9, [r3, #0]
	cmp r1, r9
	ble label347
.p2align 4
label47:
	add r6, r6, #1
	add r3, r3, #4
	cmp r8, r6
	bgt label332
.p2align 4
label31:
	cmp r8, r6
	ble label48
	ldr r3, [sp, #8]
	add r7, r3, r8, lsl #2
	cmp r6, r8
	bge label171
.p2align 4
label38:
	ldr r9, [r7, #0]
	cmp r2, r9
	bge label39
	sub r8, r8, #1
	sub r7, r7, #4
	cmp r6, r8
	blt label38
	ldr r3, [sp, #8]
	cmp r8, r6
	add r3, r3, r6, lsl #2
	ble label31
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label47
	b label347
.p2align 4
label171:
	ldr r3, [sp, #8]
	cmp r8, r6
	add r3, r3, r6, lsl #2
	ble label31
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label47
	b label347
label48:
	ldr r3, [sp, #8]
	sub r7, r6, #1
	cmp r0, r7
	str r1, [r3, r6, lsl #2]
	blt label205
label49:
	add r0, r6, #1
	cmp r5, r0
	bgt label29
	b label28
label82:
	ldr r3, [sp, #8]
	str r7, [r3, r4, lsl #2]
	add r4, r4, #1
	add r3, r3, r4, lsl #2
	b label75
label39:
	ldr r3, [sp, #8]
	str r9, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	cmp r8, r6
	ble label31
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label47
label347:
	str r9, [r7, #0]
	sub r8, r8, #1
	b label31
.p2align 4
label350:
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label79
	b label275
label205:
	mov r1, r0
	ldr r3, [sp, #8]
	mov r10, r7
	mov r8, r0
	ldr r0, [r3, r0, lsl #2]
	sub r2, r0, #1
	b label52
.p2align 4
label223:
	ldr r3, [sp, #8]
	add r3, r3, r8, lsl #2
.p2align 4
label59:
	cmp r10, r8
	bgt label62
.p2align 4
label52:
	cmp r10, r8
	ble label69
	ldr r3, [sp, #8]
	add r9, r3, r10, lsl #2
	cmp r8, r10
	bge label223
.p2align 4
label65:
	ldr r11, [r9, #0]
	cmp r2, r11
	bge label240
	sub r10, r10, #1
	sub r9, r9, #4
	cmp r8, r10
	blt label65
	ldr r3, [sp, #8]
	cmp r10, r8
	add r3, r3, r8, lsl #2
	ble label52
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label64
	b label63
.p2align 4
label62:
	ldr r11, [r3, #0]
	cmp r0, r11
	ble label63
.p2align 4
label64:
	add r8, r8, #1
	add r3, r3, #4
	cmp r10, r8
	ble label52
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label64
label63:
	str r11, [r9, #0]
	sub r10, r10, #1
	b label52
label69:
	ldr r3, [sp, #8]
	sub r2, r8, #1
	str r0, [r3, r8, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r8, #1
	cmp r7, r1
	bgt label50
	b label49
label240:
	ldr r3, [sp, #8]
	str r11, [r3, r8, lsl #2]
	add r8, r8, #1
	add r3, r3, r8, lsl #2
	b label59
label50:
	ldr r3, [sp, #8]
	mov r10, r7
	mov r8, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	b label52
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, lr }
	sub sp, sp, #40
	mov r0, #4
	mov r2, #9
	mov r4, #0
	str r0, [sp, #0]
	mov r5, sp
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #2
	str r2, [sp, #8]
	str r0, [sp, #12]
	mov r0, #1
	str r4, [sp, #16]
	str r0, [sp, #20]
	mov r0, #6
	str r0, [sp, #24]
	mov r0, #5
	str r0, [sp, #28]
	mov r0, #7
	str r0, [sp, #32]
	mov r0, #8
	str r0, [sp, #36]
	mov r0, r5
	mov r1, r4
	bl QuickSort
	cmp r0, #10
	bge label380
	add r5, r5, r0, lsl #2
	mov r6, r0
.p2align 4
label376:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	bge label380
	add r5, r5, #4
	b label376
label380:
	mov r0, r4
	add sp, sp, #40
	pop { r4, r5, r6, pc }
