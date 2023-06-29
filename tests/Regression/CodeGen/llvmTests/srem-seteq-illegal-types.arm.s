.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_srem_even
test_srem_even:
	sxtb r0, r0
	mov r1, #6
	movw r2, #43691
	movt r2, #10922
	smmul r2, r0, r2
	add r2, r2, r2, lsr #31
	mls r0, r2, r1, r0
	sub r0, r0, #1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl test_srem_odd
test_srem_odd:
	mov r1, #99
	movw r2, #46339
	movt r2, #42366
	smmla r2, r0, r2, r0
	asr r3, r2, #6
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl test_srem_pow2_setne
test_srem_pow2_setne:
	sxtb r0, r0
	and r0, r0, #3
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
