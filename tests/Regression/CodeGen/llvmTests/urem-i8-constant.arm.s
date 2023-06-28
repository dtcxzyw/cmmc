.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	uxtb r0, r0
	movw r1, #51367
	movt r1, #56679
	smmla r1, r0, r1, r0
	asr r2, r1, #5
	add r1, r2, r1, lsr #31
	mov r2, #37
	mul r1, r1, r2
	sub r0, r0, r1
	uxtb r0, r0
	bx lr
