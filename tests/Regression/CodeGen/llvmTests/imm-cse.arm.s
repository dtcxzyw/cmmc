.arch armv7ve
.data
.data
.align 4
.globl src
src:
	.4byte	0
.align 4
.globl dst
dst:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl imm32_cse
imm32_cse:
.p2align 4
	movw r0, #:lower16:src
	movw r1, #4099
	movt r0, #:upper16:src
	ldr r0, [r0, #0]
	add r0, r0, r1
	movw r1, #:lower16:dst
	movt r1, #:upper16:dst
	str r0, [r1, #0]
	bx lr
