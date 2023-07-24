.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl testStackProbesOff
testStackProbesOff:
.p2align 4
	mov r0, #0
	bx lr
.globl testStackProbesOn
testStackProbesOn:
.p2align 4
	bx lr
