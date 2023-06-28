.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_srem_even
test_srem_even:
	sxtb r0, r0
	movw r1, #43691
	movt r1, #10922
	smmul r1, r0, r1
	add r1, r1, r1, lsr #31
	mov r2, #6
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #1
	mov r0, #0
	movweq r0, #1
	bx lr
.globl test_srem_odd
test_srem_odd:
	movw r1, #46339
	movt r1, #42366
	smmla r1, r0, r1, r0
	asr r2, r1, #6
	add r1, r2, r1, lsr #31
	mov r2, #99
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl test_srem_pow2_setne
test_srem_pow2_setne:
	sxtb r0, r0
	asr r1, r0, #31
	add r1, r0, r1, lsr #30
	asr r1, r1, #2
	mov r2, #4
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
