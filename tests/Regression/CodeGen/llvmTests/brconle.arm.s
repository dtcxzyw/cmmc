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
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	ldr r1, [r0, #0]
	movw r0, #:lower16:j
	movt r0, #:upper16:j
	ldr r2, [r0, #0]
	mov r0, r1
	cmp r2, r1
	ble label3
	movw r1, #:lower16:result1
	mov r2, #1
	movt r1, #:upper16:result1
	str r2, [r1, #0]
	movw r1, #:lower16:k
	movt r1, #:upper16:k
	ldr r1, [r1, #0]
	cmp r0, r1
	ble label5
	b label33
label3:
	movw r1, #:lower16:k
	movt r1, #:upper16:k
	ldr r1, [r1, #0]
	cmp r0, r1
	ble label5
	b label33
label5:
	bx lr
label33:
	movw r0, #:lower16:result1
	mov r1, #0
	movt r0, #:upper16:result1
	str r1, [r0, #0]
	b label5