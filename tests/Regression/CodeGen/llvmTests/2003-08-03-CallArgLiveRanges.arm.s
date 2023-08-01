.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	mov r0, #0
	bx lr
.p2align 4
.globl test
test:
	ldr r1, [sp, #0]
	mov r0, #0
	ldr r1, [sp, #4]
	ldr r1, [sp, #8]
	ldr r1, [sp, #12]
	ldr r1, [sp, #16]
	ldr r1, [sp, #20]
	bx lr
