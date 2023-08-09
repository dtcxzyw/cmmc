.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
QuickSort:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[20] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, r2
	mov r3, r0
	sub sp, sp, #28
	mov r0, r1
	str r3, [sp, #12]
	mov r3, #0
	str r2, [sp, #16]
	mov r1, r3
label2:
	cmp r3, #0
	mov r2, #0
	str r2, [sp, #8]
	movne r2, r1
	str r2, [sp, #8]
	ldr r5, [sp, #16]
	cmp r5, r0
	ble label6
	ldr r3, [sp, #12]
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	str r0, [sp, #4]
	sub r2, r1, #1
label8:
	ldr r6, [sp, #4]
	cmp r5, r6
	bgt label78
	b label11
.p2align 4
label328:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label336
.p2align 4
label91:
	add r6, r6, #1
	add r3, r3, #4
	cmp r5, r6
	bgt label328
.p2align 4
label279:
	str r6, [sp, #4]
	cmp r5, r6
	ble label11
.p2align 4
label78:
	ldr r3, [sp, #12]
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label83
	cmp r5, r6
	add r3, r3, r6, lsl #2
	ble label279
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label91
	b label336
label11:
	ldr r3, [sp, #12]
	ldr r6, [sp, #4]
	str r1, [r3, r6, lsl #2]
	sub r6, r6, #1
	str r6, [sp, #0]
label12:
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label14
	ldr r3, [sp, #12]
	mov r4, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
.p2align 4
label16:
	cmp r6, r4
	ble label19
	ldr r3, [sp, #12]
	add r5, r3, r6, lsl #2
	cmp r4, r6
	blt label68
	cmp r6, r4
	add r3, r3, r4, lsl #2
	ble label16
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label342
.p2align 4
label77:
	add r4, r4, #1
	add r3, r3, #4
	cmp r6, r4
	ble label16
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label77
label342:
	str r7, [r5, #0]
	sub r6, r6, #1
	b label16
label19:
	ldr r3, [sp, #12]
	sub r5, r4, #1
	str r1, [r3, r4, lsl #2]
label20:
	cmp r5, r0
	ble label22
	ldr r3, [sp, #12]
	mov r8, r5
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
.p2align 4
label24:
	cmp r8, r6
	ble label137
	ldr r3, [sp, #12]
	add r7, r3, r8, lsl #2
	cmp r6, r8
	bge label31
.p2align 4
label38:
	ldr r9, [r7, #0]
	cmp r2, r9
	bge label162
	sub r8, r8, #1
	sub r7, r7, #4
	cmp r6, r8
	blt label38
	ldr r3, [sp, #12]
	cmp r8, r6
	add r3, r3, r6, lsl #2
	ble label24
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label36
	b label154
.p2align 4
label83:
	ldr r7, [r4, #0]
	cmp r2, r7
	bge label267
	sub r5, r5, #1
	sub r4, r4, #4
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label83
	ldr r3, [sp, #12]
	cmp r5, r6
	add r3, r3, r6, lsl #2
	ble label279
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label91
	b label336
.p2align 4
label68:
	ldr r7, [r5, #0]
	cmp r2, r7
	bge label233
	sub r6, r6, #1
	sub r5, r5, #4
	cmp r4, r6
	blt label68
	ldr r3, [sp, #12]
	cmp r6, r4
	add r3, r3, r4, lsl #2
	ble label16
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label77
	b label342
.p2align 4
label31:
	ldr r3, [sp, #12]
	add r3, r3, r6, lsl #2
.p2align 4
label32:
	cmp r8, r6
	ble label24
	ldr r9, [r3, #0]
	cmp r1, r9
	ble label154
.p2align 4
label36:
	add r6, r6, #1
	add r3, r3, #4
	cmp r8, r6
	ble label24
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label36
label154:
	str r9, [r7, #0]
	sub r8, r8, #1
	b label24
label6:
	ldr r2, [sp, #8]
	add sp, sp, #28
	mov r0, r2
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label14:
	ldr r6, [sp, #4]
	mov r3, #1
	ldr r2, [sp, #8]
	add r0, r6, #1
	mov r1, r2
	b label2
label22:
	add r0, r4, #1
	b label12
label137:
	ldr r3, [sp, #12]
	sub r7, r6, #1
	str r1, [r3, r6, lsl #2]
	mov r1, r0
label42:
	cmp r7, r1
	bgt label44
	add r0, r6, #1
	b label20
label44:
	ldr r3, [sp, #12]
	mov r10, r7
	mov r8, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
.p2align 4
label45:
	cmp r10, r8
	ble label62
	ldr r3, [sp, #12]
	add r9, r3, r10, lsl #2
	cmp r8, r10
	bge label190
.p2align 4
label52:
	ldr r11, [r9, #0]
	cmp r2, r11
	bge label53
	sub r10, r10, #1
	sub r9, r9, #4
	cmp r8, r10
	blt label52
	ldr r3, [sp, #12]
	cmp r10, r8
	add r3, r3, r8, lsl #2
	ble label45
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label60
	b label340
.p2align 4
label190:
	ldr r3, [sp, #12]
	cmp r10, r8
	add r3, r3, r8, lsl #2
	ble label45
	ldr r11, [r3, #0]
	cmp r0, r11
	ble label340
.p2align 4
label60:
	add r8, r8, #1
	add r3, r3, #4
	cmp r10, r8
	ble label45
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label60
label340:
	str r11, [r9, #0]
	sub r10, r10, #1
	b label45
label62:
	ldr r3, [sp, #12]
	sub r2, r8, #1
	str r0, [r3, r8, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r8, #1
	b label42
label267:
	ldr r3, [sp, #12]
	ldr r6, [sp, #4]
	str r7, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	cmp r5, r6
	ble label279
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label91
	b label336
label233:
	ldr r3, [sp, #12]
	str r7, [r3, r4, lsl #2]
	add r4, r4, #1
	add r3, r3, r4, lsl #2
	cmp r6, r4
	ble label16
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label77
	b label342
label53:
	ldr r3, [sp, #12]
	str r11, [r3, r8, lsl #2]
	add r8, r8, #1
	add r3, r3, r8, lsl #2
	cmp r10, r8
	ble label45
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label60
	b label340
label336:
	str r7, [r4, #0]
	sub r5, r5, #1
	str r6, [sp, #4]
	b label8
label162:
	ldr r3, [sp, #12]
	str r9, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	b label32
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, lr }
	mov r0, #4
	mov r2, #9
	sub sp, sp, #40
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
	bge label371
	add r5, r5, r0, lsl #2
	mov r6, r0
.p2align 4
label367:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	bge label371
	add r5, r5, #4
	b label367
label371:
	mov r0, r4
	add sp, sp, #40
	pop { r4, r5, r6, pc }
