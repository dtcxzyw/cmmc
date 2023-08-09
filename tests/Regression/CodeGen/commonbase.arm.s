.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl commonbase
commonbase:
	mov r3, #2000
	mla r0, r1, r3, r0
	add r0, r0, r2, lsl #2
	ldr r1, [r0, #-2004]
	ldr r2, [r0, #-2000]
	add r1, r1, r2
	ldr r2, [r0, #-1996]
	add r1, r1, r2
	ldr r2, [r0, #-4]
	add r1, r1, r2
	ldr r2, [r0, #0]
	add r1, r1, r2
	ldr r2, [r0, #4]
	add r1, r1, r2
	ldr r2, [r0, #1996]
	add r1, r1, r2
	ldr r2, [r0, #2000]
	ldr r0, [r0, #2004]
	add r1, r1, r2
	add r0, r1, r0
	bx lr
