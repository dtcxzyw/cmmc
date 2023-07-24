.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl bar
bar:
.p2align 4
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl foo
foo:
.p2align 4
	mov r0, #0
	bx lr
