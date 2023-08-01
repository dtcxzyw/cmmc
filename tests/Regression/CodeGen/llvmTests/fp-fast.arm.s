.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test1
test1:
	vadd.f32 s0, s0, s0
	vadd.f32 s0, s0, s0
	bx lr
.p2align 4
.globl test10
test10:
	vneg.f32 s1, s0
	vadd.f32 s0, s0, s1
	bx lr
.p2align 4
.globl test2
test2:
	movw r0, #0
	movt r0, #16512
	vmov s1, r0
	vmul.f32 s1, s0, s1
	vadd.f32 s0, s0, s0
	vadd.f32 s0, s1, s0
	bx lr
.p2align 4
.globl test3
test3:
	movw r0, #0
	movt r0, #16512
	vmov s1, r0
	vmul.f32 s1, s0, s1
	vadd.f32 s0, s0, s0
	vadd.f32 s0, s1, s0
	bx lr
.p2align 4
.globl test4
test4:
	vadd.f32 s1, s0, s0
	movw r0, #0
	movt r0, #16512
	vmov s2, r0
	vmul.f32 s0, s0, s2
	vadd.f32 s0, s1, s0
	bx lr
.p2align 4
.globl test5
test5:
	vadd.f32 s1, s0, s0
	movw r0, #0
	movt r0, #16512
	vmov s2, r0
	vmul.f32 s0, s0, s2
	vadd.f32 s0, s1, s0
	bx lr
.p2align 4
.globl test6
test6:
	mov r0, #0
	vmov s0, r0
	bx lr
.p2align 4
.globl test7
test7:
	mov r0, #0
	vmov s0, r0
	bx lr
.p2align 4
.globl test8
test8:
	bx lr
.p2align 4
.globl test9
test9:
	bx lr
