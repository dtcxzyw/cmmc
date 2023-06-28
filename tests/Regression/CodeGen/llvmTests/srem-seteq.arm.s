.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_srem_allones
test_srem_allones:
	mvn r1, #0
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl test_srem_even
test_srem_even:
	sxth r0, r0
	movw r1, #9363
	movt r1, #37449
	smmla r1, r0, r1, r0
	asr r2, r1, #3
	add r1, r2, r1, lsr #31
	mov r2, #14
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	uxth r0, r0
	bx lr
.globl test_srem_even_100
test_srem_even_100:
	movw r1, #34079
	movt r1, #20971
	smmul r1, r0, r1
	asr r2, r1, #5
	add r1, r2, r1, lsr #31
	mov r2, #100
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl test_srem_even_bit30
test_srem_even_bit30:
	movw r1, #65433
	movt r1, #16383
	smmul r1, r0, r1
	asr r2, r1, #28
	add r1, r2, r1, lsr #31
	movw r2, #104
	movt r2, #16384
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl test_srem_even_bit31
test_srem_even_bit31:
	movw r1, #65433
	movt r1, #32767
	smmul r1, r0, r1
	sub r1, r1, r0
	asr r2, r1, #30
	add r1, r2, r1, lsr #31
	movw r2, #102
	movt r2, #32768
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl test_srem_int_min
test_srem_int_min:
	mvn r1, #-2147483648
	smmul r1, r0, r1
	sub r1, r1, r0
	asr r2, r1, #30
	add r1, r2, r1, lsr #31
	mov r2, #-2147483648
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl test_srem_negative_even
test_srem_negative_even:
	movw r1, #56173
	movt r1, #28086
	smmul r1, r0, r1
	sub r1, r1, r0
	asr r2, r1, #3
	add r1, r2, r1, lsr #31
	mvn r2, #13
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl test_srem_negative_odd
test_srem_negative_odd:
	movw r1, #39321
	movt r1, #39321
	smmul r1, r0, r1
	asr r2, r1, #1
	add r1, r2, r1, lsr #31
	mvn r2, #4
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl test_srem_odd
test_srem_odd:
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #1
	add r1, r2, r1, lsr #31
	mov r2, #5
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl test_srem_odd_25
test_srem_odd_25:
	movw r1, #34079
	movt r1, #20971
	smmul r1, r0, r1
	asr r2, r1, #3
	add r1, r2, r1, lsr #31
	mov r2, #25
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl test_srem_odd_bit30
test_srem_odd_bit30:
	mvn r1, #-536870912
	smmul r1, r0, r1
	asr r2, r1, #27
	add r1, r2, r1, lsr #31
	mov r2, #1073741827
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl test_srem_odd_bit31
test_srem_odd_bit31:
	mvn r1, #536870912
	smmul r1, r0, r1
	asr r2, r1, #28
	add r1, r2, r1, lsr #31
	mov r2, #-2147483645
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl test_srem_odd_setne
test_srem_odd_setne:
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #1
	add r1, r2, r1, lsr #31
	mov r2, #5
	mul r1, r1, r2
	sub r0, r0, r1
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
	asr r1, r0, #31
	add r1, r0, r1, lsr #28
	asr r1, r1, #4
	mov r2, #16
	mul r1, r1, r2
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movweq r0, #1
	bx lr
