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
	push { r4, r5, r6, r7 }
	mov r3, #10
	mul r4, r0, r3
	mul r5, r1, r3
	eor r6, r2, r5
	add r7, r4, r6
	mov r0, r7
	pop { r4, r5, r6, r7 }
	bx lr
.globl cse_global
cse_global:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r1, [r0, #0]
	ldr r2, [r0, #4]
	add r3, r1, r2
	mov r0, r3
	bx lr
.globl cse_fp
cse_fp:
	vmov s0, r0
	vmov s1, r1
	vmov.f32 s2, #4
	vmul.f32 s3, s0, s2
	vmul.f32 s4, s1, s2
	vadd.f32 s5, s3, s4
	vmov r0, s5
	bx lr
