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
	sub sp, sp, #68
	movt r5, #26214
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
	ble label7
.p2align 4
label10:
	bl getch
	sub r7, r0, #48
	cmp r7, #9
	bhi label10
	b label11
.p2align 4
label17:
	mov r0, #10
	bl putch
	subs r6, r6, #1
	bgt label10
	b label7
.p2align 4
label18:
	sub r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	bl putch
	cmp r7, #0
	bgt label18
	b label17
.p2align 4
label85:
	movs r7, r0
	bgt label18
	b label17
.p2align 4
label11:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	bhs label52
	add r1, r7, r7, lsl #2
	add r7, r0, r1, lsl #1
	b label11
.p2align 4
label52:
	cmp r7, #0
	ble label109
	mov r1, r7
	mov r0, #0
	smmul r2, r7, r5
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	cmp r2, #0
	add r3, r2, r2, lsl #2
	sub r1, r7, r3, lsl #1
	add r1, r1, #48
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	bgt label86
	b label85
.p2align 4
label20:
	smmul r2, r1, r5
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	cmp r2, #0
	add r3, r2, r2, lsl #2
	sub r1, r1, r3, lsl #1
	add r1, r1, #48
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ble label85
.p2align 4
label86:
	mov r1, r2
	b label20
label109:
	mov r7, #0
	cmp r7, #0
	bgt label18
	b label17
label7:
	mov r0, #0
	add sp, sp, #68
	pop { r4, r5, r6, r7, pc }
