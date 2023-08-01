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
.p2align 4
label2:
	cmp r2, #3
	blt label33
	b label30
.p2align 4
label36:
	add r2, r2, #1
	b label2
label30:
	mov r0, r9
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label33:
	mov r3, #0
.p2align 4
label5:
	cmp r3, #4
	blt label37
	b label36
.p2align 4
label86:
	add r3, r3, #1
	b label5
.p2align 4
label37:
	mov r4, #0
	cmp r4, #5
	bge label86
.p2align 4
label42:
	mov r5, #0
.p2align 4
label12:
	cmp r5, #3
	bge label45
	mov r6, #0
	cmp r6, #5
	bge label88
.p2align 4
label51:
	mov r7, #0
	cmp r7, #4
	blt label55
	b label54
.p2align 4
label16:
	cmp r6, #5
	blt label51
	b label88
.p2align 4
label54:
	add r6, r6, #1
	b label16
.p2align 4
label55:
	mov r8, #0
	b label22
.p2align 4
label25:
	add r7, r7, #1
	cmp r7, #4
	blt label55
	b label54
.p2align 4
label22:
	cmp r8, #6
	bge label25
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
	b label22
.p2align 4
label88:
	add r5, r5, #1
	b label12
.p2align 4
label9:
	cmp r4, #5
	blt label42
	b label86
.p2align 4
label45:
	add r4, r4, #1
	b label9
