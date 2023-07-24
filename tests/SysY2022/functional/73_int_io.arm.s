.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, lr }
	sub sp, sp, #64
	mov r4, sp
label2:
	bl getch
	sub r5, r0, #48
	cmp r5, #9
	bhi label2
label3:
	bl getch
	sub r0, r0, #48
	cmp r0, #9
	bhi label6
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label3
label6:
	cmp r5, #0
	ble label22
label9:
	bl getch
	sub r6, r0, #48
	cmp r6, #9
	bhi label9
label10:
	bl getch
	sub r0, r0, #48
	cmp r0, #9
	bls label12
	cmp r6, #0
	bgt label63
	mov r0, #0
	cmp r0, #0
	bgt label20
	b label19
label63:
	mov r1, r6
	mov r0, #0
label14:
	mov r2, #10
	movw r3, #26215
	movt r3, #26214
	smmul r3, r1, r3
	asr r6, r3, #2
	add r3, r6, r3, lsr #31
	cmp r3, #0
	mls r1, r3, r2, r1
	add r1, r1, #48
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	bgt label73
	cmp r0, #0
	bgt label20
	b label19
label73:
	mov r1, r3
	b label14
label19:
	mov r0, #10
	bl putch
	subs r5, r5, #1
	bgt label9
	b label22
label20:
	sub r6, r0, #1
	ldr r0, [r4, r6, lsl #2]
	bl putch
	cmp r6, #0
	ble label19
	mov r0, r6
	b label20
label22:
	mov r0, #0
	add sp, sp, #64
	pop { r4, r5, r6, pc }
label12:
	add r1, r6, r6, lsl #2
	add r6, r0, r1, lsl #1
	b label10
