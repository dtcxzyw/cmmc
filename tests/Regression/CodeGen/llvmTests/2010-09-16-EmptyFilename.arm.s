.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl bar
bar:
	mov r0, #21
	bx lr
.p2align 4
.globl foo
foo:
	mov r0, #42
	bx lr
