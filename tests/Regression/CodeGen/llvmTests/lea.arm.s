.arch armv7ve
.data
.section .rodata
.bss
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
	sub r0, r0, #4
	mvn r2, #3
	mla r0, r1, r2, r0
label7:
	bx lr
