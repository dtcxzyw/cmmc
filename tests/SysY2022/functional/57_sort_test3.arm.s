.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
QuickSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r3, r2
	mov r8, r0
	sub sp, sp, #20
	mov r3, #0
	mov r0, r1
	str r8, [sp, #8]
	mov r1, r3
	str r2, [sp, #12]
label2:
	cmp r3, #0
	mov r2, #0
	str r2, [sp, #4]
	movne r2, r1
	str r2, [sp, #4]
	ldr r3, [sp, #12]
	cmp r3, r0
	ble label6
	ldr r8, [sp, #8]
	mov r4, r0
	ldr r1, [r8, r0, lsl #2]
	str r0, [sp, #0]
	sub r2, r1, #1
.p2align 4
label72:
	ldr r4, [sp, #0]
	cmp r4, r3
	blt label82
	b label74
.p2align 4
label77:
	ldr r8, [sp, #8]
	ldr r5, [r8, r4, lsl #2]
	cmp r1, r5
	ble label79
	add r4, r4, #1
	cmp r3, r4
	bgt label77
	ble label392
.p2align 4
label80:
	ldr r8, [sp, #8]
	ldr r5, [r8, r4, lsl #2]
	str r5, [r8, r3, lsl #2]
	str r4, [sp, #0]
	sub r3, r3, #1
	cmp r3, r4
	bgt label72
	b label11
.p2align 4
label82:
	ldr r8, [sp, #8]
	ldr r4, [r8, r3, lsl #2]
	cmp r2, r4
	bge label74
	sub r3, r3, #1
	ldr r4, [sp, #0]
	cmp r4, r3
	blt label82
	cmp r3, r4
	bgt label77
	str r4, [sp, #0]
	b label11
.p2align 4
label74:
	ldr r4, [sp, #0]
	cmp r4, r3
	blt label81
	cmp r3, r4
	bgt label77
	str r4, [sp, #0]
	b label11
.p2align 4
label81:
	ldr r8, [sp, #8]
	ldr r5, [r8, r3, lsl #2]
	ldr r4, [sp, #0]
	str r5, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r3, r4
	bgt label77
	str r4, [sp, #0]
	b label11
label6:
	ldr r2, [sp, #4]
	add sp, sp, #20
	mov r0, r2
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label11:
	ldr r8, [sp, #8]
	ldr r4, [sp, #0]
	str r1, [r8, r4, lsl #2]
	sub r4, r4, #1
label12:
	cmp r4, r0
	bgt label15
	ldr r4, [sp, #0]
	mov r3, #1
	ldr r2, [sp, #4]
	add r0, r4, #1
	mov r1, r2
	b label2
label15:
	ldr r8, [sp, #8]
	mov r3, r4
	mov r5, r0
	ldr r1, [r8, r0, lsl #2]
	sub r2, r1, #1
	cmp r4, r0
	ble label113
.p2align 4
label19:
	cmp r5, r3
	blt label21
	cmp r3, r5
	bgt label28
	b label380
.p2align 4
label27:
	ldr r8, [sp, #8]
	ldr r6, [r8, r5, lsl #2]
	str r6, [r8, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r5
	bgt label19
	b label113
.p2align 4
label28:
	ldr r8, [sp, #8]
	ldr r6, [r8, r5, lsl #2]
	cmp r1, r6
	ble label26
	add r5, r5, #1
	cmp r3, r5
	bgt label28
	b label113
.p2align 4
label21:
	ldr r8, [sp, #8]
	ldr r6, [r8, r3, lsl #2]
	cmp r2, r6
	bge label23
	sub r3, r3, #1
	cmp r5, r3
	blt label21
	bge label381
.p2align 4
label30:
	ldr r8, [sp, #8]
	ldr r6, [r8, r3, lsl #2]
	str r6, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r3, r5
	bgt label28
	b label113
.p2align 4
label381:
	cmp r3, r5
	bgt label28
	b label113
.p2align 4
label380:
	cmp r3, r5
	bgt label27
label113:
	ldr r8, [sp, #8]
	sub r6, r5, #1
	str r1, [r8, r5, lsl #2]
label32:
	cmp r6, r0
	bgt label35
	add r0, r5, #1
	b label12
label35:
	ldr r8, [sp, #8]
	mov r3, r6
	mov r7, r0
	ldr r1, [r8, r0, lsl #2]
	sub r2, r1, #1
	cmp r6, r0
	bgt label39
label171:
	ldr r8, [sp, #8]
	sub r9, r7, #1
	str r1, [r8, r7, lsl #2]
	mov r1, r0
	b label52
.p2align 4
label39:
	cmp r7, r3
	bge label175
.p2align 4
label41:
	ldr r8, [sp, #8]
	ldr r8, [r8, r3, lsl #2]
	cmp r2, r8
	bge label43
	sub r3, r3, #1
	cmp r7, r3
	blt label41
	b label364
label43:
	cmp r7, r3
	blt label44
	cmp r3, r7
	bgt label49
	ble label386
.p2align 4
label48:
	ldr r8, [sp, #8]
	ldr r9, [r8, r7, lsl #2]
	str r9, [r8, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r7
	bgt label39
	b label171
label52:
	cmp r9, r1
	bgt label54
	add r0, r7, #1
	b label32
.p2align 4
label363:
	cmp r3, r7
	ble label384
.p2align 4
label49:
	ldr r8, [sp, #8]
	ldr r8, [r8, r7, lsl #2]
	cmp r1, r8
	ble label47
	add r7, r7, #1
	cmp r3, r7
	bgt label49
	b label171
.p2align 4
label175:
	cmp r7, r3
	bge label363
.p2align 4
label44:
	ldr r8, [sp, #8]
	ldr r9, [r8, r3, lsl #2]
	str r9, [r8, r7, lsl #2]
	add r7, r7, #1
	cmp r3, r7
	bgt label49
.p2align 4
label47:
	cmp r3, r7
	bgt label48
	b label171
.p2align 4
label364:
	cmp r7, r3
	blt label44
	cmp r3, r7
	bgt label49
	b label171
.p2align 4
label384:
	cmp r3, r7
	bgt label48
	b label171
label54:
	ldr r8, [sp, #8]
	mov r3, r9
	mov r10, r1
	ldr r0, [r8, r1, lsl #2]
	sub r2, r0, #1
	cmp r9, r1
	ble label58
.p2align 4
label59:
	cmp r10, r3
	blt label69
.p2align 4
label61:
	cmp r10, r3
	bge label240
	ldr r8, [sp, #8]
	ldr r11, [r8, r3, lsl #2]
	str r11, [r8, r10, lsl #2]
	add r10, r10, #1
	cmp r3, r10
	bgt label67
	b label65
.p2align 4
label66:
	ldr r8, [sp, #8]
	ldr r11, [r8, r10, lsl #2]
	str r11, [r8, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r10
	bgt label59
	b label58
.p2align 4
label67:
	ldr r8, [sp, #8]
	ldr r8, [r8, r10, lsl #2]
	cmp r0, r8
	ble label65
	add r10, r10, #1
	cmp r3, r10
	bgt label67
	b label58
.p2align 4
label69:
	ldr r8, [sp, #8]
	ldr r8, [r8, r3, lsl #2]
	cmp r2, r8
	bge label61
	sub r3, r3, #1
	cmp r10, r3
	blt label69
	cmp r3, r10
	bgt label67
	b label58
.p2align 4
label65:
	cmp r3, r10
	bgt label66
	b label58
.p2align 4
label240:
	cmp r3, r10
	bgt label67
	b label58
label79:
	cmp r3, r4
	bgt label80
	str r4, [sp, #0]
	b label11
label23:
	cmp r5, r3
	blt label30
	cmp r3, r5
	bgt label28
label26:
	cmp r3, r5
	bgt label27
	b label135
label58:
	ldr r8, [sp, #8]
	sub r2, r10, #1
	str r0, [r8, r10, lsl #2]
	mov r0, r8
	bl QuickSort
	add r1, r10, #1
	b label52
.p2align 4
label392:
	str r4, [sp, #0]
	cmp r3, r4
	bgt label72
	b label11
label135:
	cmp r3, r5
	bgt label19
	b label113
label386:
	cmp r3, r7
	bgt label39
	b label171
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	sub sp, sp, #40
	mov r2, #9
	mov r0, #4
	mov r4, #0
	mov r5, sp
	str r0, [sp, #0]
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
	bge label446
	mov r6, r0
.p2align 4
label444:
	ldr r0, [r5, r6, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	blt label444
label446:
	mov r0, r4
	add sp, sp, #40
	pop { r4, r5, r6, pc }
