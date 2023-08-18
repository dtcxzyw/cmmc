.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test1
test1:
	add r2, r0, #10
	cmp r1, #0
	movne r0, r2
	bx lr
.p2align 4
.globl test2
test2:
	add r2, r0, #10
	cmp r1, #0
	mov r1, r2
	movne r1, r0
	mov r0, r1
	bx lr
.p2align 4
.globl test3
test3:
	add r2, r0, #10
	cmp r1, #0
	mov r0, #0
	movne r0, r2
	bx lr
.p2align 4
.globl test4
test4:
	add r0, r0, #10
	cmp r1, #0
	movne r0, #0
	bx lr
.p2align 4
.globl test5
test5:
	cmp r0, #0
	movw r1, #51719
	movt r1, #15258
	add r1, r0, r1
	movlt r0, r1
	bx lr
.p2align 4
.globl test6
test6:
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	sub r0, r0, r1, lsl #8
	bx lr
.p2align 4
.globl test7
test7:
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	bx lr
.p2align 4
.globl test8
test8:
	asr r2, r0, #31
	rsb r3, r1, #32
	add r0, r0, r2, lsr r3
	asr r0, r0, r1
	bx lr
.p2align 4
.globl test9
test9:
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bx lr
.p2align 4
.globl test10
test10:
	add r1, r0, r0, lsr #31
	asr r1, r1, #1
	sub r0, r0, r1, lsl #1
	bx lr
