.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_minsize
test_minsize:
.p2align 4
	mov r1, #5
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	mvn r2, #9
	mov r1, #42
	cmp r0, #0
	mov r0, r2
	moveq r0, r1
	bx lr
.globl test_optsize
test_optsize:
.p2align 4
	mov r1, #5
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	mvn r2, #9
	mov r1, #42
	cmp r0, #0
	mov r0, r2
	moveq r0, r1
	bx lr
