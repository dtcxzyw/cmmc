.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
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
	bls label35
	cmp r5, #0
	bgt label9
label6:
	mov r0, #0
	add sp, sp, #64
	pop { r4, r5, r6, pc }
.p2align 4
label9:
	bl getch
	sub r6, r0, #48
	cmp r6, #9
	bhi label9
.p2align 4
label10:
	bl getch
	sub r0, r0, #48
	cmp r0, #9
	bls label12
	cmp r6, #0
	bgt label57
	mov r0, #0
	cmp r0, #0
	bgt label20
	b label19
.p2align 4
label57:
	mov r1, r6
	mov r0, #0
.p2align 4
label14:
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	cmp r2, #0
	add r3, r2, r2, lsl #2
	sub r1, r1, r3, lsl #1
	add r1, r1, #48
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	bgt label67
	cmp r0, #0
	bgt label20
	b label19
.p2align 4
label67:
	mov r1, r2
	b label14
.p2align 4
label19:
	mov r0, #10
	bl putch
	subs r5, r5, #1
	bgt label9
	b label6
.p2align 4
label20:
	sub r6, r0, #1
	ldr r0, [r4, r6, lsl #2]
	bl putch
	cmp r6, #0
	ble label19
	mov r0, r6
	b label20
.p2align 4
label12:
	add r1, r6, r6, lsl #2
	add r6, r0, r1, lsl #1
	b label10
label35:
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label3
