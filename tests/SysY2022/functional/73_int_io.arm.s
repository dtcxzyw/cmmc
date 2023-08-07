.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	movw r5, #26215
	movt r5, #26214
	sub sp, sp, #68
	mov r4, sp
label2:
	bl getch
	sub r6, r0, #48
	cmp r6, #9
	bhi label2
label3:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	bhs label6
	add r1, r6, r6, lsl #2
	add r6, r0, r1, lsl #1
	b label3
label6:
	cmp r6, #0
	ble label25
.p2align 4
label9:
	bl getch
	sub r7, r0, #48
	cmp r7, #9
	bhi label9
.p2align 4
label10:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	bhs label55
	add r1, r7, r7, lsl #2
	add r7, r0, r1, lsl #1
	b label10
.p2align 4
label55:
	cmp r7, #0
	ble label110
	mov r0, r4
	mov r2, r7
	mov r1, #0
.p2align 4
label20:
	smmul r3, r2, r5
	add r1, r1, #1
	asr r7, r3, #2
	add r3, r7, r3, lsr #31
	cmp r3, #0
	add r7, r3, r3, lsl #2
	sub r2, r2, r7, lsl #1
	add r2, r2, #48
	str r2, [r0, #0]
	mov r2, r3
	ble label86
	add r0, r0, #4
	b label20
.p2align 4
label16:
	mov r0, #10
	bl putch
	subs r6, r6, #1
	bgt label9
	b label25
.p2align 4
label17:
	sub r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	bl putch
	cmp r7, #0
	bgt label17
	b label16
.p2align 4
label86:
	movs r7, r1
	bgt label17
	b label16
label25:
	mov r0, #0
	add sp, sp, #68
	pop { r4, r5, r6, r7, pc }
label110:
	mov r7, #0
	cmp r7, #0
	bgt label17
	b label16
