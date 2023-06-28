.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	cmn r0, #1
	mov r0, #0
	movwgt r0, #1
	rsb r0, r0, #2
	bx lr
