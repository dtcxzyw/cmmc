.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test_minsize
test_minsize:
	mov r1, #5
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	mvn r1, #9
	cmp r0, #0
	mov r0, r1
	moveq r0, #42
	bx lr
.p2align 4
.globl test_optsize
test_optsize:
	mov r1, #5
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	mvn r1, #9
	cmp r0, #0
	mov r0, r1
	moveq r0, #42
	bx lr
