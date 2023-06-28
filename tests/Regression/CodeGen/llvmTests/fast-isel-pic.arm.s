.arch armv7ve
.data
.data
.align 4
.globl g
g:
	.4byte	0
.bss
.align 4
.globl i
i:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl LoadGV
LoadGV:
	movw r0, #:lower16:g
	movt r0, #:upper16:g
	ldr r0, [r0, #0]
	bx lr
.globl LoadIndirectSymbol
LoadIndirectSymbol:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	ldr r0, [r0, #0]
	bx lr
