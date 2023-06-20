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
	push { r4, r5, r6, r7, r8 }
	mov r4, #10
	mul r5, r0, r4
	mul r6, r1, r4
	eor r7, r2, r6
	add r8, r5, r7
	mov r0, r8
	pop { r4, r5, r6, r7, r8 }
	bx lr
.globl cse_global
cse_global:
	push { r4, r5, r6, r7 }
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r5, [r4, #0]
	ldr r6, [r4, #4]
	add r7, r5, r6
	mov r0, r7
	pop { r4, r5, r6, r7 }
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
