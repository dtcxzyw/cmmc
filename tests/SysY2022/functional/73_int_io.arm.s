.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #68
	mov r4, sp
label2:
	bl getch
	mov r1, #0
	subs r5, r0, #48
	mov r0, #0
	movwlt r0, #1
	cmp r5, #9
	movwgt r1, #1
	orrs r0, r0, r1
	beq label3
	b label2
label3:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	bhs label6
	b label36
label6:
	cmp r5, #0
	ble label22
label9:
	bl getch
	mov r1, #0
	subs r6, r0, #48
	mov r0, #0
	movwlt r0, #1
	cmp r6, #9
	movwgt r1, #1
	orrs r0, r0, r1
	beq label10
	b label9
label10:
	bl getch
	sub r0, r0, #48
	cmp r0, #10
	bhs label13
	b label58
label107:
	mov r1, r6
	mov r0, #0
	b label14
label13:
	cmp r6, #0
	ble label67
	b label107
label14:
	mov r3, #10
	movw r2, #26215
	movt r2, #26214
	smmul r6, r1, r2
	asr r7, r6, #2
	add r6, r7, r6, lsr #31
	mls r3, r6, r3, r1
	smmul r1, r1, r2
	add r3, r3, #48
	asr r2, r1, #2
	str r3, [r4, r0, lsl #2]
	add r1, r2, r1, lsr #31
	add r0, r0, #1
	cmp r1, #0
	ble label77
	b label14
label77:
	movs r6, r0
	ble label19
label20:
	sub r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	bl putch
	cmp r6, #0
	ble label19
	b label20
label58:
	add r1, r6, r6, lsl #2
	add r6, r0, r1, lsl #1
	b label10
label19:
	mov r0, #10
	bl putch
	subs r5, r5, #1
	ble label22
	b label9
label67:
	mov r6, #0
	cmp r6, #0
	ble label19
	b label20
label22:
	mov r0, #0
	add sp, sp, #68
	pop { r4, r5, r6, r7, pc }
label36:
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label3