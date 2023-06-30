.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_local_strategy
test_local_strategy:
	push { r4, r5 }
	ldr r4, [sp, #24]
	ldr r5, [sp, #28]
	sdiv r0, r0, r1
	sub r1, r0, r2
	mov r0, r1
	cmp r1, #0
	bne label3
	add r1, r3, r4
	add r1, r5, r1
	add r0, r1, r0
label3:
	pop { r4, r5 }
	bx lr
