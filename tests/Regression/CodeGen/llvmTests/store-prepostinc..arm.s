.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
	movw r1, #255
	movt r1, #255
	and r0, r0, r1
	bx lr
.globl test10
test10:
	movw r1, #7
	movt r1, #7
	and r1, r1, r0, lsr #12
	movw r2, #248
	movt r2, #248
	and r0, r2, r0, lsr #7
	orr r0, r1, r0
	bx lr
.globl test11
test11:
	and r0, r0, #3
	movw r1, #1
	movt r1, #1
	lsl r0, r1, r0
	movw r1, #7
	movt r1, #7
	and r0, r1, r0, asr #1
	bx lr
.globl test2
test2:
	movw r1, #255
	movt r1, #255
	and r0, r1, r0, lsr #8
	bx lr
.globl test3
test3:
	movw r1, #255
	movt r1, #255
	and r0, r1, r0, lsr #8
	bx lr
.globl test4
test4:
	movw r1, #255
	movt r1, #255
	and r0, r1, r0, lsr #8
	bx lr
.globl test5
test5:
	movw r1, #255
	movt r1, #255
	and r0, r1, r0, lsr #8
	bx lr
.globl test6
test6:
	lsr r1, r0, #16
	and r1, r1, #255
	lsl r0, r0, #16
	and r0, r0, #16711680
	orr r0, r1, r0
	bx lr
.globl test7
test7:
	lsr r1, r0, #16
	and r1, r1, #255
	lsl r0, r0, #16
	and r0, r0, #16711680
	orr r0, r1, r0
	bx lr
.globl test8
test8:
	lsl r1, r0, #8
	and r1, r1, #16711680
	orr r0, r1, r0, lsr #24
	bx lr
.globl test9
test9:
	lsl r1, r0, #8
	and r1, r1, #16711680
	orr r0, r1, r0, lsr #24
	bx lr
