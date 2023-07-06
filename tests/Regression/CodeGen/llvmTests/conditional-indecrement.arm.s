.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	add r0, r1, r0
	bx lr
.globl test1_commute
test1_commute:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	add r0, r1, r0
	bx lr
.globl test2
test2:
	clz r0, r0
	lsr r0, r0, #5
	add r0, r1, r0
	bx lr
.globl test3
test3:
	clz r0, r0
	lsr r0, r0, #5
	add r0, r1, r0
	bx lr
.globl test4
test4:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	add r0, r1, r0
	bx lr
.globl test5
test5:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	sub r0, r1, r0
	bx lr
.globl test6
test6:
	clz r0, r0
	lsr r0, r0, #5
	sub r0, r1, r0
	bx lr
.globl test7
test7:
	clz r0, r0
	lsr r0, r0, #5
	sub r0, r1, r0
	bx lr
.globl test8
test8:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	sub r0, r1, r0
	bx lr
