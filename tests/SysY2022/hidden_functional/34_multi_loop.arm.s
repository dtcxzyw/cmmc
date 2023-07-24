.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	mov r1, #0
	mov r0, r1
label2:
	cmp r0, #3
	bge label30
	mov r4, r1
	mov r1, #0
	b label5
label30:
	mov r0, r1
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
label5:
	cmp r1, #4
	bge label36
	mov r2, #0
	b label9
label41:
	add r1, r1, #1
	b label5
label9:
	cmp r2, #5
	bge label41
	mov r3, #0
	b label13
label46:
	add r2, r2, #1
	b label9
label13:
	cmp r3, #3
	bge label46
	mov r5, r4
	mov r4, #0
label17:
	cmp r4, #5
	blt label52
	add r3, r3, #1
	mov r4, r5
	b label13
label52:
	mov r6, #0
label21:
	cmp r6, #4
	bge label56
	mov r7, #0
	b label25
label61:
	add r6, r6, #1
	b label21
label25:
	cmp r7, #6
	bge label61
	add r9, r5, #3
	movw r8, #1313
	add r7, r7, #1
	movw r5, #999
	movt r8, #33588
	smmla r10, r9, r8, r9
	asr r11, r10, #9
	add r10, r11, r10, lsr #31
	mls r9, r10, r5, r9
	movw r10, #645
	add r9, r9, r10
	smmla r8, r9, r8, r9
	asr r10, r8, #9
	add r8, r10, r8, lsr #31
	mls r5, r8, r5, r9
	b label25
label56:
	add r4, r4, #1
	b label17
label36:
	add r0, r0, #1
	mov r1, r4
	b label2
