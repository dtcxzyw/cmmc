.arch armv7-a
.data
.align 4
.globl x
x:
	.zero	40
.text
.syntax unified
.arm
.fpu neon
.globl cse_imm
cse_imm:
	mov r3, #10
	mul r0, r0, r3
	mul r1, r1, r3
	eor r1, r2, r1
	add r0, r0, r1
	bx lr
.globl cse_global
cse_global:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	bx lr
.globl cse_fp
cse_fp:
	vmov s1, r0
	vmov s0, r1
	vmov.f32 s2, #4
	vmul.f32 s1, s1, s2
	vmul.f32 s0, s0, s2
	vadd.f32 s0, s1, s0
	vmov r0, s0
	bx lr
