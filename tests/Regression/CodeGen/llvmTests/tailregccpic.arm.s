.arch armv7ve
.data
.align 4
.globl a0
a0:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl __regcall3__func
__regcall3__func:
	movw r1, #:lower16:a0
	movt r1, #:upper16:a0
	str r0, [r1, #0]
	bx lr
.globl tail_call_regcall
tail_call_regcall:
	movw r1, #:lower16:a0
	movt r1, #:upper16:a0
	str r0, [r1, #0]
	bx lr
