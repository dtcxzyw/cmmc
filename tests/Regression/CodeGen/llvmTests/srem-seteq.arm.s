.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_srem_allones
test_srem_allones:
	mov r0, #1
	bx lr
.globl test_srem_even
test_srem_even:
	sxth r0, r0
	mov r1, #14
	movw r2, #9363
	movt r2, #37449
	smmla r2, r0, r2, r0
	asr r3, r2, #3
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	uxth r0, r0
	bx lr
.globl test_srem_even_100
test_srem_even_100:
	mov r1, #100
	movw r2, #34079
	movt r2, #20971
	smmul r2, r0, r2
	asr r3, r2, #5
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl test_srem_even_bit30
test_srem_even_bit30:
	movw r1, #104
	movw r2, #65433
	movt r1, #16384
	movt r2, #16383
	smmul r2, r0, r2
	asr r3, r2, #28
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl test_srem_even_bit31
test_srem_even_bit31:
	movw r1, #102
	movw r2, #65433
	movt r1, #32768
	movt r2, #32767
	smmul r2, r0, r2
	sub r2, r2, r0
	asr r3, r2, #30
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl test_srem_int_min
test_srem_int_min:
	mov r1, #-2147483648
	mvn r2, #-2147483648
	smmul r2, r0, r2
	sub r2, r2, r0
	asr r3, r2, #30
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl test_srem_negative_even
test_srem_negative_even:
	mvn r1, #13
	movw r2, #56173
	movt r2, #28086
	smmul r2, r0, r2
	sub r2, r2, r0
	asr r3, r2, #3
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl test_srem_negative_odd
test_srem_negative_odd:
	mvn r1, #4
	movw r2, #39321
	movt r2, #39321
	smmul r2, r0, r2
	asr r3, r2, #1
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl test_srem_odd
test_srem_odd:
	mov r1, #5
	movw r2, #26215
	movt r2, #26214
	smmul r2, r0, r2
	asr r3, r2, #1
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl test_srem_odd_25
test_srem_odd_25:
	mov r1, #25
	movw r2, #34079
	movt r2, #20971
	smmul r2, r0, r2
	asr r3, r2, #3
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl test_srem_odd_bit30
test_srem_odd_bit30:
	mov r1, #1073741827
	mvn r2, #-536870912
	smmul r2, r0, r2
	asr r3, r2, #27
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl test_srem_odd_bit31
test_srem_odd_bit31:
	mov r1, #-2147483645
	mvn r2, #536870912
	smmul r2, r0, r2
	asr r3, r2, #28
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl test_srem_odd_setne
test_srem_odd_setne:
	mov r1, #5
	movw r2, #26215
	movt r2, #26214
	smmul r2, r0, r2
	asr r3, r2, #1
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl test_srem_one
test_srem_one:
	mov r0, #1
	bx lr
.globl test_srem_pow2
test_srem_pow2:
	and r0, r0, #15
	clz r0, r0
	lsr r0, r0, #5
	bx lr
