.arch armv7ve
.data
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
.globl result
result:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	movw r0, #:lower16:i
	movw r1, #:lower16:j
	movt r0, #:upper16:i
	movt r1, #:upper16:j
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	cmp r0, r1
	beq label2
	movw r0, #:lower16:result
	mov r1, #1
	movt r0, #:upper16:result
	str r1, [r0, #0]
label2:
	bx lr
