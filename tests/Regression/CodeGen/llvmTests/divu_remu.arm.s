.arch armv7ve
.data
.align 4
.globl iiii
iiii:
	.4byte	103
.align 4
.globl jjjj
jjjj:
	.4byte	4
.align 4
.globl kkkk
kkkk:
	.4byte	0
.align 4
.globl llll
llll:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	movw r0, #:lower16:iiii
	movt r0, #:upper16:iiii
	ldr r0, [r0, #0]
	movw r1, #:lower16:jjjj
	movt r1, #:upper16:jjjj
	ldr r1, [r1, #0]
	udiv r2, r0, r1
	movw r3, #:lower16:kkkk
	movt r3, #:upper16:kkkk
	str r2, [r3, #0]
	mls r0, r2, r1, r0
	movw r1, #:lower16:llll
	movt r1, #:upper16:llll
	str r0, [r1, #0]
	bx lr
