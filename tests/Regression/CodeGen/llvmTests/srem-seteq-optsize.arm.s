.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_minsize
test_minsize:
	mov r1, #5
	movw r2, #26215
	movt r2, #26214
	smmul r2, r0, r2
	asr r3, r2, #1
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	mov r1, #42
	mvn r2, #9
	cmp r0, #0
	mov r0, r2
	moveq r0, r1
	bx lr
.globl test_optsize
test_optsize:
	mov r1, #5
	movw r2, #26215
	movt r2, #26214
	smmul r2, r0, r2
	asr r3, r2, #1
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	mov r1, #42
	mvn r2, #9
	cmp r0, #0
	mov r0, r2
	moveq r0, r1
	bx lr
