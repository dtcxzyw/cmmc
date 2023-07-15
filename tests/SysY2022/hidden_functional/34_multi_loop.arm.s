.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	mov r1, #0
	mov r0, r1
	cmp r1, #3
	bge label30
	mov r4, r1
	cmp r1, #4
	bge label8
	mov r2, #0
	cmp r2, #5
	bge label12
	mov r3, #0
	cmp r3, #3
	bge label16
	mov r5, r1
	mov r4, #0
	cmp r4, #5
	bge label20
	mov r6, #0
	cmp r6, #4
	bge label24
	mov r7, #0
	cmp r7, #6
	bge label29
label28:
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
	cmp r7, #6
	bge label29
	b label28
label12:
	add r1, r1, #1
	cmp r1, #4
	bge label8
	mov r2, #0
	cmp r2, #5
	bge label12
	mov r3, #0
	cmp r3, #3
	bge label16
	mov r5, r4
	mov r4, #0
	cmp r4, #5
	bge label20
	mov r6, #0
	cmp r6, #4
	bge label24
	mov r7, #0
	cmp r7, #6
	bge label29
	b label28
label16:
	add r2, r2, #1
	cmp r2, #5
	bge label12
	mov r3, #0
	cmp r3, #3
	bge label16
	mov r5, r4
	mov r4, #0
	cmp r4, #5
	bge label20
	mov r6, #0
	cmp r6, #4
	bge label24
	mov r7, #0
	cmp r7, #6
	bge label29
	b label28
label8:
	add r0, r0, #1
	mov r1, r4
	cmp r0, #3
	bge label30
	mov r1, #0
	cmp r1, #4
	bge label8
	mov r2, #0
	cmp r2, #5
	bge label12
	mov r3, #0
	cmp r3, #3
	bge label16
	mov r5, r4
	mov r4, #0
	cmp r4, #5
	bge label20
	mov r6, #0
	cmp r6, #4
	bge label24
	mov r7, #0
	cmp r7, #6
	bge label29
	b label28
label20:
	add r3, r3, #1
	mov r4, r5
	cmp r3, #3
	bge label16
	mov r4, #0
	cmp r4, #5
	bge label20
	mov r6, #0
	cmp r6, #4
	bge label24
	mov r7, #0
	cmp r7, #6
	bge label29
	b label28
label24:
	add r4, r4, #1
	cmp r4, #5
	bge label20
	mov r6, #0
	cmp r6, #4
	bge label24
	mov r7, #0
	cmp r7, #6
	bge label29
	b label28
label30:
	mov r0, r1
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
label29:
	add r6, r6, #1
	cmp r6, #4
	bge label24
	mov r7, #0
	cmp r7, #6
	bge label29
	b label28
