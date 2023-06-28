.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_minsize
test_minsize:
	mov r1, #5
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	cmp r0, #0
	mov r1, #42
	mvn r0, #9
	moveq r0, r1
	bx lr
.globl test_optsize
test_optsize:
	mov r1, #5
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	cmp r0, #0
	mov r1, #42
	mvn r0, #9
	moveq r0, r1
	bx lr
