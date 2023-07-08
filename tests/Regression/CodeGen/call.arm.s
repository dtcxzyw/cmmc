.arch armv7ve
.data
.data
.align 4
.globl touch
touch:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl callee_cmmc_noinline
callee_cmmc_noinline:
	bx lr
.globl caller_cmmc_noinline
caller_cmmc_noinline:
	push { lr }
	sub sp, sp, #4
	bl callee_cmmc_noinline
	add sp, sp, #4
	pop { pc }
.globl ret_forwarding
ret_forwarding:
	push { lr }
	sub sp, sp, #4
	bl getint
	bl putint
	add sp, sp, #4
	pop { pc }
.globl callee1_cmmc_noinline
callee1_cmmc_noinline:
	movw r0, #:lower16:touch
	mov r1, #1
	movt r0, #:upper16:touch
	str r1, [r0, #0]
	bx lr
.globl callee2_cmmc_noinline
callee2_cmmc_noinline:
	movw r1, #:lower16:touch
	movt r1, #:upper16:touch
	str r0, [r1, #0]
	bx lr
.globl callee3_cmmc_noinline
callee3_cmmc_noinline:
	ldr r0, [r0, #80]
	movw r1, #:lower16:touch
	movt r1, #:upper16:touch
	str r0, [r1, #0]
	bx lr
.globl callee4_cmmc_noinline
callee4_cmmc_noinline:
	vcvt.s32.f32 s0, s0
	movw r1, #:lower16:touch
	movt r1, #:upper16:touch
	vmov r0, s0
	str r0, [r1, #0]
	bx lr
.globl callee5_cmmc_noinline
callee5_cmmc_noinline:
	vmov s1, r0
	movw r1, #:lower16:touch
	movt r1, #:upper16:touch
	vcvt.f32.s32 s1, s1
	vadd.f32 s0, s1, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r1, #0]
	bx lr
.globl callee6_cmmc_noinline
callee6_cmmc_noinline:
	vmov s1, r0
	movw r1, #:lower16:touch
	movt r1, #:upper16:touch
	vcvt.f32.s32 s1, s1
	vadd.f32 s0, s0, s1
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r1, #0]
	bx lr
.globl callee7_cmmc_noinline
callee7_cmmc_noinline:
	add r0, r0, r1
	movw r1, #:lower16:touch
	movt r1, #:upper16:touch
	str r0, [r1, #0]
	bx lr
.globl callee8_cmmc_noinline
callee8_cmmc_noinline:
	vadd.f32 s0, s0, s1
	movw r1, #:lower16:touch
	movt r1, #:upper16:touch
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r1, #0]
	bx lr
.globl callee9_cmmc_noinline
callee9_cmmc_noinline:
	vadd.f32 s0, s0, s1
	movw r1, #:lower16:touch
	movt r1, #:upper16:touch
	vadd.f32 s0, s0, s2
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r1, #0]
	bx lr
.globl callee10_cmmc_noinline
callee10_cmmc_noinline:
	vadd.f32 s0, s0, s1
	movw r1, #:lower16:touch
	vmov s1, r0
	movt r1, #:upper16:touch
	vcvt.f32.s32 s1, s1
	vadd.f32 s0, s0, s1
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r1, #0]
	bx lr
.globl callee11_cmmc_noinline
callee11_cmmc_noinline:
	vmov s2, r0
	movw r1, #:lower16:touch
	movt r1, #:upper16:touch
	vcvt.f32.s32 s2, s2
	vadd.f32 s0, s2, s0
	vadd.f32 s0, s0, s1
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r1, #0]
	bx lr
.globl callee12_cmmc_noinline
callee12_cmmc_noinline:
	add r0, r0, r1
	movw r1, #:lower16:touch
	add r0, r2, r0
	movt r1, #:upper16:touch
	str r0, [r1, #0]
	bx lr
.globl callee13_cmmc_noinline
callee13_cmmc_noinline:
	push { r4, r5, r6, r7 }
	ldr r5, [sp, #16]
	add r0, r0, r1
	ldr r4, [sp, #20]
	movw r1, #:lower16:touch
	add r0, r2, r0
	ldr r7, [sp, #24]
	movt r1, #:upper16:touch
	add r0, r3, r0
	ldr r6, [sp, #28]
	add r0, r5, r0
	add r0, r4, r0
	add r0, r7, r0
	add r0, r6, r0
	vmov s8, r0
	vcvt.f32.s32 s8, s8
	vadd.f32 s0, s8, s0
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s3
	vadd.f32 s0, s0, s4
	vadd.f32 s0, s0, s5
	vadd.f32 s0, s0, s6
	vadd.f32 s0, s0, s7
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r1, #0]
	pop { r4, r5, r6, r7 }
	bx lr
.globl callee14_cmmc_noinline
callee14_cmmc_noinline:
	push { r4, r5, r6, r7, r8 }
	ldr r6, [sp, #20]
	add r0, r0, r1
	ldr r7, [sp, #24]
	movw r1, #:lower16:touch
	add r0, r2, r0
	ldr r8, [sp, #28]
	movt r1, #:upper16:touch
	add r0, r3, r0
	ldr r5, [sp, #32]
	add r0, r6, r0
	ldr r4, [sp, #36]
	add r0, r7, r0
	add r0, r8, r0
	add r0, r5, r0
	vmov s9, r0
	vcvt.f32.s32 s9, s9
	vadd.f32 s0, s9, s0
	vadd.f32 s0, s0, s1
	vmov s1, r4
	vadd.f32 s0, s0, s2
	vcvt.f32.s32 s1, s1
	vadd.f32 s0, s0, s3
	vadd.f32 s0, s0, s4
	vadd.f32 s0, s0, s5
	vadd.f32 s0, s0, s6
	vadd.f32 s0, s0, s7
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s8
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r1, #0]
	pop { r4, r5, r6, r7, r8 }
	bx lr
.globl callee15_cmmc_noinline
callee15_cmmc_noinline:
	mov r0, #0
	bx lr
.globl callee16_cmmc_noinline
callee16_cmmc_noinline:
	mov r0, #1065353216
	vmov s0, r0
	bx lr
.globl calling_convention
calling_convention:
	push { r4, lr }
	sub sp, sp, #64
	add r2, sp, #24
	bl callee1_cmmc_noinline
	mov r0, #1
	bl callee2_cmmc_noinline
	mov r0, r2
	bl callee3_cmmc_noinline
	mov r0, #1065353216
	vmov s9, r0
	vmov.f32 s0, s9
	bl callee4_cmmc_noinline
	mov r0, #1
	vmov.f32 s0, s9
	bl callee5_cmmc_noinline
	mov r0, #1
	vmov.f32 s0, s9
	bl callee6_cmmc_noinline
	mov r0, #1
	mov r1, #1
	bl callee7_cmmc_noinline
	vmov.f32 s0, s9
	vmov.f32 s1, s9
	bl callee8_cmmc_noinline
	vmov.f32 s0, s9
	vmov.f32 s1, s9
	vmov.f32 s2, s9
	bl callee9_cmmc_noinline
	mov r0, #1
	vmov.f32 s0, s9
	vmov.f32 s1, s9
	bl callee10_cmmc_noinline
	vmov.f32 s0, s9
	mov r0, #1
	vmov.f32 s1, s9
	bl callee11_cmmc_noinline
	mov r2, #1
	mov r1, #1
	mov r0, #1
	bl callee12_cmmc_noinline
	mov r4, #1
	str r4, [sp, #0]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #12]
	mov r0, r4
	mov r1, r4
	mov r2, r4
	mov r3, r4
	vmov.f32 s0, s9
	vmov.f32 s1, s9
	vmov.f32 s2, s9
	vmov.f32 s3, s9
	vmov.f32 s4, s9
	vmov.f32 s5, s9
	vmov.f32 s6, s9
	vmov.f32 s7, s9
	bl callee13_cmmc_noinline
	str r4, [sp, #0]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #12]
	str r4, [sp, #16]
	mov r0, r4
	mov r1, r4
	mov r2, r4
	mov r3, r4
	vmov.f32 s0, s9
	vmov.f32 s1, s9
	vmov.f32 s2, s9
	vmov.f32 s3, s9
	vmov.f32 s4, s9
	vmov.f32 s5, s9
	vmov.f32 s6, s9
	vmov.f32 s7, s9
	vmov.f32 s8, s9
	bl callee14_cmmc_noinline
	bl callee15_cmmc_noinline
	bl putint
	bl callee16_cmmc_noinline
	bl putfloat
	add sp, sp, #64
	pop { r4, pc }
