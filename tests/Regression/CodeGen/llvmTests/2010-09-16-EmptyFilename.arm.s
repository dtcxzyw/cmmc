.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl bar
bar:
.p2align 4
	mov r0, #21
	bx lr
.globl foo
foo:
.p2align 4
	mov r0, #42
	bx lr
