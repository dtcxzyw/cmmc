.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test1
test1:
	cmp r0, #0
	mov r0, r1
	addne r0, r1, #1
	bx lr
.p2align 4
.globl test1_commute
test1_commute:
	cmp r0, #0
	mov r0, r1
	addne r0, r1, #1
	bx lr
.p2align 4
.globl test2
test2:
	clz r0, r0
	lsr r0, r0, #5
	add r0, r1, r0
	bx lr
.p2align 4
.globl test3
test3:
	clz r0, r0
	lsr r0, r0, #5
	add r0, r1, r0
	bx lr
.p2align 4
.globl test4
test4:
	cmp r0, #0
	mov r0, r1
	addne r0, r1, #1
	bx lr
.p2align 4
.globl test5
test5:
	cmp r0, #0
	mov r0, r1
	subne r0, r1, #1
	bx lr
.p2align 4
.globl test6
test6:
	clz r0, r0
	lsr r0, r0, #5
	sub r0, r1, r0
	bx lr
.p2align 4
.globl test7
test7:
	clz r0, r0
	lsr r0, r0, #5
	sub r0, r1, r0
	bx lr
.p2align 4
.globl test8
test8:
	cmp r0, #0
	mov r0, r1
	subne r0, r1, #1
	bx lr
