.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
.p2align 4
	add r0, r0, r1
	cmp r1, r0
	addhi r0, r0, #1
	bx lr
.globl test2
test2:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwhi r0, #1
	add r0, r0, r2
	bx lr
