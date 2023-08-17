.arch armv7ve
.data
.data
.p2align 2
.globl g
g:
	.4byte	0
.bss
.p2align 2
.globl i
i:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl LoadGV
LoadGV:
	movw r0, #:lower16:g
	movt r0, #:upper16:g
	ldr r0, [r0, #0]
	bx lr
.p2align 4
.globl LoadIndirectSymbol
LoadIndirectSymbol:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	ldr r0, [r0, #0]
	bx lr
