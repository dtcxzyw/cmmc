.arch armv7ve
.data
.data
.align 4
.globl i
i:
	.4byte	5
.align 4
.globl result
result:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	ldr r0, [r0, #0]
	cmp r0, #10
	bne label8
label2:
	bx lr
label8:
	movw r0, #:lower16:result
	movt r0, #:upper16:result
	mov r1, #1
	str r1, [r0, #0]
	b label2
