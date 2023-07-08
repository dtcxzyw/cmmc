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
	vmov s0, r0
	movw r1, #:lower16:touch
	movt r1, #:upper16:touch
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r1, #0]
	bx lr
.globl callee6_cmmc_noinline
callee6_cmmc_noinline:
	vmov s1, r1
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
	vmov s1, r2
	movt r1, #:upper16:touch
	vcvt.f32.s32 s1, s1
	vadd.f32 s0, s0, s1
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r1, #0]
	bx lr
.globl callee11_cmmc_noinline
callee11_cmmc_noinline:
	vmov s0, r0
	movw r1, #:lower16:touch
	movt r1, #:upper16:touch
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
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
	add r0, r0, r1
	ldr r7, [sp, #32]
	movw r1, #:lower16:touch
	add r0, r2, r0
	ldr r5, [sp, #36]
	movt r1, #:upper16:touch
	add r0, r3, r0
	ldr r6, [sp, #40]
	ldr r4, [sp, #44]
	add r0, r7, r0
	vldr s0, [sp, #48]
	add r0, r5, r0
	vldr s4, [sp, #52]
	add r0, r6, r0
	vldr s2, [sp, #56]
	add r0, r4, r0
	vldr s1, [sp, #60]
	vmov s8, r0
	vldr s3, [sp, #64]
	vldr s5, [sp, #68]
	vldr s6, [sp, #72]
	vldr s7, [sp, #76]
	vcvt.f32.s32 s8, s8
	vadd.f32 s0, s8, s0
	vadd.f32 s0, s0, s4
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
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
	ldr r7, [sp, #36]
	add r0, r0, r1
	ldr r8, [sp, #40]
	movw r1, #:lower16:touch
	add r0, r2, r0
	ldr r6, [sp, #44]
	movt r1, #:upper16:touch
	add r0, r3, r0
	ldr r5, [sp, #48]
	add r0, r7, r0
	vldr s6, [sp, #52]
	add r0, r8, r0
	vldr s3, [sp, #56]
	add r0, r6, r0
	vldr s2, [sp, #60]
	add r0, r5, r0
	vldr s1, [sp, #64]
	vmov s9, r0
	vldr s5, [sp, #68]
	vldr s7, [sp, #72]
	vldr s8, [sp, #76]
	vldr s4, [sp, #80]
	vcvt.f32.s32 s9, s9
	ldr r4, [sp, #84]
	vldr s0, [sp, #88]
	vadd.f32 s6, s9, s6
	vadd.f32 s3, s6, s3
	vadd.f32 s2, s3, s2
	vadd.f32 s1, s2, s1
	vmov s2, r4
	vadd.f32 s1, s1, s5
	vcvt.f32.s32 s2, s2
	vadd.f32 s1, s1, s7
	vadd.f32 s1, s1, s8
	vadd.f32 s1, s1, s4
	vadd.f32 s1, s1, s2
	vadd.f32 s0, s1, s0
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
	sub sp, sp, #112
	add r2, sp, #72
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
	vmov.f32 s1, s9
	bl callee5_cmmc_noinline
	vmov.f32 s0, s9
	mov r1, #1
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
	mov r2, #1
	vmov.f32 s0, s9
	vmov.f32 s1, s9
	bl callee10_cmmc_noinline
	vmov.f32 s1, s9
	mov r0, #1
	vmov.f32 s2, s9
	bl callee11_cmmc_noinline
	mov r2, #1
	mov r1, #1
	mov r0, #1
	bl callee12_cmmc_noinline
	mov r4, #1
	str r4, [sp, #16]
	str r4, [sp, #20]
	str r4, [sp, #24]
	str r4, [sp, #28]
	vstr s9, [sp, #32]
	vstr s9, [sp, #36]
	vstr s9, [sp, #40]
	vstr s9, [sp, #44]
	vstr s9, [sp, #48]
	vstr s9, [sp, #52]
	vstr s9, [sp, #56]
	vstr s9, [sp, #60]
	mov r0, r4
	mov r1, r4
	mov r2, r4
	mov r3, r4
	bl callee13_cmmc_noinline
	str r4, [sp, #16]
	str r4, [sp, #20]
	str r4, [sp, #24]
	str r4, [sp, #28]
	vstr s9, [sp, #32]
	vstr s9, [sp, #36]
	vstr s9, [sp, #40]
	vstr s9, [sp, #44]
	vstr s9, [sp, #48]
	vstr s9, [sp, #52]
	vstr s9, [sp, #56]
	vstr s9, [sp, #60]
	str r4, [sp, #64]
	vstr s9, [sp, #68]
	mov r0, r4
	mov r1, r4
	mov r2, r4
	mov r3, r4
	bl callee14_cmmc_noinline
	bl callee15_cmmc_noinline
	bl putint
	bl callee16_cmmc_noinline
	bl putfloat
	add sp, sp, #112
	pop { r4, pc }
