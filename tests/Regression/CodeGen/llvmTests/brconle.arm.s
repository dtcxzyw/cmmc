.arch armv7ve
.data
.data
.align 4
.globl i
i:
	.4byte	4294967291
.align 4
.globl j
j:
	.4byte	10
.align 4
.globl k
k:
	.4byte	4294967291
.align 4
.globl result1
result1:
	.4byte	0
.align 4
.globl result2
result2:
	.4byte	1
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	movw r0, #:lower16:i
	movw r1, #:lower16:j
	movt r0, #:upper16:i
	movt r1, #:upper16:j
	ldr r0, [r0, #0]
	ldr r2, [r1, #0]
	movw r1, #:lower16:result1
	movt r1, #:upper16:result1
	cmp r2, r0
	bgt label2
label3:
	movw r2, #:lower16:k
	movt r2, #:upper16:k
	ldr r2, [r2, #0]
	cmp r0, r2
	bgt label4
label5:
	bx lr
label2:
	mov r2, #1
	str r2, [r1, #0]
	b label3
label4:
	mov r0, #0
	str r0, [r1, #0]
	b label5
