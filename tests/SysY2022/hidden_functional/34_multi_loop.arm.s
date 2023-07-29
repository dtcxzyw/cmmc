.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9 }
	mov r1, #0
	mov r0, r1
label2:
	cmp r0, #3
	bge label5
	mov r3, r1
	mov r1, #0
	b label6
label5:
	mov r0, r1
	pop { r4, r5, r6, r7, r8, r9 }
	bx lr
label6:
	cmp r1, #4
	bge label36
	mov r2, #0
	b label10
label41:
	add r1, r1, #1
	b label6
label10:
	cmp r2, #5
	bge label41
	mov r4, r3
	mov r3, #0
	b label14
label46:
	add r2, r2, #1
	mov r3, r4
	b label10
label14:
	cmp r3, #3
	bge label46
	mov r5, #0
label18:
	cmp r5, #5
	blt label52
	add r3, r3, #1
	b label14
label52:
	mov r6, #0
label22:
	cmp r6, #4
	bge label56
	mov r7, #0
	b label26
label61:
	add r6, r6, #1
	b label22
label26:
	cmp r7, #6
	bge label61
	add r4, r4, #3
	movw r8, #1313
	add r7, r7, #1
	movt r8, #33588
	smmla r8, r4, r8, r4
	asr r9, r8, #9
	add r9, r9, r8, lsr #31
	movw r8, #999
	mls r4, r9, r8, r4
	movw r9, #645
	add r4, r4, r9
	sdiv r9, r4, r8
	mls r4, r9, r8, r4
	b label26
label56:
	add r5, r5, #1
	b label18
label36:
	add r0, r0, #1
	mov r1, r3
	b label2
