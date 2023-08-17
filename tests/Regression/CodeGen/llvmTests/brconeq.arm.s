.arch armv7ve
.data
.data
.p2align 2
.globl i
i:
	.4byte	5
.p2align 2
.globl j
j:
	.4byte	10
.p2align 2
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
	movw r1, #:lower16:j
	movt r1, #:upper16:j
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	cmp r0, r1
	bne label11
label2:
	bx lr
label11:
	movw r0, #:lower16:result
	movt r0, #:upper16:result
	mov r1, #1
	str r1, [r0, #0]
	b label2
