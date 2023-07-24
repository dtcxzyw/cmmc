.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
.p2align 4
	cmp r0, #0
	mov r0, r1
	addne r0, r1, #1
	bx lr
.globl test1_commute
test1_commute:
.p2align 4
	cmp r0, #0
	mov r0, r1
	addne r0, r1, #1
	bx lr
.globl test2
test2:
.p2align 4
	clz r0, r0
	lsr r0, r0, #5
	add r0, r1, r0
	bx lr
.globl test3
test3:
.p2align 4
	clz r0, r0
	lsr r0, r0, #5
	add r0, r1, r0
	bx lr
.globl test4
test4:
.p2align 4
	cmp r0, #0
	mov r0, r1
	addne r0, r1, #1
	bx lr
.globl test5
test5:
.p2align 4
	cmp r0, #0
	mov r0, r1
	subne r0, r1, #1
	bx lr
.globl test6
test6:
.p2align 4
	clz r0, r0
	lsr r0, r0, #5
	sub r0, r1, r0
	bx lr
.globl test7
test7:
.p2align 4
	clz r0, r0
	lsr r0, r0, #5
	sub r0, r1, r0
	bx lr
.globl test8
test8:
.p2align 4
	cmp r0, #0
	mov r0, r1
	subne r0, r1, #1
	bx lr
