.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
QuickSort:
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r7, #0
	mov r5, r2
	mov r4, r0
	sub sp, sp, #4
	mov r6, r7
label2:
	cmp r5, r1
	bgt label6
	b label23
label7:
	cmp r3, r8
	bgt label11
	str r0, [r4, r8, lsl #2]
	sub r2, r8, #1
	mov r0, r4
	bl QuickSort
	add r1, r8, #1
	mov r0, #0
	cmp r7, #0
	mov r7, #1
	movne r0, r6
	mov r6, r0
	b label2
label11:
	cmp r8, r3
	blt label13
label15:
	cmp r8, r3
	bge label16
	ldr r9, [r4, r3, lsl #2]
	str r9, [r4, r8, lsl #2]
	add r8, r8, #1
label16:
	cmp r3, r8
	bgt label18
label20:
	cmp r3, r8
	bgt label21
	b label7
label23:
	cmp r7, #0
	mov r0, #0
	add sp, sp, #4
	movne r0, r6
	pop { r4, r5, r6, r7, r8, r9, pc }
label21:
	ldr r9, [r4, r8, lsl #2]
	str r9, [r4, r3, lsl #2]
	sub r3, r3, #1
	b label7
label18:
	ldr r9, [r4, r8, lsl #2]
	cmp r0, r9
	ble label20
	add r8, r8, #1
	b label16
label13:
	ldr r9, [r4, r3, lsl #2]
	cmp r2, r9
	bge label15
	sub r3, r3, #1
	b label11
label6:
	ldr r0, [r4, r1, lsl #2]
	mov r3, r5
	mov r8, r1
	sub r2, r0, #1
	b label7
.globl main
main:
	push { r4, r5, lr }
	sub sp, sp, #44
	mov r0, #4
	mov r2, #9
	mov r1, #0
	str r0, [sp, #0]
	mov r4, sp
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #2
	str r2, [r4, #8]
	str r0, [r4, #12]
	mov r0, #1
	str r1, [r4, #16]
	str r0, [r4, #20]
	mov r0, #6
	str r0, [r4, #24]
	mov r0, #5
	str r0, [r4, #28]
	mov r0, #7
	str r0, [r4, #32]
	mov r0, #8
	str r0, [r4, #36]
	mov r0, r4
	bl QuickSort
	cmp r0, #10
	bge label91
	mov r5, r0
label89:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	blt label89
label91:
	mov r0, #0
	add sp, sp, #44
	pop { r4, r5, pc }
