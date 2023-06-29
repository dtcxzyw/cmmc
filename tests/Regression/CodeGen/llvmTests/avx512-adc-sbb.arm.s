.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl PR32316
PR32316:
	uxtb r0, r0
	clz r0, r0
	lsr r0, r0, #5
	cmp r0, r1
	mov r0, #0
	movwhi r0, #1
	and r0, r0, #255
	uxtb r1, r2
	cmp r1, #0
	mov r1, #0
	movwne r1, #1
	and r1, r1, #255
	add r0, r0, r1
	uxtb r0, r0
	bx lr
