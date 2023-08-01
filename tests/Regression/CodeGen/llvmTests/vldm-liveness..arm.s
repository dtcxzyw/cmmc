.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl t1
t1:
	cmp r0, #0
	mov r1, #10
	mov r0, #20
	movne r0, r1
	bx lr
.p2align 4
.globl t2
t2:
	cmp r0, #0
	mov r0, #20
	movne r0, r1
	bx lr
.p2align 4
.globl t3
t3:
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	add r0, r1, r0
	bx lr
.p2align 4
.globl t4
t4:
	cmp r0, #0
	mvn r1, #9
	mvn r0, #0
	movne r0, r1
	bx lr
.p2align 4
.globl t5
t5:
	cmp r0, #0
	mvn r0, #1
	movne r0, r1
	bx lr
.p2align 4
.globl t6
t6:
	cmp r0, #0
	mvn r0, #978944
	movne r0, r1
	bx lr
