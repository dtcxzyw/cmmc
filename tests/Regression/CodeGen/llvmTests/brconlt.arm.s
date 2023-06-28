.arch armv7ve
.data
.align 4
.globl i
i:
	.4byte	5
.align 4
.globl j
j:
	.4byte	10
.align 4
.globl k
k:
	.4byte	5
.align 4
.globl result
result:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	movw r0, #:lower16:j
	movt r0, #:upper16:j
	ldr r0, [r0, #0]
	movw r1, #:lower16:i
	movt r1, #:upper16:i
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label14
	b label2
label14:
	movw r0, #:lower16:result
	movt r0, #:upper16:result
	mov r1, #1
	str r1, [r0, #0]
label2:
	bx lr
