.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
	lsl r0, r0, #3
	add r0, r0, #7
	bx lr
.globl test2
test2:
	cmp r0, #4
	ble label7
	sub r1, r0, #5
	lsr r1, r1, #2
	add r1, r1, #1
	lsl r1, r1, #2
	rsb r1, r1, #0
	add r0, r0, r1
label7:
	bx lr
