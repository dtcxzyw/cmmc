.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
QuickSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r4, r2
	mov r3, r0
	sub sp, sp, #20
	mov r0, r1
	str r3, [sp, #8]
	mov r3, #0
	str r2, [sp, #12]
	mov r1, r3
label2:
	cmp r3, #0
	mov r2, #0
	str r2, [sp, #4]
	movne r2, r1
	str r2, [sp, #4]
	ldr r4, [sp, #12]
	cmp r4, r0
	bgt label7
	b label6
label126:
	ldr r5, [sp, #0]
	mov r3, #1
	ldr r2, [sp, #4]
	add r0, r5, #1
	mov r1, r2
	b label2
label6:
	ldr r2, [sp, #4]
	add sp, sp, #20
	mov r0, r2
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label7:
	ldr r3, [sp, #8]
	mov r5, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r4, [sp, #12]
	str r0, [sp, #0]
	sub r2, r1, #1
label8:
	ldr r5, [sp, #0]
	cmp r4, r5
	bgt label11
label89:
	ldr r3, [sp, #8]
	ldr r5, [sp, #0]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	b label22
.p2align 4
label11:
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label13
	cmp r4, r5
	bgt label18
	b label293
label14:
	ldr r3, [sp, #8]
	ldr r5, [sp, #0]
	str r6, [r3, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label108
.p2align 4
label18:
	ldr r3, [sp, #8]
	ldr r6, [r3, r5, lsl #2]
	cmp r1, r6
	ble label115
	add r5, r5, #1
	cmp r4, r5
	bgt label18
	str r5, [sp, #0]
	b label89
.p2align 4
label13:
	ldr r3, [sp, #8]
	ldr r6, [r3, r4, lsl #2]
	cmp r2, r6
	bge label14
	sub r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	blt label13
	cmp r4, r5
	bgt label18
	str r5, [sp, #0]
	b label89
label22:
	cmp r4, r0
	bgt label24
	b label126
label31:
	add r0, r5, #1
	b label22
label24:
	ldr r3, [sp, #8]
	mov r6, r4
	mov r5, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
label25:
	cmp r6, r5
	ble label28
.p2align 4
label65:
	cmp r5, r6
	blt label72
.p2align 4
label67:
	cmp r6, r5
	ble label239
.p2align 4
label69:
	ldr r3, [sp, #8]
	ldr r7, [r3, r5, lsl #2]
	cmp r1, r7
	ble label246
	add r5, r5, #1
	cmp r6, r5
	bgt label69
	b label28
.p2align 4
label72:
	ldr r3, [sp, #8]
	ldr r7, [r3, r6, lsl #2]
	cmp r2, r7
	bge label73
	sub r6, r6, #1
	cmp r5, r6
	blt label72
	cmp r6, r5
	bgt label69
	b label28
label73:
	ldr r3, [sp, #8]
	str r7, [r3, r5, lsl #2]
	add r5, r5, #1
	b label67
label28:
	ldr r3, [sp, #8]
	sub r6, r5, #1
	str r1, [r3, r5, lsl #2]
label29:
	cmp r6, r0
	bgt label32
	b label31
label49:
	add r0, r7, #1
	b label29
label32:
	ldr r3, [sp, #8]
	mov r8, r6
	mov r7, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
label33:
	cmp r8, r7
	bgt label36
label150:
	ldr r3, [sp, #8]
	sub r8, r7, #1
	str r1, [r3, r7, lsl #2]
	mov r1, r0
	b label47
.p2align 4
label36:
	cmp r7, r8
	blt label43
.p2align 4
label38:
	cmp r8, r7
	ble label158
.p2align 4
label40:
	ldr r3, [sp, #8]
	ldr r9, [r3, r7, lsl #2]
	cmp r1, r9
	ble label41
	add r7, r7, #1
	cmp r8, r7
	bgt label40
	b label150
label47:
	cmp r8, r1
	bgt label50
	b label49
.p2align 4
label54:
	cmp r9, r10
	blt label56
	cmp r10, r9
	bgt label61
	b label300
label57:
	ldr r3, [sp, #8]
	str r11, [r3, r9, lsl #2]
	add r9, r9, #1
	cmp r10, r9
	ble label215
.p2align 4
label61:
	ldr r3, [sp, #8]
	ldr r11, [r3, r9, lsl #2]
	cmp r0, r11
	ble label222
	add r9, r9, #1
	cmp r10, r9
	bgt label61
label64:
	ldr r3, [sp, #8]
	sub r2, r9, #1
	str r0, [r3, r9, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r9, #1
	b label47
.p2align 4
label56:
	ldr r3, [sp, #8]
	ldr r11, [r3, r10, lsl #2]
	cmp r2, r11
	bge label57
	sub r10, r10, #1
	cmp r9, r10
	blt label56
	cmp r10, r9
	bgt label61
	b label64
.p2align 4
label43:
	ldr r3, [sp, #8]
	ldr r9, [r3, r8, lsl #2]
	cmp r2, r9
	bge label44
	sub r8, r8, #1
	cmp r7, r8
	blt label43
	cmp r8, r7
	bgt label40
	b label150
label50:
	ldr r3, [sp, #8]
	mov r10, r8
	mov r9, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
label51:
	cmp r10, r9
	bgt label54
	b label64
label41:
	ldr r3, [sp, #8]
	str r9, [r3, r8, lsl #2]
	sub r8, r8, #1
	b label33
label44:
	ldr r3, [sp, #8]
	str r9, [r3, r7, lsl #2]
	add r7, r7, #1
	b label38
.p2align 4
label158:
	cmp r8, r7
	bgt label36
	b label150
.p2align 4
label239:
	cmp r6, r5
	bgt label65
	b label28
.p2align 4
label300:
	cmp r10, r9
	bgt label54
	b label64
.p2align 4
label293:
	str r5, [sp, #0]
	cmp r4, r5
	bgt label11
	b label89
label215:
	cmp r10, r9
	bgt label54
	b label64
label108:
	str r5, [sp, #0]
	cmp r4, r5
	bgt label11
	b label89
label222:
	ldr r3, [sp, #8]
	str r11, [r3, r10, lsl #2]
	sub r10, r10, #1
	b label51
label246:
	ldr r3, [sp, #8]
	str r7, [r3, r6, lsl #2]
	sub r6, r6, #1
	b label25
label115:
	ldr r3, [sp, #8]
	str r6, [r3, r4, lsl #2]
	str r5, [sp, #0]
	sub r4, r4, #1
	b label8
.p2align 4
.globl main
main:
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
	bge label343
	mov r6, r0
.p2align 4
label341:
	ldr r0, [r5, r6, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	blt label341
label343:
	mov r0, r4
	add sp, sp, #40
	pop { r4, r5, r6, pc }
