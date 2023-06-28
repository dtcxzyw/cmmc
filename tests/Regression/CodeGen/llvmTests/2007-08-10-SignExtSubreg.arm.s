.arch armv7ve
.data
.align 4
.globl X
X:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl _Z3fooi
_Z3fooi:
	uxtb r1, r0
	sxtb r1, r1
	movw r2, #:lower16:X
	movt r2, #:upper16:X
	str r0, [r2, #0]
	mov r0, r1
	bx lr
