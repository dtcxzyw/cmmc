.arch armv7ve
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
	movw r0, #:lower16:src
	movt r0, #:upper16:src
	ldr r1, [r0, #0]
	movw r0, #:lower16:dst
	movt r0, #:upper16:dst
	movw r2, #4099
	add r1, r1, r2
	str r1, [r0, #0]
	bx lr
