.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test_local_strategy
test_local_strategy:
	push { r4, r5 }
	sdiv r0, r0, r1
	ldr r5, [sp, #8]
	ldr r4, [sp, #12]
	add r1, r3, r5
	add r1, r4, r1
	subs r0, r0, r2
	add r1, r0, r1
	moveq r0, r1
	pop { r4, r5 }
	bx lr
