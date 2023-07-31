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
	blt label33
	b label30
label36:
	add r0, r0, #1
	mov r1, r2
	b label2
label30:
	mov r0, r1
	pop { r4, r5, r6, r7, r8, r9 }
	bx lr
label33:
	mov r2, r1
	mov r1, #0
label5:
	cmp r1, #4
	blt label37
	b label36
label41:
	add r1, r1, #1
	mov r2, r4
	b label5
label37:
	mov r4, r2
	mov r2, #0
label9:
	cmp r2, #5
	blt label42
	b label41
label45:
	add r2, r2, #1
	b label9
label42:
	mov r3, #0
label12:
	cmp r3, #3
	blt label46
	b label45
label49:
	add r3, r3, #1
	b label12
label46:
	mov r5, #0
label15:
	cmp r5, #5
	bge label49
	mov r6, #0
label18:
	cmp r6, #4
	bge label53
	mov r7, #0
label21:
	cmp r7, #6
	bge label57
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
	b label21
label53:
	add r5, r5, #1
	b label15
label57:
	add r6, r6, #1
	b label18
