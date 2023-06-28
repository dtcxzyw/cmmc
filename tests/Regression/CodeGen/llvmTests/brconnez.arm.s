.arch armv7ve
.data
.align 4
.globl j
j:
	.4byte	0
.align 4
.globl result
result:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	movw r0, #:lower16:j
	movt r0, #:upper16:j
	ldr r0, [r0, #0]
	cmp r0, #0
	bne label3
	movw r0, #:lower16:result
	movt r0, #:upper16:result
	mov r1, #1
	str r1, [r0, #0]
label3:
	bx lr
