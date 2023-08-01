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
	mov r1, #0
	movne r0, r1
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
