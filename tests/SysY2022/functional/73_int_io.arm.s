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
	b label3
label5:
	add r1, r6, r6, lsl #2
	add r6, r0, r1, lsl #1
label3:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label5
	cmp r6, #0
	bgt label10
	b label7
.p2align 4
label20:
	add r0, r0, #4
.p2align 4
label16:
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
	bgt label20
	cmp r1, #0
	ble label23
.p2align 4
label75:
	mov r7, r1
.p2align 4
label24:
	sub r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	bl putch
	cmp r7, #0
	bgt label24
.p2align 4
label23:
	mov r0, #10
	bl putch
	subs r6, r6, #1
	ble label7
.p2align 4
label10:
	bl getch
	sub r7, r0, #48
	cmp r7, #9
	bhi label10
	b label11
.p2align 4
label13:
	add r1, r7, r7, lsl #2
	add r7, r0, r1, lsl #1
.p2align 4
label11:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	blo label13
	cmp r7, #0
	ble label110
	mov r0, r4
	mov r2, r7
	mov r1, #0
	b label16
label110:
	mov r1, #0
	cmp r1, #0
	bgt label75
	b label23
label7:
	mov r0, #0
	add sp, sp, #68
	pop { r4, r5, r6, r7, pc }
