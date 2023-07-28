.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10 }
	mov r1, #0
	mov r0, r1
label2:
	cmp r0, #3
	bge label30
	mov r2, r1
	mov r1, #0
	b label5
label30:
	mov r0, r1
	pop { r4, r5, r6, r7, r8, r9, r10 }
	bx lr
label5:
	cmp r1, #4
	bge label36
	mov r4, r2
	mov r2, #0
	b label9
label41:
	add r1, r1, #1
	mov r2, r4
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
	mov r5, #0
label17:
	cmp r5, #5
	blt label52
	add r3, r3, #1
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
	add r8, r4, #3
	movw r9, #1313
	add r7, r7, #1
	movw r4, #999
	movt r9, #33588
	smmla r9, r8, r9, r8
	asr r10, r9, #9
	add r9, r10, r9, lsr #31
	mls r8, r9, r4, r8
	movw r9, #645
	add r8, r8, r9
	sdiv r9, r8, r4
	mls r4, r9, r4, r8
	b label25
label56:
	add r5, r5, #1
	b label17
label36:
	add r0, r0, #1
	mov r1, r2
	b label2
