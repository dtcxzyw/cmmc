.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	uxtb r0, r0
	mov r1, #37
	movw r2, #51367
	movt r2, #56679
	smmla r2, r0, r2, r0
	asr r3, r2, #5
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	uxtb r0, r0
	bx lr
