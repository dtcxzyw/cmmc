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
	push { lr }
	sub sp, sp, #44
	mov r2, sp
	bl callee1_cmmc_noinline
	mov r0, #1
	bl callee2_cmmc_noinline
	mov r0, r2
	bl callee3_cmmc_noinline
	mov r0, #1065353216
	vmov s3, r0
	vmov.f32 s0, s3
	bl callee4_cmmc_noinline
	mov r0, #1
	vmov.f32 s0, s3
	bl callee5_cmmc_noinline
	vmov.f32 s0, s3
	mov r0, #1
	bl callee6_cmmc_noinline
	mov r1, #1
	mov r0, #1
	bl callee7_cmmc_noinline
	vmov.f32 s0, s3
	vmov.f32 s1, s3
	bl callee8_cmmc_noinline
	vmov.f32 s0, s3
	vmov.f32 s1, s3
	vmov.f32 s2, s3
	bl callee9_cmmc_noinline
	mov r0, #1
	vmov.f32 s0, s3
	vmov.f32 s1, s3
	bl callee10_cmmc_noinline
	vmov.f32 s0, s3
	mov r0, #1
	vmov.f32 s1, s3
	bl callee11_cmmc_noinline
	mov r2, #1
	mov r1, #1
	mov r0, #1
	bl callee12_cmmc_noinline
	bl callee15_cmmc_noinline
	bl putint
	bl callee16_cmmc_noinline
	bl putfloat
	add sp, sp, #44
	pop { pc }
