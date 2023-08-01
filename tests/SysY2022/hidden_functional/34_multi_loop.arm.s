.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	movw r0, #999
	movw r1, #645
	mov r9, #0
	mov r2, r9
label2:
	cmp r2, #3
	bge label30
	mov r3, #0
label5:
	cmp r3, #4
	blt label37
	add r2, r2, #1
	b label2
label37:
	mov r4, #0
	cmp r4, #5
	bge label86
label42:
	mov r5, #0
label12:
	cmp r5, #3
	bge label45
	mov r6, #0
	b label15
label86:
	add r3, r3, #1
	b label5
label9:
	cmp r4, #5
	blt label42
	b label86
label45:
	add r4, r4, #1
	b label9
label30:
	mov r0, r9
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
label15:
	cmp r6, #5
	blt label50
	b label49
label53:
	add r6, r6, #1
	b label15
label50:
	mov r7, #0
label18:
	cmp r7, #4
	blt label54
	b label53
label57:
	add r7, r7, #1
	b label18
label49:
	add r5, r5, #1
	b label12
label54:
	mov r8, #0
label21:
	cmp r8, #6
	bge label57
	add r9, r9, #3
	movw r10, #1313
	movt r10, #33588
	add r8, r8, #1
	smmla r10, r9, r10, r9
	asr r11, r10, #9
	add r10, r11, r10, lsr #31
	mls r9, r10, r0, r9
	add r9, r9, r1
	sdiv r10, r9, r0
	mls r9, r10, r0, r9
	b label21
