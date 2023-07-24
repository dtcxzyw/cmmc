.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
.p2align 4
	movw r2, #65535
	and r0, r0, r2
	orr r0, r0, r1, lsl #16
	bx lr
.globl test10
test10:
.p2align 4
	movw r2, #0
	movt r2, #65535
	and r0, r0, r2
	orr r0, r0, r1, lsr #17
	bx lr
.globl test2
test2:
.p2align 4
	movw r2, #0
	movt r2, #65535
	and r1, r2, r1, lsl #12
	movw r2, #65535
	and r0, r0, r2
	orr r0, r1, r0
	bx lr
.globl test3
test3:
.p2align 4
	movw r2, #65535
	and r0, r0, r2
	orr r0, r0, r1, lsl #18
	bx lr
.globl test4
test4:
.p2align 4
	movw r2, #65535
	and r0, r0, r2
	movw r2, #0
	movt r2, #65535
	and r1, r1, r2
	orr r0, r0, r1
	bx lr
.globl test5
test5:
.p2align 4
	movw r2, #0
	movt r2, #65535
	and r0, r0, r2
	orr r0, r0, r1, lsr #16
	bx lr
.globl test5a
test5a:
.p2align 4
	movw r2, #0
	movt r2, #65535
	and r0, r0, r2
	orr r0, r0, r1, lsr #16
	bx lr
.globl test6
test6:
.p2align 4
	movw r2, #65535
	and r1, r2, r1, lsr #12
	movw r2, #0
	movt r2, #65535
	and r0, r0, r2
	orr r0, r1, r0
	bx lr
.globl test7
test7:
.p2align 4
	movw r2, #65535
	and r1, r2, r1, lsr #18
	movw r2, #0
	movt r2, #65535
	and r0, r0, r2
	orr r0, r1, r0
	bx lr
.globl test8
test8:
.p2align 4
	movw r2, #0
	movt r2, #65535
	and r0, r0, r2
	orr r0, r0, r1, lsr #22
	bx lr
.globl test9
test9:
.p2align 4
	movw r2, #0
	movt r2, #65535
	and r0, r0, r2
	orr r0, r0, r1, lsr #16
	bx lr
