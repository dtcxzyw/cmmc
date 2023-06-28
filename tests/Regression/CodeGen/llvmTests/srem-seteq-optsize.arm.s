.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_minsize
test_minsize:
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #1
	add r1, r2, r1, lsr #31
	mov r2, #5
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r1, #42
	mvn r0, #9
	moveq r0, r1
	bx lr
.globl test_optsize
test_optsize:
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #1
	add r1, r2, r1, lsr #31
	mov r2, #5
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r1, #42
	mvn r0, #9
	moveq r0, r1
	bx lr
