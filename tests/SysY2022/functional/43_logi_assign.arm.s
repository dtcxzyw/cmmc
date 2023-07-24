.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, lr }
	bl getint
	mov r4, r0
	bl getint
	mov r1, #0
	cmp r4, #3
	sub r0, r4, r0
	movwne r1, #1
	clz r0, r0
	lsr r0, r0, #5
	and r0, r0, r1
	pop { r4, pc }
