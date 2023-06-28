.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
	mov r1, #255
	movw r2, #32897
	movt r2, #32896
	smmla r2, r0, r2, r0
	asr r3, r2, #7
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	bx lr
.globl test2
test2:
	mov r1, #256
	asr r2, r0, #31
	add r2, r0, r2, lsr #24
	asr r2, r2, #8
	mls r0, r2, r1, r0
	bx lr
.globl test3
test3:
	mov r1, #255
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl test4
test4:
	and r0, r0, #255
	bx lr
.globl test5
test5:
	mov r1, #41
	sdiv r2, r1, r0
	mls r0, r2, r0, r1
	bx lr
