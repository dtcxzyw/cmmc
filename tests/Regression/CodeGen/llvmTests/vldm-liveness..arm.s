.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl t1
t1:
	cmp r0, #0
	mov r1, #10
	mov r0, #20
	movne r0, r1
	bx lr
.globl t2
t2:
	cmp r0, #0
	mov r0, #20
	movne r0, r1
	bx lr
.globl t3
t3:
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	add r0, r1, r0
	bx lr
.globl t4
t4:
	cmp r0, #0
	mvn r1, #9
	mvn r0, #0
	movne r0, r1
	bx lr
.globl t5
t5:
	cmp r0, #0
	mvn r0, #1
	movne r0, r1
	bx lr
.globl t6
t6:
	cmp r0, #0
	mvn r0, #978944
	movne r0, r1
	bx lr
